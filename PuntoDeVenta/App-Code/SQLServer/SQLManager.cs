using System;
using System.Data;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Collections.Generic;

/// <summary>
/// Summary description for SQLManager
/// </summary>
/// 
public static class SQLManager
{
    /// <summary>
    /// Metodo que ejecuta un Stored Procedure en base de datos y que posee un manejador Excepciones
    /// </summary>
    /// <param name="storedProcedure">Nombre del Stored Procedure</param>
    /// <param name="parametros">Parametros el Stored Procedure</param>
    /// <returns></returns>
    public static DataSet Ejecutar_Query_Con_SP(string storedProcedure, params SqlParameter[] parametros)
    {
        DataSet dataSet = null;
        SqlCommand command;
        SqlDataAdapter sqlDataAdapter;
        //obtenemos la string de conexion para el tipo de servidor especificado
        string connectionString = "Data Source = 148.234.130.183; Initial Catalog = PuntoVenta; User ID = jlope; Password = 123";
      

        SqlConnection cnn = new SqlConnection(connectionString);//creamos una conexion a la base de datos

        //intentamos abrir la conexion y obtener los datos de la consulta
        try
        {
            cnn.Open();
            command = new SqlCommand(storedProcedure, cnn);
            command.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < parametros.Length; i++)
            {
                command.Parameters.Add(parametros[i]);
            }
            sqlDataAdapter = new SqlDataAdapter(command);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            cnn.Close();
        }
        catch (Exception ex)
        {
            Debug.WriteLine(ex);
            Debug.WriteLine(ex.StackTrace);
            dataSet = null;
        }

        return dataSet;
    }



    //funcion para crear datatable
    public static DataTable Ejecutar_Query_Con_SP_datatable(string storedProcedure, params SqlParameter[] parametros)
    {
        //DataTable dataTable = null;
        //SqlCommand command;
        //SqlDataAdapter da;
        ////obtenemos la string de conexion para el tipo de servidor especificado
        //string connectionString = WebConfigurationManager.ConnectionStrings["FIME-Flow-System"].ConnectionString;


        //SqlConnection cnn = new SqlConnection(connectionString);//creamos una conexion a la base de datos

        ////intentamos abrir la conexion y obtener los datos de la consulta
        //try
        //{
        //    cnn.Open();
        //    command = new SqlCommand(storedProcedure, cnn);
        //    command.CommandType = CommandType.StoredProcedure;

        //    for (int i = 0; i < parametros.Length; i++)
        //    {
        //        command.Parameters.Add(parametros[i]);
        //        //command.Parameters.AddWithValue(parametros[i].Nombre, parametros[i].Valor);
        //    }
        //    da = new SqlDataAdapter(command);
        //    dataTable = new DataTable();
        //    da.Fill(dataTable);
        //    cnn.Close();
        //}
        //catch (Exception ex)
        //{
        //    //MessageBox.Show("Error al abrir conexion con Base de Datos (Metodo EjecutarConsulta_Con_SP Clase SQLManager) Error Original" + ex, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //    Debug.WriteLine(ex);
        //    Debug.WriteLine(ex.StackTrace);
        //    dataTable = null;
        //}

        //return dataTable;

        DataSet dataset = Ejecutar_Query_Con_SP(storedProcedure, parametros);
        return dataset.Tables[0];
    }

}
