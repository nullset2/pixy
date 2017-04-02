module PostsHelper
    def current_user_owns_the_post?(post)
        current_user == post.user
    end
end
