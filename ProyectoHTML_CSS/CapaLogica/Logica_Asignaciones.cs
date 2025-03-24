using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_Asignaciones
    {
        private static clc_Asignaciones asignacion = new clc_Asignaciones();
        public static List<clc_Asignaciones> ObtenerAsignaciones()
        {
            List<clc_Asignaciones> asignaciones = new List<clc_Asignaciones>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select AsignacionID, ReparacionID, TecnicoID, Fecha from asignaciones", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    asignacion.AsignacionID = reader.GetInt32(0);
                    asignacion.ReparacionID = reader.GetInt32(1);
                    asignacion.TecnicoID = reader.GetInt32(2);
                    asignacion.Fecha = reader.GetDateTime(3);
                    asignaciones.Add(asignacion);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                return asignaciones;
            }

            return asignaciones;
        }
    }
}