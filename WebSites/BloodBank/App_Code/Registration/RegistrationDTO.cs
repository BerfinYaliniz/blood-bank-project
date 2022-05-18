using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class RegistrationDTO
{

    private int id;
    private string name, email, password, district, bloodGroup,contactNo;

    public RegistrationDTO(string name, string email, string password, string district, string bloodGroup,string contactNo)
    {

        this.name = name;
        this.email = email;
        this.password = password;
        this.district = district;
        this.bloodGroup = bloodGroup;
        this.contactNo = contactNo;
    }

    public RegistrationDTO(string email, string password)
    {     
        this.email = email;
        this.password = password;       
    }

    public RegistrationDTO(int id ,string name, string email, string district, string bloodGroup, string contactNo)
    {
        this.id = id;
        this.name = name;
        this.email = email; 
        this.district = district;
        this.bloodGroup = bloodGroup;
        this.contactNo = contactNo;
    }


    public int ID
    {
        get { return id; }
        set { id = value; }
    }

    public string NAME
    {
        get { return name; }
        set { name = value; }
    }

    public string EMAIL
    {
        get { return email; }
        set { email = value; }
    }

    public string PASSWORD
    {
        get { return password; }
        set { password = value; }
    }

    public string DISTRICT
    {
        get { return district; }
        set { district = value; }
    }

    public string BLOODGROUP
    {
        get { return bloodGroup; }
        set { bloodGroup = value; }
    }

    public string CONTACTNO
    {
        get { return contactNo; }
        set { contactNo = value; }
    }
}

