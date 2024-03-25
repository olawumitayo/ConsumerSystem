using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecagonConsumerPortal
{
    public partial class ConsumerRegistration : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["db_connection"].ConnectionString;
         static string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "select * from tbl_Consumer order by Id desc";
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                conn.Close();
            }
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            Id = GridView1.SelectedRow.Cells[1].Text.ToString();
            txtFirstName.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            txtLastName.Text= GridView1.SelectedRow.Cells[3].Text.ToString();
           txtDOB.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            txtBusinessType.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            drpState.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            txtAddress.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            txtPhone.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            rdGender.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "insert into tbl_Consumer(FirstName,LastName,DOB,BusinessType,State,Address,PhoneNo,Gender) " +
                "values(@fName,@LName,@dob,@BusinessType,@State,@Address,@Phone,@Gender)";
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(query,conn);
                    cmd.Parameters.AddWithValue("@fName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@dob", txtDOB.Text);
                    cmd.Parameters.AddWithValue("@BusinessType",txtBusinessType.Text);
                    cmd.Parameters.AddWithValue("@State", drpState.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@Gender", rdGender.Text);

                    int rowSaved=cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rowSaved > 0)
                    {
                        lblMessage.Text = "Consumer Record Saved Successfully";

                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtDOB.Text = "";
                        txtBusinessType.Text = "";
                        drpState.Text = "";
                        txtAddress.Text = "";
                        txtPhone.Text = ""; 
                        rdGender.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Error while Saving Your Record";
                    }

                }

                
            }
            catch (Exception)
            {

                throw;
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "update tbl_Consumer set FirstName=@fName,LastName=@LName,DOB=@dob,BusinessType=@BusinessType,State=@State,Address=@Address,PhoneNo=@Phone,Gender=@Gender where " +
                        "Id=@Id";
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@fName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@dob", txtDOB.Text);
                    cmd.Parameters.AddWithValue("@BusinessType", txtBusinessType.Text);
                    cmd.Parameters.AddWithValue("@State", drpState.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@Gender", rdGender.Text);
                    cmd.Parameters.AddWithValue("@Id", Id);
                    int rowSaved = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rowSaved > 0)
                    {
                        lblMessage.Text = "Consumer Record updated Successfully";

                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtDOB.Text = "";
                        txtBusinessType.Text = "";
                        drpState.Text = "";
                        txtAddress.Text = "";
                        txtPhone.Text = "";
                        rdGender.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Error while Updating Your Record";
                    }

                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "delete tbl_Consumer where Id=@Id";
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(query, conn);
                    
                    cmd.Parameters.AddWithValue("@Id", Id);
                    int rowSaved = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rowSaved > 0)
                    {
                        lblMessage.Text = "Consumer Record Deleted Successfully";

                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtDOB.Text = "";
                        txtBusinessType.Text = "";
                        drpState.Text = "";
                        txtAddress.Text = "";
                        txtPhone.Text = "";
                        rdGender.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Error while deleting Your Record";
                    }

                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}