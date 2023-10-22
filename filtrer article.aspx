<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="filtrer article.aspx.cs" Inherits="la_maintenance_des_articles_informatique.filtrer_intervention" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
     
<div class="container">

            <div class="section-header">
                   <asp:Panel ID="Panel1" runat="server" Width="1478px" BackColor="#FFF3EE" Height="427px">
                <center>
                <h2 class="section-title text-center wow fadeInDown" style="width: 1173px">Filtrer Article</h2>
                 
               
                 <table class="auto-style3" style="border: medium solid #990000; margin-left: 0px; width: 1270px;">
               
        <tr>
            <td class="auto-style2" style="width: 237px">
                <strong>
                <asp:Label ID="lb_date_installation" runat="server" Font-Size="Larger" ForeColor="Black" Text="Date Installation" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4" style="width: 359px">
                <asp:TextBox ID="date_installation" runat="server" TextMode="date" BackColor="#F2F2F2" BorderColor="#000099"  CssClass="auto-style2" Width="329px" Height="36px" ForeColor="Black" ></asp:TextBox>
                
           </td>
        
                     
            <td class="auto-style2" style="width: 282px">
                <strong>
                <asp:Label ID="lb_date_fin" runat="server" Font-Size="Larger" ForeColor="Black" Text="Date Fin Garantie" BackColor="#F2F2F2" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style5" style="width: 432px">
                <asp:TextBox ID="date_fin_garantie" runat="server" TextMode="date" BackColor="#F2F2F2" BorderColor="#003399"  Width="329px" Height="36px" ForeColor="Black" ></asp:TextBox>
                
           </td>
        </tr>
                     </table>
                     
                     <div> 
                    <asp:Button ID="filtrer" runat="server" Text="Filtrer" OnClick="filtrer_Click" ForeColor="White" BackColor="#990000" Height="40px" Width="131px" border="" CssClass="auto-style7" Font-Size="Larger" style="margin-left: 38px"/>
                
                
                      </div>  
        
                     
                     
                    <div style="width: 941px; height: 234px; margin-left: 0px;"> 
                     <asp:GridView ID="GridView1" runat="server" Width="998px" CssClass="auto-style6" Height="205px" style="margin-left: 0px">
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
                    <div style="width: 1490px"> 
                    <asp:Button ID="Button1" runat="server" Text="Retour" OnClick="retour_Click" ForeColor="White" BackColor="#990000" Height="37px" Width="95px" border="" Font-Size="Larger" CssClass="auto-style8" style="margin-left: 1329px" />
                        </div>
                     </center>
                    </asp:Panel>

<div/>
       <div/>  
                 


          
</form>
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
<asp:Content ID="Content7" ContentPlaceHolderID="filtre" runat="server">
</asp:Content>
<%--<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .auto-style1 {
            width: 166px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            width: 125px;
        }
        .auto-style5 {
            width: 237px;
        }
        .auto-style6 {
            margin-left: 199px;
        }
        .auto-style7 {
            margin-left: 153px;
        }
        .auto-style8 {
            margin-left: 56px;
        }
    </style>
</asp:Content>--%>

