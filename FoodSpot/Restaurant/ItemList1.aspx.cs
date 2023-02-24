using BLL.Admin.Manager;
using BLL.Admin.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.Restaurant
{
    public partial class ItemList1 : System.Web.UI.Page
    {
        ItemManager itemMngr_obj = new ItemManager();
        ItemProperty itemProp_obj = new ItemProperty();


        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (Page.IsPostBack == false)
        //    {
                
        //        Labelmsg.Visible = false;
        //        BindGrid();
        //        ViewAllCategory();
        //        ViewAllSearchCategory();
        //    }
        //}
       
        //void ViewAllSearchCategory()
        //{
        //    DropDownListSearch.DataSource = itemMngr_obj.SelectAllCategory();
        //    DropDownListSearch.DataTextField = "Cat_Name";
        //    DropDownListSearch.DataValueField = "Cat_Id";
        //    DropDownListSearch.DataBind();
        //}

        //void ViewAllCategory()
        //{
        //    DropDownListCategory.DataSource = itemMngr_obj.SelectAllCategory();
        //    DropDownListCategory.DataTextField = "Cat_Name";
        //    DropDownListCategory.DataValueField = "Cat_Id";
        //    DropDownListCategory.DataBind();
        //}
        //void BindGrid()
        //{
        //    GridView1.DataSource = itemMngr_obj.SelectAllItems();
        //    GridView1.DataBind();
        //}

        //protected void ButtonSave_Click(object sender, EventArgs e)
        //{
        //    if (HiddenField1.Value == "-1")
        //    {
        //        ItemInsert();
        //    }
        //    else
        //    {
        //        ItemUpdate();
        //    }

        //}

        //public void ItemUpdate()
        //{
        //    if (FileUpload1.HasFile == true)
        //    {
        //        string filename = getRandomText();

        //        FileUpload1.SaveAs(Server.MapPath("~/images/" + filename + ".jpg"));


        //        itemMngr_obj.itemProp_Obj.Image = "~/images/" + filename + ".jpg";
        //        itemMngr_obj.itemProp_Obj.Item_Id = int.Parse(HiddenField1.Value);
        //        itemMngr_obj.itemProp_Obj.Cat_Id = int.Parse(DropDownListCategory.SelectedValue.Trim());
        //        itemMngr_obj.itemProp_Obj.Item_Name = TextBoxName.Text.Trim();
        //        itemMngr_obj.itemProp_Obj.Item_Price = Convert.ToInt32(TextBoxPrice.Text.Trim());
        //        itemMngr_obj.itemProp_Obj.Description = TextBoxDescription.Text.Trim();

        //        string result = itemMngr_obj.UpdateItem();
        //        if(result== "Success")
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Updated Successfully";
        //        }
        //        else if(result== "Error")
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Error";
        //        }
        //        else
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Failed due to Some Technical Error";
        //        }
             
        //        itemMngr_obj.itemProp_Obj.Item_Name = "";
        //        //itemMngr_obj.itemProp_Obj.Item_Price =int.Parse("");
        //        itemMngr_obj.itemProp_Obj.Image = "-1";
        //        itemMngr_obj.itemProp_Obj.Description = "";
                
        //    }
        //    BindGrid();
        //}

        //public void ItemInsert()
        //{
        //    if (FileUpload1.HasFile == true)
        //    {
        //        string filename = getRandomText();

        //        FileUpload1.SaveAs(Server.MapPath("~/images/" + filename +".jpg" ));

        
        //        itemMngr_obj.itemProp_Obj.Image = "~/images/" + filename + ".jpg";
        //        itemMngr_obj.itemProp_Obj.Cat_Id =int.Parse( DropDownListCategory.SelectedValue.Trim());
        //        itemMngr_obj.itemProp_Obj.Item_Name = TextBoxName.Text.Trim();
        //        itemMngr_obj.itemProp_Obj.Item_Price = Convert.ToInt32( TextBoxPrice.Text.Trim());
        //        itemMngr_obj.itemProp_Obj.Description = TextBoxDescription.Text.Trim();

        //        string result = itemMngr_obj.InsertItem();
        //        HiddenField1.Value = "-1";
        //         if (result == "Success")
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Inserted Successfully";
        //        }
        //       else if (result == "Already Exist")
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Already Exist";
        //        }
           
       
        //        else if (result == "Error")
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Error";
        //        }
               
        //        else
        //        {
        //            Labelmsg.Visible = true;
        //            Labelmsg.Text = "Failed due to Some Technical Error";
        //        }
               
        //        itemMngr_obj.itemProp_Obj.Item_Name = "";
        //        //itemMngr_obj.itemProp_Obj.Item_Price =int.Parse("");
        //        itemMngr_obj.itemProp_Obj.Image = "-1";
        //        itemMngr_obj.itemProp_Obj.Description = "";
        //        BindGrid();
        //    }
        //}

        //public string getRandomText()
        //{
        //    string randomtext = "";
        //    string alphabets = "0123456789";

        //    Random r = new Random();
        //    for(int i = 1; i <= 6; i++)
        //    {
        //        randomtext += alphabets[r.Next(alphabets.Length)];
        //    }
        //    return randomtext;
        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        //protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}

        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton imgbutton = sender as ImageButton;
        //    GridViewRow grdrow = imgbutton.NamingContainer as GridViewRow;
        //    HiddenField1.Value = GridView1.DataKeys[grdrow.RowIndex].Value.ToString();
        //    selectById();
        //}

        //public void selectById()
        //{
        //    itemMngr_obj.itemProp_Obj.Item_Id = int.Parse( HiddenField1.Value);
        //    itemMngr_obj.SelectItemById();

        //    DropDownListCategory.SelectedValue = itemMngr_obj.itemProp_Obj.Cat_Id.ToString();
        //    TextBoxName.Text = itemMngr_obj.itemProp_Obj.Item_Name;
        //    TextBoxPrice.Text = itemMngr_obj.itemProp_Obj.Item_Price.ToString();
        //    TextBoxDescription.Text = itemMngr_obj.itemProp_Obj.Description;
        //}

      
        //protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton imgbutton = sender as ImageButton;
        //    GridViewRow grdrow = imgbutton.NamingContainer as GridViewRow;
        //    HiddenField1.Value = GridView1.DataKeys[grdrow.RowIndex].Value.ToString();
        //    ItemDelete();
        //}

        //public void ItemDelete()
        //{
        //    itemMngr_obj.itemProp_Obj.Item_Id = int.Parse( HiddenField1.Value);
        //    string result = itemMngr_obj.DeleteItem();
        //    HiddenField1.Value = "-1";
        //    if(result== "Success")
        //    {
        //        Labelmsg.Visible = true;
        //        Labelmsg.Text = "Deleted Succesfully";
        //    }
        //    else if (result == "Error")
        //    {
        //        Labelmsg.Visible = true;
        //        Labelmsg.Text = "Error";
        //    }
        //    else
        //    {
        //        Labelmsg.Visible = true;
        //        Labelmsg.Text = "Failed due to technical error";
        //    }
        //    BindGrid();
        //}

        //protected void ButtonSearch_Click(object sender, EventArgs e)
        //{
        //    System.Data.DataTable dt = new System.Data.DataTable();
        //    itemMngr_obj.itemProp_Obj.Cat_Id =  Convert.ToInt32(DropDownListSearch.SelectedValue);
        //    dt=  itemMngr_obj.SearchItemsByCategory();
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //   // BindGrid();
        //}
    }

}