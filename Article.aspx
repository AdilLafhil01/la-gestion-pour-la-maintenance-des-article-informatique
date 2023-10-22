<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="la_maintenance_des_articles_informatique.Article" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
<div class="container">
            <div class="section-header">

       
    <asp:Panel ID="Panel1" runat="server" Width="1383px" BackColor="#FFF3EE" style="margin-left: 0px; margin-right: 35px;" Height="841px">
    <center>
                <h2 class="section-title text-center wow fadeInDown">ARTICLE</h2>
                 <p class="text-center wow fadeInDown"><strong>WELCOME</strong> <strong>
                     <asp:Label ID="lb_welcome" runat="server" ForeColor="#CC3300" Font-Size="Medium"></asp:Label>
                     </strong>
                     <table class="auto-style3" style="border: medium Dotted red; margin-left: 3px; width: 1193px;">
                         <tr>
                             <td class="auto-style1" style="width: 671px; height: 36px;">
                                 <strong>
                                 <asp:Label ID="lbID" runat="server" Font-Size="Larger" ForeColor="Black" Text="id_Article" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 36px;">
                                 <asp:TextBox ID="id_Article" runat="server"  BorderColor="#3399FF" CssClass="auto-style2" ForeColor="Black" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style1" style="width: 671px; height: 39px;">
                                 <strong>
                                 <asp:Label ID="lb_type" runat="server" Font-Size="Larger" ForeColor="Black" Text="type_articl" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 39px;">
                                 <asp:TextBox ID="type_articl" runat="server" BorderColor="#000099" ForeColor="Black" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" style="width: 671px; height: 47px;">
                                 <strong>
                                 <asp:Label ID="lb_date" runat="server" Font-Size="Larger" ForeColor="Black" Text="date_installation" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 47px;">
                                 <asp:TextBox ID="date_installation" runat="server"  BorderColor="#000099" ForeColor="Black" TextMode="date" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5" style="width: 671px; height: 35px;">
                                 <strong>
                                 <asp:Label ID="lb_cin" runat="server" Font-Size="Larger" ForeColor="Black" Text="Cin_client" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 35px;">
                                 <asp:TextBox ID="Cin_client" runat="server"  BorderColor="#000099" CssClass="auto-style2" ForeColor="Black" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style1" style="width: 671px; height: 52px;">
                                 <strong>
                                 <asp:Label ID="lb_zone" runat="server" Font-Size="Larger" ForeColor="Black" Text="zone" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 52px;">
                                 <asp:TextBox ID="zone" runat="server" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" ></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style1" style="width: 671px; height: 50px;">
                                 <strong>
                                 <asp:Label ID="lb_adresse" runat="server" Font-Size="Larger" ForeColor="Black" Text="adresse_ip" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                 </strong>
                             </td>
                             <td style="width: 251px; height: 50px;">
                                 <asp:TextBox ID="adresse_ip" runat="server"  BorderColor="#000099" ForeColor="Black" Height="32px" style="margin-left: 0px" Width="256px" BackColor="#F2F2F2"></asp:TextBox>
                             </td>
                             <tr>
                                 <td class="auto-style1" style="width: 671px; height: 50px;">
                                     <strong>
                                     <asp:Label ID="lb_serie" runat="server" Font-Size="Larger" ForeColor="Black" Text="number_serie" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                     </strong>
                                 </td>
                                 <td style="width: 251px; height: 50px;">
                                     <asp:TextBox ID="number_serie" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="256px" Height="32px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style1" style="width: 671px; height: 44px;">
                                     <strong>
                                     <asp:Label ID="lb_date_fin" runat="server" Font-Size="Larger" ForeColor="Black" Text="date_fin_garantie" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                                     </strong>
                                 </td>
                                 <td style="width: 251px; height: 44px;">
                                     <asp:TextBox ID="date_fin_garantie" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" TextMode="date" Width="256px" Height="32px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td >
                                     <asp:Button ID="btnajouter" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" onclick="btn_ajouter_Click" Text="Ajouter" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
                                     <asp:Button ID="btnmodifier" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" onclick="btn_modifier_Click" Text="Modifier" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
                                     <asp:Button ID="btnsupprimer" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" onclick="btnsupprimer_Click" Text="Supprimer" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"/>
                                     <asp:Button ID="btnnouveux" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" onclick="btn_nouveux_Click" Text="Nouveaux" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
                                     <strong>
                                     <asp:Label ID="lbmsg" runat="server" Font-Size="Medium" ForeColor="Black" Text="msg"></asp:Label>
                                     </strong>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style1" style="height: 304px; width: 671px;">
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="id_article" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="879px" Height="251px" style="margin-top: 0px">
                                         <AlternatingRowStyle BackColor="#F7F7F7" />
                                         <Columns>
                                             <asp:BoundField DataField="id_article" HeaderText="id_article" ReadOnly="True" SortExpression="id_article" />
                                             <asp:BoundField DataField="type_article" HeaderText="type_article" SortExpression="type_article" />
                                             <asp:BoundField DataField="date_insatallation" HeaderText="date_insatallation" SortExpression="date_insatallation" />
                                             <asp:BoundField DataField="cin_client" HeaderText="cin_client" SortExpression="cin_client" />
                                             <asp:BoundField DataField="zone" HeaderText="zone" SortExpression="zone" />
                                             <asp:BoundField DataField="adresse_ip" HeaderText="adresse_ip" SortExpression="adresse_ip" />
                                             <asp:BoundField DataField="number_serie" HeaderText="number_serie" SortExpression="number_serie" />
                                             <asp:BoundField DataField="date_fin_garantie" HeaderText="date_fin_garantie" SortExpression="date_fin_garantie" />
                                         </Columns>
                                         <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                         <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                         <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                         <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                         <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                         <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                         <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                     </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT * FROM [article]"></asp:SqlDataSource>
                                 </td>
                                 <td class="auto-style6" style="height: 304px; width: 251px;">
                                     <div> 
                                     <asp:Button ID="detail" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="72px" OnClick="detail_Click" style="margin-top: 5px; margin-left: 44px;" Text="Voire Le Detail" Width="212px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
                                         </div>
                                     <div> 
                                     <asp:Button ID="log" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="73px" OnClick="log_click" Text="Voire LOG" Width="212px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" style="margin-left: 44px" />
                                         </div>
                                 </td>
                                 <centre>
                                 </centre>
                             </tr>
                         </tr>
                     </table>
                </p>
 
               
  </center>
        </asp:Panel>
<div/>
       <div/>         


          
</form>
                     
</asp:Content>

