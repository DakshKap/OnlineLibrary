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
            if (!IsPostBack){
                BindDetails();
            }
        }

        //Created By Daksh Kapur
        public void BindDetails()
        {


            SqlCommand cmdSelect = new SqlCommand("Select * from DS_Library.[dbo].Books;", conn);



            try
            {
                conn.Open();
                DataListProducts.DataSource = cmdSelect.ExecuteReader();
                DataListProducts.DataBind();
            }
            catch
            {
                conn.Close();
            }
        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                int bookID = Convert.ToInt32(e.CommandArgument);
                Label1.Text = bookID.ToString();
                // Session["BookID"] = bookID;
                //Response.Redirect("IndividualBookPage.apsx");
            }
        }

       
    }
}