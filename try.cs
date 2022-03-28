using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using MySql.Data.MySqlClient; //引用MySql

namespace Csharp调用mysql

{
    class Program

    {
        static void Main(string[] args)

        {
            string constructorString = "server=localhost;User Id=root;password=111111;Database=db1";

            MySqlConnection myConnnect = new MySqlConnection(constructorString);

            myConnnect.Open();

            MySqlCommand myCmd = new MySqlCommand("insert into student(id,grade,srange) values('jjj',22,22)", myConnnect);

            Console.WriteLine(myCmd.CommandText);

            if (myCmd.ExecuteNonQuery() > 0)

            {
                Console.WriteLine("数据插入成功！");

            }

            //myCmd.CommandText = "insert into student(id,grade,srange) values('jjj4',22,22)";

            //Console.WriteLine(myCmd.CommandText);

            //if (myCmd.ExecuteNonQuery() > 0)

            //{
            //  Console.WriteLine("数据插入成功！");

            //}

            myCmd.Dispose();

            myConnnect.Close();

        }

    }

}

