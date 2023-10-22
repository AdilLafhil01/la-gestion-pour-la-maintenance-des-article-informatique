using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_maintenance_des_articles_informatique
{
    public partial class filtre : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-EBLKF75\SQLEXPRESS;Initial Catalog=Application pour la maintenance des articles informatique ;Integrated Security=True");
        SqlDataAdapter dr = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void filtrer_Click(object sender, EventArgs e)
        {
            string req = "SELECT * FROM utilisateur WHERE date_creation BETWEEN @date_creation AND @last_connection ";
            cnx.Open();
            {
                SqlCommand cmd = new SqlCommand(req, cnx);
                cmd.Parameters.AddWithValue("@date_creation", Convert.ToDateTime(date_creation.Text));
                cmd.Parameters.AddWithValue("@last_connection", Convert.ToDateTime(derniere_connection.Text));


                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                

                dr.Close();
            }
            cnx.Close();
        }

        protected void retour_Click(object sender, EventArgs e)
        {
            Response.Redirect("utilisateur.aspx");
        }
    }
}