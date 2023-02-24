<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="FoodSpot.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        
        <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" OnItemDataBound="DataList2_ItemDataBound" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate><div class="container">
                   <div class="row align-items-center">
           
                    <div class="col-md-4">
                        <div class="food-item">
                            
                            <i class="flaticon-burger"></i>
                            <h2><%# Eval("Item_Name") %></h2>
                            <p>Rs.<%# Eval("Item_Price") %></p>
                            <p><%# Eval("Description") %></p>
                            <p><asp:HiddenField ID="hfield1" runat="server" Value='<%# Eval("Item_Id")%>'  /></p>
                           

                            <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="40px"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
                            <br />
                            <br />
                           

                            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
                            &nbsp;&nbsp;
                            <br />
                            <br />
                            
                        </div>
                    </div>
                </div>
                 </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </p>
    <p>
        
        <asp:Button ID="CheckOut" runat="server" OnClick="CheckOut_Click" Text="CheckOut" />
    </p>
    <p>
        
        <br />
    </p>
</asp:Content>
