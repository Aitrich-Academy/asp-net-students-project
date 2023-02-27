<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FoodSpot.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width:60%;margin-left:250px;margin-top:100px;">

    <ul>
        <asp:HiddenField ID="hd" runat="server" />
        <asp:Repeater ID="outerRep" runat="server" OnItemDataBound="outerRep_ItemDataBound" >

            <ItemTemplate>

                <li>

                    <asp:Label Font-Size="Large" Font-Bold="true" ID="lblCategoryName" runat="server"

                        Text='<%# Eval("Cat_Name") %>' />

                </li>

                <ul>

                <asp:Repeater ID="innerRep" runat="server">

                    <ItemTemplate>

                        <li style="background-color: AliceBlue">



                            <asp:HyperLink ID="hlProductName" runat="server" Text='<%# Eval("Item_Name")%>' />
                            <br /><asp:HiddenField ID="hfield1" runat="server" Value='<%# Eval("Item_Id")%>'  />
                            <asp:Image ImageUrl='<%# Eval("Image") %>' runat="server" />
                            <%--<img  src="../Images/<%# Eval("Image") %>" alt="" />--%>
                            <br />
                           Rs. <asp:Label ID="ss" runat="server" Text='<%# Eval("Item_Price")%>'></asp:Label><br />
                           Description: <asp:Label ID="Label1" runat="server" Text='<%# Eval("Description")%>'></asp:Label>

                             <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
                                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" value="1" Width="40px"></asp:TextBox>
                                        &nbsp;<asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
                                        <br />
                                        <br />
                                        <%--<asp:Button ID="add" runat="server" 
                                            Text="Add" />--%>
                            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
                      </li>

                    </ItemTemplate>

                </asp:Repeater>

                </ul>
                

                </ItemTemplate>

                </asp:Repeater>

       
                </ul>
         <asp:Button ID="Checkout" runat="server" OnClick="checkout_Click"  Text="Checkout" />


    </div> 


</asp:Content>
