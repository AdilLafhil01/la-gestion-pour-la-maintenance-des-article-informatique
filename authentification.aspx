<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="authentification.aspx.cs" Inherits="la_maintenance_des_articles_informatique.auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .style1
        {
            width: 190px;

        }
        
        
        
        
        
        
        .auto-style2 {
            width: 739px;
            margin-left: 0px;
        }
                        
        
        
        
        
        
        .auto-style8 {
            margin-left: 0px;
        }
        
        
        
        
        
        
        .auto-style10 {
            width: 637px;
            height: 224px;
            margin-left: 115px;
        }
        
        
        
        
        
        
        .auto-style12 {
            margin-left: 86px;
        }
        
        
        
        
        
        
        .auto-style17 {
            margin-left: 125px;
        }
        .auto-style22 {
            height: 37px;
            width: 15px;
        }
        .auto-style23 {
            height: 37px;
            width: 675px;
        }
        
        
        
        
        
        
        .auto-style26 {
            height: 29px;
            width: 15px;
        }
        .auto-style27 {
            height: 29px;
            width: 675px;
        }
        
        
        
        
        
        
        .auto-style28 {
            height: 27px;
            width: 15px;
        }
        .auto-style29 {
            height: 27px;
            width: 675px;
        }
        
        
        
        
        
        
    </style>
     
            
                    
                     
                   
               
            
    
    <%--<asp:Image ID="imgMaImage" runat="server" ImageUrl="~/image/masterlab.jpg" AlternateText="Ma belle image" />--%>
   <%-- <h1 class="section-title text-center wow fadeInDown">Application pour la maintenance des articles informatique</h1>--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

   
<body>
    
    <form id="form1" runat="server">
        <asp:Panel runat="server" Height="698px" Width="1471px">
         <center>
             
                   <asp:Image ID="Image1" runat="server" ImageUrl="~/image/masterlab.jpg" AlternateText="Ma belle image" Height="402px" Width="1144px" CssClass="auto-style12" />
                 
         <div>
            <table style=" border-color: red; border-width: medium; " class="auto-style10">
            <tr>
                <td class="auto-style22" >
                    <strong>
                    <asp:Label ID="lb_login" runat="server" BackColor="White" BorderStyle="None" Font-Size="X-Large" ForeColor="Black" Text="login" Width="124px"></asp:Label>
                    </strong>
                   
                </td>
                <td class="auto-style23">
                     <asp:TextBox ID="login_user" runat="server" BackColor="#FDFDFD" BorderColor="#3399FF" ForeColor="Black" Width="454px" Height="42px" CssClass="auto-style8"></asp:TextBox>
                </td>
                
             
            </tr>
            <tr>
                <td class="auto-style28">
                    <strong>
                    <asp:Label ID="lb_ps" runat="server" BorderStyle="None" Font-Size="X-Large" ForeColor="Black" Text="password" Width="120px"></asp:Label>
                    </strong>
                   
                </td>
                <td class="auto-style29">
                   <asp:TextBox ID="password" runat="server" BackColor="#FBFBFB" BorderColor="#66CCFF" ForeColor="Black" TextMode="Password" Width="454px" Height="42px"></asp:TextBox>
                </td>
                 
            <tr>
                <td class="auto-style26">
                    <strong>
                    <asp:Label ID="lb_level" runat="server" BorderStyle="None" Font-Size="X-Large" ForeColor="Black" Text="level" Width="116px"></asp:Label>
                    </strong>
                    
                </td>
                 <td class="auto-style27">
                
                    <asp:DropDownList ID="categorie" runat="server"  
                    DataTextField="categorie" DataValueField="categorie" Width="454px" Height="42px" BackColor="#FAFAFA" BorderColor="#66CCFF" ForeColor="Black" CssClass="auto-style8" Font-Size="Larger" >
                         
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
              
                    </asp:DropDownList>
                </td>
                </tr>
           
               
            
                
               
                    

                
                    

                    
        
         </table>
            
              
        </div>
                     
                     <center class="auto-style2">
                     
                    
                      
                  
                    <asp:Button ID="btn_connecter" runat="server" Text="Connecter" BackColor="#993300"
                         Height="65px" style="margin-top: 0px" 
                          Width="478px" BorderColor="White" ForeColor="White" OnClick="btn_connecter_Click" CssClass="auto-style17" BorderStyle="Solid" Font-Size="Larger" BorderWidth="2px"/>







                         

                         



                         
                          
                          
                          
                        </center>
                    <asp:Label ID="lblMessage" runat="server" Visible="False" ForeColor="Black"></asp:Label>
                     
             
             </center>
             </asp:Panel>
    </form>
    
</body>
</html>
