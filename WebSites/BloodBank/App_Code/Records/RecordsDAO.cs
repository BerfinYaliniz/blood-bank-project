using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class RecordsDAO
{
    public string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\BloodBankDB.mdf;Integrated Security = True";
    private SqlConnection sqlConnection;
    private SqlCommand sqlCommand, sqlCommName;
    private SqlDataAdapter sqlAdapter;
    private DataSet dataSet;
    public RecordsDAO()
    {
        sqlConnection = new SqlConnection(connectionString);
    }

    public void insertRecord(RecordsDTO recordsDTO)
    {
        sqlConnection.Open();
     

        string sqlQuery = " insert into Records values(" + recordsDTO.DONORID +
                                                      ",'" + recordsDTO.DONATIONDATE +
                                                      "','" + recordsDTO.RECIPIENT +
                                                      "','" + recordsDTO.RECIPIENTNAME +
                                                      "','" + recordsDTO.RECIPIENTADDRESS + "')";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();
    }

    public DataSet ShowList(int DonorID)
    {
        sqlConnection.Open();
        string sqlQuery = "select DonationDate,Recipient,RecipientName,RecipientAddress from Records where DonorID=" + DonorID;

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }
}