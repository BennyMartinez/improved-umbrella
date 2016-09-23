using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoDeVenta
{
    // Faltan Validaciones 

    /*Crear Sp en la base de datos
     * create procedure  sp_login
    @user nvarchar(50),
    @pass nvarchar(50)
    as 
       begin

select username , pass  from Login_Table where username =  @user and pass = @pass

END

     */


    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _iniciarSesion (object sender, EventArgs e)
        {
            // Declaraciones 
            String sUser;
            String sPass;
            DataSet dsLogin;

            // Inicializar de Valores
            sUser = this.txtUser.Text;
            sPass = this.txtPass.Text;      
            SqlParameter paramUser = new SqlParameter("@user", sUser);
            SqlParameter paramPass = new SqlParameter("@pass", sPass);
    
            // Ejecuta Store procedure 
            dsLogin = SQLManager.Ejecutar_Query_Con_SP("sp_login7" , paramUser , paramPass);
   

            int iRegistro = dsLogin.Tables[0].Rows.Count;

            // si hay 1 registro  // Redirige a la Pagina
            if ( iRegistro > 0){
               this.Response.Redirect("/Empleado.aspx"); 
            }
            else{
            }
            
            
            }

        }
    }
