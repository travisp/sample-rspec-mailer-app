require "rails_helper"

RSpec.describe "Sending an email", type: :system do
  describe "system test" do
    it "works" do
      expect(ActionMailer::Base.delivery_method).to eq(:test)
      MyMailer.test.deliver_now!
    end
  end
end

