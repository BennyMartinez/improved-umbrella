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
    public partial class Empleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           try
           {
               _mostrarEmpleado();                              
           }
           catch(Exception ex)
           {
               Response.Write(ex);
           }                        
        }

        public void _mostrarEmpleado()
        {
            DataSet data = Facade.obtenerEmpleado();
            this.gvEmpleado.DataSource = data;
            this.gvEmpleado.DataBind();
            if(gvEmpleado.HeaderRow != null)
            gvEmpleado.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void _agregarEmpleado()
        {
            //obtengo los datos del formulario 
            String sNombre = this.txtNombre.Text, sApellidoP = this.txtApat.Text, sApellidoM = this.txtAmat.Text, sTelefono = this.txtTel.Text, sCelular = this.txtCel.Text, sCorreo = this.txtCorreo.Text, sCalle = this.txtCalle.Text, sColonia = this.txtColonia.Text, sPW = this.txtPW.Text;
            DateTime dtFechaNac = Convert.ToDateTime(this.txtFechaNa.Text), dtFechaIng = DateTime.Today;
            int iNumero = Convert.ToInt16(this.txtNumero.Text), iCP = Convert.ToInt32(this.txtCP.Text), iMunicipio = Convert.ToInt32(this.txtMun.SelectedValue), iActivo = 1, iTipo = Convert.ToInt32(this.txtTipo.Text);
            Facade.altaEmpleado(sNombre,sApellidoP,sApellidoM,dtFechaNac,dtFechaIng,sTelefono,sCelular,sCorreo,sCalle,iNumero,sColonia,iCP,sPW,iMunicipio,iActivo,iTipo);
        }

        public void _mostrarMunEmp()
        {
            DataSet datoMun = Facade.obtenerMun();
            DataSet datoTipoEmo = Facade.obtenerTipo();

            this.txtMun.DataSource = datoMun;
            this.txtMun.DataTextField = "NOM_MUN";
            this.txtMun.DataValueField = "ID_MUN";
            this.txtMun.DataBind();

            this.txtTipo.DataSource = datoTipoEmo;
            this.txtTipo.DataTextField = "NOM_TIPO";
            this.txtTipo.DataValueField = "ID_TIPO";
            this.txtTipo.DataBind();            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            _agregarEmpleado();
        }

        protected void lAgregar_Click(object sender, EventArgs e)
        {
            _mostrarMunEmp();
        }
    }
}