require "rails_helper"

RSpec.describe MyMailer, type: :mailer do
  describe "test" do
    it "works" do
      expect(ActionMailer::Base.delivery_method).to eq(:test)
      MyMailer.test.deliver_now!
    end
  end
end

