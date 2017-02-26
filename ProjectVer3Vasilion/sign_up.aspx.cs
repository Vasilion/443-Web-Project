using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign_up : System.Web.UI.Page
{
    
    public string FirstLetterToUpper(string str)
    {
        if (str == null)
            return null;

        if (str.Length > 1)
            return char.ToUpper(str[0]) + str.Substring(1);

        return str.ToUpper();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtFirstName_TextChanged(object sender, EventArgs e)
    {    
                
        txtFirstName.Text = FirstLetterToUpper(txtFirstName.Text);
    }

    protected void txtLastName_TextChanged(object sender, EventArgs e)
    {
        txtLastName.Text = FirstLetterToUpper(txtLastName.Text);
    }

    protected void txtAddress_TextChanged(object sender, EventArgs e)
    {
        txtAddress.Text = FirstLetterToUpper(txtAddress.Text);
    }

    protected void txtCity_TextChanged(object sender, EventArgs e)
    {
        txtCity.Text = FirstLetterToUpper(txtCity.Text);
    }
}