using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameInASPNET
{
    public partial class GameProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated){

            }else{
                Response.Redirect("Protected.aspx");
            }

            //characterCurrentBig.Style = "background-color: 003000;";
            //characterCurrentBig.Style.Add("display", "none");
        }

        protected void changeCharacter(object sender, EventArgs e)
        {
            //string pvalue = characterCurrentBig.Attributes["class"];
            //characterCurrentBig.Style["background-color"] = characterSelectedBig.Style["background-color"];
        }
    }
}
