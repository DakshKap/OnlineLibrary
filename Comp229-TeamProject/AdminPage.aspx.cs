using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Comp229_TeamProject
{
    // whole page done by Daksh Kapur
    public partial class AdminPage : System.Web.UI.Page
    {
          private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUsername"] == null)
            {
                Response.Redirect("MainTrackingPage.aspx");
            }

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
                SqlCommand cmdSelectBooksAndUsers = new SqlCommand("select a.Name, a.Email,a.Address, c.Title FROM DS_Library.[dbo].[Users] a Inner JOIN  DS_Library.[dbo].[Rentals] b ON a.Email = b.UserEmail Inner JOIN DS_Library.[dbo].[Books] c ON b.BookID = c.BookID; ", connection);


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

                using (SqlCommand command = cmdSelectBooksAndUsers)
                {

                    //Command 3
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        UserRent.DataSource = reader;
                        UserRent.DataBind();
                    }

                }

            }



        }

        protected void BooksGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = (GridViewRow)BooksGrid.Rows[e.RowIndex];
            Int32 BookId = Convert.ToInt32(row.Cells[0].Text);

            SqlCommand cmdRental = new SqlCommand("DELETE FROM DS_Library.[dbo].[Rentals] WHERE BookID = @BookID;", conn);
            SqlCommand cmdDelete = new SqlCommand("DELETE From DS_Library.[dbo].[Books] WHERE BookID = @BookID;", conn);
            SqlCommand cmdRentalchk = new SqlCommand("Select * FROM DS_Library.[dbo].[Rentals] WHERE BookID =@BookID;", conn);

            cmdDelete.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            cmdDelete.Parameters["@BookID"].Value = BookId;

            cmdRental.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            cmdRental.Parameters["@BookID"].Value = BookId;

            cmdRentalchk.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            cmdRentalchk.Parameters["@BookID"].Value = BookId;

            SqlDataAdapter sda = new SqlDataAdapter(cmdRentalchk);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            

                try
            {
                conn.Open();
                if (dt != null)
                {
                    cmdRental.ExecuteNonQuery();
                }
                cmdDelete.ExecuteNonQuery();

            }
            finally
            {
                conn.Close();
            }
            BindDetails();

        }

        protected void BooksGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow row = (GridViewRow)BooksGrid.Rows[e.RowIndex];
            TextBox textName = (TextBox)row.Cells[1].Controls[0];
            TextBox textAuthor = (TextBox)row.Cells[2].Controls[0];
            TextBox textPublishYear = (TextBox)row.Cells[3].Controls[0];
            TextBox textGenre = (TextBox)row.Cells[4].Controls[0];
            TextBox textDescription = (TextBox)row.Cells[5].Controls[0];

            string name, author, publishYear,genre, description;
            string BookID = ViewState["BookID"].ToString();
          
            name = textName.Text;
            author = textAuthor.Text;
            publishYear = textPublishYear.Text;
            genre = textGenre.Text;
            description = textDescription.Text;

           

            BooksGrid.EditIndex = -1;

            
            SqlCommand cmdUpdtBooks = new SqlCommand("UPDATE DS_Library.[dbo].Books SET Title = @Name, Author = @Author, [Publish year] = @PublishYear,  Genre = @Genre , Description = @Description WHERE BookID = @BookID;", conn);

            cmdUpdtBooks.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            cmdUpdtBooks.Parameters["@BookID"].Value = Convert.ToInt32(BookID);



            cmdUpdtBooks.Parameters.Add("@Name", System.Data.SqlDbType.VarChar);
            cmdUpdtBooks.Parameters["@Name"].Value = name;

            cmdUpdtBooks.Parameters.Add("@Author", System.Data.SqlDbType.VarChar);
            cmdUpdtBooks.Parameters["@Author"].Value = author;


            cmdUpdtBooks.Parameters.Add("@PublishYear", System.Data.SqlDbType.Int);
            cmdUpdtBooks.Parameters["@PublishYear"].Value = Convert.ToInt32(publishYear);

            cmdUpdtBooks.Parameters.Add("@Genre", System.Data.SqlDbType.VarChar);
            cmdUpdtBooks.Parameters["@Genre"].Value = genre;

            cmdUpdtBooks.Parameters.Add("@Description", System.Data.SqlDbType.VarChar);
            cmdUpdtBooks.Parameters["@Description"].Value = description;

            BooksGrid.EditIndex = -1;
            try
            {
                conn.Open();
                // Label1.Text = "Reached Before.";
                cmdUpdtBooks.ExecuteNonQuery();
                // Label1.Text += "Reached After";

            }
            finally
            {

                conn.Close();
            }

            WarningLabel.Visible = false;
           
            BindDetails();


        }

        protected void BooksGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            BooksGrid.EditIndex = -1;
            WarningLabel.Visible = false;
            BindDetails();
            
        }

        protected void BooksGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Admin Wont be able to change book Id
            ViewState["BookID"] = BooksGrid.Rows[e.NewEditIndex].Cells[0].Text;
            WarningLabel.Visible = true;
            BooksGrid.EditIndex = e.NewEditIndex;
            BindDetails();
        }

        protected void UsersGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow) UsersGrid.Rows[e.RowIndex];
            //Label1.Text = row.Cells[0].Text;
            string userID = row.Cells[1].Text;

            SqlCommand cmdUsers = new SqlCommand("DELETE FROM DS_Library.[dbo].[Users] WHERE Email = @UserID;", conn);
            SqlCommand cmdRental = new SqlCommand("DELETE FROM DS_Library.[dbo].[Rentals] WHERE UserEmail=@UserID;", conn);
            SqlCommand cmdRentalchk = new SqlCommand("Select * FROM DS_Library.[dbo].[Rentals] WHERE UserEmail =@UserID;", conn);

            cmdRental.Parameters.Add("@UserID", System.Data.SqlDbType.VarChar);
            cmdRental.Parameters["@UserID"].Value = userID;

            cmdUsers.Parameters.Add("@UserID", System.Data.SqlDbType.VarChar);
            cmdUsers.Parameters["@UserID"].Value = userID;

            cmdRentalchk.Parameters.Add("@UserID", System.Data.SqlDbType.VarChar);
            cmdRentalchk.Parameters["@UserID"].Value = userID;


            SqlDataAdapter sda = new SqlDataAdapter(cmdRentalchk);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            try
            {
                conn.Open();
                if (dt != null)
                {
                    cmdRental.ExecuteNonQuery();
                }
                cmdUsers.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }

            BindDetails();
        }
    }
    }