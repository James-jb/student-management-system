using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S.Views.Admin
{
    public partial class grade : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowManufactors();
        }


        //查找 · 表
        private void ShowManufactors()
        {
            string Query = "Select * from grade";
            ManufactList.DataSource = Con.GetData(Query);
            ManufactList.DataBind();

        }



            //这里 全部是按钮
         //编辑按钮
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (x_id.Value == "" || k_name.SelectedIndex== -1 || k_cj.Value =="")
                {
                    /*显示缺失*/
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string idg = x_id.Value;
                    string KeNameg = k_name.SelectedItem.ToString();
                    string chengji = k_cj.Value;

                    /*转换添加*/
                    string Query = "insert into grade values('{0}' , '{1}' , '{2}')";
                    Query = string.Format(Query, idg, KeNameg, chengji);
                    Con.SatData(Query);
                    ShowManufactors();
                    ErrMsg.Text = "添加成功";
                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        //保存按钮
        protected void SaveCtn_Click(object sender, EventArgs e)
        {
           
        }

        //删除按钮
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            
        }

    }
}