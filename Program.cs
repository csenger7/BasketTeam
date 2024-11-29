using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BasketTeam
{
    internal class Program
    {
        public static Connect conn = new Connect();
        public static void GetAllData()
        {
            conn.Connection.Open();

            string sql = "SELECT * FROM `player`";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            do
            {
                var player = new
                {
                    Id = dr.GetInt32(0),
                    Name = dr.GetString(1),
                    Height = dr.GetInt32(2),
                    Weight = dr.GetInt32(3),
                    CreatedTime = dr.GetDateTime(4)
                };

                Console.WriteLine($"Játékos adatok: {player.Name},{player.Height},{player.Weight}");
            }
            while (dr.Read());



            dr.Close();



            conn.Connection.Close();
        }

        public static void AddNewPlayer(string name, int height, int weight)
        {
            try
            {

                conn.Connection.Open();

                string sql = $"INSERT INTO `player`(`Name`, `Height`, `Weight`) VALUES ('{name}',{height},{weight})";

                MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
                cmd.ExecuteNonQuery();

                conn.Connection.Close();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }

        }

        public static void DeletePlayer(int id)
        {
            conn.Connection.Open();

            string sql = $"DELETE FROM `player` WHERE `ID` = {id};";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.ExecuteNonQuery();

            conn.Connection.Close();
        }

        public static void UpdatePlayer(int id, string name, int height, int weight)
        {
            conn.Connection.Open();

            string sql = $"UPDATE `player` SET `Name`='{name}',`Height`= {height},`Weight`= {weight} WHERE `ID` = {id};";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.ExecuteNonQuery();

            conn.Connection.Close();
        }

        static void Main(string[] args)
        {

            try
            {
                Console.Write("Kérem adja meg a játkos azonosítót: ");
                int id = int.Parse(Console.ReadLine());
                Console.Write("Kérem az új nevet: ");
                string name = Console.ReadLine();
                Console.Write("Kérem az új magasságot: ");
                int height = int.Parse(Console.ReadLine());
                Console.Write("Kérem az uj súlyt: ");
                int weight = int.Parse(Console.ReadLine());

                UpdatePlayer(id, name, height, weight);

                Console.WriteLine("Sikeres frissítés!");
            }
            catch (Exception exp)
            {
                Console.WriteLine(exp.Message);
            }


            //try
            //{
            //    Console.WriteLine("Kérem a játékos azonosítót: ");
            //    int azon = int.Parse(Console.ReadLine());
            //    DeletePlayer(azon);
            //    Console.WriteLine("Sikeres Törlés");
            //}

            //catch (Exception ex)
            //{
            //    Console.WriteLine(ex.Message);
            //}

            //GetAllData();
            //try
            //{
            //    Console.WriteLine("Kérem a játékos nevét: ");
            //    string name = Console.ReadLine();
            //    Console.WriteLine("Kérem a játékos magasságát: ");
            //    int height = int.Parse(Console.ReadLine());
            //    Console.WriteLine("Kérem a játékos súlyát: ");
            //    int weight = int.Parse(Console.ReadLine());

            //    AddNewPlayer(name, height, weight);
            //}

            //catch (Exception e)
            //{
            //    Console.WriteLine(e.Message);
            //}

            Console.ReadLine();
        }
    }
}