<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentInformation.aspx.cs" Inherits="AdminInformation" %>

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
        <li><a><asp:HyperLink NavigateUrl ='Default.Aspx' ID="HyperLink1" runat="server">Почетна Страница</asp:HyperLink></a></li>
        <li><a><asp:HyperLink NavigateUrl ='Registration.Aspx' ID="HyperLink2" runat="server">Формулар за регистрација / бришење</asp:HyperLink></a></li>
        <li><a><asp:HyperLink NavigateUrl ='AddAdmin.Aspx' ID="HyperLink3" runat="server">Додај админ</asp:HyperLink></a></li>
        <li><a><asp:HyperLink NavigateUrl ='AdminInformation.Aspx' ID="HyperLink4" runat="server">Администратори</asp:HyperLink></a></li>
    </ul>

        <div style="margin-top: 15px">Внесете го ID на лицето што сакате да го ажурирате
                         <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="ID"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Прикажи" OnClick="Button1_Click" />
                        <br />
                         <asp:Panel ID="Panel1" runat="server">
                             <table class="table table-bordered">
                                 <tr>
                                     <th>Име:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Презиме:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Датум на раѓање:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Пол:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Е-Пошта:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Телефонски Број:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                     </th>
                                     <th>Ажурирај<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ажурирај" />
                                     </th>
                                 </tr>
                                 </table>
                             
                             
                             
                         </asp:Panel>

                    </div>
    
        <div style="margin-top: 15px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Име</th>
                    <th>Презиме</th>
                    <th>Датум на раѓање</th>
                    <th>Пол</th>
                    <th>Е-Пошта</th>
                    <th>Телефонски Број</th>
                    
                    

                </tr>

                 

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <th><%# Eval("NAME") %></th>
                            <th><%# Eval("LASTNAME") %></th>
                            <th><%# Eval("DayBirth") %></th>
                            <th><%# Eval("Gender") %></th>
                            <th><%# Eval("EMail") %></th>
                            <th><%# Eval("PhoneNumber") %></th>
                            <!--<td><asp:Button ID="Button1" runat="server" Text="Избриши" CssClass="btn btn-danger"/></td>
                            <td><asp:Button ID="Button2" runat="server" Text="Ажурирај" CssClass="btn btn-success"/></td> -->
                            
                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
                    
                

            </table>
           
        </div>
        
    </form>

</body>
</html>



