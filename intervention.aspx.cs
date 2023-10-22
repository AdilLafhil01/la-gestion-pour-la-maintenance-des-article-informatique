using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Policy;

namespace la_maintenance_des_articles_informatique
{
    public partial class intervention : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nom_user"]!=null)
            {
                lb_welcome.Text = Session["nom_user"].ToString();
            }
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String InsertCommand = "INSERT INTO [interventions] ([id_intervenant], [type_intervention], [desc_intervention],[date_intervention],[id_article],[nom_client]) VALUES (@id_intervenant, @type_intervention, @desc_intervention,@date_intervention,@id_article,@nom_client)";
            cnx.Open();
            cmd.CommandText = InsertCommand;
            cmd.Connection = cnx;

            cmd.Parameters.AddWithValue("@id_intervenant", id_intervenant.Text);
            cmd.Parameters.AddWithValue("@type_intervention", type_intervention.Text);
            cmd.Parameters.AddWithValue("@desc_intervention", desc_intervention.Text);
            cmd.Parameters.AddWithValue("@date_intervention", date_intervention.Text);
            cmd.Parameters.AddWithValue("@id_article", id_article.Text);
            cmd.Parameters.AddWithValue("@nom_client", nom_client.Text);
           



            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = id_intervenant.Text;
            GridView1.DataBind();
            vider();
        }

        protected void btn_modifier_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String UpdateCommand = "UPDATE [interventions] SET [type_intervention] = @type_intervention, [desc_intervention] = @desc_intervention,[date_intervention] = @date_intervention, [id_article]=@id_article,[nom_client]=@nom_client WHERE [id_intervenant] = @id_intervenant";
            cnx.Open();
            cmd.CommandText = UpdateCommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_intervenant", id_intervenant.Text);
            cmd.Parameters.AddWithValue("@type_intervention", type_intervention.Text);
            cmd.Parameters.AddWithValue("@desc_intervention", desc_intervention.Text);
            cmd.Parameters.AddWithValue("@date_intervention", date_intervention.Text);
            cmd.Parameters.AddWithValue("@id_article", id_article.Text);
            cmd.Parameters.AddWithValue("@nom_client", nom_client.Text);

            

            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = "modification avec succer";
            GridView1.DataBind();
            vider();
        }

        protected void btnsupprimer_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String deletecommand = "DELETE from [interventions]  where [id_intervenant] = @id_intervenant ";
            cnx.Open();
            cmd.CommandText = deletecommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_intervenant", id_intervenant.Text);
            cmd.ExecuteNonQuery();
            cnx.Close();
            lbmsg.Text = "supprission Avec succe";
            GridView1.DataBind();
            vider();
        }
        
        protected void btn_nouveux_Click(object sender, EventArgs e)
        {
            vider();
        }
        protected void vider()
        {
            id_intervenant.Text = "";
            type_intervention.Text = "";
            desc_intervention.Text = "";
            date_intervention.Text = "";
            id_article.Text = "";
            nom_client.Text = "";

        }

        protected void detail_Click(object sender, EventArgs e)
        {
            Response.Redirect("detail intervention.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int a = e.NewSelectedIndex;
            id_intervenant.Text = GridView1.Rows[a].Cells[1].Text;
            type_intervention.Text = GridView1.Rows[a].Cells[2].Text;
            desc_intervention.Text = GridView1.Rows[a].Cells[3].Text;
            date_intervention.Text = GridView1.Rows[a].Cells[4].Text;
            id_article.Text = GridView1.Rows[a].Cells[5].Text;
            nom_client.Text = GridView1.Rows[a].Cells[6].Text;


        }
    }
}