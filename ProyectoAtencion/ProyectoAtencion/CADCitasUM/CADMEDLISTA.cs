using CADCitasUM.DSCitasUMTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADMEDLISTA
    {
        public static VistaMedicosTableAdapter AdapMedicos = new VistaMedicosTableAdapter();
        public static DSCitasUM.VistaMedicosDataTable GETMEDICOS()
        {
            return AdapMedicos.GetData();
        }
    }
}
