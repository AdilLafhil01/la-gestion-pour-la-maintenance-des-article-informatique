using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_maintenance_des_articles_informatique
{
    public partial class filtrer_intervention : System.Web.UI.Page
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
            string req = "SELECT * FROM article WHERE date_insatallation BETWEEN @date_insatallation AND @date_fin_garantie ";
            cnx.Open();
            {
                SqlCommand cmd = new SqlCommand(req, cnx);
                cmd.Parameters.AddWithValue("@date_insatallation", Convert.ToDateTime(date_installation.Text));
                cmd.Parameters.AddWithValue("@date_fin_garantie", Convert.ToDateTime(date_fin_garantie.Text));


                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                

                dr.Close();
            }
            cnx.Close();
        }

        protected void retour_Click(object sender, EventArgs e)
        {
            Response.Redirect("Article.aspx");
        }
    }
}