<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddRestaurant.aspx.cs" Inherits="FoodSpot.ADMIN.AddRestaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 279px;
        }
        .auto-style8 {
            width: 279px;
            height: 42px;
        }
        .auto-style9 {
            height: 42px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style13 {
            height: 36px;
        }
        .auto-style15 {
            height: 33px;
        }
        .auto-style17 {
            height: 37px;
        }
        .auto-style18 {
            width: 279px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
        }
        .auto-style20 {
            width: 279px;
            height: 38px;
        }
        .auto-style21 {
            height: 38px;
        }
        .auto-style22 {
            width: 336px;
        }
        .auto-style23 {
            height: 42px;
            width: 336px;
        }
        .auto-style24 {
            height: 34px;
            width: 336px;
        }
        .auto-style25 {
            height: 36px;
            width: 336px;
        }
        .auto-style26 {
            height: 33px;
            width: 336px;
        }
        .auto-style27 {
            height: 37px;
            width: 336px;
        }
        .auto-style28 {
            height: 40px;
            width: 336px;
        }
        .auto-style29 {
            height: 38px;
            width: 336px;
        }
        .auto-style30 {
            width: 279px;
            height: 48px;
        }
        .auto-style31 {
            height: 48px;
            width: 336px;
        }
        .auto-style32 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:90%;">
        <tr><td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Font-Size="Larger" ForeColor="#660066" Text="Restaurant Registration" Font-Bold="True" Font-Underline="True"></asp:Label>
            </td><td class="auto-style22"></td><td></td></tr>
                <tr><td class="auto-style3"></td><td class="auto-style22">
                    <asp:HiddenField ID="hd_value" runat="server" />
                    </td><td></td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="Large"></asp:Label>
            </td><td class="auto-style23">
                <asp:TextBox ID="txt_name" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Name !" ForeColor="Red" ValidationGroup="a" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="Phone" Font-Size="Large"></asp:Label>
            </td><td class="auto-style23">
                <asp:TextBox ID="txt_phone" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style9">

                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                             ControlToValidate="txt_phone" ErrorMessage="Only numbers !" ForeColor="#FF3300"
                             ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ValidationGroup="a" ></asp:RegularExpressionValidator>--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txt_phone" ErrorMessage="Only Numbers !"  
ValidationExpression="[0-9]{10}" ForeColor="Red" ValidationGroup="a"></asp:RegularExpressionValidator>  
                 <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_phone" ErrorMessage="Enter the Phone Number !" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                 </td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Text="Location" Font-Size="Large"></asp:Label>
            </td><td class="auto-style24">
                <asp:TextBox ID="txt_location" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Location !" ForeColor="Red" ValidationGroup="a" ControlToValidate="txt_location"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label7" runat="server" Text="E Mail" Font-Size="Large"></asp:Label>
            </td><td class="auto-style25">
                <asp:TextBox ID="txt_mail" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the E Mail Id !" ForeColor="Red" ControlToValidate="txt_mail" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_mail" ErrorMessage="Invalid E mail Format !" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label9" runat="server" Text="Available Time" Font-Size="Large"></asp:Label>
            </td><td class="auto-style26">
                <asp:TextBox ID="txt_time" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the Available Time !" ForeColor="Red" ValidationGroup="a" ControlToValidate="txt_mail"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="auto-style8">
            <asp:Label ID="Label12" runat="server" Text="Password" Font-Size="Large"></asp:Label>
            </td><td class="auto-style27">
                <asp:TextBox ID="txt_password" runat="server" Width="219px"></asp:TextBox>
            </td><td class="auto-style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the Password !" ForeColor="Red" ValidationGroup="a" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="auto-style18">
            <asp:Label ID="Label11" runat="server" Text="Address" Font-Size="Large"></asp:Label>
            </td><td class="auto-style28">
                <asp:TextBox ID="txt_address" runat="server" Height="42px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <br />
                <br />
            </td><td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the Address !" ForeColor="Red" ValidationGroup="a" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="auto-style20">
            <asp:Label ID="Label10" runat="server" Text="Description" Font-Size="Large"></asp:Label>
            </td><td class="auto-style29">
                <asp:TextBox ID="txt_description" runat="server" Height="51px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td><td class="auto-style21"></td></tr>
        <tr><td class="auto-style30"></td><td class="auto-style31">
            <asp:Label ID="lbl_message" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
            </td><td class="auto-style32"></td></tr>
        <tr><td class="auto-style3">&nbsp;</td><td class="auto-style22">
            <asp:Button ID="btn_save" runat="server" Text="SAVE" Width="107px" Font-Bold="True" ForeColor="#660066" Height="47px" BorderStyle="Ridge" ValidationGroup="a" OnClick="btn_save_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_clear" runat="server" Text="CLEAR" Width="107px" Font-Bold="True" ForeColor="#660066" Height="47px" BorderStyle="Ridge" OnClick="btn_clear_Click" />
            </td><td></td></tr>
        <tr><td class="auto-style3"></td><td class="auto-style22"></td><td></td></tr>

    </table>

</asp:Content>
