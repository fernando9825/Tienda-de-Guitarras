using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class clientes_registrarse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string cliente;
    sesion se = new sesion();
    conexion con = new conexion();
    protected void registrarse_Click(object sender, EventArgs e)
    {
        try
        {


            if (txtnombre.Text != "" & txtapellido.Text != "" & txtusuario.Text != "" & txtapellido.Text != "")
            {

                string sql = "Insert into Registro (nombre, apellido, usuario, contraseña) values ('" + txtnombre.Text + "','" + txtapellido.Text + "','" + txtusuario.Text + "','" + txtapellido.Text + "');";
                con.guardar(sql);
                string script = "alert(\"Hello!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
               "ServerControlScript", script, true);
                se.usuario = txtusuario.Text;





                if (sql != null)
                {

                    Response.Redirect("/instrumentos/acusticas.aspx");

                }

            }
            else
            {

                string script2 = "alert('Por favor no dejes ninguna casilla en blanco, puesto que todos los campos son requeridos!');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Informacion", script2, true);
            }


        }





        catch (Exception E)
        {

            string script5 = "alert('No se pudo guardar, Intenta rellenar todas las casillas, ya que son campos obligatorios');";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Informacion", script5, true);
        }
        finally
        {




        }

    }
}
