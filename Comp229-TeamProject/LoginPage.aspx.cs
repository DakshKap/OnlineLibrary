using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState;
namespace Comp229_TeamProject
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Done by Daksh Kapur
        protected void btnLoginUser_Click(object sender, EventArgs e)
        {
            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM DS_Library.[dbo].Users WHERE Email = @Username AND Password = @Password;", conn);

            cmdSelect.Parameters.Add("@Username", System.Data.SqlDbType.NVarChar);
            cmdSelect.Parameters["@Username"].Value= txtBoxUserName.Text;

            cmdSelect.Parameters.Add("@Password", System.Data.SqlDbType.NVarChar);
            cmdSelect.Parameters["@Password"].Value = txtBoxPassword.Text;

            SqlDataAdapter sda = new SqlDataAdapter(cmdSelect);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                Session.Clear();
                Session["Username"] = txtBoxUserName.Text;
                Session["Name"] = dt.Rows[0][0];
                Session["AdminUsername"] = null;
               // Session.Timeout(10);
                Response.Redirect("MainTrackingPage.aspx");
            }else
            {
                ErrorUser.Text = "Your Username Or Password is Incorrect.";
                ErrorUser.ForeColor = System.Drawing.Color.Red;
            }
        }
        // Done by Daksh Kapur
        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            SqlCommand cmdSelectAdmin = new SqlCommand("SELECT * FROM DS_Library.[dbo].Admin WHERE Email = @AdminUsername AND Password = @AdminPassword;", conn);

            cmdSelectAdmin.Parameters.Add("@AdminUsername", System.Data.SqlDbType.NVarChar);
            cmdSelectAdmin.Parameters["@AdminUsername"].Value = txtBoxUserNameAdmin.Text;

            cmdSelectAdmin.Parameters.Add("@AdminPassword", System.Data.SqlDbType.NVarChar);
            cmdSelectAdmin.Parameters["@AdminPassword"].Value = txtBoxPasswordAdmin.Text;

            SqlDataAdapter sda = new SqlDataAdapter(cmdSelectAdmin);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                Session.Clear();
                Session["AdminUsername"] = txtBoxUserName;
                Session["Name"] = dt.Rows[0][0];
                Session["Username"] = null;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                ErrorUser.Text = "Your Username Or Password is Incorrect.";
                ErrorUser.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}