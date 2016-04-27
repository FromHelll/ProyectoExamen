using CADCitasUM.DSCitasUMTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADPacientes
    {
        private static PacienteTableAdapter adaptadorPacientes = new PacienteTableAdapter();

        public static DSCitasUM.PacienteDataTable GetPaciente(string identificacion)
        {
            return adaptadorPacientes.GetPaciente(identificacion);
        }

        public static DSCitasUM.PacienteDataTable GetPacientes()
        {
            return adaptadorPacientes.GetData();
        }

        public static bool ExistePaciente(string identificacion)
        {
            return adaptadorPacientes.ExistePaciene(identificacion) == 1;
        }

        public static string NuevoPaciente(int TipoIdentificacion, string Identificacion, string Nombre, string Apellidos, DateTime FechaNacimiento, int Idsexo, int Edad,  int IdEstadoCivil, string Direccion, string Telefono, int Estatura, int Peso, int Alergias, string QueAlegias)
        {
            int aux = adaptadorPacientes.Insert(TipoIdentificacion, Identificacion, Nombre, Apellidos, FechaNacimiento, Idsexo, Edad,  IdEstadoCivil,  Direccion, Telefono, Estatura, Peso, Alergias, QueAlegias);
            if (aux == 0) return "No se pudo insertar el registro";
            else return "Registro Insertado Correctamente";
        }

        public static string ActualizarPaciente(int TipoIdentificacion, string Identificacion, string Nombre, string Apellidos, DateTime FechaNacimiento, int Idsexo, int Edad,  int IdEstadoCivil,  string Direccion, string Telefono, int Estatura, int Peso, int Alergias, string QueAlegias)
        {
            int aux = adaptadorPacientes.ActualizarPaciente(TipoIdentificacion, Identificacion, Nombre, Apellidos, FechaNacimiento, Idsexo, Edad,IdEstadoCivil, Direccion, Telefono, Estatura, Peso, Alergias, QueAlegias);
            if (aux == 0) return "No se pudo acualizar el registro correctamente";
            else return "El registro ha sido actualizado correctamente";
        }

        public static string BorrarPaciente(string Identificacion)
        {
            int aux = adaptadorPacientes.BorrarPaciente(Identificacion);
            if (aux == 0) return "No se ha podido eliminar el registro";
            else return "El registro ha sido eliminado correctamente";
        }
    }
}
