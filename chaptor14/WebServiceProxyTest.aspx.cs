using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chaptor14
{
    public partial class WebServiceProxyTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static double Devide(double x, double y)
        {
            if (y == 0)
            {
                throw new DivideByZeroException();
            }

            return x / y;

        }
    }


   
}