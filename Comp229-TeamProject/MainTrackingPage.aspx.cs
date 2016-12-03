using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Comp229_TeamProject
{
    public partial class MainTrackingPage : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDetails();
            }
        }


        public void BindDetails()
        {


            SqlCommand cmdSelect = new SqlCommand("SELECT TOP 3 * FROM DS_Library.[dbo].Books t ORDER BY t.BookID DESC ;", conn);



            try
            {
                conn.Open();
                DataListRecentItems.DataSource = cmdSelect.ExecuteReader();
                DataListRecentItems.DataBind();
                DataListRecentItems.RepeatColumns = 3;
            }
            catch
            {
                conn.Close();
            }
        }


    }
}