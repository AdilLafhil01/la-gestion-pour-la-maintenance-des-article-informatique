<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LOG.aspx.cs" Inherits="la_maintenance_des_articles_informatique.LOG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
<div class="container">
            <div class="section-header">
    <asp:Panel ID="Panel1" runat="server" Height="249px" style="margin-left: 0px" Width="1333px" BackColor="#FFF3EE">
                 <center style="width: 1094px; height: 267px;">
                
                <h2 style="margin-left: 281px"><strong>LOG</strong></h2>
                    
                 
               
                 <table class="auto-style3" style="border: medium Dotted red; margin-left: 215px; width: 771px; height: 170px;">
               
        <tr>
            <td class="auto-style6">
                <strong>
                <asp:Label ID="lb_type_log" runat="server" Text="Type Log" ForeColor="Black" BackColor="#FCFCFC" Font-Size="Larger" CssClass="auto-style8" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4">
                <asp:TextBox ID="type_log" runat="server" BackColor="#FCFCFC" BorderColor="#3399FF" ForeColor="#3399FF" Height="43px" Width="500px"></asp:TextBox>
                 
            </td>
           
        </tr>
                      <tr>
            <td class="auto-style6">
                <strong>
                <asp:Label ID="lb_date_log" runat="server" Text="Date Log" ForeColor="Black" BackColor="#FCFCFC" Font-Size="Larger" CssClass="auto-style8" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4">
                <asp:TextBox ID="date_log" TextMode="Date" runat="server" BackColor="#FCFCFC" BorderColor="#3399FF" ForeColor="#3399FF" Height="43px" Width="500px"></asp:TextBox>
                 
            </td>
           
        </tr>
                      <tr>
            <td class="auto-style6">
                <strong>
                <asp:Label ID="lb_desc" runat="server" Text="Description Log" ForeColor="Black" BackColor="#FCFCFC" Font-Size="Larger" CssClass="auto-style8" style="text-decoration: underline"></asp:Label>
                </strong>
            </td>
           
            <td class="auto-style4">

                <textarea id="desc_log" BackColor="#FFFFCC" BorderColor="#3399FF" ForeColor="#3399FF" CssClass="auto-style2" class="auto-style5" Height="43px" name="S1" rows="3" style="width: 499px"></textarea>
            </td>
           
        </tr>
     </table>


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
<asp:Content ID="Content8" ContentPlaceHolderID="filtrer" runat="server">
</asp:Content>
<%--<asp:Content ID="Content9" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .auto-style3 {
            width: 832px;
        }
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
            height: 36px;
            width: 504px;
        }
        .auto-style6 {
            width: 259px;
        }
        .auto-style7 {
            font-weight: normal;
        }
        .auto-style8 {
            text-decoration: underline;
        }
    </style>
</asp:Content>--%>

