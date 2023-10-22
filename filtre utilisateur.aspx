<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="filtre utilisateur.aspx.cs" Inherits="la_maintenance_des_articles_informatique.filtre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="1348px" Height="496px" BackColor="#FFF3EE">
     <form id="form1" runat="server">
         
<div class="container">
            <div class="section-header">
                 <center style="width: 1264px; height: 422px; margin-left: 0px">
                <h2 class="section-title text-center wow fadeInDown">filtrer utilisateur</h2>
                 
               
                 <table class="auto-style3" style="border: medium solid #990000; margin-left: 0px; width: 1264px; height: 4px;">
               
        <tr>
            <td class="auto-style1" style="height: 35px">
                <strong>
                <asp:Label runat="server" ForeColor="Black" Text="Date De Creation" BackColor="#F2F2F2" style="text-decoration: underline" Font-Size="Larger"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 84px; height: 35px;">
                <asp:TextBox ID="date_creation" runat="server" TextMode="date" BackColor="#F2F2F2" BorderColor="#3399FF" ForeColor="#3399FF" CssClass="auto-style2" style="margin-left: 0px" Width="286px" Height="34px" ></asp:TextBox>
                
           </td>
        
                     
            <td class="auto-style1" style="height: 35px">
                <strong>
                <asp:Label ID="lb_date_last" runat="server" BackColor="#F2F2F2" ForeColor="Black" style="text-decoration: underline" Text="La Derniere Connection" Font-Size="Larger"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 315px; height: 35px;">
                <asp:TextBox ID="derniere_connection" runat="server" TextMode="date" BackColor="#F2F2F2" BorderColor="#3399FF" ForeColor="#3399FF" CssClass="auto-style2" style="margin-left: 0px" Width="286px" Height="34px" ></asp:TextBox>
                
           </td>
        </tr>
                      </table>
                     <div style="width: 1272px"> 
                 <asp:Button ID="filtrer" runat="server" Text="Filtrer" OnClick="filtrer_Click" ForeColor="White" BackColor="#990000" Height="48px" Width="108px" Font-Size="Larger" style="margin-left: 1112px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
               
                          </div>
                     <br /> 
                     
                                           
                    
                     <div> 
                     
                     <asp:GridView ID="GridView1" runat="server" Width="829px" style="margin-left: 0px; margin-top: 0px;" Height="200px">
                          <AlternatingRowStyle BackColor="White" />
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
                     
</div> 
                     <div style="width: 1274px; margin-bottom: 0px; height: 25px;">

                <asp:Button ID="retour" runat="server" Text="Retour" OnClick="retour_Click" ForeColor="White" BackColor="#990000" Height="48px" Width="108px" Font-Size="Larger" style="margin-left: 1113px" BorderColor="White"  BorderStyle="Solid" BorderWidth="5px" />
                
        </div>

  </center>

<div/>
       <div/>         


          
</form>
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Article" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Client" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="utilisateur" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="intervention" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="detail" runat="server">
</asp:Content>
