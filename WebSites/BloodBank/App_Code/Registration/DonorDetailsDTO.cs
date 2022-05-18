using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DonorDetailsDTO
{
    int DonorID;
    private string Address, Gender, Smoker, Addict, DateofBirth, DonationStatus, Bio, Weight, Height;
    public DonorDetailsDTO(int DonorID, string Address, string Gender,string Weight, string Height,
        string Smoker,string Addict,string DateofBirth,string DonationStatus, string Bio)
    {
        this.DonorID = DonorID;
        this.Address = Address;
        this.Gender = Gender;
        this.Weight = Weight;
        this.Height = Height;
        this.Smoker = Smoker;
        this.Addict = Addict;
        this.DateofBirth = DateofBirth;
        this.DonationStatus = DonationStatus;
        this.Bio = Bio;
    }

    public int DONORID
    {
        get { return DonorID; }
        set { DonorID = value; }
    }

    public string ADDRESS
    {
        get { return Address; }
        set { Address = value; }
    }

    public string GENDER
    {
        get { return Gender; }
        set { Gender = value; }
    }

    public string WEIGHT
    {
        get { return Weight; }
        set { Weight = value; }
    }

    public string HEIGHT
    {
        get { return Address; }
        set { Address = value; }
    }

    public string SMOKER
    {
        get { return Smoker; }
        set { Smoker = value; }
    }

    public string ADDICT
    {
        get { return Addict; }
        set {Addict = value; }
    }

    public string DATEOFBIRTH
    {
        get { return DateofBirth; }
        set {DateofBirth = value; }
    }
    public string DONATIONSTATUS
    {
        get { return DonationStatus; }
        set { DonationStatus = value; }
    }

    public string BIO
    {
        get { return Bio; }
        set { Bio = value; }
    }


}