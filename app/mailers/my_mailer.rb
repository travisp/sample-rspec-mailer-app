class MyMailer < ApplicationMailer
  def test
    mail(
      to: 'bob',
      subject: 'yikes',
      body: 'text'
    )
  end
end
