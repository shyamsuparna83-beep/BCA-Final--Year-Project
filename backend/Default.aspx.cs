using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string query = "insert into formdetails (tradeappliedfor,studentname,fathersname,mothersname,address, " +
                       " pincode,caste,category,gender,bloodgroup,dateofbirth,aadharcardnumber,mobilenumber, " +
                       " altermobnumber,emailaddress,lastexampassed,yearofpassing,board,schoolcollegeuniversity, " +
                       " aggregatepercentage,entrytimestamp) " +
                       " values " +
                       " (@tradeappliedfor, @studentname, @fathersname, @mothersname, @address, " +
                       " @pincode, @caste, @category, @gender, @bloodgroup, @dateofbirth, @aadharcardnumber, @mobilenumber, " +
                       " @altermobnumber, @emailaddress, @lastexampassed, @yearofpassing, @board, @schoolcollegeuniversity, " +
                       "  @aggregatepercentage, getdate()) ";
        SqlConnection con = new SqlConnection("data source=.\\sqlexpress;initial catalog=form;persist security info=True; Integrated Security = SSPI");
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@tradeappliedfor", ddlTradeAppliedFor.Text);
        cmd.Parameters.AddWithValue("@studentname", txtStudentName.Text);
        cmd.Parameters.AddWithValue("@fathersname", txtFathersName.Text);
        cmd.Parameters.AddWithValue("@mothersname", txtMothersName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@pincode", txtPinCode.Text);
        cmd.Parameters.AddWithValue("@caste", ddlCaste.Text);
        cmd.Parameters.AddWithValue("@category", ddlCategory.Text);
        cmd.Parameters.AddWithValue("@gender", ddlGender.Text);
        cmd.Parameters.AddWithValue("@bloodgroup", txtBloodGroup.Text);
        cmd.Parameters.AddWithValue("@dateofbirth", txtDateOfBirth.Text);
        cmd.Parameters.AddWithValue("@aadharcardnumber", txtAadharCardNumber.Text);
        cmd.Parameters.AddWithValue("@mobilenumber", txtMobileNumber.Text);
        cmd.Parameters.AddWithValue("@altermobnumber", txtAlternateMobileNumber.Text);
        cmd.Parameters.AddWithValue("@emailaddress", txtEmailAddress.Text);
        cmd.Parameters.AddWithValue("@lastexampassed", ddlLastExamPassed.Text);
        cmd.Parameters.AddWithValue("@yearofpassing", txtYearOfPassing.Text);
        cmd.Parameters.AddWithValue("@board", txtBoard.Text);
        cmd.Parameters.AddWithValue("@schoolcollegeuniversity", txtSchoolCollegeUniversity.Text);
        cmd.Parameters.AddWithValue("@aggregatepercentage", txtAggregatePercentage.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ddlTradeAppliedFor.SelectedIndex= 0;
        txtStudentName.Text = "";
        txtFathersName.Text = "";
        txtMothersName.Text = "";
        txtAddress.Text = "";
        txtPinCode.Text = "";
        ddlCaste.SelectedIndex = 0;
        ddlCategory.SelectedIndex = 0;
        ddlGender.SelectedIndex = 0;
        txtBloodGroup.Text = "";
        txtDateOfBirth.Text = "";
        txtAadharCardNumber.Text = "";
        txtMobileNumber.Text = "";
        txtAlternateMobileNumber.Text = "";
        ddlLastExamPassed.SelectedIndex = 0;
        txtYearOfPassing.Text = "";
        txtBoard.Text = "";
        txtSchoolCollegeUniversity.Text = "";
        txtAggregatePercentage.Text = "";
        ltrmessage.Text = "<h2>enquiry submitted successfully</h2>";






















    }
}