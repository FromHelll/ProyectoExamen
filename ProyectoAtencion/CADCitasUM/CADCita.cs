using CADCitasUM.DSCitasUMTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADCita
    {
        public static ConsultasTableAdapter Adaptador = new ConsultasTableAdapter();

        public static DSCitasUM.ConsultasDataTable GetCita(int IdPaciente)
        {

            return Adaptador.GetCita(IdPaciente);
        }

        public static DSCitasUM.ConsultasDataTable GETCITAS()
        {
            return Adaptador.GetData();
        }

        public static string NuevaCita(int IdPaciente, DateTime FechaConsulta, int IdMedico, string Observacion)
        {
            int aux = Adaptador.Insert(IdPaciente, FechaConsulta, IdMedico, Observacion);
            if (aux == 0) return "La consulta ha sido ingresada satisfactoriamente.......";
            else return "Registro Insertado Correctamente";
        }

        public static string ActualizarCita(int IdPaciente, string FechaConsulta, int IdMedico, string Observacion, int idMedicamento)
        {
            int aux = Adaptador.ActualizarConsulta(IdPaciente, FechaConsulta, IdMedico, Observacion);
            if (aux == 0) return "No se pudo acualizar el registro correctamente";
            else return "El registro ha sido actualizado correctamente";
        }

    }
}
