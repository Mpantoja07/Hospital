using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidad;
using CapaRegNegocio;
using System.Data;

namespace Hospital
{
    public partial class Cita : System.Web.UI.Page
    {
        CEntCitas oentcitas = new CEntCitas();
        CRNegCitas oregcitas = new CRNegCitas();

        protected void Page_Load(object sender, EventArgs e)
        {
            protected void limpiar_campos()
            {
                txtFecha.Text = "";
                txtHora.Text = "";
                txtIdPaciente.Text = "";
                txtIdMedico.Text = "";
                txtValor.Text = "";
                txtDiagnostico.Text = "";
                txtAcompanante.Text = "";
                lblCelularPaciente.Text = "";
                lblEspecialidad.Text = "";
                lblMensajeCita.Text = "";
                lblNombreMedico.Text = "";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtCita.Text == "")
            {
                lblMensajeCita.Text = "No se digito ningun codigo de cita";
                txtCita.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentcitas.Cod_cita = txtCita.Text;
                ds = oregcitas.consultar_cita(oentcitas);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblMensajeCita.Text = "La cita no ha sido asignada";
                    txtFecha.Focus();
                }
                else
                {
                    txtFecha.Text = ds.Tables[0].Rows[0]["Fecha"].ToString();
                    txtHora.Text = ds.Tables[0].Rows[0]["Hora"].ToString();
                    txtIdPaciente.Text = ds.Tables[0].Rows[0]["Id_Paciente"].ToString();
                    lblNombrePaciente.Text = ds.Tables[1].Rows[0]["nom_paciente"].ToString();
                    lblCelularPaciente.Text = ds.Tables[1].Rows[0]["tel_paciente"].ToString();
                    txtIdMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    lblNombreMedico.Text = ds.Tables[2].Rows[0]["nom_medico"].ToString();
                    lblEspecialidad.Text = ds.Tables[2].Rows[0]["especilidad"].ToString();
                    txtValor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtDiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                    txtAcompanante.Text = ds.Tables[0].Rows[0]["nom_acompanante"].ToString();
                }
            }
        }
    }
    }
}