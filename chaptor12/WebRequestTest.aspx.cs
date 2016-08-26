using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaptor12
{
    public partial class WebRequestTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Headers["CustomClientClass_AsycPostback"] != null)
            {
                if(Request["usernametbx"]=="username" && Request["passwordtbx"] == "password")
                {
                    Thread.Sleep(3000);
                    Response.Write("username|password");
                    Response.End();
                }
                else
                {
                    throw new Exception("wrong credentials");
                }
            }
           
        }
    }
}