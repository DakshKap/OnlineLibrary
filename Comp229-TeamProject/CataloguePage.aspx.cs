using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Comp229_TeamProject
{
    public partial class CataloguePage : System.Web.UI.Page
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


            SqlCommand cmdSelect = new SqlCommand("Select Name,Author,[Publish year],Genre from DS_Library.[dbo].Books;", conn);



             try
            {
                conn.Open();
                BooksGrid.DataSource = cmdSelect.ExecuteReader();
                BooksGrid.DataBind();
            }
            catch
            {
                conn.Close();
            }
        }
    }
}