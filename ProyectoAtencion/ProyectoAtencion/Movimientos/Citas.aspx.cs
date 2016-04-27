using CADCitasUM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAtencion
{
    public partial class Formulario_web15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtFecha.Text = "" + DateTime.Now;
            CADPermisos per = new CADPermisos();
            int userid = Account.Login.userId;
            DataTable permisos = per.tienePermiso("3", userid);
            string consultar = permisos.Rows[0]["consultar"].ToString();
            string agregar = permisos.Rows[0]["agregar"].ToString();
            string editar = permisos.Rows[0]["editar"].ToString();
            string eliminar = permisos.Rows[0]["eliminar"].ToString();

            if (Convert.ToInt32(consultar) == 1)
            {
               
            }
            else
            {
                
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
                
            }
            else
            {
               
            }
        }

        protected void BTNNuevo_Click(object sender, EventArgs e)
        {
            if (txtObservacion.Text == "")
            {
                lbMensaje.Text = "Debe Ingresar la Observacion";
                txtObservacion.Focus();
                return;
            }

            lbMensaje.Text = CADCitasUM.CADCita.NuevaCita(Convert.ToInt32(cmbPaciente.SelectedValue),Convert.ToDateTime(TxtFecha.Text),Convert.ToInt32(cmbMedico.SelectedValue),txtObservacion.Text);
            GridViewConsultas.DataBind();
            txtObservacion.Text="";
        }

        

       

    }
}