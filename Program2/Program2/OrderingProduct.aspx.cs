using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAccountSys
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack && (bool)Application["Prog2_Computed"])
            {
                txtID.Text = (string)Application["Prog2_ProductID"];
                txtQuantity.Text = (string)Application["Prog2_ProductQuantity"];
                txtPrice.Text = (string)Application["Prog2_ProductPrice"];

                CalculateTotals();
            }

            txtID.Focus();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CalculateTotals();


            Application["Prog2_ProductPrice"] = txtPrice.Text;
            Application["Prog2_ProductQuantity"] = txtQuantity.Text;
            Application["Prog2_ProductID"] = txtID.Text;
            Application["Prog2_Computed"] = true;


            txtID.ReadOnly = true;
            txtPrice.ReadOnly = true;
            txtQuantity.ReadOnly = true;

        }

        void CalculateTotals()
        {
            Double taxRate = .055;


            Double Price = Double.Parse(txtPrice.Text);
            int intQuantity = int.Parse(txtQuantity.Text);


            Double subtotal = Price * (Double)intQuantity;
            Double tax = subtotal * taxRate;
            Double grandTotal = subtotal + tax;



            txtSubTotal.Text = String.Format("{0:C}", subtotal);
            txtTax.Text = String.Format("{0:C}", tax);
            txtGrandTotal.Text = String.Format("{0:C}", grandTotal);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            txtPrice.Text = "";
            txtSubTotal.Text = "";
            txtQuantity.Text = "";
            txtTax.Text = "";
            txtGrandTotal.Text = "";

            txtID.ReadOnly = false;
            txtPrice.ReadOnly = false;
            txtQuantity.ReadOnly = false;
            Application["Prog2_Computed"] = false;
        }
    }
}