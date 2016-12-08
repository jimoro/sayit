class FavoriteMailer < ApplicationMailer
  default from: "jim.rohrer@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, cc: "michaelcpell@gmail.com", subject: "new comment on #{post.title}")
  end

  def new_post(post)

    headers["Message-ID"] = "<posts/#{post.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @post = post

    mail(to: post.user.email, cc: "michaelcpell@gmail.com", subject: "Auto-Favorited your new Bloccit post of #{post.title}.")
  end

end
