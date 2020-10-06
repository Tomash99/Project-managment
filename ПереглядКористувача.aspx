<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ПереглядКористувача.aspx.cs" Inherits="test.ПереглядКористувача" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Пошук" />
            <br />
            <br />
        </div>
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ОсобистаІнформаціяДляПацієнта.aspx?ID={0}" DataTextField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Surname" HeaderText="Прізвище" SortExpression="Surname" />
                    <asp:BoundField DataField="Name" HeaderText="Ім'я" SortExpression="Name" />
                    <asp:BoundField DataField="Father_name" HeaderText="По-батькові" SortExpression="Father_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EMR %>" SelectCommand="SELECT * FROM [Patient] WHERE ([Surname] LIKE '%' + @Surname2 + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Surname2" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
