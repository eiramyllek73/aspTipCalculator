using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationSample
{
    public partial class Tip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Calculate Tip
            Decimal tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal(ddlPercent.SelectedValue);
        
            //Display Tip
            lblTip.Text = tip.ToString("c");

            //Calculate Total
            Decimal total = tip + Convert.ToDecimal(txtAmount.Text);

            //Display Total
            lblTotal.Text = total.ToString("c");
        }
    }
}