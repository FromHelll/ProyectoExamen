using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CADCitasUM;


namespace ProyectoAtencion
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        CADPermisos per = new CADPermisos();
        protected void Page_Load(object sender, EventArgs e)
        {
            CADPermisos per = new CADPermisos();
            int userid = Account.Login.userId;
            DataTable permisos = per.tienePermiso(6, userid);


            if (permisos.Rows.Count == 0)
            {

                Labelpermiso.Text = "No tiene ningun permisos";
                theDiv.Visible = false;
            }
            else
            {
                string consultar = permisos.Rows[0]["consultar"].ToString();
                string agregar = permisos.Rows[0]["agregar"].ToString();
                string editar = permisos.Rows[0]["editar"].ToString();
                string eliminar = permisos.Rows[0]["eliminar"].ToString();
                if (Convert.ToInt32(consultar) == 1)
                {
                    theDiv.Visible = true;
                }
                else
                {
                    theDiv.Visible = false;

                }
                if (Convert.ToInt32(consultar) == 1)
                {
                    BTNConsultar.Enabled = true;
                }
                else
                {
                    BTNConsultar.Enabled = false;
                }
                if (Convert.ToInt32(agregar) == 1)
                {
                    BTNNuevo.Enabled = true;
                }
                else
                {
                    BTNNuevo.Enabled = false;
                }
                if (Convert.ToInt32(editar) == 1)
                {
                    BTNModificar.Enabled = true;
                }
                else
                {
                    BTNModificar.Enabled = false;
                }
                if (Convert.ToInt32(eliminar) == 1)
                {
                    BTNEliminar.Enabled = true;
                }
                else
                {
                    BTNEliminar.Enabled = false;
                }
            }
        }

        protected void BTNConsultar_Click(object sender, EventArgs e)
        {
            if (txtIdentificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdentificacion.Focus();
                return;
            }

            if (!CADCitasUM.CADPacientes.ExistePaciente(txtIdentificacion.Text))
            {
                lbMensaje.Text = "No Existe Paciente Con identificacion " + txtIdentificacion.Text;
                txtIdentificacion.Focus();
                return;
            }

            CADCitasUM.DSCitasUM.PacienteDataTable miPaciente = CADCitasUM.CADPacientes.GetPaciente(txtIdentificacion.Text);
            foreach (DataRow row in miPaciente.Rows)
            {
                cmbTipoIdentificacion.SelectedValue = row["TipoIdentificacion"].ToString();
                txtIdentificacion.Text = row["Identificacion"].ToString();
                txtNombres.Text = row["Nombre"].ToString();
                txtApellidos.Text = row["Apellidos"].ToString();
                CalendarFN.SelectedDate = Convert.ToDateTime(row["FechaNacimiento"]);
                cmbSexo.SelectedValue = row["Idsexo"].ToString();

                txtEdad.Text = row["Edad"].ToString();

                cmbEstadoCivil.Text = row["IdEstadoCivil"].ToString();

                txtDireccion.Text = row["Direccion"].ToString();
                txtTelefono.Text = row["Telefono"].ToString();
                txtEstatura.Text = row["Estatura"].ToString();
                txtPeso.Text = row["Peso"].ToString();
                txtNAlegrias.Text = row["Alergias"].ToString();
                txtAlergias.Text = row["QueAlegias"].ToString();

            }
            lbMensaje.Text = "Paciente Consultado........";

        }

        protected void BTNNuevo_Click(object sender, EventArgs e)
        {
            if (txtIdentificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdentificacion.Focus();
                return;
            }

            if (CADCitasUM.CADPacientes.ExistePaciente(txtIdentificacion.Text))
            {

                lbMensaje.Text = "El Paciente ya Existe en la base de datos........";
                txtIdentificacion.Focus();
                return;
            }


            if (txtNombres.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Su Nombre";
                txtNombres.Focus();
                return;
            }

            if (txtApellidos.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Apellido al menos";
                txtApellidos.Focus();
                return;
            }


            if (!Utilidades.IsNumeric(txtEdad.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtEdad.Focus();
                return;
            }




            if (txtDireccion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar la direccion del paciente";
                txtDireccion.Focus();
                return;
            }

            if (txtTelefono.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar El Telefono del paciente";
                txtTelefono.Focus();
                return;
            }

            if (!Utilidades.IsNumeric(txtEstatura.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtEstatura.Focus();
                return;
            }

            if (!Utilidades.IsNumeric(txtPeso.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtPeso.Focus();
                return;
            }


            if (!Utilidades.IsNumeric(txtNAlegrias.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtNAlegrias.Focus();
                return;
            }

            lbMensaje.Text = CADCitasUM.CADPacientes.NuevoPaciente(Convert.ToInt32(cmbTipoIdentificacion.SelectedValue),
                txtIdentificacion.Text, txtNombres.Text, txtApellidos.Text, Convert.ToDateTime(CalendarFN.SelectedDate)
                , Convert.ToInt32(cmbSexo.SelectedValue),
                Convert.ToInt32(txtEdad.Text), Convert.ToInt32(cmbEstadoCivil.SelectedValue), txtDireccion.Text, txtTelefono.Text, Convert.ToInt32(txtEstatura.Text),
                Convert.ToInt32(txtPeso.Text), Convert.ToInt32(txtNAlegrias.Text), txtAlergias.Text);
            GridViewPacientes.DataBind();
            limpiarcampos();
        }

        protected void BTNLimpiar_Click(object sender, EventArgs e)
        {
            limpiarcampos();
        }


        protected void BTNModificar_Click(object sender, EventArgs e)
        {
            if (txtIdentificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdentificacion.Focus();
                return;
            }

            if (!CADCitasUM.CADPacientes.ExistePaciente(txtIdentificacion.Text))
            {

                lbMensaje.Text = "El Paciente !NO¡ Existe en la base de datos........";
                txtIdentificacion.Focus();
                return;
            }


            if (txtNombres.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Su Nombre";
                txtNombres.Focus();
                return;
            }

            if (txtApellidos.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Apellido al menos";
                txtApellidos.Focus();
                return;
            }



            if (!Utilidades.IsNumeric(txtEdad.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtEdad.Focus();
                return;
            }




            if (txtDireccion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar la direccion del paciente";
                txtDireccion.Focus();
                return;
            }

            if (txtTelefono.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar El Telefono del paciente";
                txtTelefono.Focus();
                return;
            }

            if (!Utilidades.IsNumeric(txtEstatura.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtEstatura.Focus();
                return;
            }

            if (!Utilidades.IsNumeric(txtPeso.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtPeso.Focus();
                return;
            }


            if (!Utilidades.IsNumeric(txtNAlegrias.Text))
            {
                lbMensaje.Text = "Debe Un Valor Numerico";
                txtNAlegrias.Focus();
                return;
            }

            lbMensaje.Text = CADCitasUM.CADPacientes.ActualizarPaciente(
                Convert.ToInt32(cmbTipoIdentificacion.SelectedValue),
                txtIdentificacion.Text,
                txtNombres.Text,
                txtApellidos.Text,
                Convert.ToDateTime(CalendarFN.SelectedDate),
                Convert.ToInt32(cmbSexo.SelectedValue),
                Convert.ToInt32(txtEdad.Text),
                Convert.ToInt32(cmbEstadoCivil.SelectedValue),
                txtDireccion.Text,
                txtTelefono.Text,
                Convert.ToInt32(txtEstatura.Text),
                Convert.ToInt32(txtPeso.Text),
                Convert.ToInt32(txtNAlegrias.Text), txtAlergias.Text);
            GridViewPacientes.DataBind();
        }

        protected void BTNEliminar_Click(object sender, EventArgs e)
        {
            lbMensaje.Text = CADCitasUM.CADPacientes.BorrarPaciente(txtIdentificacion.Text);
            GridViewPacientes.DataBind();
            limpiarcampos();
        }


        public void limpiarcampos()
        {
            txtIdentificacion.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";

            txtEdad.Text = "";

            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtEstatura.Text = "";
            txtPeso.Text = "";
            txtNAlegrias.Text = "";
            txtAlergias.Text = "";
            txtIdentificacion.Focus();
        }
    }
}