using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Comp229_TeamProject
{
    public partial class IndividualBookPage : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Demo.Text = (string)(Session["BookID"]);
            if (!IsPostBack)
            {
                BindData();
            }
            
        }

        protected void BindData()
        {

            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM DS_Library.[dbo].Books WHERE BookId = @BookID;", conn);

            cmdSelect.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            cmdSelect.Parameters["@BookID"].Value = Session["BookID"];

            

            try
            {
                conn.Open();
                DataListIndividual.DataSource = cmdSelect.ExecuteReader();
                DataListIndividual.DataBind();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void DataListIndividual_ItemCommand(object source, DataListCommandEventArgs e)
        {
          


            if (e.CommandName == "Rent")
            {
                int bookID = Convert.ToInt32(e.CommandArgument);
                if (Session["Username"] != null)
                {
                    SqlCommand cmdRent = new SqlCommand("INSERT INTO DS_Library.[dbo].Rentals( UserEmail, BookID) VALUES(@UserID, @BookID); ",conn);

                    cmdRent.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
                    cmdRent.Parameters["@BookID"].Value = Session["BookID"];

                    cmdRent.Parameters.Add("@UserID", System.Data.SqlDbType.VarChar);
                    cmdRent.Parameters["@UserID"].Value = (string)(Session["Username"]);

                    try
                    {
                        conn.Open();
                        cmdRent.ExecuteNonQuery();
                        Response.Redirect("CataloguePage.aspx");
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
                else
                {
                    
                    label1.Text ="Login First" ;
                }
            }
        }
    }
}