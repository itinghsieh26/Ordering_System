using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20211218
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 希望在網頁登入後就做資料綁定
            clientDetailsView.DataBind();
        }

        protected void loginBT_Click(object sender, EventArgs e)
        {
            // 按下登入按鈕的瞬間，希望可以把進入點餐系統和data view隱藏
            clientDetailsView.Visible = false;
            entry.Visible = false;
            // 按下登入按鈕的同時，會將textbox的內容傳給server，做資料庫比對
            // 因此只要判斷是否有抓到資料，再決定把link button或detailview顯示即可
            if(1 == clientDetailsView.DataItemCount)
            {
                // 如果有抓到 --> 將工作階段儲存
                Session["帳號"] = clientDetailsView.Rows[0].Cells[0].Text;
                Session["密碼"] = clientDetailsView.Rows[1].Cells[0].Text;
                // Session["address"] = clientDetailsView.Rows[2].Cells[0].Text;

                // 儲存完成之後，將進入點餐系統啟用
                entry.Visible = true;
            }
            else
            {
                // 如果沒有抓到資料或抓到多筆資料，代表有錯 --> 將工作狀態設為null
                Session["帳號"] = null;
                Session["密碼"] = null;
                // Session["address"] = null;

                // 並且將detailview顯示
                clientDetailsView.Visible = true;
            }
        }
    }
}