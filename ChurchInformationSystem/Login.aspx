<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChurchInformationSystem.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
           
            margin-top : 200px;
            color: #5a5656;
            font-family: 'Open Sans' , Arial, Helvetica, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
            text-align: center;
        }
        a
        {
            text-decoration: none;
        }
        h1
        {
            font-size: 1em;
        }
        h1, p
        {
            margin-bottom: 10px;
        }
        strong
        {
            font-weight: bold;
        }
        .uppercase
        {
            text-transform: uppercase;
        }
        
        /* ---------- LOGIN ---------- */
        #login
        {
            margin: 50px auto;
            width: 300px;
        }
        form fieldset input[type="text"], input[type="password"]
        {
            background-color: #e5e5e5;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #5a5656;
            font-family: 'Open Sans' , Arial, Helvetica, sans-serif;
            font-size: 14px;
            height: 50px;
            outline: none;
            padding: 0px 10px;
            width: 280px;
            -webkit-appearance: none;
        }
        form fieldset input[type="submit"]
        {
            background-color: #2E5946;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #f4f4f4;
            cursor: pointer;
            font-family: 'Open Sans' , Arial, Helvetica, sans-serif;
            height: 50px;
            text-transform: uppercase;
            width: 300px;
            -webkit-appearance: none;
        }
        form fieldset a
        {
            color: #5a5656;
            font-size: 10px;
        }
        form fieldset a:hover
        {
            text-decoration: underline;
        }
        .btn-round
        {
            background-color: #5a5656;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            color: #f4f4f4;
            display: block;
            font-size: 12px;
            height: 50px;
            line-height: 50px;
            margin: 30px 125px;
            text-align: center;
            text-transform: uppercase;
            width: 50px;
        }
        body
        {
            background-image:url(../images/back1.jpg);
            background-repeat:no-repeat;
            background-size:cover;                    

    background-position: center center; 
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div id="login">
    <strong><h2 style="color:#2E5946;">   </h2> <br /><h4 style="color:#2E5946;">Admin Panel</h4></strong>
     <table width="100%" cellpadding="0" cellspacing="0" boder="0">
        <tr>
        <td align="center">
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        </table>
        <fieldset>
            <p>
             <asp:TextBox ID="txtusername" runat="server" PlaceHolder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvuname" runat="server" 
                    ControlToValidate="txtusername" ForeColor="#CC0000" 
                    ErrorMessage="UserName required"></asp:RequiredFieldValidator>
            </p>
                    
            <p>
                 <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" PlaceHolder="*******"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="rfvpassword" ForeColor="#CC0000" 
                ControlToValidate="txtpassword" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>
            <%--<p>
                <a href="#">Forgot Password?</a></p>--%>
            <p>
            <asp:Button ID="btnsubmit" runat="server" Text="Login" OnClick="btnsubmit_Click"/></p>
        </fieldset>
    </div>
    </form>
</body>
</html>

