﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consola.aspx.cs" Inherits="SistemaDomotico.sistemaMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="sistemaDomotico2" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC;">
                    <td >
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                          <%--<asp:Button ID="LinkButton1" runat="server" Text="add compartimento"
                            OnClientClick='<%#"showDetails(" +Eval("id") + " );return false" %>' />--%>
                    </td>
                    <td>
                        <asp:LinkButton ID="nameLabel" runat="server" Text='<%# Eval("name") %>' 
                            
                             OnClientClick='<%#"showDetails(" +Eval("id") + " );return false" %>'
                             />
                    </td>
                    <td hidden="hidden">
                        <asp:Label ID="idLabel" Visible ="false" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #008A8C; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                          
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        
                           
                                       


                    </td>
                    <td>
                        <asp:LinkButton ID="nameLabel" runat="server" Text='<%# Eval("name") %>' 
                            
                             OnClientClick='<%#"showDetails(" +Eval("id") + " );return false" %>'
                            />
                    </td>
                    <td hidden="hidden">
                        <asp:Label ID="idLabel" Visible ="false"  runat="server" Text='<%# Eval("id") %>' />
                    </td>
                   




                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">name</th>
                                   <%-- <th runat="server">id</th>--%>



                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                    
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'  />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="sistemaDomotico2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaDomoticoConnectionString %>" DeleteCommand="DELETE FROM [Consola] WHERE [id] = @id" InsertCommand="INSERT INTO [Consola] ([name]) VALUES (@name)" SelectCommand="SELECT [name], [id] FROM [Consola]" UpdateCommand="UPDATE [Consola] SET [name] = @name WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    <script type="text/javascript">
        function showDetails(id) {
            window.location.href = '../Compartimento.aspx?id='+id;
       
        }
    </script>




</body>
</html>
