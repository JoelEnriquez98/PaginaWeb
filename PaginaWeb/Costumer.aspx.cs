using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PaginaWeb.DataSetComputerStoreTableAdapters;
using PaginaWeb.Objects;

namespace PaginaWeb
{
    public partial class Costumer : System.Web.UI.Page
    {
        private string pathDatabase = "Data Source=Joel_PC\\SQLEXPRESS01;Initial Catalog=tests;Persist Security Info=True;User ID=sa;Password=ajedrez10";
        private DataTable costumerDataTable;
        private CostumerTableAdapter costumerAdapter;


        protected void Page_Load(object sender, EventArgs e)
        {
            costumerAdapter = new CostumerTableAdapter();
            costumerDataTable = new DataTable();
            bindDataTable();
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (!validateEmptyTextBoxes())
            {
                Client newCostumer = new Client(Convert.ToInt32(TextBoxNIT.Text), TextBoxNames.Text, TextBoxLastNames.Text, TextBoxAddress.Text, Convert.ToInt32(TextBoxPhone.Text));
                writeData(newCostumer);
                bindDataTable();
            }
        }

        private void cleanData()
        {
            TextBoxNIT.Text = null;
            TextBoxNames.Text = null;
            TextBoxLastNames.Text = null;
            TextBoxAddress.Text = null;
            TextBoxPhone.Text = null;
        }

        private void writeData(Client client)
        {
            if (costumerAdapter.CheckNITClient(client.NIT) == 1)
            {
                Response.Write("<script>alert('Este NIT ya se ha registrado');</script>");
            }
            else
            {
                costumerAdapter.InsertCostumer(client.NIT, client.names, client.lastNames, client.address, client.phone);
                cleanData();
                Response.Write("<script>alert('Se ha ingresado el cliente correctamente');</script>");
            }
        }


        private void bindDataTable()
        {
            costumerDataTable = costumerAdapter.GetCostumers();
            GVCostumers.DataSource = costumerAdapter.GetCostumers();
            GVCostumers.DataBind();
        }




        protected void filterButton_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonCleanData_Click(object sender, EventArgs e)
        {
            TextBoxNIT.Text = "";
            TextBoxNames.Text = "";
            TextBoxLastNames.Text = "";
            TextBoxAddress.Text = "";
            TextBoxPhone.Text = "";
        }

        protected void GVCostumers_Sorting(object sender, GridViewSortEventArgs e)
        {
            costumerDataTable.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
            GVCostumers.DataSource = costumerDataTable;
            GVCostumers.DataBind();
        }

        private string GetSortDirection(string column)
        {

            string sortDirection = "ASC";

            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    if ((lastDirection != null) && (lastDirection == "ASC"))
                    {
                        sortDirection = "DESC";
                    }
                }
            }
            ViewState["SortDirection"] = sortDirection;
            ViewState["SortExpression"] = column;

            return sortDirection;
        }


        private bool validateEmptyTextBoxes()
        {
            TextBox[] textBoxes = { TextBoxNIT, TextBoxNames, TextBoxLastNames, TextBoxAddress, TextBoxPhone };
            foreach (TextBox textBox in textBoxes)
            {
                if (String.IsNullOrEmpty(textBox.Text))
                {
                    textBox.Focus();
                    Response.Write("<script>alert('Ingrese el dato del: " + textBox.ID + "');</script>");
                    return true;
                }
            }
            return false;
        }




    }


}