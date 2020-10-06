
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Вхід.aspx.cs" Inherits="test.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Content-Type" content="text/html; charset=Windows-1251" />
    <title>Система обліку пацієнтів</title>
    
        <style type="text/css">
       
      
        
            .auto-style1 {
                width: 149px;
            }
            .auto-style3 {
                width: 355px;
                text-align: center;
            }
            .auto-style4 {
                color: #fff;
                border: 1px solid #03306b;
                margin-left: 0px;
                background-color: #00CCFF;
            }
            .auto-style5 {
                width: 149px;
                font-size: x-large;
            }
       
      
        
    </style>
         <link href="style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">

    <header class="header">
         <div >
             <div ><asp:Image ID="Image1" runat="server" ImageUrl="~/Emblem_of_the_Ministry_of_Health_of_Ukraine.png" Width="120px" /></div>
             <div> <h1>  Ваша електронна медична картка</h1></div>
             <div></div>
        </div>
    </header>


       <div class="login">
           
        <table >
            <tr>
                <td class="auto-style5">Логін лікаря </td>
                <td class="auto-style3" >
                    <br />
                    <asp:TextBox CssClass="field" ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Поле не повинно бути пустим" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >Пароль</td>
                <td class="auto-style3" >
                    <br />
                    <asp:TextBox CssClass="field"  ID="TextBox2" runat="server" TextMode="Password" Width="184px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Поле не повинне бути пустим" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" >
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" CssClass="auto-style19"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Button  CssClass="auto-style4" ID="Button1" runat="server" OnClick="Button1_Click" Text="Увійти" Height="34px" Width="186px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style3">
                    <strong>
                    <asp:HyperLink  ID="HyperLink1" runat="server" NavigateUrl="~/ПереглядКористувача.aspx" ForeColor="#FF0066" style="color: #FFCCFF; font-size: large">Знайти картку</asp:HyperLink>
                    </strong>
                </td>
            </tr>
        </table>

           
           </div>
    </form>
</body>
</html>
