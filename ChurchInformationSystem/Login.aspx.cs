using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataLayer;
using System.Drawing;

    
namespace ChurchInformationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            LoginDataContext logdat = new LoginDataContext();
            userList ulist = new userList();
            try
            {
                if (!string.IsNullOrEmpty(txtusername.Text))
                {
                    if (!String.IsNullOrEmpty(txtpassword.Text))
                    {
                        string uname = txtusername.Text;
                        string pass = txtpassword.Text;
                        ulist = logdat.GetValidUser(uname, pass);
                        if (ulist.List.Count != 0)
                        {
                            string name = ulist.List[0].Uname.ToString();
                            string password = ulist.List[0].Password.ToString();
                            int status = ulist.List[0].Status;
                            if (status == 1)
                            {
                                if (name == uname && pass == password)
                                {
                                    Session["uname"] = ulist.List[0].Uname.ToString();
                                    Response.Redirect("Dashboard.aspx");
                                }
                                else
                                {
                                    lblmsg.Text = "UserName/Password not Matching";
                                    lblmsg.ForeColor = Color.Red;
                                }
                            }
                            else
                            {
                                txtusername.Text = string.Empty;
                                lblmsg.Text = "User Inactive";
                                lblmsg.ForeColor = Color.Red;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

    }
}
