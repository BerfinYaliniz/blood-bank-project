using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class InsertRequestDAO
{
    public string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\BloodBankDB.mdf;Integrated Security = True";
    private SqlConnection sqlConnection;
    private SqlCommand sqlCommand, sqlCommName;
    private SqlDataAdapter sqlAdapter;
    private DataSet dataSet;

    public InsertRequestDAO()
    {
        sqlConnection = new SqlConnection(connectionString);
    }

    public void InsertRequest(InsertRequestDTO insertRequestDTO)
    {

        sqlConnection.Open();
        string sqlQuery = " insert into Requester values('" + insertRequestDTO.NAME +
                                                       "','" + insertRequestDTO.CONTACTNO +
                                                       "','" + insertRequestDTO.EMAIL +
                                                       "','" + insertRequestDTO.PASSWORD + "')";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string date = System.DateTime.Now.ToString("dd-MM-yyyy");
        string sqlQuery2 = " insert into RequestStatus(Email,DateOfRequest,RequiredGroup,Amount,Location,BRImage)values('" + insertRequestDTO.EMAIL +
                                                                              "','" + date +
                                                                               "','" + insertRequestDTO.REQUIREDGROUP +
                                                                              "','" + insertRequestDTO.AMOUNT +
                                                                              "','" + insertRequestDTO.LOCATION +
                                                                             "','" + insertRequestDTO.IMAGE+ "')";

        sqlCommand = new SqlCommand(sqlQuery2, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();


    }


    public string CheckLogin(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select Password from Requester where Email='" + LoginEmail + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string tempPassword = sqlCommand.ExecuteScalar().ToString();

        sqlConnection.Close();
        return tempPassword;
    }

    public string GetNameAfterLogin(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select Name from Requester where Email='" + LoginEmail + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string tempName = sqlCommand.ExecuteScalar().ToString();

        sqlConnection.Close();
        return tempName;
    }

    public int CheckExistingMember(string email)
    {
        sqlConnection.Open();
        string sqlQuery = "select count(*) from Requester where Email='" + email + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        int temp = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());

        sqlConnection.Close();

        return temp;

    }

    public DataTable ShowRequestList(string Email)
    {
        sqlConnection.Open();
        string sqlQuery = "select DateOfRequest,Status from RequestStatus where Email='" + Email + "'ORDER BY RNo DESC";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        DataTable dataSet = new DataTable();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }

    public string GetImageURL(int RNO)
    {
        sqlConnection.Open();
        string sqlQuery = "select BRImage from RequestStatus where RNo=" +RNO;

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string temp = sqlCommand.ExecuteScalar().ToString();

        //for getting image
        /*SqlDataReader dr = sqlCommand.ExecuteReader();
        string img="";

        if (dr.HasRows)
        {
            while(dr.Read())
            {
                byte[] imagedata = (byte[])dr["BRImage"];
                img = Convert.ToBase64String(imagedata, 0, imagedata.Length);
            }
        }*/

        sqlConnection.Close();

        return temp;
    }



    /* public DataSet ShowRequesterData(string Email)
     {
         sqlConnection.Open();
         string sqlQuery = "select RId,Name,ContactNo,RequiredGroup,Amount,Location,Email,Password from Requester where Email='" + Email + "'";

         sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

         sqlAdapter = new SqlDataAdapter(sqlCommand);

         dataSet = new DataSet();

         sqlAdapter.Fill(dataSet);

         sqlConnection.Close();

         return dataSet;
     }*/



}