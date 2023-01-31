<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ListRestaurannts.aspx.cs" Inherits="FoodSpot.ADMIN.ListRestaurannts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

          .Areaeditimage
{
    width:50px;
    height:50px;
}
.Areadeleteimage
{
     width:50px;
    height:50px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table style="width:80%;">
        <tr><td>
            <asp:GridView ID="grd_Restaurants" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                DataKeyNames="Rest_Id" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="Rest_Name" HeaderText="Name" SortExpression="Rest_Name" />
                    <asp:BoundField DataField="Rest_Phone" HeaderText="Phone" SortExpression="Rest_Phone" />
                    <asp:BoundField DataField="Rest_Location" HeaderText="Location" SortExpression="Rest_Location" />
                    <asp:BoundField DataField="Rest_Email" HeaderText="E Mail" SortExpression="Rest_Email" />
                    <asp:BoundField DataField="Available_Time" HeaderText="Time" SortExpression="Available_Time" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
       <asp:ImageButton ID="ImgEdit" runat="server" ImageUrl="../Images/editimage.jpg" CssClass="Areaeditimage" OnClick="ImgEdit_Click"/>

                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
       <asp:ImageButton ID="ImgBtnDelete" runat="server" ImageUrl="../Images/deleteicon.jpg" 
           CssClass="Areadeleteimage" OnClick="ImgBtnDelete_Click" OnClientClick="return confirm('Do you want to Delete?')"/>

                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Active">
                        <ItemTemplate>
                            <asp:CheckBox ID="chk_active" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>

            </td></tr>

    </table>


</asp:Content>
