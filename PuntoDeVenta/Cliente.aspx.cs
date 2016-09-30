using PuntoDeVenta.App_Code.Tools;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoDeVenta
{
    public partial class Cliente : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
       {
         
            DataSet data = SQLManager.Ejecutar_Query_Con_SP("sp_getAdmon");
            this.gvCliente.DataSource = data;
            this.gvCliente.DataBind();
            gvCliente.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnAltaCliente_Click(object sender, EventArgs e)
        {
            // Datos Personales 
            String Nombre = this.txtNombreCliente.Text;
            String ApellidoPa = this.txtApat.Text;
            String ApellidoMa = this.txtAmat.Text;
            // Numero Contacto
            String Telefono = this.txtTel.Text;
            String Celular  = this.txtCel.Text;
            //Fecha Nacimiento
            DateTime FechaNa = Convert.ToDateTime(this.txtFechaNa.Text);
            DateTime FechaIng = Convert.ToDateTime(this.txtFechaIn.Text);
            //Direccion
            String Calle = this.txtCalle.Text;
            String NumeroCasa = this.txtNumeroCasa.Text;
            String Colonia = this.txtColonia.Text;
            String CP = this.txtCP.Text;
            String Municipio = this.txtMunicipio.Text;


            // DataSet Alta = fac.altaCliente(Nombre,ApellidoPa,ApellidoMa,Telefono,Celular,FechaNa,FechaIng,Calle,NumeroCasa,Colonia,CP,Municipio);
        }

     
    }
}