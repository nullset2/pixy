module PostsHelper
    def current_user_owns_this(object)
        current_or_guest_user == object.user
    end
end
