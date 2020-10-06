<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ОсобистаІнформаціяДляПацієнта.aspx.cs" Inherits="test.ОсобистаІнформаціяДляПацієнта" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Пошук" />

        </div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Surname" HeaderText="Прізвище" SortExpression="Surname" />
                        <asp:BoundField DataField="Name" HeaderText="Ім'я" SortExpression="Name" />
                        <asp:BoundField DataField="Father_name" HeaderText="По-батькові" SortExpression="Father_name" />
                        <asp:BoundField DataField="Sex" HeaderText="Стать" SortExpression="Sex" />
                        <asp:BoundField DataField="Birthday" HeaderText="Дата народження" SortExpression="Birthday" />
                        <asp:BoundField DataField="Blood" HeaderText="Кров" SortExpression="Blood" />
                        <asp:BoundField DataField="City" HeaderText="Місто" SortExpression="City" />
                        <asp:BoundField DataField="Street" HeaderText="Вулиця" SortExpression="Street" />
                        <asp:BoundField DataField="House" HeaderText="Будинок" SortExpression="House" />
                        <asp:BoundField DataField="Apartment" HeaderText="Квартира" SortExpression="Apartment" />
                        <asp:BoundField DataField="Telephone" HeaderText="Моб.номер" SortExpression="Telephone" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EMR %>" SelectCommand="SELECT * FROM [Patient] WHERE ([ID] = @ID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </div>
        
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="appointment" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="Дата прийому" SortExpression="date" />
                    <asp:BoundField DataField="complaints" HeaderText="Скарги" SortExpression="complaints" />
                    <asp:BoundField DataField="conclusion" HeaderText="Заключення" SortExpression="conclusion" />
                    <asp:BoundField DataField="doctor" HeaderText="Лікар" SortExpression="doctor" />
                    <asp:BoundField DataField="medical_centre" HeaderText="Медичний заклад" SortExpression="medical_centre" />
                    <asp:BoundField DataField="notes" HeaderText="Примітки" SortExpression="notes" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EMR %>" SelectCommand="SELECT * FROM [Chek] WHERE ([patient] = @patient)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="patient" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
