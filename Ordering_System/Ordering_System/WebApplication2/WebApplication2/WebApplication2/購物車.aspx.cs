using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class 購物車 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnBT_Click(object sender, EventArgs e)
        {

        }

        protected void returnmenuBT_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            countTotal();
        }
        private void countTotal()
        {
            int total = 0;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (GridView1.Rows[i].Cells[2].FindControl("Label3") != null)
                {
                    total += Convert.ToInt32(((Label)GridView1.Rows[i].Cells[2].FindControl("Label3")).Text);
                }

            }
            totalLB.Text = " 總價: " + total + " 元";
        }
    }
}