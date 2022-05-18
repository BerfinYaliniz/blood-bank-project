using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class RequestStatusDAO
{
    public string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\BloodBankDB.mdf;Integrated Security = True";
    private SqlConnection sqlConnection;
    private SqlCommand sqlCommand, sqlCommName;
    private SqlDataAdapter sqlAdapter;
    private DataSet dataSet;
    public RequestStatusDAO()
    {
        sqlConnection = new SqlConnection(connectionString);
    }

    public void UpdateStatus(RequestStatusDTO rsDTO)
    {
        sqlConnection.Open();
        string sqlQuery = "UPDATE RequestStatus SET Status='" + rsDTO.STATUS +
                                                "' where RNo=" +rsDTO.RID ;

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();
    }

    public string getEmail(RequestStatusDTO rsDTO)
    {
        sqlConnection.Open();
        string sqlQuery = "select Email from RequestStatus where RNo=" + rsDTO.RID;

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string tempName = sqlCommand.ExecuteScalar().ToString();

        sqlConnection.Close();
        return tempName;
    }

    public void DeleteRequest(int RNO)
    {
        sqlConnection.Open();
        string sqlQuery = " delete from RequestStatus where RNO=" + RNO;

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();

    }

    public int GetRNo(string LoginEmail, string savedDate)
    {
        sqlConnection.Open();
        string sqlQuery = "select RNo from RequestStatus where Email='" + LoginEmail + "'and DateOfRequest=" + savedDate + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        int tempID = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());

        sqlConnection.Close();
        return tempID;
    }

    public void InsertNewRequest(InsertRequestDTO insertRequestDTO)
    {
        sqlConnection.Open();
        string date = System.DateTime.Now.ToString("dd-MM-yyyy");
       

        string sqlQuery = " insert into RequestStatus(Email,DateOfRequest,RequiredGroup,Amount,Location,BRImage)values('" + insertRequestDTO.EMAIL +
                                                                              "','" + date +
                                                                               "','" + insertRequestDTO.REQUIREDGROUP +
                                                                              "','" + insertRequestDTO.AMOUNT +
                                                                              "','" + insertRequestDTO.LOCATION +
                                                                             "','" + insertRequestDTO.IMAGE + "')";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();
    }
}