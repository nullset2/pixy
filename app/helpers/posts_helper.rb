module PostsHelper
    def current_user_owns_this(object)
        current_user == object.user
    end
end
