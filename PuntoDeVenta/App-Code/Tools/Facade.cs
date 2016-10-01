using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace PuntoDeVenta.App_Code.Tools
{
    public static class Facade
    {

        //  Altas de Cliente 
        public static void altaCliente(String Nombre, String ApePA , String ApeMa ,String Telefono,String Celular, String FechaNa, String FechaIng,String Calle,String NumeroCasa,String  Colonia, int CP,int Municipio )
        {
            ClienteDAO clienteDao = new ClienteDAO();            
         clienteDao.altaCliente( Nombre, ApePA,  ApeMa,Telefono, Celular, FechaNa, FechaIng, Calle,NumeroCasa, Colonia, CP,Municipio);
         }
         //Bajas de Cliente ( Modificar Campo  en SP ) 
        public static void bajaCliente()
        {

        }

       
    }


}