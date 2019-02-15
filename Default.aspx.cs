using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int ans;
    int hint;
    int userInput;
    int counter = 0;
    Random operation = new Random();
    int currOp;
    Random answer = new Random();

    protected void Button1_Click(object sender, EventArgs e)
    {


        currOp = operation.Next(1, 2);
   
       
        ans = answer.Next(1, 5);
        Session["ans"] = ans;
        //put into session storage
            hint = answer.Next((ans * 2), (ans * 4));
            lblQuestion.Text = " What is " + (ans * hint) + " divided by " + hint + " ? ";
        Console.WriteLine("answer is " + ans);
 //       ans = answer.Next(30, 100);
 //       hint = answer.Next((ans / 5), (ans / 2));
 //       lblQuestion.Text = " What is " + (ans / hint) + " multiplied by " + hint + " ? ";
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        //get ans from session storage
        ans = Convert.ToInt32(Session["ans"]);

        if (Convert.ToInt32(txtAnswer.Text) == ans)
        {
            lblAnswer.Text = "You are right!";
            counter += 1;
        }
        else if (Convert.ToInt32(txtAnswer.Text) != ans)
        {
            lblAnswer.Text = "You are wrong!";
            counter -= 1;
        }
        //if(counter >= 5)
        //{
        //    progress.Text = "Well Done! You are good!";
        //}else if(counter <= 4)
        //{
        //    progress.Text = "Keep going!";
        //}
    }
}