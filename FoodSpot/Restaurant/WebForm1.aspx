<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FoodSpot.Restaurant.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 22px;
        }
        .auto-style4 {
            height: 29px;
            width: 22px;
        }
        .auto-style5 {
            width: 119px;
        }
        .auto-style6 {
            height: 29px;
            width: 480px;
        }
        .auto-style7 {
            width: 480px;
        }
        .auto-style8 {
            height: 29px;
            width: 343px;
        }
        .auto-style9 {
            height: 29px;
            width: 119px;
        }
        .auto-style10 {
            height: 29px;
            text-align: left;
            width: 343px;
        }
        .auto-style11 {
            width: 480px;
            height: 30px;
        }
        .auto-style12 {
            width: 119px;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
            width: 343px;
        }
        .auto-style14 {
            height: 30px;
            width: 207px;
        }
        .auto-style15 {
            width: 207px;
        }
        .auto-style16 {
            height: 29px;
            width: 207px;
        }
        .auto-style17 {
            width: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="card text-center">
          <div class="card-header">
           ITEMS 
          </div>
          <div class="card-body">
    

                                  <table align="center" class="w-100">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td colspan="2">
                        <h2><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ITEMS</strong></h2>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownListCategory" runat="server" ValidationGroup="a" Height="40px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCategory" ErrorMessage="Select Category !" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" Text="Item Name :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                <asp:TextBox ID="TextBoxName" class="form-control" runat="server" Width="333px" ValidationGroup="a"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Enter Name !" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        </td>
                    <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="Item Price :"></asp:Label>
                    </td>
                    <td class="auto-style13">
                <asp:TextBox ID="TextBoxPrice" class="form-control" runat="server" Width="337px" ValidationGroup="a"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPrice" ErrorMessage="Enter Price !" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        </td>
                    <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Image :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="345px" />
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload Image !" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Description :"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBoxDescription" class="form-control"  runat="server" Width="337px" ValidationGroup="a"></asp:TextBox>

                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDescription" ErrorMessage="Enter Description !" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="Labelmsg" runat="server" Text="Labelmsg"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:HiddenField ID="HiddenField1" runat="server" Value="-1" />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style17">
            <asp:Button ID="ButtonSave" class="btn btn-success" runat="server" Text="Save" OnClick="ButtonSave_Click" Width="71px" ValidationGroup="a" />

                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
            </table>



          </div>
          <div class="card-footer text-muted">
            SEARCH
          </div>
    </div>





                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label6" runat="server" Text="Category :"></asp:Label>
     &nbsp;
     <asp:DropDownList ID="DropDownListSearch" runat="server" Width="155px" Height="38px" >
                </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="ButtonSearch" class="btn btn-primary" runat="server" OnClick="ButtonSearch_Click" Text="Search" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;

                        <div class="auto-style2">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Item_Id" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1089px" CssClass="auto-style1" EmptyDataText="No Results Found !!!" style="margin-left: 122px">
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


                    </div>


</asp:Content>
