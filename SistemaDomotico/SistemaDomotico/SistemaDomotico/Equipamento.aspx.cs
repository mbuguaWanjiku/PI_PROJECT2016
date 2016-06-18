using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaDomotico
{
    public partial class Equipamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList myDropDownList = ListView1.InsertItem.FindControl("tipoEquipamento") as DropDownList;
            //List<string> tipos = new List<string> { "GM", "TM", "AC" };
            //myDropDownList.DataTextField = "Value";
            //myDropDownList.DataValueField = "Id";
            //myDropDownList.DataBind();

            //myDropDownList.Items.Insert(0, new ListItem("Please select", ""));


        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            //string sv = ((DropDownList)e.Item.FindControl("tipoEquipamento")).SelectedValue;
           
            //equipamentoDS.InsertParameters.Add("fk_compartimento", "1");

        }
    }
}