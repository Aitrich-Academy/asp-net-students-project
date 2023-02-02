<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="FoodManage.Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;
            <asp:Label ID="LblCat" runat="server" Text="Category Name"></asp:Label>
            <asp:TextBox ID="CatName" runat="server" style="margin-left: 63px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="CatReq" runat="server" ErrorMessage="Please Fill The Box" ForeColor="Red" ValidationGroup="a" ControlToValidate="CatName"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1Save" runat="server" OnClick="Button1Save_Click" style="margin-left: 212px" Text="Save" ValidationGroup="a" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMsg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridViewCat" runat="server" AutoGenerateColumns="False" DataKeyNames="Cat_Id" style="margin-left: 78px">
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
        </div>
    </form>
</body>
</html>
