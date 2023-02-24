<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/Restaurant.Master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="FoodSpot.Restaurant.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 38px;
        }
        .auto-style3 {
            margin-left: 46px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
        }
       /* .auto-style2 {
            width: 38%;
            height: 88px;
            margin-left: 506px;
            margin-top: 0px;
        }*/
        .auto-style8 {
            width: 52%;
        }
        .auto-style9 {
            width: 62%;
            height: 292px;
            margin-right: 0px;
            margin-left: 0px;
        }
        .auto-style10 {
            width: 58%;
        }
        .auto-style12 {
            width: 95%;
        }
        .auto-style13 {
            margin-left: 45px;
        }
        .auto-style16 {
            margin-left: 24px;
            margin-right: 27px;
        }
        .auto-style22 {
            width: 128px;
        }
        .auto-style23 {
            width: 128px;
            height: 31px;
        }
        .auto-style28 {
            width: 94px;
        }
        .auto-style29 {
            height: 31px;
            width: 94px;
        }
        .auto-style30 {
            font-size: large;
        }
        .auto-style31 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="auto-style12">
        <tr>
            <td class="auto-style8">
                 <br />
                 <br />
                 <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label12" runat="server" CssClass="auto-style30" Text="Bookings"></asp:Label>
                 <br />
                 </strong>
                 <br />
                 <asp:GridView ID="GridViewBookings" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style16" ForeColor="Black" Height="264px" Width="501px" DataKeyNames="Cust_Id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:BoundField HeaderText="Id" DataField="Cust_Id" />
                <asp:BoundField HeaderText="Customer Name" DataField="Cust_Name" />
                <asp:TemplateField HeaderText="Customer Details">
                    <ItemTemplate>
                        <div>
                            <asp:Button ID="btnViewDetails1"  class="btn btn-outline-info" runat="server" OnClick="Button1_Click" Text="View Details" />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Order Items">
                    <ItemTemplate>
                        <asp:Button ID="ViewItemsBtn0" runat="server" class="btn btn-primary" CssClass="auto-style21" Height="27px" OnClick="ViewItemsBtn_Click" Text="Order Items" Width="103px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Delivery">
                    <ItemTemplate>
                        &nbsp;
                        <asp:Button ID="btnDeliverySubmit" runat="server" OnClick="btnDeliverySubmit_Click" Text="Send Mail" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                 <br />
                 <br />
&nbsp;<asp:HiddenField ID="HiddenFieldCustomerDetails" runat="server" Value="-1" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="LabelMsg" runat="server" Text=""></asp:Label>
                     <asp:HiddenField ID="HF_itemslist" runat="server" Value="-1" />
                     </td>
            <td class="auto-style10">



      



                <asp:panel id="panel1" runat="server" Height="468px" CssClass="auto-style13" Width="288px">

                    <br />
                    <br />
                       <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" CssClass="auto-style30" Text="Customer Details"></asp:Label>
                    <br />
                    </strong>
       <div class="card">
               <div class="card-body">
                                            <table class="auto-style9">
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="Labelname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29"></td>
                            <td class="auto-style23"></td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label10" runat="server" Text="Phone :"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="LabelPhone0" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29"></td>
                            <td class="auto-style23"></td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label9" runat="server" Text="Address :"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="Labeladress0" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style22">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label8" runat="server" Text="E_Mail :"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="Labelemail0" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style22">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label7" runat="server" Text="Pin Code  :"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="Labelpincode0" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

               </div>
       </div>
                 
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnViewDetails2" runat="server" OnClick="btnViewDetails2_Click" Text="Order Details" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </asp:panel>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <%--  <asp:Panel ID="Panel2" runat="server">--%>
                <div class="auto-style5">
                    <br />
                    <h4><strong>
                        <asp:Label ID="LblItemsListHeading" runat="server" CssClass="auto-style30" Text="Ordered Items"></asp:Label>
                        </strong></h4>
                    <br />
                
                    <asp:GridView ID="GV_ItemListing" runat="server" CellPadding="4" ForeColor="#333333" Width="536px" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Height="202px" AutoGenerateColumns="False"
                        RowHeaderColumn="tttt" ShowFooter="True" OnRowDataBound="GV_ItemListing_RowDataBound" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Item_Name" HeaderText="Name" />
                            <asp:BoundField DataField="Item_Price" HeaderText="Price" />
                             <asp:BoundField DataField="Book_Quantity" HeaderText="Quantity" />
                           
                            <asp:TemplateField HeaderText="Total">
                            
                                 <FooterTemplate >
                                     <span class="auto-style31"><b>Grand Total</b></span><b style="font-size:large"> :   <asp:Label ID="lblgrandtotal" runat="server" Text=""></asp:Label></b>
                                   
                                </FooterTemplate>
                                <ItemTemplate>
                                  
                                    <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="50px">
<ControlStyle Height="50px"></ControlStyle>
                            </asp:ImageField>
                       
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" BorderColor="Black" BorderWidth="0px" Height="5px" HorizontalAlign="Center" Width="50px" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <%--</asp:Panel>--%>
              
            </td>
        </tr>
    </table>
    <br />
    <br />
    <div class="auto-style5">
       


   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <br />
&nbsp;&nbsp; 



    <br />



</asp:Content>
