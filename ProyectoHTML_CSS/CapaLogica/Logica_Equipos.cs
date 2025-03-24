using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_Equipos
    {
        private static clc_Equipos equipo = new clc_Equipos();
        public static List<clc_Equipos> ObtenerEquipos()
        {
            List<clc_Equipos> equipos = new List<clc_Equipos>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select EquipoID, TipoEquipo, Modelo, UsuarioID from Equipos", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    equipo.EquipoID = reader.GetInt32(0);
                    equipo.TipoEquipo = reader.GetString(1);
                    equipo.Modelo = reader.GetString(2);
                    equipo.UsuarioID = reader.GetInt32(3);
                    equipos.Add(equipo);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                return equipos;
            }

            return equipos;
        }
    }
}