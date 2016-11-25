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
            var pageUrl = HttpContext.Current.Request.RawUrl;
            var splitPageUrl = pageUrl.Split('/');
            switch (splitPageUrl[splitPageUrl.Length - 1])
            {
                case "MainTrackingPage.aspx":
                    Page.Title = "D.S Library";

                    break;
                case "Services.aspx":
                    Page.Title = "Services - D.S Library";
                    break;
                case "RegisterPage.aspx":
                    Page.Title = "Register - D.S Library";
                    break;
                case "CatalougePage.aspx":
                    Page.Title = "Catalouges";
                    break;
                case "Contact.aspx":
                    Page.Title = "D.S Library";
                    break;
            }

        }
    }
}