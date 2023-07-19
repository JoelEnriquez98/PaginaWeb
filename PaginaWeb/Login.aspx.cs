using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaWeb
{
    public partial class Login : System.Web.UI.Page
    {
        private string usersPath = "Files/Users.txt";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            //Create Session
            bool userNameValid = false;
            StreamReader streamReader = new StreamReader(Server.MapPath(usersPath));

            using (streamReader)
            {
                while (!streamReader.EndOfStream)
                {
                    string line = streamReader.ReadLine();
                    string[] atributes = line.Split(',');
                    if (atributes[1] == TBUserName.Text && atributes[2] == TBPassword.Text)
                    {
                        //login success
                        userNameValid = true;
                        Session.Add("name", $"{atributes[4]} {atributes[3]}");
                    }
                }
            }

            if (!userNameValid)
            {
                Response.Write("User or password are invalid");
            }
            else
            {
                Response.Redirect("Main.aspx");
            }
        }
    }
}