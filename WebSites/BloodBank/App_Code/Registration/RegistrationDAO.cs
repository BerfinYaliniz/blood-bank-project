using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

public class RegistrationDAO
{
    
    
    public string connectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\BloodBankDB.mdf;Integrated Security = True";
    private SqlConnection sqlConnection;
    private SqlCommand sqlCommand,sqlCommName;
    private SqlDataAdapter sqlAdapter;
    private DataSet dataSet;

    public RegistrationDAO()
    {     
        sqlConnection = new SqlConnection(connectionString);
    }

    public string CheckLogin(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select Password from RegisteredDonor where Email='" + LoginEmail + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string tempPassword = sqlCommand.ExecuteScalar().ToString();

        sqlConnection.Close();
        return tempPassword;
    }

    public string GetNameAfterLogin(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select Name from RegisteredDonor where Email='" + LoginEmail + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string tempName = sqlCommand.ExecuteScalar().ToString();

        sqlConnection.Close();
        return tempName;
    }

    public int GetIDAfterLogin(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select DonorID from RegisteredDonor where Email='" + LoginEmail + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        int tempID = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());

        sqlConnection.Close();
        return tempID;
    }
    

    public int CheckExistingMember(string email)
    {
        sqlConnection.Open();
        string sqlQuery = "select count(*) from RegisteredDonor where Email='" + email + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        int temp = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());

        sqlConnection.Close();

        return temp;

    }
    public int CreateMember(RegistrationDTO registrationDTO)
    {

        sqlConnection.Open();
        string sqlQuery = " insert into RegisteredDonor values('" + registrationDTO.NAME +
                                                       "','" + registrationDTO.EMAIL +
                                                       "','" + registrationDTO.PASSWORD +
                                                       "','" + registrationDTO.DISTRICT +
                                                       "','" + registrationDTO.BLOODGROUP +
                                                       "','" + registrationDTO.CONTACTNO + "')";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        // Donör Ayrıntıları Tablosuna eklemek için otomatik olarak oluşturulan DonorID'yi al
        string sqlQuery2 = "select DonorID from RegisteredDonor where Email='"+ registrationDTO.EMAIL+"'";
        sqlCommand = new SqlCommand(sqlQuery2, sqlConnection);
        sqlCommand.ExecuteNonQuery();
        int temp = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());

        sqlConnection.Close();

        return temp;
    }

    public void InsertDonorIDinOtherTables(int DonorID)
    {   
        //insert into DonorDetails
        sqlConnection.Open();
        string sqlQuery1 = "INSERT INTO DonorDetails (DonorID) VALUES("+DonorID+")";

        sqlCommand = new SqlCommand(sqlQuery1, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        //insert into Records
        string sqlQuery2 = "INSERT INTO Records (DonorID) VALUES(" + DonorID + ")";

        sqlCommand = new SqlCommand(sqlQuery2, sqlConnection);
        sqlCommand.ExecuteNonQuery();
        sqlConnection.Close();
    }

    //update password
    public void UpdatePassword(RegistrationDTO registerDTO)
    {
        sqlConnection.Open();
        string sqlQuery = "UPDATE RegisteredDonor SET Password='" + registerDTO.PASSWORD +
                                                "' where Email= '" + registerDTO.EMAIL+ "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();
    }

    //update data of donors
    public void UpdateAllInfo(RegistrationDTO registerDTO, DonorDetailsDTO donorDTO)
    {
        // for registered Donors
        sqlConnection.Open();
        string sqlQuery1 = "UPDATE RegisteredDonor SET Name='" + registerDTO.NAME +
                                                       "',Email='" + registerDTO.EMAIL +
                                                       "',District='" + registerDTO.DISTRICT +
                                                       "',BloodGroup='" + registerDTO.BLOODGROUP +
                                                       "',ContactNo='" + registerDTO.CONTACTNO +
                                                       "' where DonorID=" + registerDTO.ID;

        sqlCommand = new SqlCommand(sqlQuery1, sqlConnection);
        sqlCommand.ExecuteNonQuery();


        //for Donor Details

        string sqlQuery2 = "UPDATE DonorDetails SET Address='" + donorDTO.ADDRESS +
                                                       "',Gender='" + donorDTO.GENDER +
                                                       "',Weight='" + donorDTO.WEIGHT +
                                                       "',Height='" + donorDTO.HEIGHT +
                                                       "',Smoker='" + donorDTO.SMOKER +
                                                       "',Addict='" + donorDTO.ADDICT +
                                                       "',DateofBirth='" + donorDTO.DATEOFBIRTH +
                                                       "',DonationStatus='" + donorDTO.DONATIONSTATUS +
                                                       "',Bio='" + donorDTO.BIO +
                                                       "' where DonorID=" + donorDTO.DONORID;

        sqlCommand = new SqlCommand(sqlQuery2, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        sqlConnection.Close();
    }


    public DataSet ShowListByBloodGroup(string BloodGroup)
    {
        sqlConnection.Open();
        string sqlQuery = "select Name,Email,District,BloodGroup,ContactNo from RegisteredDonor where BloodGroup='" + BloodGroup + "'";
     
        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }

    //search by district
    public DataSet ShowListByDistrict(string District)
    {
        sqlConnection.Open();
        string sqlQuery = "select Name,Email,District,BloodGroup,ContactNo from RegisteredDonor where District='" + District + "'";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }

    //fetching all data to show in the search list initially 
    public DataSet ShowAllList()
    {
        sqlConnection.Open();
        string sqlQuery = "select Name,Email,District,BloodGroup,ContactNo from RegisteredDonor";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }

// RegisteredDonor'un tablosundan verileri alıp metin kutusunda göstermek için gönderiyoruz
  public DataSet ShowDataForEditing(string LoginEmail)
    {
        sqlConnection.Open();
        string sqlQuery = "select DonorID,Name,Email,District,BloodGroup,ContactNo from RegisteredDonor where Email='" + LoginEmail + "'";
        
        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }
 

    // Verileri DonorDetails tablosundan alıp metin kutusunda göstermek için gönderiyoruz
    public DataSet ShowDataFromDonorDetails(int DonorID)
    {
        sqlConnection.Open();
        string sqlQuery = "select Address,Gender,Weight,Height,Smoker,Addict, DateofBirth,DonationStatus,Bio from DonorDetails where DonorID=" + DonorID + "";

        sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

        sqlAdapter = new SqlDataAdapter(sqlCommand);

        dataSet = new DataSet();

        sqlAdapter.Fill(dataSet);

        sqlConnection.Close();

        return dataSet;
    }


}