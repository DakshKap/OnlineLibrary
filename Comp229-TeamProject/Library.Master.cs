using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class Library : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["Username"] !=null){
                btnPersonalCatalogue.Visible = true;
                btnProfile.Visible = true;
            }
            else
            {
                btnPersonalCatalogue.Visible = false;
                btnProfile.Visible = false;
            }
            if(Session["Name"] != null)
            {
                string name = (string)(Session["Name"]);
                btnLogout.Visible = true;
                
                btnLogin.Visible = false;
                UserDynamicName.InnerText = name;
                // UserDynamicName.Title = (string)(Session["Name"]);

            }else
            {
                btnLogout.Visible = false;
                btnLogin.Visible = true;
                UserDynamicName.InnerText = "User";
            }


            var pageUrl = HttpContext.Current.Request.RawUrl;
            var splitPageUrl = pageUrl.Split('/');
            switch (splitPageUrl[splitPageUrl.Length - 1])
            {
                case "MainTrackingPage.aspx":
                    Page.Title = "D.S Library";

                    break;
                case "AdminPagea.aspx":
                    Page.Title = "Administrator - D.S Library";
                    break;
                case "RegisterPage.aspx":
                    Page.Title = "Register - D.S Library";
                    break;
                case "CataloguePage.aspx":
                    Page.Title = "Catalogues";
                    break;
                case "Services.aspx":
                    Page.Title = "D.S Library";
                    break;
                case "LoginPage.aspx":
                    Page.Title = "Login - D.S Library";
                    break;

            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();

            Response.Redirect("MainTrackingPage.aspx");
           
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void btnPersonalCatalogue_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonalCatalouge.aspx");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePage.aspx");
        }
    }
}