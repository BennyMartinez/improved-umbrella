using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace PuntoDeVenta.App_Code.Tools
{
    public class ClienteDAO
    {
        public DataSet altaCliente()
        {
            // Alta Cliente 
            DataSet alta = SQLManager.Ejecutar_Query_Con_SP("");
            return alta;
        }
    }
}