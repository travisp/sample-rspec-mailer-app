require "rails_helper"

RSpec.describe "Sending an email", type: :system do
  describe "system test" do
    it "works" do
      expect(ActionMailer::Base.delivery_method).to eq(:custom_test)
      mail = MyMailer.test.deliver_now!
      expect(mail.subject).to eq("I now have a new subject")
    end
  end
end

