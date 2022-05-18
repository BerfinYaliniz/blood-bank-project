using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class RecordsDTO
{
    int DonorID;
    string DonationDate, Recipient, RecipientName, RecipientAddress;
    public RecordsDTO(int DonorID,string DonationDate, string Recipient, string RecipientName, string RecipientAddress)
    {
        this.DonorID = DonorID;
        this.DonationDate = DonationDate;
        this.Recipient = Recipient;
        this.RecipientName = RecipientName;
        this.RecipientAddress = RecipientAddress;
    }

    public int DONORID
    {
        get { return DonorID; }
        set { DonorID = value; }
    }
    public string DONATIONDATE
    {
        get { return DonationDate; }
        set { DonationDate = value; }
    }

    public string RECIPIENT
    {
        get { return Recipient; }
        set { Recipient = value; }
    }

    public string RECIPIENTADDRESS
    {
        get { return RecipientAddress; }
        set { RecipientAddress = value; }
    }

    public string RECIPIENTNAME
    {
        get { return RecipientName; }
        set { RecipientName = value; }
    }
}