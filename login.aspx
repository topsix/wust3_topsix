<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
            height: 476px;
        }

        .style2 {
            color: #FF0000;
            font-family: 楷体;
            font-size: xx-large;
            text-align: center;
        }
         .style4 {
            width: 40%;
              font-family: 楷体;
          
            text-align: right;
        }

        .style3 {
            width: 40%;
            text-align: right;
        }

       /* #TextAreal {
            height: 88px;
            width: 250px;
        }*/
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 23px;
        }
        </style>
</head>
<body  >
    <form id="form1" runat="server">
    <div >
        <p>

        </p>
        <p>
        </p><p>

        </p>
         <table  align="center">
            <tr>
                <td class="style2">欢迎来到登录界面</td>
            </tr>
        </table>
        <table   class="style2" align="center">
            <tr>
                <td class="auto-style2" ><asp:Label runat="server">用户名</asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server" Height="52px" Width="256px" ></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Visible="false" ></asp:Label>
                </td>
                </tr>
            <tr>
                <td class="auto-style3"><asp:Label runat="server">密码</asp:Label></td>
                <td class="auto-style3" align="left">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="47px" Width="257px"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td ></td>
                <td  align="left">

                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" BackColor="Lime" BorderColor="#FF0066" Height="31px" Width="95px"  />&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" BackColor="#FF0066" Height="30px" Width="86px" />
                
                
                    
                
                
                </td>

            </tr>
            </table>
   
    </div>
        
    </form>
</body>
</html>
