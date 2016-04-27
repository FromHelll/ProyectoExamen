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
    public partial class Formulario_web12 : System.Web.UI.Page
    {
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BTNConsultar_Click(object sender, EventArgs e)
        {
            if (txtIdetificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdetificacion.Focus();
                return;
            }

            if (!CADCitasUM.CADMedicos.ExisteMedico(txtIdetificacion.Text))
            {
                lbMensaje.Text = "El Medico no Existe........";
                txtIdetificacion.Focus();
                return;
            }

            CADCitasUM.DSCitasUM.MedicosDataTable miMedico = CADCitasUM.CADMedicos.GetMedico(txtIdetificacion.Text);
            foreach (DataRow row in miMedico.Rows)
            {
                cmbTipoIdentificacion.SelectedValue = row["idTipoIdentificacion"].ToString();
                txtIdetificacion.Text = row["Identificacion"].ToString();
                txtNombre.Text = row["Nombre"].ToString();
                txtApellidos.Text = row["Apellidos"].ToString();
                CalendarFN.SelectedDate = Convert.ToDateTime(row["FechaNacimiento"]);
                cmbSexo.SelectedValue = row["idSexo"].ToString();
                txtDireccion.Text = row["Direccion"].ToString();
                txtTelefono.Text = row["Telefono"].ToString();
                txtEmail.Text = row["email"].ToString();
                cmbEspecialidad.SelectedValue = row["idEspecialidad"].ToString();
                cmbHorario.SelectedValue = row["IdHorario"].ToString();
            }
            lbMensaje.Text = "Medico Consultado........";
        }

        protected void BTNNuevo_Click(object sender, EventArgs e)
        {

            if (txtIdetificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdetificacion.Focus();
                return;
            }

            if (CADCitasUM.CADMedicos.ExisteMedico(txtIdetificacion.Text))
            {
                lbMensaje.Text = "El medico ya Existe en la base de datos........";
                txtIdetificacion.Focus();
                return;
            }



            if (txtNombre.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Nombre";
                txtNombre.Focus();
                return;
            }

            if (txtApellidos.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar El Apellido";
                txtApellidos.Focus();
                return;
            }




            if (txtTelefono.Text == "")
            {
                lbMensaje.Text = "Debes Ingresar Un Telefono";
                txtTelefono.Focus();
                return;
            }
            lbMensaje.Text = CADCitasUM.CADMedicos.NuevoMedico(Convert.ToInt32(cmbTipoIdentificacion.SelectedValue), txtIdetificacion.Text, txtNombre.Text, txtApellidos.Text, CalendarFN.SelectedDate, Convert.ToInt32(cmbSexo.SelectedValue), txtDireccion.Text, txtTelefono.Text, txtEmail.Text, Convert.ToInt32(cmbEspecialidad.SelectedValue), Convert.ToInt32(cmbHorario.SelectedValue));
            //actualizamos la cuadricula de medicos
            GridViewMedicos.DataBind();
            txtIdetificacion.Text = "";
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            txtIdetificacion.Focus();
        }

        protected void BTNLimpiar_Click(object sender, EventArgs e)
        {
            txtIdetificacion.Text = "";
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            lbMensaje.Text = "";
            txtIdetificacion.Focus();
        }

        protected void BTNModificar_Click(object sender, EventArgs e)
        {
            if (txtIdetificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdetificacion.Focus();
                return;
            }

            if (!CADCitasUM.CADMedicos.ExisteMedico(txtIdetificacion.Text))
            {
                lbMensaje.Text = "El medico no existe base de datos........";
                txtIdetificacion.Focus();
                return;
            }



            if (txtNombre.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Nombre";
                txtNombre.Focus();
                return;
            }

            if (txtApellidos.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar El Apellido";
                txtApellidos.Focus();
                return;
            }


            if (txtTelefono.Text == "")
            {
                lbMensaje.Text = "Debes Ingresar Un Telefono";
                txtTelefono.Focus();
                return;
            }
            lbMensaje.Text = CADCitasUM.CADMedicos.ActualizarMedico(Convert.ToInt32(cmbTipoIdentificacion.SelectedValue),
                txtIdetificacion.Text, txtNombre.Text, txtApellidos.Text, CalendarFN.SelectedDate,
                Convert.ToInt32(cmbSexo.SelectedValue), txtDireccion.Text, txtTelefono.Text, txtEmail.Text,
                Convert.ToInt32(cmbEspecialidad.SelectedValue), Convert.ToInt32(cmbHorario.SelectedValue));
            //actualizamos la cuadricula de medicos
            GridViewMedicos.DataBind();
        }

        protected void BTNEliminar_Click(object sender, EventArgs e)
        {

            if (txtIdetificacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar Un Documento";
                txtIdetificacion.Focus();
                return;
            }

            if (!CADCitasUM.CADMedicos.ExisteMedico(txtIdetificacion.Text))
            {
                lbMensaje.Text = "El medico no existe base de datos........";
                txtIdetificacion.Focus();
                return;
            }

            lbMensaje.Text = CADCitasUM.CADMedicos.BorrarMedico(txtIdetificacion.Text);
            GridViewMedicos.DataBind();
            //limpiamos todos los campos.................
            txtIdetificacion.Text = "";
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            txtIdetificacion.Focus();
        }

    }
}
