<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>在线相册</title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }

        .style2 {
            color: #FF0000;
            font-family: 楷体;
            font-size: x-large;
            text-align: center;
        }

        .style3 {
            width: 40%;
            text-align: right;
        }

       /* #TextAreal {
            height: 88px;
            width: 250px;
        }*/
        </style>
</head>
<body style="font-size: x-large; background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    <table class="style1">
            <tr>
                <td class="style2">注册个人信息</td>
            </tr>
        </table align="center">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table class="style1">
            <tr>
                <td class="style3">
                    
                    <asp:Label ID="Label1" runat="server" Text="昵称"></asp:Label>
                    
                </td>
                <td>
                    
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="184px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="昵称检测" OnClick="Button1_Click"   CausesValidation="false" Height="25px" Width="99px"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="regularexpressvalidator"  ControlToValidate="TextBox1" ValidationExpression="^[A-Z a-z]\w{4,16}[A-Z a-z 1-9]$" runat="server" ErrorMessage ="请输入6-18个字符，以字母开头，以字母或数字结尾" Display="Dynamic" ></asp:RegularExpressionValidator>
                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                
            </tr>
            <tr>
                    <td class="style3"><asp:Label ID="Label2" runat="server" Text="密码"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="17px" Width="184px"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  ControlToValidate="TextBox2" ValidationExpression="^\w{6,16}$" runat="server" ErrorMessage ="请输入6-16个字符" Display="Dynamic" ></asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必填" Text="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>

            </tr>
            <tr>
                <td class="style3"><asp:Label ID="Label3" runat="server" Text="确认密码"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="17px" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="必填" Text="*"  ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码不一致" ControlToValidate="TextBox3" ControlToCompare="TextBox2"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3"><asp:Label ID="Label4" runat="server" Text="手机号"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="11" Height="17px" Width="184px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                         ErrorMessage="手机号必为11位" ValidationExpression="\d{11}$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                </td>
            </tr> 
            <tr>
                 <td class="style3"><asp:Label ID="Label5" runat="server" Text="头像"></asp:Label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="19px" Width="237px" />
                    
                     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上传" CausesValidation="False" Width="57px" />
                     </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td>
                     <asp:Button ID="Button3" runat="server"   Text="提交" OnClick="Button3_Click" Width="61px" />
                    <asp:Button ID="Button4" runat="server" Text="重填" OnClick="Button4_Click" Width="68px"/>     
                   
              
                       
 
               </td>
            </tr>

            </table>


    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [USERNAME], [PSD], [PHONE], [PICTURE] FROM [PERSON] WHERE ([USERNAME] = @USERNAME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="USERNAME" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERNAME,PICTURE" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" SortExpression="USERNAME" />
                <asp:BoundField DataField="PSD" HeaderText="PSD" SortExpression="PSD" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="PICTURE" HeaderText="PICTURE" ReadOnly="True" SortExpression="PICTURE" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

