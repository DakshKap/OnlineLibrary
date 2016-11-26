using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class AdminPage : System.Web.UI.Page
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


            using (SqlConnection connection = conn)
            {
                connection.Open();

                SqlCommand cmdSelectBooks = new SqlCommand("Select * from DS_Library.[dbo].Books;", connection);
                SqlCommand cmdSelectUsers = new SqlCommand("Select  Name, Email, Address from DS_Library.[dbo].Users;", connection);



                using (SqlCommand command = cmdSelectBooks)
                {
                    //Command 1
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        BooksGrid.DataSource = reader;
                        BooksGrid.DataBind();
                    }

                }

                using (SqlCommand command = cmdSelectUsers)
                {

                    //Command 2
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        UsersGrid.DataSource = reader;
                        UsersGrid.DataBind();
                    }

                }

            }



        }
    }
    }