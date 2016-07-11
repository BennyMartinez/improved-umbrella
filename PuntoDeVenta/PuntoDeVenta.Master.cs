using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoDeVenta
{
    public partial class PuntoDeVenta : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region hola mundo
            try
            {
                if(IsPostBack)
                {
                    Response.Redirect("Hola Mundo");
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error"+ex);
            }
            #endregion
        }
    }
}