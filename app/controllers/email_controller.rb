class EmailController < ApplicationController
  #post
  def send(email)
    @email = email
    DraftMailer.email_message(email).deliver
  end

end