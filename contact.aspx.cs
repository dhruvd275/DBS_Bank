using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace WebApplication12
{
    public partial class contact : System.Web.UI.Page
    {
        public string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\WN-78 - AMD Ryzen\\Desktop\\V2 Asp.net\\project\\App_Data\\Database1.mdf\";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string name = txtName.Text;
            string email = txtEmail.Text;
            string phoneNumber = txtPhoneNumber.Text;
            string selectedPackage = ddlPackages.SelectedValue;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();


      

                using (SqlCommand cmd = new SqlCommand("INSERT INTO Contact (Name, Email, Phone, Package) VALUES (@Name, @Email, @PhoneNumber, @SelectedPackage)", con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@SelectedPackage", selectedPackage);

                    cmd.ExecuteNonQuery();
                }
            }


            Response.Redirect("ThankYouPage.aspx");
        }
    }
}
