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
            catch
            {
                conn.Close();
            }
        }

        protected void DataListIndividual_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}