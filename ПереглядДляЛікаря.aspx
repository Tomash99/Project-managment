<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ПереглядДляЛікаря.aspx.cs" Inherits="test.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 299px;
        }
    </style>
</head>
<body style="height: 386px">
    <form id="form1" runat="server">
        <div> 

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Створити картку" />
            <asp:Button ID="ExitButton" runat="server" OnClick="ExitButton_Click" Text="Вийти" />

        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EMR %>" SelectCommand="SELECT * FROM [Patient] WHERE ([Surname] LIKE '%' + @Surname2 + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Surname2" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Пошук" OnClick="Button1_Click1" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="margin-top: 0px" Width="353px" BorderStyle="None" EnableTheming="True" GridLines="Horizontal" OnDataBinding="Button1_Click" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ОсобистаІнформаціяДляЛікаря.aspx?ID={0}" DataTextField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Surname" HeaderText="Прізвище" SortExpression="Surname" />
                    <asp:BoundField DataField="Name" HeaderText="Ім'я" SortExpression="Name" />
              
                    <asp:BoundField DataField="Father_name" HeaderText="По-батькові" SortExpression="Father_name" />
              
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            </div>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
            
    </form>
    </body>
</html>
