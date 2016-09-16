using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoDeVenta
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _iniciarSesion (object sender, EventArgs e)
        {
      /*      String sUser;
            String sPass;

            sUser = this.txtUser.Text;
            sPass = this.txtPass.Text;
            */

            DataSet dsPrueba;

        
            dsPrueba = SQLManager.Ejecutar_Query_Con_SP("sp_getAdmon");

            Response.Write(dsPrueba);   
              
            
            
            }

        }
    }
