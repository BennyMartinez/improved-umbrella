using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace PuntoDeVenta.App_Code.Tools
{
    public class EmpleadoDAO
    {
        public DataSet buscarEmpleado()
        {
            DataSet datosEmp = SQLManager.Ejecutar_Query_Con_SP("sp_getAdmon");
            return datosEmp;
        }

        public void agregarEmpleado(String sNombre, String sApellidoP, String sApellidoM, DateTime dtFechaNac, DateTime dtFechaIng, String sTelefono, String sCelular, String sCorreo, String sCalle, int iNumero, String sColonia, int iCP, String sPW, int iMunicipio, int iActivo, int iTipo)
        {
            SQLManager.Ejecutar_Query_Con_SP("sp_addEmployee");
        }

        public DataSet buscarMun()
        {
            DataSet datosMun = SQLManager.Ejecutar_Query_Con_SP("dsmun");
            return datosMun;
        }

        public DataSet buscarTipo()
        {
            DataSet datosTipo = SQLManager.Ejecutar_Query_Con_SP("sp_getTipoEmp");
            return datosTipo;
        }
    }
}