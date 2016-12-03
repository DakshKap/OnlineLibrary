using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection("Server=localhost\\SqlExpress;Database=DS_Library;" + "Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] == null)
            {
                Response.Redirect("MainTrackingPage.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    SetDetails();
                }
            }
        }


        public void SetDetails()
        {
            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM DS_Library.[dbo].Users WHERE Email = @Username;", conn);

            cmdSelect.Parameters.Add("@Username", System.Data.SqlDbType.NVarChar);
            cmdSelect.Parameters["@Username"].Value = Session["Username"];



            SqlDataAdapter sda = new SqlDataAdapter(cmdSelect);
            System.Data.DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);


            txtBoxName.Text = (string)(dt.Rows[0][0]);
            txtBoxEmail.Text = (string)(dt.Rows[0][1]);
            txtBoxAddress.Text = (string)(dt.Rows[0][3]);

            txtBoxAddress.ReadOnly = true;
            txtBoxEmail.ReadOnly = true;
            txtBoxName.ReadOnly = true;


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            SetDetails();
            btnCancel.Visible = false;
            btnConfirm.Visible = false;

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            btnCancel.Visible = false;
            btnConfirm.Visible = false;


            SqlCommand cmdUpdtUser = new SqlCommand("UPDATE DS_Library.[dbo].Users SET Name = @Name ,Address =@Address WHERE Email = @Email;", conn);

            cmdUpdtUser.Parameters.Add("@Email", System.Data.SqlDbType.VarChar);
            cmdUpdtUser.Parameters["@Email"].Value = txtBoxEmail.Text;

            cmdUpdtUser.Parameters.Add("@Name", System.Data.SqlDbType.VarChar);
            cmdUpdtUser.Parameters["@Name"].Value = txtBoxName.Text;

            cmdUpdtUser.Parameters.Add("@Address", System.Data.SqlDbType.VarChar);
            cmdUpdtUser.Parameters["@Address"].Value = txtBoxAddress.Text;

            try
            {
                conn.Open();
                cmdUpdtUser.ExecuteNonQuery();
                SetDetails();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            btnEdit.Visible = false;
            btnCancel.Visible = true;
            btnConfirm.Visible = true;

            txtBoxAddress.ReadOnly = false;
            txtBoxEmail.ReadOnly = true;
            txtBoxName.ReadOnly = false;
        }
    }
}