using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Services
{
    internal class MailServices
    {
        public void MailSending(string mailid, AlternateView av)
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("anshid.ansar@gmail.com");
                mail.To.Add(mailid);
                mail.Subject = "Food Spot";

                mail.AlternateViews.Add(av);

                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("anshidansar007", "ngvrpntimlvnmgik");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }

            }
        }
    }
}
