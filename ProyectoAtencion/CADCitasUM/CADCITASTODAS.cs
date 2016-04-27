using CADCitasUM.DSCitasUMTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADCITASTODAS
    {
        public static ConsultasTodasTableAdapter Adtador = new ConsultasTodasTableAdapter();

        public static DSCitasUM.ConsultasTodasDataTable GetCitas()
        {
            return Adtador.GetData();
        }
    }
}
