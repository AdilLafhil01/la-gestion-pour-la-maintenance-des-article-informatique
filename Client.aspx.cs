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
    public partial class Client : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["nom_user"]!=null)
            //{
            //    lb.Text = Session["nom_user"].ToString();
            //}
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String InsertCommand = "INSERT INTO [client] ([cin], [nom], [date_naissance],[ville]) VALUES (@cin, @nom, @date_naissance,@ville)";
            cnx.Open();
            cmd.CommandText = InsertCommand;
            cmd.Connection = cnx;

            cmd.Parameters.AddWithValue("@cin", cin.Text);
            cmd.Parameters.AddWithValue("@nom", nom.Text);
            cmd.Parameters.AddWithValue("@date_naissance", date_naissance.Text);
            cmd.Parameters.AddWithValue("@ville", ville.Text);
           

            

            cmd.ExecuteNonQuery();
            cnx.Close();

            lbmsg.Text = cin.Text;
            GridView1.DataBind();
        }

        protected void btn_modifier_Click(object sender, EventArgs e)
        {
            cnx = new SqlConnection();
            cnx.ConnectionString = ConfigurationManager.ConnectionStrings["Application pour la maintenance des articles informatiqueConnectionString"].ConnectionString;
            String UpdateCommand = "UPDATE [client] SET [nom] = @nom, [date_naissance] = @date_naissance,[ville] = @ville WHERE [cin] = @cin";
            cnx.Open();
            cmd.CommandText = UpdateCommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@cin", cin.Text);
            cmd.Parameters.AddWithValue("@nom", nom.Text);
            cmd.Parameters.AddWithValue("@date_naissance", date_naissance.Text);
            cmd.Parameters.AddWithValue("@ville", ville.Text);


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
            String deletecommand = "DELETE from [client]  where [cin] = @cin ";
            cnx.Open();
            cmd.CommandText = deletecommand;
            cmd.Connection = cnx;
            cmd.Parameters.AddWithValue("@cin", cin.Text);
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
            cin.Text = "";
            nom.Text = "";
            date_naissance.Text = "";
            ville.Text = "";
        }

        protected void detail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Article.aspx");
        }

        protected void inter_Click(object sender, EventArgs e)
        {
            Response.Redirect("intervention.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int a = e.NewSelectedIndex;
            cin.Text = GridView1.Rows[a].Cells[1].Text;
            nom.Text = GridView1.Rows[a].Cells[2].Text;
            date_naissance.Text = GridView1.Rows[a].Cells[3].Text;
            ville.Text = GridView1.Rows[a].Cells[4].Text;
            
        }
    }
}