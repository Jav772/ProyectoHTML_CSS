using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoHTML_CSS.CapaDatos
{
    public class clc_Reparaciones
    {
        public int ReparacionID { get; set; }
        public DateTime Fecha { get; set; }
        public string Estado { get; set; }
        public int EquipoID { get; set; }
    }
}