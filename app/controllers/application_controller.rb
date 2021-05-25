class ApplicationController < ActionController::Base

  $horaires = Textbox.find_by(name:"horaires").content
  $contact = Textbox.find_by(name:"contact").content

end
