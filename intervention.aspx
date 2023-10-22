<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="intervention.aspx.cs" Inherits="la_maintenance_des_articles_informatique.intervention" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="1514px" style="margin-left: 0px; margin-right: 0px" BackColor="#FFF3EE" Height="735px">
    <form id="form1" runat="server">
          
<div class="container">
            <div lass="section-header">
               
                <center style="width: 1442px; margin-left: 0px; height: 739px;">
                    
                    
                    <h2>    INTERVENTION</h2>
                    <p class="text-center wow fadeInDown" style="width: 1238px"><strong>WELCOME
                        <asp:Label ID="lb_welcome" runat="server" Font-Size="Medium" ForeColor="Black" style="color: #FF3300"></asp:Label>
                        </strong></p>
                <%-- <p class="text-center wow fadeInDown">WELCOME <asp:Label ID="lb_welcome" runat="server" Text=""></asp:Label></p>--%>
                 <table class="auto-style4" style="border: medium Dotted red; margin-left: 0px; width: 1314px; height: 629px; margin-bottom: 0px;" >
               
        <tr>
            <td class="auto-style1" style="width: 787px; height: 58px;">
                <strong>
                <asp:Label ID="lbID" runat="server" BackColor="#FBFBFB" Font-Size="Larger" ForeColor="Black" Text="id_intervenant" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
            <td style="width: 256px; height: 58px;">
                <asp:TextBox ID="id_intervenant" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger"></asp:TextBox>
                 
            </td>
            
           
        </tr>
                     <tr>
            <td class="auto-style1" style="width: 787px; height: 9px;">
                <strong>
                <asp:Label ID="lb_type" runat="server" BackColor="#FBFBFB" ForeColor="Black" Text="type_intervention" Font-Size="Larger" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style6" style="width: 256px; height: 9px;">
                <asp:TextBox ID="type_intervention" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger"></asp:TextBox>
                 
            </td>
           
        </tr>
                        <tr>
            <td class="auto-style1" style="width: 787px; height: 49px;">
                <strong>
                <asp:Label ID="lb_desc" runat="server" BackColor="#FBFBFB" ForeColor="Black" Text="desc_intervention" Font-Size="Larger" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td style="width: 256px; height: 49px;">
                <asp:TextBox ID="desc_intervention" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger" ></asp:TextBox>
                 
            </td>
                          
           
          </tr>
                     
                        <tr>
            <td class="auto-style1" style="width: 787px; height: 44px;">
                <strong>
                <asp:Label ID="lb_date" runat="server" BackColor="#FBFBFB" ForeColor="Black" Text="date_intervention" Font-Size="Larger" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td style="width: 256px; height: 44px;">
                <asp:TextBox ID="date_intervention" runat="server" TextMode="Date" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger" ></asp:TextBox>
                 
            </td>
                          
           
          </tr>
                     
                        <tr>
            <td class="auto-style1" style="width: 787px; height: 40px;">
                <strong>
                <asp:Label ID="lb_articl" runat="server" BackColor="#FBFBFB" ForeColor="Black" Text="id_article" Font-Size="Larger" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td style="width: 256px; height: 40px;">
                <asp:TextBox ID="id_article" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger" ></asp:TextBox>
                 
            </td>
                          
           
          </tr>
                     
                        <tr>
            <td class="auto-style1" style="width: 787px; height: 39px;">
                <strong>
                <asp:Label ID="lb_nom" runat="server" BackColor="#F2F2F2" ForeColor="Black" Text="nom_client" Font-Size="Larger" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td style="width: 256px; height: 39px;">
                <asp:TextBox ID="nom_client" runat="server" BackColor="#F2F2F2" BorderColor="#000099" ForeColor="Black" Width="293px" Height="32px" style="margin-left: 0px" Font-Size="Larger" ></asp:TextBox>
                 
            </td>
                          
           
          </tr>
                     
                     <tr>

         <td style="width: 787px"   >

        
        
             <asp:Button ID="btnajouter" runat="server" onclick="btn_ajouter_Click" 
                 Text="Ajouter"  BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px" />
             <asp:Button ID="btnmodifier" runat="server" onclick="btn_modifier_Click" 
                 Text="modifier"  BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"  />
             <asp:Button ID="btnsupprimer" runat="server" Text="supprimer" 
                 onclick="btnsupprimer_Click"  BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"/>
             <asp:Button ID="btnnouveux" runat="server" onclick="btn_nouveux_Click" 
                 Text="nouveaux"  BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="153px" BorderColor="White" BorderStyle="Solid" BorderWidth="5px"  />

        
             <asp:Label ID="lbmsg" runat="server" Text="msg" ForeColor="Black" ></asp:Label>

        
        
        </td>
        </tr>
                      <tr>

         <td style="height: 233px; width: 787px" >
             <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#4A3C8C" BorderStyle="None" GridLines="Horizontal"   BorderWidth="1px" AutoGenerateColumns="False" DataKeyNames="id_intervenant" DataSourceID="SqlDataSource2" CssClass="auto-style5" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="1071px" Height="232px" style="margin-top: 0px">
                 <AlternatingRowStyle BackColor="#F7F7F7" />
                 <Columns>
                     <asp:BoundField DataField="id_intervenant" HeaderText="id_intervenant" ReadOnly="True" SortExpression="id_intervenant" />
                     <asp:BoundField DataField="type_intervention" HeaderText="type_intervention" SortExpression="type_intervention" />
                     <asp:BoundField DataField="desc_intervention" HeaderText="desc_intervention" SortExpression="desc_intervention" />
                     <asp:BoundField DataField="date_intervention" HeaderText="date_intervention" SortExpression="date_intervention" />
                     <asp:BoundField DataField="id_article" HeaderText="id_article" SortExpression="id_article" />
                     <asp:BoundField DataField="nom_client" HeaderText="nom_client" SortExpression="nom_client" />
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

              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT * FROM [Interventions]"></asp:SqlDataSource>

              </td>
<td style="height: 233px" >
    <asp:Button ID="detail" runat="server" Text="voire le detail" OnClick="detail_Click" BackColor="#4A3C8C" Font-Size="Larger" ForeColor="White" Height="57px" Width="194px" BorderColor="White" BorderStyle="Solid" style="margin-left: 0px" />
                  </td>
              </tr>
                     </table>
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
<%--<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .auto-style1 {
            width: 983px;
        }
        .auto-style4 {
            width: 62%;
            margin-left: 146px;
            margin-right: 0px;
        }
        .auto-style5 {
            margin-right: 108px;
        }
        .auto-style6 {
            width: 697px;
        }
        </style>
</asp:Content>--%>

