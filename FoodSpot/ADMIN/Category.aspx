<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMaster.Master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="FoodSpot.ADMIN.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 375px;
        }
    .auto-style4 {
        margin-left: 381px;
    }
    .auto-style5 {
        margin-left: 55px;
    }
        .auto-style6 {
            margin-left: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblCat" runat="server" Text="Category Name" ForeColor="Blue"></asp:Label>
<asp:TextBox ID="CatName" runat="server" CssClass="auto-style5" Width="158px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="CatReq" runat="server" ErrorMessage="Please Fill The Box" ForeColor="Red" ValidationGroup="a" ControlToValidate="CatName"></asp:RequiredFieldValidator>
&nbsp;
            <asp:Label ID="LabelMsg" runat="server" ForeColor="Red"></asp:Label>
<br />
<br />
<asp:Button ID="Button1Save" runat="server" OnClick="Button1Save_Click" Text="Save" ValidationGroup="a" CssClass="auto-style6" ForeColor="Blue" />
<br />
<br />
<asp:GridView ID="GridViewCat" runat="server" AutoGenerateColumns="False" DataKeyNames="Cat_Id" CssClass="auto-style4" Caption="CATEGORIES" ForeColor="Blue">
    <Columns>
        <asp:BoundField DataField="Cat_Name" HeaderText="Category Name" />
        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButtonEdit" runat="server" Height="42px" ImageUrl="~/Images/editimage.jpg" style="margin-left: 40px" Width="47px" OnClick="ImageButtonEdit_Click" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButtonDelete" runat="server" Height="40px" ImageUrl="~/Images/deleteicon.jpg" style="margin-left: 82px" Width="45px" OnClick="ImageButtonDelete_Click" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<br />
<br />
<asp:HiddenField ID="HiddenFieldCatId" runat="server" Value="-1" />
</asp:Content>
