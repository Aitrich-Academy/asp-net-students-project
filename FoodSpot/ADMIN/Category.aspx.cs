using System;
using BLL.CATEGORY.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodManage
{
    public partial class Category : System.Web.UI.Page
    {
        CategoryManager CatMan_obj = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CategoryBind();
            }
        }

        protected void Button1Save_Click(object sender, EventArgs e)
        {
            if(CatName.Text!="")
            {
                if(HiddenFieldCatId.Value=="-1")
                {
                    CategoryInsert();
                }
                else
                {
                    CategoryUpdate();
                }
            }
            CategoryBind();
        }
        public void CategoryInsert()
        {
            CatMan_obj.Cat_pro.Cat_Name = CatName.Text;
            string result = CatMan_obj.CatInsert();
            HiddenFieldCatId.Value = "-1";
            CatName.Text = "";
            if (result == "Success")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Inserted Successfully";
            }
            else if (result == "AlreadyExist")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Already Exist";
            }
            else if (result == "Error")
            {
                LabelMsg.Text = "Error";
                LabelMsg.Visible = true;
            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Failed due to some Technical Error";
            }
            CategoryBind();
        }
        public void CategoryBind()
        {
            GridViewCat.DataSource = CatMan_obj.SelectAllCategory();
            GridViewCat.DataBind();
        }

        
        protected void ImageButtonEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton bTN = sender as ImageButton;
            GridViewRow gRDrow = bTN.NamingContainer as GridViewRow;
            HiddenFieldCatId.Value = GridViewCat.DataKeys[gRDrow.RowIndex].Value.ToString();
            SelectCatById();
        }
        public void SelectCatById()
        {
            CatMan_obj.Cat_pro.Cat_Id = int.Parse(HiddenFieldCatId.Value);
            CatMan_obj.SelectCat();
            CatName.Text = CatMan_obj.Cat_pro.Cat_Name;
            
        }
        public void CategoryUpdate()
        {
            CatMan_obj.Cat_pro.Cat_Id = int.Parse(HiddenFieldCatId.Value);
            CatMan_obj.Cat_pro.Cat_Name = CatName.Text.Trim().ToString();
            string result = CatMan_obj.CatUpdate();
            CatName.Text = "";
            HiddenFieldCatId.Value = "-1";
            if (result == "Success")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Update Successfully";
            }
            else if (result == "AlreadyExist")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Already Exist";
            }
            else if (result == "Error")
            {
                LabelMsg.Text = "Error";
                LabelMsg.Visible = true;
            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Failed due to some Technical Error";
            }
            CategoryBind();
        }
        protected void ImageButtonDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton bTN = sender as ImageButton;
            GridViewRow gRDrow = bTN.NamingContainer as GridViewRow;
            HiddenFieldCatId.Value = GridViewCat.DataKeys[gRDrow.RowIndex].Value.ToString();
            CategoryDelete();
        }
        public void CategoryDelete()
        {
            CatMan_obj.Cat_pro.Cat_Id = int.Parse(HiddenFieldCatId.Value);
            string result = CatMan_obj.CatDelete();
            HiddenFieldCatId.Value = "-1";
            if (result == "Success")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Deleted Successfully";
            }
            else if (result == "Error")
            {
                LabelMsg.Text = "Failed due to some Technical Error";
                LabelMsg.Visible = true;
            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Failed due to some Technical Error";
            }
            CategoryBind();
        }
    }
    
}