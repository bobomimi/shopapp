require 'test_helper'

class ThankYouTest < ActionMailer::TestCase
  def thank_you_preview
    ExampleMailer.sample_email(User.first)
  end
end
