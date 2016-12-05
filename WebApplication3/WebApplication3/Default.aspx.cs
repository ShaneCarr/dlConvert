using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication3
{

    public partial class _Default : Page
    {
        List<CheckBox> boxes = new List<CheckBox>();
        List<string> ids = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var items = Request.QueryString["paths"];
                if (items != null)
                {
                    this.container.Visible = true;
                    var itemsList = items.Split(',');

                    foreach (var itm in itemsList)
                    {

                        HtmlGenericControl ili = new HtmlGenericControl("li");
                        
                        ListItem b = new ListItem();
                        b.Text = itm;
                        b.Value = itm;
                        b.Enabled = true;
                        
                        this.CheckBoxList1.Items.Add(b);
                    }

                    CheckBox selectAll = new CheckBox();
                    selectAll.ID = "selectall";
                    selectAll.Text = "Select All";
                    this.containerSelectAll.Controls.Add(selectAll);

                    // can add alias too.
                    this.ViewState["clientids"] = ids;
                }
                else
                {
                    this.container.Visible = false;
                }
            }
            else
            {
                var groups = new List<string>();
                var selectedGroups = new List<string>();

                var i = this.ViewState["clientids"] as List<string>;
                foreach (ListItem li in this.CheckBoxList1.Items)
                {
                    if(li.Selected)
                    {
                        selectedGroups.Add(li.Value);
                    }
                }               
            }
        }
    }
}