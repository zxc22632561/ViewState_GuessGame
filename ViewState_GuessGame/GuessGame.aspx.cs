using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GuessGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            //如果是第一次連線便產生一個大於等於1,小於101亂數,
            //將其儲存於ViewState
            Random rd = new Random();
            ViewState["RandomValue"] =  rd.Next(0, 101);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //將使用者輸入的值與ViewState的RandomValue值相比較
        //然後顯示不同的訊息
        int input = Convert.ToInt32(TextBox1.Text.Trim());
        int RandomValue = Convert.ToInt32(ViewState["RandomValue"]);
        
        if(input > RandomValue)
        {
            Label2.Text += "<br/>比" + input + "小";
        }
        else if (input < RandomValue)
        {
            Label1.Text += "<br/>比" + input + "大";
        }
        else
        {
            Label1.Text += "<br />答對了! 答案是 " + RandomValue;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
}