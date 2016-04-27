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
    public partial class Formulario_web19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CADPermisos per = new CADPermisos();
            int userid = Account.Login.userId;
            DataTable permisos = per.tienePermiso(6, 9);
            

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
                    Labelpermiso.Text = "No tiene permisos para ver las listas";
                }
            }
               
            
        }
    }
}