using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BackEnd.modelo;
using BackEnd.datos;

namespace FrontEndV2
{
    public partial class MateriasForm : System.Web.UI.Page
    {
        UsuarioDAO objUsuarioDao = new UsuarioDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuario"] != null)
            {
                cargarUsuarioASesion();
                lblUsr.Text = "Bienvenido: " + Session["email"];
                Session["email"] = null;
            }
            else
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        public void cargarUsuarioASesion()
        {
            Usuario usr = objUsuarioDao.getEmailById(Int32.Parse(Session["idUsuario"].ToString()));
            Session["email"] = usr.Email;

        }
    }
}