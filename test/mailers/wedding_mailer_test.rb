require 'test_helper'

class WeddingMailerTest < ActionMailer::TestCase
  test "rsvp_confirmation" do
    mail = WeddingMailer.rsvp_confirmation
    assert_equal "Rsvp confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
