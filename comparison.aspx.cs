using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class comparison : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fp_name.Text = Session["fn"].ToString();
        fp_desc.Text = Session["fde"].ToString();
        fp_img.ImageUrl = Session["fi"].ToString();
        fp_mrp.Text = Session["fm"].ToString();
        fp_price.Text = Session["fp"].ToString();
        fp_br.Text = Session["fb"].ToString();
        fp_stk.Text = Session["fs"].ToString();
        sd_name.Text = Session["sn"].ToString();
        sd_desc.Text = Session["sde"].ToString();
        sd_img.ImageUrl = Session["si"].ToString();
        sd_mrp.Text = Session["sm"].ToString();
        sd_price.Text = Session["sp"].ToString();
        sd_br.Text = Session["sb"].ToString();
        sd_stk.Text = Session["ss"].ToString();
    }
    protected void fp_lnk_Click(object sender, EventArgs e)
    {
        Response.Redirect(Session["fl"].ToString());
    }
    protected void sd_lnk_Click(object sender, EventArgs e)
    {
        Response.Redirect(Session["sl"].ToString());
    }
    protected void back_Click(object sender, EventArgs e)
    {
        string db1 = Session["db1"].ToString();
        string db2 = Session["db2"].ToString();
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = Session["cat"].ToString();
        Response.Redirect("search.aspx");
    }
}