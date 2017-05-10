class FavoriteMailer < ApplicationMailer
  default from: "jim.rohrer@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@bloccit.rohrer>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.rohrer>"
    headers["References"] = "<post/#{post.id}@bloccit.rohrer>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, cc: "jim.rohrer@gmail.com", subject: "new comment on #{post.title}")
  end
end
