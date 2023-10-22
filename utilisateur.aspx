<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="utilisateur.aspx.cs" Inherits="la_maintenance_des_articles_informatique.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
    <asp:Panel ID="myPanel" runat="server" CssClass="panelStyle" Width="1323px" BackColor="#FFF3EE" Height="859px" style="margin-left:0px">
      <form id="form1" runat="server">
          
    
<%--<div class="container" style="width: 1249px; margin-left:0px; height: 893px; margin-right: 0px;">--%>
    
 <center style="width: 1251px; height: 847px; margin-left: 0px">
                    
                <h2>UTILISATEUR</h2>
                    <p class="text-center wow fadeInDown"><strong>WELCOME
                        <asp:Label ID="lb_welcome" runat="server" Font-Size="Medium" ForeColor="#CC3300"></asp:Label>
                        </strong></p>
                 <%--<p class="text-center wow fadeInDown">WELCOME <asp:Label ID="lb_welcome" runat="server" Text=""></asp:Label></p>--%>
                   
                  
                        
                    <div style="width: 1221px; margin-left: 0px; height: 741px; margin-right:50px"> 
                 <table style="border: medium Dotted red; margin-left: 20px; width: 1184px; margin-top: 0px; height: 720px;margin-right:auto">
               
        <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="lbID" runat="server" Font-Size="Larger" ForeColor="Black" Text="id_User" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
                </strong>
                </td>
                <td style="width: 394px" >
                <asp:TextBox ID="id_User" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px"></asp:TextBox>
            </td>
           
            
           
        </tr>
                     <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="lb_nom" runat="server" ForeColor="Black" Text="nom_user" Font-Size="Larger" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
               </strong>
                </td>
<td style="width: 394px" >                <asp:TextBox ID="nom_user" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 1px"></asp:TextBox>
                
             
            
            </td>
           
            
           
        </tr>
                        <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="lb_prenom" runat="server" ForeColor="Black" Text="prenom_user" Font-Size="Larger" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
                     </strong>
                 </td>
               
                  <td style="width: 394px" >
                <asp:TextBox ID="prenom_user" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px" ></asp:TextBox>
                 
            
            </td>
           
           
           
            
        </tr>
                        
                         <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="lb_pass" runat="server" ForeColor="Black" Text="password" Font-Size="Larger" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
                
                </strong>
                </td>
                <td style="width: 394px" >
                <asp:TextBox ID="password" runat="server" TextMode="Password" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px" ></asp:TextBox>
                 
            
            </td>
           
            

           
        </tr>
                     
                      
           


           
       
            <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="lb_date_creation" runat="server" ForeColor="Black" Text="date_creation" Font-Size="Larger" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>

                </strong>
                </td>
                <td style="width: 394px" >
                <asp:TextBox ID="date_creation" runat="server" TextMode="DateTime" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px" ></asp:TextBox>
                 
            
            </td>
           
            


           
        </tr>
                     <tr>
            <td style="width: 679px" >
                <strong>
                <asp:Label ID="Lb_last_connection" runat="server" ForeColor="Black" Text="last_connection" Font-Size="Larger" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
                
               
                
                </strong>
              
                </td>
                         <td style="width: 394px" >
               
                <asp:TextBox ID="last_connection" runat="server" TextMode="DateTime" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px" ></asp:TextBox>
                 
           
            </td>
           
            


           
        </tr>
                 <tr>    
                     <td style="width: 679px" >
                                <strong>
                                <asp:Label ID="lb_level" runat="server" Font-Size="Larger" ForeColor="Black" Text="level" style="text-decoration: underline" BackColor="#F2F2F2"></asp:Label>
                    </strong>
                         </td>
                         <td style="width: 394px" >
                                <asp:TextBox ID="level" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="287px" Height="33px" style="margin-left: 0px"></asp:TextBox>
            </td>
                     </tr>
                     <tr>

         <td style="width: 679px">

        
        
             <asp:Button ID="btnajouter" runat="server" onclick="btn_ajouter_Click" 
                 Text="Ajouter"  BackColor="#990000" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnmodifier" runat="server" onclick="btn_modifier_Click" 
                 Text="Modifier"  BackColor="#990000" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnsupprimer" runat="server" Text="Supprimer" 
                 onclick="btnsupprimer_Click"  BackColor="#990000" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"/>
             <asp:Button ID="btnnouveux" runat="server" onclick="btn_nouveux_Click" 
                 Text="Nouveaux"  BackColor="#990000" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />

        
             <asp:Label ID="lbmsg" runat="server" Font-Size="Larger" ForeColor="Black" Text="msg" Visible="False"></asp:Label>

        
        
        </td>
                         
                            
        </tr>
    <tr>

         <td style="width: 679px; height: 292px;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_user" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="GridView1_SelectedIndexChanging1" Width="819px" Height="356px">
                  <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="id_user" HeaderText="id_user" InsertVisible="False" ReadOnly="True" SortExpression="id_user" />
                     <asp:BoundField DataField="nom_user" HeaderText="nom_user" SortExpression="nom_user" />
                     <asp:BoundField DataField="prenom_user" HeaderText="prenom_user" SortExpression="prenom_user" />
                     <asp:BoundField DataField="categorie" HeaderText="categorie" SortExpression="categorie" />
                     <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                     <asp:BoundField DataField="date_creation" HeaderText="date_creation" SortExpression="date_creation" />
                     <asp:BoundField DataField="last_connection" HeaderText="last_connection" SortExpression="last_connection" />
                 </Columns>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <td class="auto-style1" style="width: 394px; height: 292px;">
    <asp:Button ID="filtrer" runat="server" Text="Filtrer" OnClick="filtre_click" ForeColor="White" BackColor="#990000" Height="62px" Width="148px" Font-Size="Larger" style="margin-left: 0px" BorderStyle="Solid" BorderWidth="5px" BorderColor="White" />
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT * FROM [utilisateur]"></asp:SqlDataSource>
                 
        </tr>

                       </table>
                        </div>
                 
 
                     

<div/>
               
            
 </center>

           
</form>
        </asp:Panel>
        </div>
    
</asp:Content>


