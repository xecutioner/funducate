class StudentMailer < ActionMailer::Base
  default :from => "manish@sprout-technology.com"

  def welcome_email(request,donation)
    @person = Person.find(" #{request.person_id}")
    mail(:to => @person.email,
    :subject => "A Donation has been made!!!")
  end
end