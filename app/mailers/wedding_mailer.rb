class WeddingMailer < ActionMailer::Base
  default from: "heatherwhitfield550@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.wedding_mailer.rsvp_confirmation.subject
  #
  def rsvp_confirmation(rsvp)
    @rsvp = rsvp

    mail to: "dtnvose@gmail.com", cc: 'heatherwhitfield550@gmail.com', subject: "[Wedding-RSVP] RSVP From " + @rsvp.name
  end
end
