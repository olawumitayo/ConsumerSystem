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
        DecagonDbEntities decagonDbEntities=new DecagonDbEntities();
        string connectionString = ConfigurationManager.ConnectionStrings["db_connection"].ConnectionString;
         static string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
                 
                GridView1.DataSource = decagonDbEntities.tbl_Consumer.OrderByDescending(o=>o.Id).ToList();
                GridView1.DataBind();
                
            }
            catch (Exception)
            {

                throw;
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
                var tblConsumer = new tbl_Consumer
                {
                     BusinessType= txtBusinessType.Text,
                     Address= txtAddress.Text,
                     DOB= txtDOB.Text,
                     FirstName= txtFirstName.Text,
                     LastName= txtLastName.Text,
                     State= drpState.SelectedItem.ToString(),
                     PhoneNo= txtPhone.Text,
                     Gender= rdGender.Text
                };
                decagonDbEntities.tbl_Consumer.Add(tblConsumer);
                int rowSaved=decagonDbEntities.SaveChanges();
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
            catch (Exception)
            {

                throw;
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                int newId = Convert.ToInt32(Id);
                var getRecord = decagonDbEntities.tbl_Consumer.Where(o => o.Id == newId).FirstOrDefault();
                getRecord.BusinessType = txtBusinessType.Text;
                getRecord.Address = txtAddress.Text;
                getRecord.DOB = txtDOB.Text;
                getRecord.FirstName = txtFirstName.Text;
                getRecord.LastName = txtLastName.Text;
                getRecord.State = drpState.SelectedItem.ToString();
                getRecord.PhoneNo = txtPhone.Text;
                getRecord.Gender = rdGender.Text;

                int rowSaved = decagonDbEntities.SaveChanges();
                

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
            catch (Exception)
            {

               
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int newId = Convert.ToInt32(Id);
                var getRecord = decagonDbEntities.tbl_Consumer.Where(o => o.Id == newId).FirstOrDefault();
                decagonDbEntities.tbl_Consumer.Remove(getRecord);

                int rowSaved= decagonDbEntities.SaveChanges();

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
            catch (Exception)
            {

            
            }
        }
    }
}