using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Comp229_TeamProject
{
   
    public partial class PersonalCatalouge : System.Web.UI.Page
    {

        private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] == null)
            {
                Response.Redirect("MainTrackingPage.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    BindDetails();
                }
            }
        }

        public void BindDetails()
        {

            SqlCommand cmdSelect = new SqlCommand(" select  c.Title,c.Author,c.SmallImageURL, c.BookID, c.Genre ,c.[Publish year] FROM DS_Library.[dbo].[Users] a Inner JOIN  DS_Library.[dbo].[Rentals] b ON a.Email = b.UserEmail and a.Email = @Email Inner JOIN DS_Library.[dbo].[Books] c ON b.BookID = c.BookID; ", conn);

            cmdSelect.Parameters.Add("@Email", System.Data.SqlDbType.VarChar);
            cmdSelect.Parameters["@Email"].Value = (string)(Session["Username"]);

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

        protected void DataListProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "GiveBack")
            {

                int bookID = Convert.ToInt32(e.CommandArgument);
                SqlCommand cmdRentalDelete = new SqlCommand("DELETE FROM DS_Library.[dbo].[Rentals] WHERE BookID = @BookID AND UserEmail = @Email;", conn);
                cmdRentalDelete.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
                cmdRentalDelete.Parameters["@BookID"].Value = bookID;

                cmdRentalDelete.Parameters.Add("@Email", System.Data.SqlDbType.VarChar);
                cmdRentalDelete.Parameters["@Email"].Value = (string)(Session["Username"]);


                try
                {
                    conn.Open();
                    cmdRentalDelete.ExecuteNonQuery();
                    Response.Redirect("PersonalCatalouge.aspx");
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
}