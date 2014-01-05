using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameInASPNET
{

    public partial class PersonalProfile : System.Web.UI.Page
    {
        System.Web.Security.MembershipUser u;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {

            }
            else
            {
                Response.Redirect("Protected.aspx");
            }

            
            u = System.Web.Security.Membership.GetUser(User.Identity.Name);
            EmailBox.Text = u.Email;
            UsernameBox.Text = u.UserName;

            NameBox.Text = System.Web.HttpContext.Current.User.Identity.Name;
            //SurnameBox.Text = System.Web.HttpContext.Current.User.Identity.;
        }


        public void UpdateUser(object sender, EventArgs args)
        {
            try
            {
                if (EmailTextBox.Text.Length > 0)
                {
                    u.Email = EmailTextBox.Text;
                    System.Web.Security.Membership.UpdateUser(u);

                    EmailBox.Text = u.Email;
                    EmailTextBox.Text = "";
                    Message.Text += "Email Updated.<br>";
                }
                
                if (PasswordTextBox.Text.Length > 0 && OldPasswordTextBox.Text.Length > 0)
                {
                    if (PasswordTextBox.Text.Length > 5)
                    {
                        if (u.ChangePassword(OldPasswordTextBox.Text, PasswordTextBox.Text))
                        {
                            OldPasswordTextBox.Text = "";
                            PasswordTextBox.Text = "";
                            Message.Text += "Password Changed!";
                        }
                        else
                        {
                            Message.Text += "Wrong Password Provided!";
                        }
                    }
                    else
                    {
                        Message.Text += "New Password must be at least 6 characters long!";
                    }
                }
            }
            catch (System.Configuration.Provider.ProviderException e)
            {
                Message.Text = e.Message;
            }
        }
    }
}
