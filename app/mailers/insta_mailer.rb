class InstaMailer < ApplicationMailer
    def insta_mail(blog)
        @blog = blog
        mail to: "example@mail.com", subject: "お問い合わせの確認メール"
    end
end
