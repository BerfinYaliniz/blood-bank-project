using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class InsertRequestDTO
{
    private int RId;
    private string Name, Email, Password, Amount, RequiredGroup, ContactNo, Location,image;
    private byte[] pic;
    public InsertRequestDTO(string Name, string ContactNo, string RequiredGroup, string Amount, string Location, string Email, string Password, string image)
    {

        this.Name = Name;
        this.ContactNo = ContactNo;
        this.RequiredGroup = RequiredGroup;
        this.Amount = Amount;
        this.Location = Location;
        this.Email = Email;
        this.Password = Password;
        this.image = image;
    
    }

    public InsertRequestDTO(string Email, string RequiredGroup, string Amount, string Location, string image)
    {

       
        this.RequiredGroup = RequiredGroup;
        this.Amount = Amount;
        this.Location = Location;
        this.Email = Email;
       
        this.image = image;
    }


    public byte[] PIC
    {
        get { return pic; }
        set { pic = value; }
    }

    public string IMAGE
    {
        get { return image; }
        set { image = value; }
    }

    public int RID
    {
        get { return RId; }
        set { RId = value; }
    }

    public string NAME
    {
        get { return Name; }
        set { Name = value; }
    }

    public string CONTACTNO
    {
        get { return ContactNo; }
        set { ContactNo = value; }
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
        get { return Email; }
        set { Email = value; }
    }
    public string PASSWORD
    {
        get { return Password; }
        set { Password = value; }
    }
    
}