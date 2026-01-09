<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
     <link href="fonts/css/fontawesome.css" rel="stylesheet" />
     <link href="fonts/css/brands.css" rel="stylesheet" />
     <link href="fonts/css/solid.css" rel="stylesheet" />
     <link href="fonts/css/sharp-thin.css" rel="stylesheet" />
     <link href="fonts/css/duotone-thin.css" rel="stylesheet" />
     <link href="fonts/css/sharp-duotone-thin.css" rel="stylesheet" />
    <style>
    body {
      background-image: url('images/blue-ocean-bottom-with-bubbles-and-light-rays-deep-underwater-background-animation-video.jpg');
      background-size: cover;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      padding: 30px;
      margin: 0;
    }

    .form-wrapper {
      background-color: #fff;
      max-width: 750px;
      margin: auto;
      padding: 0;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
    }

    .form-header {
      background: linear-gradient(135deg, #7b1fa2, #512da8);
      padding: 30px;
      text-align: center;
      color: white;
    }

    .form-header .google-icon {
      display: inline-block;
      background-color: white;
      color: #673AB7;
      font-weight: bold;
      font-size: 22px;
      width: 48px;
      height: 48px;
      line-height: 48px;
      border-radius: 6px;
      margin-bottom: 10px;
    }

    .form-header h2 {
      font-size: 28px;
      margin: 5px 0;
    }

    .form-header p {
      font-size: 14px;
      margin: 4px 0;
    }

    .form-body {
      padding: 30px 40px;
    }

    .section-title {
      font-size: 18px;
      margin: 30px 0 15px;
      color: #5e35b1;
      border-bottom: 2px solid #e1bee7;
      padding-bottom: 6px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      font-weight: 600;
      margin-bottom: 6px;
      color: #333;
    }

    input[type="text"],
    input[type="date"],
    select {
      width: 100%;
      padding: 12px 14px;
      border: 1.5px solid #c7a4ff;
      border-radius: 8px;
      font-size: 16px;
      background-color: #f9f6ff; /* 🌟 Light pastel box background */
      transition: border 0.3s, box-shadow 0.3s;
    }

    input[type="text"]:focus,
    input[type="date"]:focus,
    select:focus {
      border-color: #7e57c2;
      box-shadow: 0 0 5px rgba(126, 87, 194, 0.4);
      outline: none;
      background-color: #f2ebff; /* Slightly deeper on focus */
    }

    .required {
      color: red;
      font-size: 16px;
    }

    .submit-btn {
      width: 100%;
      background-color: #7e57c2;
      color: white;
      padding: 14px;
      font-size: 16px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      margin-top: 30px;
      transition: background 0.3s ease;
    }

    .submit-btn:hover {
      background-color: #5e35b1;
    }

    @media (max-width: 600px) {
      .form-body {
        padding: 25px;
      }
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
        <div class="form-group">
            <div class="input-box">
                   <label>Trade Applied For *</label>
                    <asp:DropDownList ID="ddlTradeAppliedFor" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Trade --</asp:ListItem>
                        <asp:ListItem Value="COPA">C.O.P.A</asp:ListItem>
                        <asp:ListItem Value="Fitter">Fitter</asp:ListItem>
                        <asp:ListItem Value="Electrician">Electrician</asp:ListItem>
                    </asp:DropDownList>
                </div>
            <div class="input-box">
                    <label>Student Name *</label>
                    <asp:TextBox ID="txtStudentName" runat="server" placeholder="Enter full name" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Father's Name *</label>
                    <asp:TextBox ID="txtFathersName" runat="server" placeholder="Enter father's name" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Mother's Name *</label>
                    <asp:TextBox ID="txtMothersName" runat="server" placeholder="Enter mother's name" CssClass="form-control"></asp:TextBox>
                </div>
                
                <div class="input-box">
                    <label>Address *</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" placeholder="Enter residential address" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Pin Code *</label>
                    <asp:TextBox ID="txtPinCode" runat="server" placeholder="Enter Pin Code" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="input-box">
                    <label>Email Address *</label>
                    <asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email" placeholder="Enter Email Address" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Mobile Number *</label>
                    <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Enter Mobile Number" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Alternate Mobile Number</label>
                    <asp:TextBox ID="txtAlternateMobileNumber" runat="server" placeholder="Enter Alternate Mobile Number" CssClass="form-control"></asp:TextBox>
                </div>
                
                <div class="input-box">
                    <label>Caste *</label>
                    <asp:DropDownList ID="ddlCaste" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Caste --</asp:ListItem>
                        <asp:ListItem Value="General">General</asp:ListItem>
                        <asp:ListItem Value="OBC">OBC</asp:ListItem>
                        <asp:ListItem Value="SC">SC</asp:ListItem>
                        <asp:ListItem Value="ST">ST</asp:ListItem>
                    </asp:DropDownList>
                </div>
             <div class="input-box">
                    <label>Category *</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Category --</asp:ListItem>
                        <asp:ListItem Value="A">Category A</asp:ListItem>
                        <asp:ListItem Value="B">Category B</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <label>Gender *</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Gender --</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <label>Blood Group *</label>
                    <asp:TextBox ID="txtBloodGroup" runat="server" placeholder="Enter Blood Group (e.g., A+)" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Date of Birth *</label>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Aadhar Card Number *</label>
                    <asp:TextBox ID="txtAadharCardNumber" runat="server" placeholder="Enter Aadhar Card Number" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="input-box">
                    <label>Last Examination Passed *</label>
                    <asp:DropDownList ID="ddlLastExamPassed" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select --</asp:ListItem>
                        <asp:ListItem Value="10th">10th Standard</asp:ListItem>
                        <asp:ListItem Value="12th">12th Standard</asp:ListItem>
                        <asp:ListItem Value="Graduation">Graduation</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <label>Year Of Passing *</label>
                    <asp:TextBox ID="txtYearOfPassing" runat="server" placeholder="Enter Year Of Passing" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Board *</label>
                    <asp:TextBox ID="txtBoard" runat="server" placeholder="Enter Board" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Name Of School / College / University</label>
                    <asp:TextBox ID="txtSchoolCollegeUniversity" runat="server" placeholder="Enter Name Of School / College / University" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="input-box">
                    <label>Aggregate Percentage *</label>
                    <asp:TextBox ID="txtAggregatePercentage" runat="server" placeholder="Enter Aggregate Percentage" CssClass="form-control"></asp:TextBox>
                </div>


                <asp:Button ID="btnSubmit" runat="server" text="Submit" CssClass="submit-btn" OnClick="btnSubmit_Click" />

                <div class="mt-3">
                    <asp:Literal ID="ltrmessage" runat="server"></asp:Literal>
                </div>
             </div>
        </div>
        
        <div class="contact-right">
            <div class="contact-info">
                For assistance, contact the Administration office.
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
