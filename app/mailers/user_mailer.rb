class UserMailer < ActionMailer::Base
  default from: "s@stee.vn"

  def resume_email(user)
    @user = user
    @url = 'http://www.stee.vn'
    attachments['Steven_Fleming_Resume_2015.pdf'] = File.read('public/resume/Steven_Fleming_Resume_2015.pdf')
    mail(to: @user.email, subject: 'Automatic Resume Email From Steven Fleming')
  end
end
