using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
            SqlParameter pNom = new SqlParameter("@pNom",sNombre);
            SqlParameter pAPat = new SqlParameter("@pAPat", sApellidoP);
            SqlParameter pAMat = new SqlParameter("@pAMat",sApellidoM);
            SqlParameter pFechaNac = new SqlParameter("@pFechaNac",dtFechaNac);
            SqlParameter pFechaIng = new SqlParameter("@pFechaIng",dtFechaIng);
            SqlParameter pTel = new SqlParameter("@pTel",sTelefono);
            SqlParameter pCel = new SqlParameter("@pCel",sCelular);
            SqlParameter pCorreo = new SqlParameter("@pCorreo",sCorreo);
            SqlParameter pCalle = new SqlParameter("@pCalle",sCalle);
            SqlParameter pNum = new SqlParameter("@pNum",iNumero);
            SqlParameter pCol = new SqlParameter("@pCol",sColonia);
            SqlParameter pCP = new SqlParameter("@pCP",iCP);
            SqlParameter pPW = new SqlParameter("@pPW",sPW);
            SqlParameter pMun = new SqlParameter("@pMun",iMunicipio);
            SqlParameter pActivo = new SqlParameter("@pActivo",iActivo);
            SqlParameter pTipo = new SqlParameter("@pTipo",iTipo);            
            SQLManager.Ejecutar_Query_Con_SP("sp_addEmployee",pNom,pAPat,pAMat,pFechaNac,pFechaIng,pTel,pCel,pCorreo,pCalle,pNum,pCol,pCP,pPW,pMun,pActivo,pTipo);
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