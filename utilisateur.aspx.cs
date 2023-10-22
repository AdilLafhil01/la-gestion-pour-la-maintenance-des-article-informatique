using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_maintenance_des_articles_informatique
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*myPanel.Style["position"] = "relative";
            myPanel.Style["right"] = "100px";
            myPanel.Style["top"] = "10px";*/


            if (Session["nom_user"]!=null)
            {
                lb_welcome.Text = Session["nom_user"].ToString();
            }
           
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String InsertCommand = "INSERT INTO [utilisateur] ( [nom_user], [prenom_user],[categorie],[password],[date_creation],[last_connection]) VALUES ( @nom_user, @prenom_user,@categorie,@password,@date_creation,@last_connection)";
            cnx.Open();
            cmd.CommandText = InsertCommand;
            cmd.Connection = cnx;

            //cmd.Parameters.AddWithValue("@id_user", id_User.Text);
            cmd.Parameters.AddWithValue("@nom_user", nom_user.Text);
            cmd.Parameters.AddWithValue("@prenom_user", prenom_user.Text);
            cmd.Parameters.AddWithValue("@categorie",level.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@date_creation", date_creation.Text);
            cmd.Parameters.AddWithValue("@last_connection", last_connection.Text);

            

            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = "ajouter avec succer";
            GridView1.DataBind();
            
            
        }

        protected void btn_modifier_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String UpdateCommand = "UPDATE [utilisateur] SET [nom_user] = @nom_user, [prenom_user] = @prenom_user,[categorie] = @categorie, [password]=@password,[date_creation]=@date_creation,[last_connection]=@last_connection WHERE [id_user] = @id_user";
            cnx.Open();
            cmd.CommandText = UpdateCommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_user", id_User.Text);
            cmd.Parameters.AddWithValue("@nom_user", nom_user.Text);
            cmd.Parameters.AddWithValue("@prenom_user", prenom_user.Text);
            cmd.Parameters.AddWithValue("@categorie", level.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@date_creation", date_creation.Text);
            cmd.Parameters.AddWithValue("@last_connection", last_connection.Text);

           

            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = "modification avec succer";
            
        }

        protected void btnsupprimer_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String deletecommand = "DELETE from [utilisateur]  where [id_user] = @id_user ";
            cnx.Open();
            cmd.CommandText = deletecommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_user", id_User.Text);
            cmd.ExecuteNonQuery();
            cnx.Close();
            lbmsg.Text = "supprission Avec succe";
            vider();


        }

        protected void btn_nouveux_Click(object sender, EventArgs e)
        {
            vider();

        }
        public void vider()
        {
            id_User.Text = "";
            nom_user.Text = "";
            prenom_user.Text = "";
            level.Text = "";
            date_creation.Text = "";
            last_connection.Text = "";
            password.Text = "";
        }

        protected void filtre_click(object sender, EventArgs e)
        {
            Response.Redirect("filtre utilisateur.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            

        }

        protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
        {
            int r = e.NewSelectedIndex;
            id_User.Text = GridView1.Rows[r].Cells[1].Text;
            nom_user.Text = GridView1.Rows[r].Cells[2].Text;
            prenom_user.Text = GridView1.Rows[r].Cells[3].Text;
            level.Text = GridView1.Rows[r].Cells[4].Text;
            date_creation.Text = GridView1.Rows[r].Cells[6].Text;
            last_connection.Text = GridView1.Rows[r].Cells[7].Text;
            password.Text = GridView1.Rows[r].Cells[5].Text;

        }

        protected void moveButton_Click(object sender, EventArgs e)
        {

        }

        protected void moveButton_Click1(object sender, EventArgs e)
        {
            /*myPanel.Style["position"] = "relative";
            myPanel.Style["left"] = "300px";
            myPanel.Style["top"] = "10px";*/
        }
    }
}