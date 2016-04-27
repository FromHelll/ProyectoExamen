using CADCitasUM.DSCitasUMTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADMedicos
    {
        private static MedicosTableAdapter adaptador = new MedicosTableAdapter();

        public static DSCitasUM.MedicosDataTable GetMedico(string Identificacion)
        {
            return adaptador.GetMedico(Identificacion);
        }

        public static DSCitasUM.MedicosDataTable GetMedicos()
        {
            return adaptador.GetData();
        }

        public static bool ExisteMedico(string Identificacion)
        {
            return adaptador.ExisteMedico(Identificacion) == 1;
        }

        public static string NuevoMedico(int idTipoIdentificacion, string Identificacion, string Nombre, string Apellidos, DateTime FechaNacimiento, int idSexo, string Direccion, string Telefono, string email, int idEspecialidad, int IdHorario)
        {
            int aux = adaptador.InsertarMedico(idTipoIdentificacion, Identificacion, Nombre, Apellidos, FechaNacimiento, idSexo, Direccion, Telefono, email, idEspecialidad, IdHorario);
            if (aux == 0) return "No se pudo insertar el registro";
            else return "Registro Insertado Correctamente";
        }

        public static string ActualizarMedico(int idTipoIdentificacion,
            string Identificacion, string Nombre, string Apellidos,
            DateTime FechaNacimiento, int idSexo, string Direccion,
            string Telefono, string email, int idEspecialidad, int IdHorario)
        {
            int aux = adaptador.ActualizarMedico(idTipoIdentificacion, Identificacion, Nombre, Apellidos, FechaNacimiento, idSexo, Direccion, Telefono, email, idEspecialidad, IdHorario);
            if (aux == 0) return "No se pudo acualizar el registro correctamente";
            else return "El registro ha sido actualizado correctamente";
        }

        public static string BorrarMedico(string Identificacion)
        {
            int aux = adaptador.BorrarMedico(Identificacion);
            if (aux == 0) return "No se ha podido eliminar el registro";
            else return "El registro ha sido eliminado correctamente";
        }
    }
}
