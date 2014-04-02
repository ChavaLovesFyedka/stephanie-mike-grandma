module LettersHelper
  def form_for_letter(letter)
    render 'letters/user_form', :letter => letter
  end
end
