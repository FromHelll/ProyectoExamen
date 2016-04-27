using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADCitasUM
{
    public class CADPermisos
    {
        public DataTable tienePermiso(string recurso_id, int usuario_id)
        {
            string constr = ConfigurationManager.ConnectionStrings["DBCITASConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("VerificarPermisos", con);

            DataTable table = new DataTable();
            try
            {

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@recurso_id", recurso_id));

                cmd.Parameters.Add(new SqlParameter("@usuario_id ", usuario_id));
                SqlDataAdapter miada = new SqlDataAdapter(cmd);

                table.Locale = System.Globalization.CultureInfo.InvariantCulture;
                miada.Fill(table);

            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd.Parameters.Clear();
            }
            return table;
        }
    }
}
