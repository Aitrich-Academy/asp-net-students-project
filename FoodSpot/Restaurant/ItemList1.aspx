<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant.Master" AutoEventWireup="true" CodeBehind="~/Restaurant/ItemList1.aspx.cs" Inherits="~/Restaurant/ItemList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 202px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <table align="center" class="w-100">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <h2><strong>ITEMS</strong></h2>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownListCategory" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Item Name :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                <asp:TextBox ID="TextBoxName" class="form-control" runat="server" Width="333px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Item Price :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                <asp:TextBox ID="TextBoxPrice" class="form-control" runat="server" Width="337px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Image :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="345px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                <asp:Label ID="Label4" runat="server" Text="Description :"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBoxDescription" class="form-control"  runat="server" Width="337px"></asp:TextBox>

                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="Labelmsg" runat="server" Text="Labelmsg"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:HiddenField ID="HiddenField1" runat="server" Value="-1" />
                    </td>
                    <td class="auto-style20">
            <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" Width="71px" />

                    </td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Category :"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownListSearch" runat="server" Width="155px">
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Search" />
                <br />
                <br />
                <br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Item_Id" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1089px" CssClass="auto-style1" EmptyDataText="No Results Found !!!">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Cat_Name" HeaderText="Category Name" />
                <asp:BoundField DataField="Item_Name" HeaderText="Item Name" />
                <asp:BoundField DataField="Item_Price" HeaderText="Item Price" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                    <ControlStyle Height="75px" Width="75px" />
                </asp:ImageField>
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/images/editimage.jpg" Width="70px" OnClick="ImageButton1_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" Width="70px" ImageUrl="~/images/deleteicon.jpg" OnClick="ImageButton2_Click1" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>



</asp:Content>
