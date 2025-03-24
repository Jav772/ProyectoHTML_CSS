using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaLogica
{
    public class Logica_Usuarios
    {
        private static clc_Usuarios usuario = new clc_Usuarios();
        public static List<clc_Usuarios> ObtenerUsuarios()
        {
            List<clc_Usuarios> usuarios = new List<clc_Usuarios>();

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("select UsuarioID, nombre, Correo, número, clave from usuarios", conexion);
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    usuario.UsuarioID = reader.GetInt32(0);
                    usuario.Nombre = reader.GetString(1);
                    usuario.Correo = reader.GetString(2);
                    usuario.Numero = reader.GetString(3);
                    usuario.Clave = reader.GetString(4);
                    usuarios.Add(usuario);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                return usuarios;
            }

            return usuarios;
        }
    }
}