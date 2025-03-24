using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_DetallesReparaciones
    {
        private static clc_DetalleReparacion DetalleRepa = new clc_DetalleReparacion();
        public static List<clc_DetalleReparacion> ObtenerDetallesReparacion()
        {
            List<clc_DetalleReparacion> DetalleRepar = new List<clc_DetalleReparacion>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select DetalleID, ReparacionID, Descripcion, FechaInicio, FechaFin from DetallesReparacion", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    DetalleRepa.DetalleID = reader.GetInt32(0);
                    DetalleRepa.ReparacionID = reader.GetInt32(1);
                    DetalleRepa.Descripcion = reader.GetString(2);
                    DetalleRepa.FechaInicio = reader.GetDateTime(3);
                    DetalleRepa.FechaFin = reader.GetDateTime(4);
                    DetalleRepar.Add(DetalleRepa);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                return DetalleRepar;
            }

            return DetalleRepar;
        }
    }
}