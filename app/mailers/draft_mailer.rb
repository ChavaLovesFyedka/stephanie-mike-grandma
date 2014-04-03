class DraftMailer < ActionMailer::Base
  #default from: "from@example.com"
  def email_message(user_email)
    mail(
      :subject => 'Hi from Dear Grandma!',
      :to      => user_email,
      :from    => 'whaddupgrandma@flatironschool.com'
    )
  end
end
