using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            drinkDetailsView1.DataBind();
            drinkDetailsView2.DataBind();
            drinkDetailsView3.DataBind();
            drinkDetailsView4.DataBind();
            if (!IsPostBack)
            {
                drinkprice1.Text = "";
                drinkqt1.Text = "";
                drinkpriceLB2.Text = "";
                drinkqtLB2.Text = "";
                drinkpriceLB3.Text = "";
                drinkqtLB3.Text = "";
                priceLB4.Text = "";
                qtLB4.Text = "";


                for (int i = 0; i < 30; i++)
                {
                    cupList1.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1)));
                    cupList2.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1)));
                    cupList3.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1)));
                    cupList4.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1)));
                }
                cupList1.SelectedIndex = 0;
                cupList2.SelectedIndex = 0;
                cupList3.SelectedIndex = 0;
                cupList4.SelectedIndex = 0;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (0 == drinkList1.SelectedIndex)
            {
                drinkprice1.Text = "";
                drinkqt1.Text = "";
                addBT.Enabled = false;
                
            }
            else
            {
                drinkprice1.Text = drinkDetailsView1.Rows[1].Cells[1].Text + "元";
                if(drinkDetailsView1.Rows[0].Cells[1].Text == "1")
                {
                    drinkqt1.Text = "供應中";
                    addBT.Enabled = true;
                }
                else
                {
                    drinkqt1.Text = "暫停供貨";
                }
                
            }
        }


        protected void drinkDetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void drinkList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (0 == drinkList2.SelectedIndex)
            {
                drinkpriceLB2.Text = "";
                drinkqtLB2.Text = "";
                addBT.Enabled = false;


            }
            else
            {
                drinkpriceLB2.Text = drinkDetailsView2.Rows[0].Cells[1].Text + " 元";
                if (drinkDetailsView2.Rows[1].Cells[1].Text == "1")
                {
                    drinkqtLB2.Text = "供應中";
                    addBT.Enabled = true;
                }
                else
                {
                    drinkqtLB2.Text = "暫停供貨";
                }
                
                
            }
        }

        protected void drinkList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (0 == drinkList3.SelectedIndex)
            {
                drinkpriceLB3.Text = "";
                drinkqtLB3.Text = "";
                addBT.Enabled = false;

            }
            else
            {
                drinkpriceLB3.Text = drinkDetailsView3.Rows[0].Cells[1].Text + " 元";
                if (drinkDetailsView3.Rows[1].Cells[1].Text == "1")
                {
                    drinkqtLB3.Text = "供應中";
                    addBT.Enabled = true;
                }
                else
                {
                    drinkqtLB3.Text = "暫停供貨";
                }
                
                
            }
        }

        protected void drinkList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (0 == drinkList4.SelectedIndex)
            {
                priceLB4.Text = "";
                qtLB4.Text = "";
                addBT.Enabled = false;
            }
            else
            {
                priceLB4.Text = drinkDetailsView4.Rows[0].Cells[1].Text + " 元";
                if (drinkDetailsView4.Rows[1].Cells[1].Text == "1")
                {
                    qtLB4.Text = "供應中";
                    addBT.Enabled = true;
                }
                else
                {
                    qtLB4.Text = "暫停供貨";
                }
                ;
                
            }
        }


        protected void cupList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        protected void cupList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void orderBT_Click(object sender, EventArgs e)
        {
            drinkdataselect1.Insert();
            drinkdataselect2.Insert();
            drinkdataselect3.Insert();
            drinkdataselect4.Insert();

            SqlConnection ordercon = new SqlConnection("Data Source=140.136.151.129\\WIN-95TIN43A665\\SQLEXPRESS,1433;Initial Catalog=BeNicePlease;User ID=dino;Password=dino2022");
            ordercon.Open();
            SqlCommand ordercmd = new SqlCommand("select top 1 訂單編號 from [訂單] order by 訂單編號 Desc", ordercon);
            SqlDataReader orderDr;
            orderDr = ordercmd.ExecuteReader();
            if (orderDr.Read())
            {
                Session["訂單編號"] = orderDr["訂單編號"];
                orderBT.Text = "前往訂購";
                orderBT.Enabled = false;

                cupLB1.Visible = true;
                cupList1.Visible = true;
                cupLB2.Visible = true;
                cupList2.Visible = true;
                cupLB3.Visible = true;
                cupList3.Visible = true;
                cupLB4.Visible = true;
                cupList4.Visible = true;
                addBT.Visible = true;


            }
            orderDr.Close();
        }

        protected void resertBT_Click(object sender, EventArgs e)
        {
            SqlConnection ordercon = new SqlConnection("Data Source=140.136.151.129\\WIN-95TIN43A665\\SQLEXPRESS,1433;Initial Catalog=BeNicePlease;User ID=dino;Password=dino2022");
            ordercon.Open();
            SqlCommand orderTableresertcmd = new SqlCommand("truncate table 訂單", ordercon);
            orderTableresertcmd.ExecuteNonQuery();
            SqlCommand orderitemTableresertcmd = new SqlCommand("truncate table 訂單內容", ordercon);
            orderitemTableresertcmd.ExecuteNonQuery();

            orderBT.Text = "前往訂購";
            orderBT.Enabled = true;

            cupLB1.Visible = false;
            cupList1.Visible = false;
            cupLB2.Visible = false;
            cupList2.Visible = false;
            cupLB3.Visible = false;
            cupList3.Visible = false;
            cupLB4.Visible = false;
            cupList4.Visible = false;
            addBT.Enabled = false;
            orderitemGridView.Visible = false;
            totalLB.Visible = false;

        }

        protected void addBT_Click(object sender, EventArgs e)
        {
            orderitemDataSource1.Insert();

            if(!orderitemGridView.Visible)
            {
                orderitemGridView.Visible = true;
                totalLB.Visible = true;
            }
            if (orderitemGridView.Visible == true)
            {
                drinkList1.SelectedIndex = 0;
                drinkList2.SelectedIndex = 0;
                drinkList3.SelectedIndex = 0;
                drinkList4.SelectedIndex = 0;
                totalLB.Visible = true;
            }
            
        }

        protected void orderitemGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            countTotal();
        }
        private void countTotal()
        {
            int total = 0;
            
            for (int i = 0; i < orderitemGridView.Rows.Count; i++)
            {
                if (orderitemGridView.Rows[i].Cells[2].FindControl("subTotalLB") != null)
                {
                    total += Convert.ToInt32(((Label)orderitemGridView.Rows[i].Cells[2].FindControl("subTotalLB")).Text);
                }
                
            }
            totalLB.Text =  " 總價: " + total + " 元";
        }

        protected void orderitemGridView_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if(orderitemGridView.Rows.Count == 1)
            {
                totalLB.Visible = false;
            }
        }
    } 
}