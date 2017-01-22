class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_contact.subject
  #
  def sendmail_contact(contact)
    @contact = contact

    mail to: "m01141329f@edu.teu.ac.jp",
    subject: 'お問い合わせですよ河本君'
  end
end
