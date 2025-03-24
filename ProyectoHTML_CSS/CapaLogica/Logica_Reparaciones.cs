using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_Reparaciones
    {
        private static clc_Reparaciones Reparacion = new clc_Reparaciones();
        public static List<clc_Reparaciones> ObtenerReparaciones()
        {
            List<clc_Reparaciones> reparaciones = new List<clc_Reparaciones>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select ReparacionID, EquipoID, FechaSolicitud, Estado from Reparaciones", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    Reparacion.ReparacionID = reader.GetInt32(0);
                    Reparacion.Fecha = reader.GetDateTime(2);
                    Reparacion.Estado = reader.GetString(3);
                    Reparacion.EquipoID = reader.GetInt32(4);
                    reparaciones.Add(Reparacion);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                return reparaciones;
            }

            return reparaciones;
        }
    }
}