using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_Tecnico
    {
        private static clc_Tecnicos tecnico = new clc_Tecnicos();
        public static List<clc_Tecnicos> ObtenerTecnicos()
        {
            List<clc_Tecnicos> tecnicos = new List<clc_Tecnicos>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select TecnicoID, nombre, especialidad from tecnicos", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    tecnico.TecnicoID = reader.GetInt32(0);
                    tecnico.Nombre = reader.GetString(1);
                    tecnico.Especialidad = reader.GetString(2);
                    tecnicos.Add(tecnico);
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                return tecnicos;
            }

            return tecnicos;
        }
    }
}