class ContactsController < ApplicationController

  #1. お問い合わせ機能のコントローラ(contacts controller）を作成する
  #2. アクションはnewとcreateのみとする
  #3.newアクションでフォームを作成し、createで保存する、保存したらnewアクションにredirectする
  def new
      # 追記する
      @contact = Contact.new
  end

  def create
    #変数に値を入れる
    #4. routingはresourcesメソッドで作成する
    @contact = Contact.new(params.require(:contact).permit(:name, :email, :content))

    if @contact.save
      #データが正しく入力されれば保存。
      redirect_to new_contact_path

    else
      #データにエラーが生じている場合。画面をそのまま返す。
      render :new
    end

  end

end
