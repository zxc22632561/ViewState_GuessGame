<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuessGame.aspx.cs" Inherits="GuessGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
        .auto-style2 {
            height: 60px;
        }
    </style> 
</head>
    <script>
        function show(answer) {
            alert("答案是" + answer);
        }
    </script>

    <script>
        function random() {
            alert("答案是" + Math.floor(Math.random() * 10) + 1)
        }
    </script>
<body>
    <form id="form1" runat="server">
        <div>
            猜數字遊戲(範圍1~100)<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" style="height: 21px" />
            <asp:Button ID="Button2" runat="server" Text="重設數字" OnClick="Button2_Click" />
            <input id="Button3" type="button" value="後端顯示答案" onclick="return show(<% = ViewState["RandomValue"]%>)" />
            <input id="Button4" type="button" value="前端顯示答案" onclick="return random()" />
            
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
