<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminInformation.aspx.cs" Inherits="AdminInformation" %>

<!DOCTYPE html>
<html>
<head>
    <title>Информации за студентите</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #04AA6D;
                }

        .active {
            background-color: #04AA6D;
        }
    </style>
</head>
<body>
    <form runat="server">

        <ul>
            <li>
                <a><asp:HyperLink NavigateUrl='Default.Aspx' ID="HyperLink1" runat="server">Почетна Страница</asp:HyperLink></a></li>
            <li><a>
                <asp:HyperLink NavigateUrl='Registration.Aspx' ID="HyperLink2" runat="server">Формулар за регистрација / бришење</asp:HyperLink></a></li>
            
        </ul>

        <div style="margin-top: 15px">Внесете го ID на лицето што сакате да го ажурирате
            <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="ID"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Прикажи" OnClick="Button1_Click" />
            <asp:TextBox ID="TextBox6" runat="server" class="input--style-4" PlaceHolder ="Избриши Според ID" BackColor="#CCFF99"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Избриши" OnClick="Button2_Click" />        
            <asp:Panel ID="Panel1" runat="server">
                <table class="table table-bordered">
                    <tr>
                        <th>Е-Пошта: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </th>
                        <th>Лозинка: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </th>
                        <th>Ажурирај: <asp:Button ID="Button3" runat="server" Text="Ажурирај" OnClick="Button3_Click" /></th>
                        
                    </tr>
                </table>



            </asp:Panel>

        </div>

        <div style="margin-top: 15px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Е-Пошта</th>
                    <th>Лозинка</th>

                </tr>



                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <th><%# Eval("user_name") %></th>
                            <th><%# Eval("pass_word") %></th>

                        </tr>

                    </ItemTemplate>
                </asp:Repeater>



            </table>

        </div>

    </form>

</body>
</html>

