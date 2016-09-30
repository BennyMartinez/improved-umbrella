using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PuntoDeVenta
{
	public partial class Proveedor : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            DataSet data = SQLManager.Ejecutar_Query_Con_SP("sp_getProveedor");
            this.gvProveedor.DataSource = data;
            this.gvProveedor.DataBind();
            gvProveedor.HeaderRow.TableSection = TableRowSection.TableHeader;
		}
	}
}