using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaEntidad;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class CDatCitas
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();
        //Contiene tres metodos: guardar, anular, consultar cita
        //Metodo guardar
        public bool guardar_cita(CEntCitas ocitas)
        {
            try
            {
                ocmd.Connection = oconexion.conectar("bdHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_guardar_citas";

                ocmd.Parameters.Add("@pcod_cita", ocitas.Cod_cita);
                ocmd.Parameters.Add("@pfecha", ocitas.Fecha);
                ocmd.Parameters.Add("@phora", ocitas.Hora);
                ocmd.Parameters.Add("@pId_paciente", ocitas.Id_paciente1);
                ocmd.Parameters.Add("@pid_medico", ocitas.Id_medico);
                ocmd.Parameters.Add("@pvalor", ocitas.Valor);
                ocmd.Parameters.Add("@pdiagnostico", ocitas.Diagnostico);
                ocmd.Parameters.Add("@pNom_acompanante", ocitas.Nom_acompanante1);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }
        public bool anular_cita(CEntCitas ocitas)
        {
            try
            {
                ocmd.Connection = oconexion.conectar("bdHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_anular_citas";

                ocmd.Parameters.Add("@pcod_cita", ocitas.Cod_cita);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }
        public DataSet consultar_citas(CEntCitas ocitas)
        {
            try
            {
                ocmd.Connection = oconexion.conectar("bdHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_consultar_citas";

                ocmd.Parameters.Add("@pcod_cita", ocitas.Cod_cita);

                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }
    }
}