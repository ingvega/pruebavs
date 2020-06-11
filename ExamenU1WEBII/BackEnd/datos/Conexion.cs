﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace BackEnd.datos
{
    /// <summary>
    /// Manejar la comunicación con la BD a través del driver
    /// </summary>
    public class Conexion
    {
        static MySqlConnection conexion;

        public static bool conectar()
        {
            try
            {

                if (conexion == null || conexion.State != ConnectionState.Open)
                {
                    conexion = new MySqlConnection();
                    conexion.ConnectionString = "Server=localhost;" +
                    "Database=exu1;" +
                    "uid=root;" +
                    "pwd=1234;";// sslmode=none";

                    conexion.Open();
                }
                return true;
            }
            catch (MySqlException ex)
            {
                return false;
            }
        }

        public static DataTable ejecutarConsulta(MySqlCommand consulta)
        {
            if (conectar())
            {
                consulta.Connection = conexion;
                MySqlDataAdapter adaptador = new MySqlDataAdapter(consulta);
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                return tabla;
            }
            return null;
        }

        public static int ejecutarSentencia(MySqlCommand sentencia, bool esInsertar)
        {
            int valor = 0;
            if (conectar())
            {
                sentencia.Connection = conexion;
                if (esInsertar)
                    valor = int.Parse(sentencia.ExecuteScalar().ToString());
                else
                    valor = sentencia.ExecuteNonQuery();
            }
            return valor;
        }

        public static void desconectar()
        {
            if (conexion != null && conexion.State == ConnectionState.Open)
                conexion.Close();
        }
    }
}
