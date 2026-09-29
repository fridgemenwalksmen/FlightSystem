using Microsoft.Data.SqlClient;

class Program
{
    static void Main(string[] args)
    {
        string connectionString =
            @"Server=localhost;Database=Flight System;Trusted_Connection=True;TrustServerCertificate=True;";


            using SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();
            Console.WriteLine("connection established");
            Console.WriteLine();

            string query = "SELECT * FROM Passengers";

            using SqlCommand command = new SqlCommand(query, connection);
            using SqlDataReader reader = command.ExecuteReader();

            Console.WriteLine("Passenger Records:");

            while (reader.Read())
            {
                Console.WriteLine(
                    $"Passenger ID: {reader["PassengerID"]} | " +
                    $"Name: {reader["FirstName"]} {reader["LastName"]} | " +
                    $"ID Number: {reader["IDNumber"]} | " +
                    $"Email: {reader["Email"]} | " +
                    $"Phone: {reader["PhoneNumber"]}"
                );
            }

    }
}