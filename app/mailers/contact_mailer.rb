class ContactMailer < ActionMailer::Base
  default to: 'ddugan11@gmail.com'  
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Dev Match Contact Form Submission')
  end   
end  