class FavoriteMailer < ApplicationMailer
    default from: "jdwyatt87@gmail.com"
    
    def new_comment(user, post, comment)
        headers["Message-ID"] = "<comments/#{comment.id}@https://arcane-lake-41434.herokuapp.com/>"
        headers["In-Reply-To"] = "<post/#{post.id}@https://arcane-lake-41434.herokuapp.com/>"
        headers["References"] = "<post/#{post.id}@https://arcane-lake-41434.herokuapp.com/>"
        
        @user = user
        @post = post
        @comment = comment
        
        mail(to: user.email, subject: "New comment on #{post.title}")
    end
    
end
