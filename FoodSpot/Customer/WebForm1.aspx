<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/signup_master.Master"  AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FOODSPOT.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 679px;
        }
        .auto-style4 {
            width: 68%;
            margin-left: 157px;
        }
        .auto-style6 {
            width: 239px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            width: 239px;
            text-align: left;
        }
        .auto-style9 {
            width: 197px;
        }
        .auto-style10 {
            margin-left: 402px;
            margin-top: 3px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="https://img.freepik.com/free-vector/delivery-service-with-masks-concept_52683-36955.jpg?w=1060&t=st=1675321011~exp=1675321611~hmac=8f724587144c8ce9e8e2403bd59bfd3179708a19bc40d74839e8234693b7e2c6" alt="Blog" style="height:400px; width:620px; margin-left: -150px">
       

     
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card">
            <div class="card-body py-5 px-md-5" style ="padding-left:5px;">
            <%--  <form>
                  <div>
                  <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Size="XX-Large"></asp:Label>
                  </div>
                

                  <br />

                <!-- Name input -->
                <div class="form-outline mb-4 d-flex">
              <asp:Label ID="lblName" class="form-label" runat="server" BackColor="White" ForeColor="Black" Text="Name"></asp:Label>&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextName" class="form-control mt-3" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                <!-- Phone input -->
                <div class="form-outline mb-4">
     <asp:TextBox ID="TextNumber"  class="form-control"  runat="server"></asp:TextBox>
                <asp:Label ID="lblPhone" class="form-label" runat="server" BackColor="White" ForeColor="Black" Text="Phone Number"></asp:Label>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextNumber" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                   <!-- Phone input -->
                <div class="form-outline mb-4">
                    <asp:TextBox ID="TextEmail" class="form-control" runat="server"></asp:TextBox>
                     <asp:Label ID="Label3" runat="server"  class="form-label" BackColor="White" ForeColor="Black" Text="Email"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                   <!-- Password input -->
                <div class="form-outline mb-4">
                                    <asp:TextBox ID="TextPassword"  class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:Label ID="Label2" runat="server" class="form-label" BackColor="White" ForeColor="Black" Text="Password"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                   <!-- Address input -->
                   <div class="form-outline mb-4">
                                           <asp:TextBox ID="TextAddress"  class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:Label ID="Label4" runat="server" class="form-label"  BackColor="White" ForeColor="Black" Text="Address"></asp:Label>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextAddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </div>

                   <!-- Pincode input -->
                  <div class="form-outline mb-4">
                                    <asp:TextBox ID="TextPincode" class="form-control" runat="server"></asp:TextBox>
                                          <asp:Label ID="Label5" runat="server" class="form-label"  BackColor="White" ForeColor="Black" Text="Pincode"></asp:Label>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPincode" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                  

            

                  <div> 
                        <asp:Button ID="Button1" runat="server" BackColor="#009933" ForeColor="#003300" class="btn btn-primary btn-block mb-4" OnClick="btnSubmit_Click" Text="Submit" ValidationGroup="a" style="height: 50px;Width:100px;margin-left:172px" />
                  <asp:Label ID="LabelMsg" runat="server" BackColor="White" Visible ="false" ForeColor="#CC0000"></asp:Label></div>
               
              </form>--%>





        

                  <form>
                  <div>
                  <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Size="XX-Large"></asp:Label>
                  </div>
                

                  <br />

                <!-- Name input -->
                <div  class="form-outline mb-4">
              &nbsp;&nbsp;
              <asp:Label ID="lblName" class="form-label" runat="server" BackColor="White" ForeColor="Black" Text="Name" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:TextBox ID="TextName"  runat="server" Width="200px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>
                      <div class="form-outline mb-4">
     
                          <asp:Label ID="lblPhone" runat="server" BackColor="White" ForeColor="Black" Text="Phone Number" Font-Size="X-Large"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                          <asp:TextBox ID="TextNumber"  runat="server" Width="200px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextNumber" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>
                      
                   <!-- Phone input -->
                <div class="form-outline mb-4">
                     <asp:Label ID="Label3" runat="server"  class="form-label" BackColor="White" ForeColor="Black" Text="Email" Font-Size="X-Large"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <asp:TextBox ID="TextEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                   <!-- Password input -->
                <div class="form-outline mb-4">
                                        <asp:Label ID="Label2" runat="server" class="form-label" BackColor="White" ForeColor="Black" Text="Password" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                   <!-- Address input -->
                   <div class="form-outline mb-4">
                                    <asp:Label ID="Label4" runat="server" class="form-label"  BackColor="White" ForeColor="Black" Text="Address" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                                  <asp:TextBox ID="TextAddress" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextAddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                       </div>

                   <!-- Pincode input -->
                  <div class="form-outline mb-4">
                                          <asp:Label ID="Label5" runat="server" class="form-label"  BackColor="White" ForeColor="Black" Text="Pincode" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                          <asp:TextBox ID="TextPincode" runat="server" Width="200px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPincode" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                  

            

                  <div> 
                        <asp:Button ID="Button1" runat="server" BackColor="#009933" ForeColor="#003300"  Font-Size="X-Large" class="btn btn-primary btn-block mb-4" OnClick="btnSubmit_Click" Text="Submit" ValidationGroup="a" style="height: 50px;Width:100px;margin-left:172px " />
                  <asp:Label ID="LabelMsg" runat="server" BackColor="White" Visible ="false" ForeColor="#CC0000"></asp:Label></div>
               
              </form>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</section>
    
    <div class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<%--        <asp:Label ID="lblHeading" runat="server" BackColor="White" BorderColor="White" ForeColor="Black" Text="User Registration" Font-Bold="True"></asp:Label>--%>
        <br />
        
        
&nbsp;
       
       <table class="auto-style4">
            <tr>
                <td class="auto-style9">
<%--                    <asp:Label ID="lblName" runat="server" BackColor="White" ForeColor="Black" Text="Name"></asp:Label>--%>
                </td>
                <td class="auto-style8">
<%--                    <asp:TextBox ID="TextName" runat="server"></asp:TextBox>--%>
                </td>
                <td class="auto-style7">
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                   <%-- <asp:Label ID="lblPhone" runat="server" BackColor="White" ForeColor="Black" Text="Phone Number"></asp:Label>--%>
                </td>
                <td class="auto-style6">
            <%--        <asp:TextBox ID="TextNumber" runat="server"></asp:TextBox>--%>
                </td>
                <td>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextNumber" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
<%--                    <asp:Label ID="lblEmail" runat="server" BackColor="White" ForeColor="Black" Text="Email"></asp:Label>--%>
                </td>
                <td class="auto-style6">
<%--                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>--%>
                </td>
                <td>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
<%--                    <asp:Label ID="lblpassword" runat="server" BackColor="White" ForeColor="Black" Text="Password"></asp:Label>--%>
                </td>
                <td class="auto-style6">
<%--                    <asp:TextBox ID="TextPassword" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>--%>
                </td>
                <td>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
<%--                    <asp:Label ID="lblAddress" runat="server" BackColor="White" ForeColor="Black" Text="Address"></asp:Label>--%>
                </td>
                <td class="auto-style6">
<%--                    <asp:TextBox ID="TextAddress" runat="server" TextMode="MultiLine"></asp:TextBox>--%>
                </td>
                <td>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextAddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
<%--                    <asp:Label ID="lblPincode" runat="server" BackColor="White" ForeColor="Black" Text="Pincode"></asp:Label>--%>
                </td>
                <td class="auto-style6">
<%--                    <asp:TextBox ID="TextPincode" runat="server"></asp:TextBox>--%>
                </td>
                <td>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextPincode" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
<%--                    <asp:Button ID="btnSubmit" runat="server" BackColor="#009933" ForeColor="#003300" OnClick="btnSubmit_Click" Text="Submit" ValidationGroup="a" />--%>
                </td>
                <td class="auto-style6">
<%--                    <asp:Button ID="btnClear" runat="server" BackColor="Red" ForeColor="Maroon" Height="25px" Text="Clear" Width="53px" />--%>
                </td>
                <td>
<%--                    <asp:Label ID="LabelMsg" runat="server" BackColor="White" ForeColor="#CC0000"></asp:Label>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:HiddenField ID="HiddenField1" runat="server" Value="-1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td>&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataKeyNames="Cust_Id" GridLines="Vertical" Height="16px" ForeColor="Black" Width="28px" Visible="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Cust_Name" HeaderText="Cust_Name" Visible="False" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" Visible="False" />
                <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" Visible="False" />
                <asp:BoundField DataField="Cust_Password" HeaderText="Cust_Password" Visible="False" />
                <asp:BoundField DataField="Address" HeaderText="Address" Visible="False" />
                <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" Visible="False" />
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Image/editimage.jpg" OnClick="ImageButton1_Click" Width="57px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="48px" ImageUrl="~/Image/deleteicon.jpg" OnClick="ImageButton2_Click" Width="57px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView></td>
                <td></td>
            </tr>
        </table>
        <br />











      <%--  ************************--%>


<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataKeyNames="Cust_Id" GridLines="Vertical" Height="16px" ForeColor="Black" Width="150px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Cust_Name" HeaderText="Cust_Name" Visible="False" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" Visible="False" />
                <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" Visible="False" />
                <asp:BoundField DataField="Cust_Password" HeaderText="Cust_Password" Visible="False" />
                <asp:BoundField DataField="Address" HeaderText="Address" Visible="False" />
                <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" Visible="False" />
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Image/editimage.jpg" OnClick="ImageButton1_Click" Width="57px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="48px" ImageUrl="~/Image/deleteicon.jpg" OnClick="ImageButton2_Click" Width="57px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>--%>
      <br />
    </div>
    
</asp:Content>

