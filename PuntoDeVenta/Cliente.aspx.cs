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
    }
}