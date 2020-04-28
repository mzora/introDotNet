using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Introduzione
{
    public partial class Default : System.Web.UI.Page
    {
        static List<Persona> persone = new List<Persona>();

        protected void Page_Load(object sender, EventArgs e)
        {   

        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            /*
            if (int.Parse(TXTEta.Text) >= 18)
            {
                if (TXTNome.Text.EndsWith("o"))
                    LBLOutput.Text = "Benvenuto " + TXTNome.Text + " " + TXTCognome.Text;
                else if (TXTNome.Text.EndsWith("a"))
                    LBLOutput.Text = "Benvenuta " + TXTNome.Text + " " + TXTCognome.Text;
            }
            else
            {
                LBLOutput.Text = "Non puoi entrare";
            }
            */
            Persona utente = new Persona();
            utente.Cognome = TXTCognome.Text;
            utente.Nome = TXTNome.Text;
            utente.Eta = int.Parse(TXTEta.Text);
            persone.Add(utente);

            //contatore istanze
            Persona.NumOfObj += 1;

            //GridView tabella
            GRDPerson.DataSource = persone;
            GRDPerson.DataBind();
        }
        protected void BTNSubmitLogin_Click(object sender, EventArgs e)
        {
            var v = new Validazione();
            if (userID.Text == v.getUser() && pswID.Text == v.getPSW())
            {
                LBLOutLogin.Text = "login corretto";
            }
            else
            {
                LBLOutLogin.Text = "login errato";
            }
        }
    }
}