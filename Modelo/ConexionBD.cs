using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace web_umg_bd
{
    public class ConexionBD
    {
        private string cadena = "server=localhost; database=empleadosDb; user=ibairuiz; password=NewTovarich00";
        public MySqlConnection conectar = new MySqlConnection();

        public void AbrirConexion()
        {
            try
            {
                conectar.ConnectionString = cadena;
                conectar.Open();
                // Console.WriteLine("Conexión exitosa");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void CerrarConexion()
        {
            if (conectar.State == ConnectionState.Open)
            {
                conectar.Close();
            }
        }
    }
}
