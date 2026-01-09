<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewstudentdetails.aspx.cs" Inherits="viewstudentdetails" %>

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
    .contact-form {
      padding: 40px;
      width: 60%;
    }

    .contact-form h2 {
      margin-top: 0;
      font-size: 26px;
      margin-bottom: 20px;
    }

    .form-group {
      display: flex;
      gap: 20px;
    }

    .form-group .input-box {
      flex: 1;
      display: flex;
      flex-direction: column;
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      font-size: 13px;
      margin-bottom: 5px;
      color: #3b82f6;
    }

    input, textarea {
      padding: 10px;
      font-size: 14px;
      border: none;
      border-bottom: 1px solid #ccc;
      outline: none;
      background: transparent;
    }

    textarea {
      resize: vertical;
      min-height: 100px;
    }

    .contact-form button {
      padding: 10px 20px;
      background: #3b82f6;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 15px;
      cursor: pointer;
      margin-top: 10px;
    }

    .contact-form button:hover {
      background: #2563eb;
    }

    @media (max-width: 768px) {
      .contact-container {
        flex-direction: column;
      }

      .contact-info,
      .contact-form {
        width: 100%;
      }
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <asp:GridView runat="server" ID="gv1" CssClass="table table-striped"></asp:GridView>
        
    
    </div>
 
    </form>
</body>
</html>
