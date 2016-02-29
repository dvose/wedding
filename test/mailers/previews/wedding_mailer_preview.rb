# Preview all emails at http://localhost:3000/rails/mailers/wedding_mailer
class WeddingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/wedding_mailer/rsvp_confirmation
  def rsvp_confirmation
    WeddingMailer.rsvp_confirmation
  end

end
