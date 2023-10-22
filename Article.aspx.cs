using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace la_maintenance_des_articles_informatique
{
    public partial class Article : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        
        SqlDataReader rd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nom_user"] != null)
            {
                lb_welcome.Text = Session["nom_user"].ToString();
            }

            //charger_grid();

        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            //string req = "insert into Article values('" + id_Article + "','" + type_articl + "','" + date_installation + "','" + Cin_client + "','" + zone + "','" + adresse_ip + "','" + number_serie + "','" + date_fin_garantie + "')";
            //cnx.Open();
            //SqlCommand cmd = new SqlCommand(req, cnx);
            //cmd.ExecuteNonQuery();
            //lbmsg.Text = "bient ajouter";
            //cnx.Close();
            //charger_grid();
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String InsertCommand = "INSERT INTO [article] ([id_Article], [type_article], [date_insatallation],[Cin_client],[zone],[adresse_ip],[number_serie],[date_fin_garantie]) VALUES (@id_Article, @type_article, @date_insatallation,@Cin_client,@zone,@adresse_ip,@number_serie,@date_fin_garantie)";
            cnx.Open();
            cmd.CommandText = InsertCommand;
            cmd.Connection = cnx;

            cmd.Parameters.AddWithValue("@id_Article", id_Article.Text);
            cmd.Parameters.AddWithValue("@type_article", type_articl.Text);
            cmd.Parameters.AddWithValue("@date_insatallation", date_installation.Text);
            cmd.Parameters.AddWithValue("@Cin_client", Cin_client.Text);
            cmd.Parameters.AddWithValue("@zone", zone.Text);
            cmd.Parameters.AddWithValue("@adresse_ip", adresse_ip.Text);
            cmd.Parameters.AddWithValue("@number_serie", number_serie.Text);

            cmd.Parameters.AddWithValue("@date_fin_garantie", date_fin_garantie.Text);

            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = id_Article.Text;
            GridView1.DataBind();
            vider();


        }
        private void charger_grid()
        {
            string req1 = "select * from Article";
            cnx.Open();

            cmd = new SqlCommand(req1, cnx);
            //cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(req1, cnx);
            //ds.Clear();
            da.Fill(ds, "Article");
            foreach (DataRow rd in ds.Tables[0].Rows)
            {
                GridView1.DataSource = ds.Tables[0];
            }
            cnx.Close();

        }

        protected void btn_modifier_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String UpdateCommand = "UPDATE [article] SET [type_article] = @type_article, [date_insatallation] = @date_insatallation,[Cin_client] = @Cin_client, [zone]=@zone,[adresse_ip]=@adresse_ip,[number_serie]=@number_serie,[date_fin_garantie]=@date_fin_garantie WHERE [id_Article] = @id_Article";
            cnx.Open();
            cmd.CommandText = UpdateCommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_Article", id_Article.Text);
            cmd.Parameters.AddWithValue("@type_article", type_articl.Text);
            cmd.Parameters.AddWithValue("@date_insatallation", date_installation.Text);
            cmd.Parameters.AddWithValue("@Cin_client", Cin_client.Text);
            cmd.Parameters.AddWithValue("@zone", zone.Text);
            cmd.Parameters.AddWithValue("@adresse_ip", adresse_ip.Text);
            cmd.Parameters.AddWithValue("@number_serie", number_serie.Text);

            cmd.Parameters.AddWithValue("@date_fin_garantie", date_fin_garantie.Text);

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
            String deletecommand = "DELETE from [article]  where [id_Article] = @id_Article ";
            cnx.Open();
            cmd.CommandText = deletecommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@id_Article", id_Article.Text);
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
            id_Article.Text = "";
            type_articl.Text = "";
            date_installation.Text = "";
            Cin_client.Text = "";
            zone.Text = "";
            adresse_ip.Text = "";
            number_serie.Text = "";
            date_fin_garantie.Text = "";




        }

        protected void type_articl_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_client_click(object sender, EventArgs e)
        {
            Response.Redirect("Client.aspx");
        }

        protected void btn_interventio_Click(object sender, EventArgs e)
        {

        }

        protected void btn_intervention_Click(object sender, EventArgs e)
        {
            Response.Redirect("intervention.aspx");
        }

        protected void detail_Click(object sender, EventArgs e)
        {
            Response.Redirect("filtrer article.aspx");
        }

        protected void log_click(object sender, EventArgs e)
        {
            Response.Redirect("LOG.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int a = e.NewSelectedIndex;
            id_Article.Text = GridView1.Rows[a].Cells[1].Text;
            type_articl.Text = GridView1.Rows[a].Cells[2].Text;
            date_installation.Text = GridView1.Rows[a].Cells[3].Text;
            Cin_client.Text = GridView1.Rows[a].Cells[4].Text;
            zone.Text = GridView1.Rows[a].Cells[5].Text;
            adresse_ip.Text = GridView1.Rows[a].Cells[6].Text;
            number_serie.Text = GridView1.Rows[a].Cells[7].Text;
            date_fin_garantie.Text = GridView1.Rows[a].Cells[8].Text;
        }
    }
}