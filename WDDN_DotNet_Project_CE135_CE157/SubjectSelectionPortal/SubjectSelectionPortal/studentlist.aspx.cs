using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SubjectSelectionPortal
{
    public partial class studentlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            studentportalEntities2 db = new studentportalEntities2();
            StudentListView.DataSource = db.subjectselections.ToList();
            StudentListView.DataBind();
        }
    }
}