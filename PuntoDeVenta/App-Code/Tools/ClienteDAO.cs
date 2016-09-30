using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PuntoDeVenta.App_Code.Tools
{
    public class ClienteDAO
    {
        public void altaCliente(String Nombre, String ApePA, String ApeMa, String Telefono, String Celular, String FechaNa, String FechaIng, String Calle, String NumeroCasa, String Colonia, int CP, int Municipio)
        {
        
            // Parametros
                // Nombre
            SqlParameter paramNombre = new SqlParameter("@NOM_CLI", Nombre);
            SqlParameter paramApePa = new SqlParameter("@APAT_CLI", ApePA);
            SqlParameter paramApeMa = new SqlParameter("@AMAT_CLI", ApeMa);
                // Contacto
            SqlParameter paramTel = new SqlParameter("@TEL_CLI", Telefono);
            SqlParameter paramCel = new SqlParameter("@CEL_CLI", Celular);
                // Fechas
            SqlParameter paramFechaIng = new SqlParameter("@FECHAING_CLI", FechaIng);
            SqlParameter paramFechaNa  = new SqlParameter("@FECHANAC_CLI", FechaNa);
            //Direccion 
            SqlParameter paramCalle = new SqlParameter("@CALLE_CLI", Calle);
            SqlParameter paramColonia = new SqlParameter("@COL_CLI", Colonia);
            SqlParameter paramNumeroCasa = new SqlParameter("@NUM_CLI", NumeroCasa);
            SqlParameter paramCP = new SqlParameter("@CP_CLI", CP);
            SqlParameter paramMunicipio = new SqlParameter("@ID_MUN ", Municipio);

            // Alta Cliente 
            SQLManager.Ejecutar_Query_Con_SP("sp_altaCliente", paramNombre, paramApePa,paramApeMa,paramFechaNa,paramFechaIng,paramTel,paramCel,paramCalle,paramNumeroCasa,paramColonia,paramCP,paramMunicipio);
        }
    }
}