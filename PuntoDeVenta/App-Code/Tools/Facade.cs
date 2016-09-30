using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace PuntoDeVenta.App_Code.Tools
{
    public class Facade
    {

        //  poner todos los Parametros de Cliente 
        public DataSet altaCliente(string Nombre, String ApePA , String ApeMa )
        {
            ClienteDAO clienteDao = new ClienteDAO();            
            return clienteDao.altaCliente();
         }
    }
}