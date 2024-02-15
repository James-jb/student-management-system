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

        private void ShowManufactors()
        {
            string Query = "Select * from GradeTb1";
            ManufactList.DataSource = Con.GetDaa(Query);
            ManufactList.DataBind();

        }


        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (id.Value == "" || KeName.SelectedIndex== -1 || chengji.Value =="")
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string idg = id.Value;
                    string KeNameg = KeName.SelectedItem.ToString();
                    string changjigg = chengji.Value;

                    string Query = "insert into grade values('{0}' , '{1}' , '{2}')";
                    Query = string.Format(Query, idg, KeNameg, changjigg);
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

        protected void SaveCtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (id.Value == "" || KeName.SelectedIndex == -1 || chengji.Value == "")
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string idg = id.Value;
                    string KeNameg = KeName.SelectedItem.ToString();
                    string changjigg = chengji.Value;

                    string Query = "insert into grade values('{0}' , '{1}' , '{2}')";
                    Query = string.Format(Query, idg, KeNameg, changjigg);
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

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (id.Value == "" || KeName.SelectedIndex == -1 || chengji.Value == "")
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string idg = id.Value;
                    string KeNameg = KeName.SelectedItem.ToString();
                    string changjigg = chengji.Value;

                    string Query = "insert into grade values('{0}' , '{1}' , '{2}')";
                    Query = string.Format(Query, idg, KeNameg, changjigg);
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

    }
}