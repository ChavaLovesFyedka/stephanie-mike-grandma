class DraftMailer < ActionMailer::Base
  #default from: "from@example.com"
  
  def email_message(draft)
    @letter = draft.letter
    @draft_option = draft.share_option
    @draft_url = "http://dear-grandma.herokuapp.com/letters/#{draft.letter_id}/drafts/new"
    @draft_variables = draft.draft_variables
    #binding.pry
    mail(
      :subject => 'Hi from Dear Grandma!',
      :to      => draft.email,
      :from    => 'whaddupgrandma@flatironschool.com'
    )
  end
end
