<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="Patient_Dashoboard_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginName ID="main_login" FormatString="Welcome, {0}!" runat="server" />
        <br /><br />
        <asp:LoginStatus ID="main_login2" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Login.aspx" />
        <br /><br />
        <h1>Patient Dashboard</h1>
        <asp:Label ID="lbl_patientTitle" runat="server" Text="This is where patients can view their appointments." /> 
    </div>
    </form>
</body>
</html>
