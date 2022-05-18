using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RequestStatusDTO
/// </summary>
public class RequestStatusDTO
{
    int RId;
    string email;
    string DateofRequest;
    string Status;
    private string Email, Amount, RequiredGroup, Location, image;
    public RequestStatusDTO(int RId, string DateofRequest,string Status)
    {
        this.RId = RId;
        this.DateofRequest = DateofRequest;
        this.Status = Status;
    }

    public RequestStatusDTO(int RId,string Status)
    {
        this.RId = RId;
        this.Status = Status;
    }

    public RequestStatusDTO(int RId)
    {
        this.RId = RId;
    }

    public RequestStatusDTO(string Email, string RequiredGroup, string Amount, string Location, string image)
    {
        this.Email = Email;
        this.RequiredGroup = RequiredGroup;
        this.Amount = Amount;
        this.Location = Location;
        this.image = image;
    }

    public int RID
    {
        get { return RId; }
        set { RId = value; }
    }

    public string IMAGE
    {
        get { return image; }
        set { image = value; }
    }

    public string REQUIREDGROUP
    {
        get { return RequiredGroup; }
        set { RequiredGroup = value; }
    }

    public string AMOUNT
    {
        get { return Amount; }
        set { Amount = value; }
    }

    public string LOCATION
    {
        get { return Location; }
        set { Location = value; }
    }

    public string EMAIL
    {
        get { return email; }
        set { email = value; }
    }

    public string DATEOFREQUEST
    {
        get { return DateofRequest; }
        set { DateofRequest = value; }
    }

    public string STATUS
    {
        get { return Status; }
        set { Status = value; }
    }
}