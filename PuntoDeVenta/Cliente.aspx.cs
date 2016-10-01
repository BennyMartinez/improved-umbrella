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
            if (!IsPostBack)
            {

            // Carga Municipios DDL  
            DataSet dsmun = SQLManager.Ejecutar_Query_Con_SP("dsmun");
            this.ddlMunicipio.DataSource = dsmun;
            this.ddlMunicipio.DataValueField = "ID_MUN";
            this.ddlMunicipio.DataTextField = "NOM_MUN";
            this.ddlMunicipio.DataBind();

            }

            // Carga Tabla Cliente 
            DataSet data = SQLManager.Ejecutar_Query_Con_SP("sp_getClientes");

            if (data != null)
            {
                this.gvCliente.DataSource = data;
                this.gvCliente.DataBind();
                gvCliente.HeaderRow.TableSection = TableRowSection.TableHeader;

            }
          
        }

          // Boton del Modal Alta 
            protected void btnAltaCliente_Click(object sender, EventArgs e)
        {
            // Datos Personales 
            String Nombre = this.txtNombreCliente.Text;
            String ApellidoPa = this.txtApat.Text;
            String ApellidoMa = this.txtAmat.Text;
            // Numero Contacto
            String Telefono = this.txtTel.Text;
            String Celular = this.txtCel.Text;
            //Fecha Nacimiento
            String FechaNa =  this.txtFechaNa.Text;
            String FechaIng = DateTime.Today.ToShortDateString();
            
            //Direccion
            String Calle = this.txtCalle.Text;
            String NumeroCasa = this.txtNumeroCasa.Text;
            String Colonia = this.txtColonia.Text;
            int CP = Convert.ToInt32(this.txtCP.Text);
            int Municipio = Convert.ToInt32(this.ddlMunicipio.SelectedValue);

      Facade.altaCliente(Nombre,ApellidoPa,ApellidoMa,Telefono,Celular,FechaNa,FechaIng,Calle,NumeroCasa,Colonia,CP,Municipio);

            Response.Redirect("/Cliente.aspx");


        }


}

}