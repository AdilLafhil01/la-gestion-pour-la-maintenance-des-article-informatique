using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_maintenance_des_articles_informatique
{
    public partial class auto : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_connecter_Click(object sender, EventArgs e)
        {
            int nombreEssais =0;
            const int limiteEssais = 3;
           

            cnx.Open(); // Ouvrir la connexion ici avant la boucle while

            while (nombreEssais < limiteEssais)
            {
                string req = "select * from utilisateur where nom_user='" + login_user.Text + "' and password='" + password.Text + "'";
                SqlCommand cmd = new SqlCommand(req, cnx);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["nom_user"] = dr[1].ToString();
                    
                    break;
                }
                else
                {
                    nombreEssais++;
                    int essaisRestants = limiteEssais - nombreEssais;
                    lblMessage.Text = $"Tentative incorrecte. Il vous reste {essaisRestants} essai(s).";
                    vider();
                    lblMessage.Visible = true;
                    Response.Write("check your id or password");
                    
                    return;
                    
                }
               
                
            }
           
            cnx.Close(); 

            
               
            

            
            if (categorie.Text == "admin")
            {
                Response.Redirect("HOMEaspx.aspx");
            }
            else
            {
                Response.Redirect("utilisateur.aspx");
            }




           
            
            
        }
    

            protected void btn_ajouter_Click(object sender, EventArgs e)
            {

                //Response.Redirect("utilisateur.aspx");

            }

            protected void btn_adduser_click(object sender, EventArgs e)
            {
                

            }
        protected void vider()
        {
            login_user.Text = "";
            password.Text = "";
            categorie.Text = "";
        }

        protected void bnt_ajouter_click(object sender, EventArgs e)
        {
            //Response.Redirect("utilisateur.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "ClosePage", "window.close();", true);
        }
    }
}