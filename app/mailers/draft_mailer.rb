class DraftMailer < ActionMailer::Base
  #default from: "from@example.com"
  
  def email_message(draft)
    @draft = draft
    #binding.pry
    mail(
      :subject => 'Hi from Dear Grandma!',
      :to      => @draft.email,
      :from    => 'whaddupgrandma@flatironschool.com'
    )
  end
end
