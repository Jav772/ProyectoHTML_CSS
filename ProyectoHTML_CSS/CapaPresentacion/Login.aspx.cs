using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoHTML_CSS.CapaDatos;

namespace ProyectoHTML_CSS.CapaPresentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bingresar_Click1(object sender, EventArgs e)
        {
            ValidarLogin(tusuario.Text, tclave.Text);
        }

        private void ValidarLogin(String Usuario, string Clave)
        {
            clc_Usuarios.SetUsuario(Usuario);
            clc_Usuarios.Setclave(Clave);

            // Obtener la cadena de conexión
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(s))
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT usuario, clave FROM login WHERE usuario = @usuario AND clave = @clave", conexion);
                comando.Parameters.AddWithValue("@usuario", clc_Usuarios.Getusuario());
                comando.Parameters.AddWithValue("@clave", clc_Usuarios.Getclave());

                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("inicio.aspx");
                }
                else
                {
                    MostrarAlerta(this, "Usuario o contraseña incorrectos");
                }
            }
        }

        public static void MostrarAlerta(Page page, string message)
        {
            string script = $"<script type='text/javascript'>alert('{message}');</script>";
            ClientScriptManager cs = page.ClientScript;
            cs.RegisterStartupScript(page.GetType(), "AlertScript", script);
        }
    }
}