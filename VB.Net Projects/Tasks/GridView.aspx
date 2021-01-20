<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GridView.aspx.vb" Inherits="GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 21%;
            border-style: solid;
            border-width: 1px;
            background-color: #FFCC66;
        }
        .auto-style3 {
            width: 131px;
            text-align: center;
        }
    </style>
    <script>

        function btnSave_Click() {

            if (document.getElementById('TextBox1').value == '') {
                alert('Please Enter Name');
                document.getElementById('TextBox1').focus();
                return (false);
            }
            else if (document.getElementById('TextBox2').value == '') {
                alert('Please Enter Salary');
                document.getElementById('TextBox2').focus();
                return (false);
            }
            else if (document.getElementById('TextBox3').value == '') {
                alert('Please Enter Country');
                document.getElementById('TextBox3').focus();
                return (false);
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>

            <div>
    <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Salary</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
        
        <p>
            &nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" />
                <asp:Button ID="Button3" runat="server" Text="Button" />
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
         
            <Columns>
        
                        <asp:TemplateField>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" Text="Insert" CommandName="insrt">
                         
                     </asp:LinkButton>
                 </ItemTemplate> 
             </asp:TemplateField>


                        <asp:TemplateField>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton2" runat="server" Text="Update" CommandName="updt" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Id")%>'>
                         
                     </asp:LinkButton>
                 </ItemTemplate> 
             </asp:TemplateField>

                
                     <asp:TemplateField>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton3" runat="server" Text="Delete" CommandName="del" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Id")%>'>
                         
                     </asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>

        
         </Columns>
            
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


</ContentTemplate>
        </asp:UpdatePanel>

            </form>
</body>
</html>
