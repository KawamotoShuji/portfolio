class ContactsController < ApplicationController
  def new
    if params[:back]
      @contact = Contact.new(contacts_params)
    else
      @contact = Contact.new
    end
  end

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
    Contact.create(contacts_params)
    redirect_to root_path, info: "お問い合わせありがとうございました！",controller: :contacts, action: :new
    NoticeMailer.sendmail_contact(@contact).deliver
    else
    render action: 'new'
    end
  end

  private
    def contacts_params
      params.require(:contact).permit(:name, :content)
    end
end
