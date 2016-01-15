using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    private int i;
    static string db1, db2;
    protected void Page_Load(object sender, EventArgs e)
    {
        db1 = Session["db1"].ToString();
        db2 = Session["db2"].ToString();
        lbl_cat.Text = Session["cat"].ToString();
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select distinct productBrand from " + db1 + " intersect select distinct brand from " + db2 + "", con);
        SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM(SELECT distinct productBrand FROM " + db1 + " intersect SELECT distinct brand from " + db2 + ") I", con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        da1.Fill(dt1);
        da2.Fill(dt2);
        int c = Convert.ToInt32(dt2.Rows[0][0].ToString());
        for (i = 0; i < c; i++)
        {
            brand.Items.Add(dt1.Rows[i][0].ToString());
        }

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        int c;
        string fpcm,sdcm;
        if (txtsearch.Text == "")
        {
            Response.Write("<script language='javascript'>alert('Please type some value to search')</script>");
            goto p;
        }
        fp_list.Items.Clear();
        sd_list.Items.Clear();
        if (brand.SelectedValue == "Select Brand")
        {
            fpcm = "select title from " + db1 + " where title like '%" + txtsearch.Text + "%'";
            sdcm = "select title from " + db2 + " where title like '%" + txtsearch.Text + "%'";
        }
        else
        {
            fpcm = "select title from " + db1 + " where title like '%" + txtsearch.Text + "%' and productBrand like '" + brand.SelectedValue + "'";
            sdcm = "select title from " + db2 + " where title like '%" + txtsearch.Text + "%' and brand like '" + brand.SelectedValue + "'";
        }
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        SqlCommand cmd1 = new SqlCommand(fpcm,con);
        SqlCommand cmd2 = new SqlCommand(sdcm,con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        da1.Fill(dt1);
        da2.Fill(dt2);
        fp_list.DataSource = dt1;
        sd_list.DataSource = dt2;
        c = countresults(1);
        for (i = 0; i < c; i++)
        {
            fp_list.Items.Add(dt1.Rows[i][0].ToString());
        }
        c = countresults(2);
        for (i = 0; i < c; i++)
        {
            sd_list.Items.Add(dt2.Rows[i][0].ToString());
        }
        txtsearch.Text = "";
        p: ;
    }
    public int countresults(int c)
    {
        int count_fp, count_sd;
        string fpcm, sdcm;
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        if (brand.SelectedValue == "Select Brand")
        {
            fpcm = "select count(case when title like '%" + txtsearch.Text + "%' then 1 else null end) from " + db1 + "";
            sdcm = "select count(case when title like '%" + txtsearch.Text + "%' then 1 else null end) from " + db2 + "";
        }
        else
        {
            fpcm = "select count(case when title like '%" + txtsearch.Text + "%' and productBrand like '" + brand.SelectedValue + "' then 1 else null end) from " + db1 + "";
            sdcm = "select count(case when title like '%" + txtsearch.Text + "%' and brand like '" + brand.SelectedValue + "' then 1 else null end) from " + db2 + "";
        }
        SqlCommand cmd1 = new SqlCommand(fpcm, con);
        SqlCommand cmd2 = new SqlCommand(sdcm, con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        da1.Fill(dt1);
        da2.Fill(dt2);
        fp_list.DataSource = dt1;
        sd_list.DataSource = dt2;
        count_fp = Convert.ToInt32(dt1.Rows[0][0].ToString());
        count_sd = Convert.ToInt32(dt2.Rows[0][0].ToString());
        if (c == 1)
            return count_fp;
        else if (c == 2)
            return count_sd;
        else
            return 0;
    }
    public string insertimg(string img, int x)
    {
        string pic;
        char[] ch = new char[300];
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select imageUrlStr from " + db1 + " where title like '" + img + "'", con);
        SqlCommand cmd2 = new SqlCommand("select image_link from " + db2 + " where title like '" + img + "'", con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        da1.Fill(dt1);
        da2.Fill(dt2);
        if (x == 1)
        {
            string imgurl = dt1.Rows[0][0].ToString();
            if (imgurl == "") { return "~/images/noimg.jpg"; }
            else
            {
                ch = imgurl.ToCharArray();
                int i = 0;
                while (!ch[i].Equals(';'))
                {
                    i++;
                }
                pic = imgurl.Substring(0, i);
                return pic;
            }
        }
        else if (x == 2)
        {
            return dt2.Rows[0][0].ToString();
        }
        else return "a";
    }
    protected void btncmp_Click(object sender, EventArgs e)
    {
        string fptitle = fp_list.SelectedValue;
        string sdtitle = sd_list.SelectedValue;
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from " + db1 + " where title like '" + fptitle + "'", con);
        SqlCommand cmd2 = new SqlCommand("select * from " + db2 + " where title like '" + sdtitle + "'", con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        da1.Fill(dt1);
        da2.Fill(dt2);
        string fn = dt1.Rows[0][1].ToString();
        string sn = dt2.Rows[0][1].ToString();
        string fde = dt1.Rows[0][2].ToString();
        string sde = dt2.Rows[0][2].ToString();
        decimal fm = Convert.ToDecimal(dt1.Rows[0][4].ToString());
        int sm = Convert.ToInt32(dt2.Rows[0][11].ToString());
        decimal fp = Convert.ToDecimal(dt1.Rows[0][5].ToString());
        int sp = Convert.ToInt32(dt2.Rows[0][10].ToString());
        string fl = dt1.Rows[0][6].ToString();
        string sl = dt2.Rows[0][4].ToString();
        string fb = dt1.Rows[0][8].ToString();
        string sb = dt2.Rows[0][3].ToString();
        string fs = dt1.Rows[0][10].ToString();
        string ss = dt2.Rows[0][12].ToString();
        string fi = insertimg(fp_list.SelectedValue, 1);
        string si = insertimg(sd_list.SelectedValue, 2);
        Session["fn"] = fn; Session["sn"] = sn;
        Session["fde"] = fde; Session["sde"] = sde;
        Session["fi"] = fi; Session["si"] = si;
        Session["fm"] = fm; Session["sm"] = sm;
        Session["fp"] = fp; Session["sp"] = sp;
        Session["fl"] = fl; Session["sl"] = sl;
        Session["fb"] = fb; Session["sb"] = sb;
        Session["fs"] = fs; Session["ss"] = ss;
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = lbl_cat.Text;
        Response.Redirect("comparison.aspx");
    }
    protected void fp_list_SelectedIndexChanged(object sender, EventArgs e)
    {
        string url, img = fp_list.SelectedValue;
        url = insertimg(img, 1);
        fp_img.ImageUrl = url;
        insertprice(1);
    }
    protected void sd_list_SelectedIndexChanged(object sender, EventArgs e)
    {
        string url, img = sd_list.SelectedValue;
        url = insertimg(img, 2);
        sd_img.ImageUrl = url;
        insertprice(2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
    public void insertprice(int x)
    {
        string fptitle = fp_list.SelectedValue;
        string sdtitle = sd_list.SelectedValue;
        SqlConnection con = new SqlConnection("server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;");
        con.Open();
        if (x == 1)
        {
            SqlCommand cmd1 = new SqlCommand("select * from " + db1 + " where title like '" + fptitle + "'", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            fpprice.Text = dt1.Rows[0][5].ToString();
        }
        else if (x == 2)
        {
            SqlCommand cmd2 = new SqlCommand("select * from " + db2 + " where title like '" + sdtitle + "'", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            sdprice.Text = dt2.Rows[0][10].ToString();
        }
        
    }
}