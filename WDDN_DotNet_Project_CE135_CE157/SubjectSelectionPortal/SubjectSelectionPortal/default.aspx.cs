using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SubjectSelectionPortal
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SubjectList.Enabled = false;
            SubjectList.Items.Add(new ListItem("--Choose Subject--"));

        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            SubjectList.Enabled = true;

            if (ce.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Embedded System"));
                SubjectList.Items.Add(new ListItem("Computer Graphics"));
                SubjectList.Items.Add(new ListItem("Adv. Computer Networks"));
                SubjectList.Items.Add(new ListItem("Distributed OS"));
                SubjectList.Items.Add(new ListItem("Image Processing"));
                SubjectList.Items.Add(new ListItem("Mobile App Development"));
            }

            else if (it.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Machine Learning"));
                SubjectList.Items.Add(new ListItem("Digital Image Processing"));
                SubjectList.Items.Add(new ListItem("Mobile Computing"));
                SubjectList.Items.Add(new ListItem("Distributed Computing"));
                SubjectList.Items.Add(new ListItem("Web Technology"));
                SubjectList.Items.Add(new ListItem("Neural Networks"));
            }

            else if (ec.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Digital Switching System"));
                SubjectList.Items.Add(new ListItem("Wireless Communication"));
                SubjectList.Items.Add(new ListItem("High Speed Electronics"));
                SubjectList.Items.Add(new ListItem("Adaptive Signal Processing"));
                SubjectList.Items.Add(new ListItem("Wireless Sensor Networks"));
            }

            else if (ch.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Chemical Reactions"));
                SubjectList.Items.Add(new ListItem("Chemical Engg. Plant"));
                SubjectList.Items.Add(new ListItem("Thermodynamics"));
                SubjectList.Items.Add(new ListItem("Computer Aided Design"));
            }

            else if (mh.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Energy Conservation and Mngmt"));
                SubjectList.Items.Add(new ListItem("Steam and Gas Turbines"));
                SubjectList.Items.Add(new ListItem("Automobile Systems"));
                SubjectList.Items.Add(new ListItem("Tribology"));
                SubjectList.Items.Add(new ListItem("Hydraulic and Pneumatic Systems"));
                SubjectList.Items.Add(new ListItem("Robotics and Automation"));
            }

            else if (cl.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Repairs and Rehabitation"));
                SubjectList.Items.Add(new ListItem("Design of Hydraulic Structures"));
                SubjectList.Items.Add(new ListItem("Earthqueue Engg."));
                SubjectList.Items.Add(new ListItem("Concrete Technology"));
            }

            else if (ic.Checked)
            {
                SubjectList.Items.Clear();

                SubjectList.Items.Add(new ListItem("--Choose Subject--"));
                SubjectList.Items.Add(new ListItem("Analytical Instruments"));
                SubjectList.Items.Add(new ListItem("Smart Instruments"));
                SubjectList.Items.Add(new ListItem("Embedded System"));
                SubjectList.Items.Add(new ListItem("Digital Signal Processing"));
            }


            SubjectList.Focus();

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            studentportalEntities2 db = new studentportalEntities2();
            subjectselection entry = new subjectselection();

            entry.Studentid = id.Text;

            entry.Firstname = firstname.Text;

            entry.Lastname = lastname.Text;

            entry.Email = email.Text;

            entry.Contact = contact.Text;
            
            entry.Address = Request.Form["address"];
            
            entry.Semester = Int32.Parse(semester.Text);


            //Insertion of radio button values

            if (ce.Checked)
            {
                entry.Dept = ce.Text;
            }

            else if (it.Checked)
            {
                entry.Dept = it.Text;
            }

            else if (ec.Checked)
            {
                entry.Dept = ec.Text;
            }

            else if (ch.Checked)
            {
                entry.Dept = ch.Text;
            }

            else if (mh.Checked)
            {
                entry.Dept = mh.Text;
            }

            else if (cl.Checked)
            { 
                entry.Dept = cl.Text;
            }

            else if (ic.Checked)
            {
                entry.Dept = ic.Text;
            }

            //Insertion of dropdownlist values
            entry.Subject = SubjectList.SelectedItem.Text;

            entry.Comments = Request.Form["comments"];

            //Add entries and save changes
            db.subjectselections.Add(entry);

            db.SaveChanges();

            //AlertBox Message
            string message = "Your Responce has been Recorded";

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);


            //Resetting all fields after submiting

            id.Text = "";

            firstname.Text = "";

            lastname.Text = "";

            email.Text = "";

            contact.Text = "";

            semester.Text = "";

            //Clear all RadioButtons if checked
            ce.Checked = false;
            it.Checked = false;
            ec.Checked = false;
            ch.Checked = false;
            mh.Checked = false;
            cl.Checked = false;
            ic.Checked = false;

            //For Dropdownlist
            SubjectList.Enabled = false;
            SubjectList.Items.Clear();
            SubjectList.Items.Add(new ListItem("--Choose Subject--"));


        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            id.Text = "";

            firstname.Text = "";

            lastname.Text = "";

            email.Text = "";

            contact.Text = "";

            semester.Text = "";

            //Clear all RadioButtons if checked
            ce.Checked = false;
            it.Checked = false;
            ec.Checked = false;
            ch.Checked = false;
            mh.Checked = false;
            cl.Checked = false;
            ic.Checked = false;

            //For Dropdownlist
            SubjectList.Enabled = false;
            SubjectList.Items.Clear();
            SubjectList.Items.Add(new ListItem("--Choose Subject--"));

        }
    }
}