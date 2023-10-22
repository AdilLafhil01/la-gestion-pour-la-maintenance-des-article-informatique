<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="la_maintenance_des_articles_informatique.Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="1502px" BackColor="#FFF3EE" Height="595px" style="margin-left: 0px; margin-right: 44px" CssClass="content">
     <form id="form1" runat="server">
         
<div class="container">
         <div class="section-header">
                 <center>
                <h2 class="section-title text-center wow fadeInDown" style="font-family: 'Berlin Sans FB'; font-size: x-large; font-weight: normal; font-variant: normal; color:black">CLIENT</h2>
                 
               
                     
                         
                 <table class="auto-style3" style="border: medium Dotted red; margin-left: 0px; width: 1270px; height: 508px;">
               
        <tr>
            <td class="auto-style1" style="width: 818px; height: 39px;">
                <strong>
                <asp:Label ID="lb_cin" runat="server" BackColor="#F2F2F2" Font-Size="Larger" ForeColor="Black" style="text-decoration: underline" Text="cin"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 474px; height: 39px;">
                <asp:TextBox ID="cin" runat="server" BackColor="#F2F2F2" BorderColor="#3399FF" ForeColor="Black" CssClass="auto-style2" Width="286px" Height="37px"></asp:TextBox>
                 
            </td>
           
        </tr>
                      <tr>
            <td class="auto-style1" style="width: 818px; height: 37px;">
                <strong>
                <asp:Label ID="lb_nom" runat="server" BackColor=#F2F2F2 Font-Size="Larger" ForeColor="Black" Text="nom" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 474px; height: 37px;">
                <asp:TextBox ID="nom" runat="server" BackColor=#F2F2F2 BorderColor="#3399FF" ForeColor="Black" CssClass="auto-style2" style="margin-left: 0px" Width="286px" Height="37px"></asp:TextBox>
                 
            </td>
           
        </tr>
                      <tr>
            <td class="auto-style1" style="width: 818px; height: 39px;">
                <strong>
                <asp:Label ID="lb_date" runat="server" BackColor=#F2F2F2 Font-Size="Larger" ForeColor="Black" Text="date_naissance" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 474px; height: 39px;">
                <asp:TextBox ID="date_naissance" runat="server" BackColor=#F2F2F2 BorderColor="#3399FF" ForeColor="Black" CssClass="auto-style2" TextMode="Date" Width="286px" Height="37px"></asp:TextBox>
                 
            </td>
           
        </tr>
                      <tr>
            <td class="auto-style1" style="width: 818px; height: 11px;">
                <strong>
                <asp:Label ID="lb_ville" runat="server" BackColor=#F2F2F2 Font-Size="Larger" ForeColor="Black" Text="ville" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 474px; height: 11px;">
                <asp:TextBox ID="ville" runat="server" BackColor=#F2F2F2 BorderColor="#3399FF" ForeColor="Black" CssClass="auto-style2" Width="286px" Height="37px" style="margin-left: 0px"></asp:TextBox>
                 
            </td>
           
        </tr>
                     
                       <tr>

         <td style="height: 30px; width: 818px" >

        
        
             <asp:Button ID="btnajouter" runat="server" onclick="btn_ajouter_Click" 
                 Text="Ajouter" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnmodifier" runat="server" onclick="btn_modifier_Click" 
                 Text="modifier" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnsupprimer" runat="server" Text="supprimer" 
                 onclick="btnsupprimer_Click" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnnouveux" runat="server" onclick="btn_nouveux_Click" 
                 Text="nouveaux" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderWidth="5px" BorderColor="White" />

        
             <asp:Label ID="lbmsg" runat="server" Font-Size="Larger" ForeColor="Black" Width="101px" Visible="False" ></asp:Label>

        
        
        </td>
                         
        </tr>
                       <tr>

         <td class="auto-style1" style="width: 818px; height: 142px;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cin" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="777px" Height="220px" style="margin-top: 0px">
                 <Columns>
                     <asp:BoundField DataField="cin" HeaderText="cin" ReadOnly="True" SortExpression="cin" />
                     <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                     <asp:BoundField DataField="date_naissance" HeaderText="date_naissance" SortExpression="date_naissance" />
                     <asp:BoundField DataField="ville" HeaderText="ville" SortExpression="ville" />
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
             
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT * FROM [client]"></asp:SqlDataSource>
             
             </td>
                           
                           <td >
                               <strong>
                               <asp:Button ID="articl" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="71px" OnClick="detail_Click" Text="Voire Article" Width="244px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" style="margin-left: 0px" />
                               <asp:Button ID="interevention" runat="server" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="70px" OnClick="inter_Click" Text="Voire Intervention" Width="244px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"/>
                               </strong>
    
                  </td>
                           
                           
                 
        </tr>
                     
                       </table>
                     
                 
               


  </center>

<div/>
       <div/>         


          
</form>
        </asp:Panel>

</asp:Content>

