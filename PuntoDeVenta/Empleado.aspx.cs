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
        bool bOpcion;
        protected void Page_Load(object sender, EventArgs e)
        {
           try
           {
               _mostrarEmpleado();
               _mostrarMunEmp();              
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
            String sNombre = this.txtNombre.Text, 
            sApellidoP = this.txtApat.Text, 
            sApellidoM = this.txtAmat.Text, 
            sTelefono = this.txtTel.Text, 
            sCelular = this.txtCel.Text, 
            sCorreo = this.txtCorreo.Text, 
            sCalle = this.txtCalle.Text, 
            sColonia = this.txtColonia.Text, 
            sPW = this.txtPW.Text;

            DateTime dtFechaNac = Convert.ToDateTime(this.txtFechaNa.Text), 
            dtFechaIng = DateTime.Today;

            int iNumero = Convert.ToInt32(this.txtNumero.Text), 
            iCP = Convert.ToInt32(this.txtCP.Text), 
            iMunicipio = Convert.ToInt32(this.txtMun.SelectedValue), 
            iActivo = 1, iTipo = Convert.ToInt32(this.txtTipo.Text);

            Facade.altaEmpleado(sNombre,sApellidoP,sApellidoM,dtFechaNac,dtFechaIng,sTelefono,sCelular,sCorreo,sCalle,iNumero,sColonia,iCP,sPW,iMunicipio,iActivo,iTipo);
            Response.Redirect("Empleado.aspx");
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
            if(bOpcion)
            {

            }
            else
            {
                _agregarEmpleado();
            }
        }

        // Cambio ID

        protected void gvEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.btnAgregar.Text = "Modificar";
            this.txtNombre.Text = this.gvEmpleado.SelectedRow.Cells[2].Text; ;
            this.txtApat.Text = this.gvEmpleado.SelectedRow.Cells[3].Text; ;
            this.txtAmat.Text = this.gvEmpleado.SelectedRow.Cells[4].Text; ;
            //this.txtFechaNa.Text = this.gvEmpleado.SelectedRow.Cells[5].Text;
            this.txtTel.Text = this.gvEmpleado.SelectedRow.Cells[7].Text;
            this.txtCel.Text = this.gvEmpleado.SelectedRow.Cells[8].Text;
            this.txtCorreo.Text = this.gvEmpleado.SelectedRow.Cells[9].Text;
            this.txtCalle.Text = this.gvEmpleado.SelectedRow.Cells[10].Text;
            this.txtNumero.Text = this.gvEmpleado.SelectedRow.Cells[11].Text;
            this.txtColonia.Text = this.gvEmpleado.SelectedRow.Cells[12].Text;
            this.txtCP.Text = this.gvEmpleado.SelectedRow.Cells[13].Text;
            this.txtPW.Text = this.gvEmpleado.SelectedRow.Cells[14].Text; 

            //this.txtTipo.SelectedValue = this.gvEmpleado.SelectedRow.Cells[2].Text;




            //this.txtMun.SelectedValue = this.gvEmpleado.SelectedRow.Cells[2].Text;
            
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#myModal').modal('show'); $('.modal-title').html('Modificar Empleado');</script>", false);
            bOpcion = true;
        }

        protected void lAgregar_Click(object sender, EventArgs e)
        {
            limpiaCampos();
            this.btnAgregar.Text = "Agregar";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#myModal').modal('show'); $('.modal-title').html('Agregar Empleado');</script>", false);
            bOpcion = false;
        }

        public void limpiaCampos()
        {
            this.txtNombre.Text = "";
            this.txtApat.Text = "";
            this.txtAmat.Text = "";
            this.txtPW.Text = "";
            this.txtTipo.SelectedValue = "1";
            this.txtTel.Text = "";
            this.txtCel.Text = "";
            this.txtFechaNa.Text = "dd/mm/aaaa";
            this.txtCorreo.Text = "";
            this.txtCalle.Text = "";
            this.txtNumero.Text = "";
            this.txtColonia.Text = "";
            this.txtCP.Text = "";
            this.txtMun.SelectedValue = "1";
        }
    }
}