using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaDomotico
{
    public partial class demoHttphandler : System.Web.UI.Page,IHttpHandler
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            StringBuilder stringJson = new StringBuilder();
            stringJson.Append("HELLO WORLD");
            context.Response.Write("[" + stringJson.ToString() + "]");


        }
    }
}
