<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css2/bootstrap.css" rel="stylesheet" />
</head>
<body style="background-color:cadetblue">
    
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="jumbotron text-center" style="border:1px #000000;box-shadow:0px 2px 5px #000000;">
                    <h1>Welcome to the Maths Game!</h1>
                </div>
                <div class="col-md-offset-3">
                    <h2><asp:Label ID="Label1" runat="server" Text="Click The Play Button When You Are Ready To Play!"></asp:Label></h2>
                    </div>
                <br />
                <div class="col-md-offset-5"><asp:Button ID="Button1" runat="server" Text="Play" CssClass="btn btn-success" OnClick="Button1_Click" /></div>
                <br />
                <br />
                <div class="col-md-offset-4 center-block text-center jumbotron" style="border:2px #000000;box-shadow:0px 2px 5px #000000;"">
                    <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                    <asp:Label ID="progress" runat="server"></asp:Label>
                    <asp:Label ID="showProgress" runat="server"></asp:Label>
                    <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="Button2_Click" />

                </div>
                

            </div>
        </div>
    </form>
</body>
</html>
