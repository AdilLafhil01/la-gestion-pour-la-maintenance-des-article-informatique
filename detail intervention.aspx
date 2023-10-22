<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detail intervention.aspx.cs" Inherits="la_maintenance_des_articles_informatique.detail_intervention" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
         
<div class="container">
    
    <center >
          <div class="section-header">
                <asp:Panel ID="Panel1" runat="server" Width="1344px" BackColor="#FFF3EE" Height="508px" CssClass="content" style="margin-left: 0px">
                 <center>
                <h2 class="section-title text-center wow fadeInDown" style="width: 870px">Détail Intervention</h2>
                 
               
                     <div style="width: 1216px; height: 83px"> 
                <strong>
                <asp:Label ID="lb_intervenant" runat="server" Font-Size="Larger" ForeColor="Black" style="text-decoration: underline" Text="Intervenant"></asp:Label>
                </strong>
                <asp:DropDownList ID="intervenant" runat="server" BackColor="#E2E2E2" BorderColor="#3399FF" ForeColor="Black" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="id_intervenant" DataValueField="id_intervenant" AutoPostBack="True" Height="30px" style="margin-left: 107px" Width="310px" ></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT [id_intervenant] FROM [Interventions]"></asp:SqlDataSource>
            
           </div>
           
                
           
           
                 
                     <div style="width: 1242px; height: 361px"> 
                          <div/>
       </div>
                     
                     


                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_intervenant" DataSourceID="SqlDataSource2" Height="16px" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px;" Width="1008px">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="id_intervenant" HeaderText="id_intervenant" ReadOnly="True" SortExpression="id_intervenant" />
                             <asp:BoundField DataField="type_intervention" HeaderText="type_intervention" SortExpression="type_intervention" />
                             <asp:BoundField DataField="desc_intervention" HeaderText="desc_intervention" SortExpression="desc_intervention" />
                             <asp:BoundField DataField="date_intervention" HeaderText="date_intervention" SortExpression="date_intervention" />
                             <asp:BoundField DataField="id_article" HeaderText="id_article" SortExpression="id_article" />
                             <asp:BoundField DataField="nom_client" HeaderText="Cin_Client" SortExpression="nom_client" />
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
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Application pour la maintenance des articles informatiqueConnectionString %>" SelectCommand="SELECT * FROM [Interventions] WHERE ([id_intervenant] = @id_intervenant)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="intervenant" DefaultValue="detail" Name="id_intervenant" PropertyName="SelectedValue" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                         </asp:Panel>
                     </div>
                     
                     


  </center>
<div/>
       

          
</form>

     <%--</form>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Article" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Client" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="utilisateur" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="intervention" runat="server">
</asp:Content>
