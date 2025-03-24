using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoHTML_CSS.CapaDatos
{
    public class clc_Usuarios
    {
        private static string usuario;
        private static string clave;
        public int UsuarioID { get; set; }
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public string Numero { get; set; }
        public string Clave { get; set; }

        public static void SetUsuario(string user)
        {
            usuario = user;
        }

        public static void Setclave(string pass)
        {
            clave = pass;
        }

        public static string Getusuario()
        {
            return usuario;
        }

        public static string Getclave()
        {
            return clave;
        }
    }
}