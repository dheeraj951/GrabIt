using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_ka";
        string db2 = "sd_ka";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Kitchen Appliances";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_au";
        string db2 = "sd_au";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Automotives";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_bc";
        string db2 = "sd_bc";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Baby Care";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_cm";
        string db2 = "sd_cm";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Cameras";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_cp";
        string db2 = "sd_cp";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Computer Pheripherals";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_ew";
        string db2 = "sd_ew";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Eyewear";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_fn";
        string db2 = "sd_fn";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Furniture";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_gm";
        string db2 = "sd_gm";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Gaming";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_ha";
        string db2 = "sd_ha";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Home Appliances";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_hi";
        string db2 = "sd_hi";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Home Improvement Tools";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_mb";
        string db2 = "sd_mb";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Mobiles";
        Response.Redirect("search.aspx");
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        string db1 = "fp_wt";
        string db2 = "sd_wt";
        Session["db1"] = db1;
        Session["db2"] = db2;
        Session["cat"] = "Watches";
        Response.Redirect("search.aspx");
    }
}