using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAtencion
{
    public class Utilidades
    {
        public static bool IsNumeric(string texto)
        {
            double num;
            return double.TryParse(texto.Trim(),out num);
        }
    }
}