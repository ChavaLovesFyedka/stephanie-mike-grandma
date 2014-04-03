class DraftMailer < ActionMailer::Base
  #default from: "from@example.com"
  
  def email_message(draft)
    @letter = draft.letter
    @draft_variables = draft.draft_variables
    #binding.pry
    mail(
      :subject => 'Hi from Dear Grandma!',
      :to      => draft.email,
      :from    => 'whaddupgrandma@flatironschool.com'
    )
  end
end
