import java.util.Scanner;

class Person {
    String name;
    String dateOfBirth;
    String gender;
    String mobileNumber;
    String bloodGroup;


    public void setName(String name) {
        this.name = name;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getName() {
        return name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

}

class Donor extends Person {
    String bloodBankName;
    String donorType;
    String donationDate;

    public void setBloodBankName(String bloodBankName) {
        this.bloodBankName = bloodBankName;
    }

    public void setDonorType(String donorType) {
        this.donorType = donorType;
    }

    public void setDonationDate(String donationDate) {
        this.donationDate = donationDate;
    }

    public String getBloodBankName() {
        return bloodBankName;
    }

    public String getDonorType() {
        return donorType;
    }

    public String getDonationDate() {
        return donationDate;
    }

    public void displayDonationDetails( ){
        System.out.println("Name : "+name);
        System.out.println("Date of Birth : "+dateOfBirth);
        System.out.println("Gender : "+gender);
        System.out.println("Mobile Number : "+mobileNumber);
        System.out.println("Blood Group : "+bloodGroup);
        System.out.println("Blood Bank Name : "+bloodBankName);
        System.out.println("Donor Type : "+donorType);
        System.out.println("Donation Date : "+donationDate);
    }

}

public class InfiniteTask2 {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        Donor d=new Donor();
        System.out.println("Enter the name : ");
        d.setName(s.next());
        System.out.println("Enter Date of Birth : ");
        d.setDateOfBirth(s.next());
        System.out.println("Enter Gender : ");
        d.setGender(s.next());
        System.out.println("Enter Mobile Number : ");
        d.setMobileNumber(s.next());
        System.out.println("Enter Blood Group : ");
        d.setBloodGroup(s.next());
        System.out.println("Enter Blood Bank Name : ");
        d.setBloodBankName(s.next());
        System.out.println("Enter Donor Type : ");
        d.setDonorType(s.next());
        System.out.println("Enter Donation Date : ");
        d.setDonationDate(s.next());
        System.out.println("Donation Details : ");
        d.displayDonationDetails();
    }
}
