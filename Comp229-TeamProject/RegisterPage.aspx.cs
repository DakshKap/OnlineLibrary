using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
protected void btnConfirm_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;" + "Integrated Security=True");
            bool IsAdded = false;
            string Name = txtBoxName.Text;
          
            string emailaddress = txtBoxEmail.Text;

            string password = txtBoxPassword.Text;
            string confirmPassword = txtBoxConfirmPassword.Text;
            string address = txtBoxAddress.Text;

            if (password == confirmPassword)
            {


                SqlCommand cmd = new SqlCommand("Insert into DS_Library.[dbo].Users (Name, Email_Address,Password,Address)values( @Name, @Email , @Password,@Address)", conn);
            
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Email", emailaddress);
                cmd.Parameters.AddWithValue("@Password", password);

                cmd.Parameters.AddWithValue("@Address", address);
               
                conn.Open();
                IsAdded = cmd.ExecuteNonQuery() > 0;
              
                conn.Close();

                Response.Redirect("LoginPage.aspx");
            }
           
            else
            {
                Response.Redirect("RegisterPage.aspx");
            }
        }
           
    }
}