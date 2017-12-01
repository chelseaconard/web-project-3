module UsersHelper
    
    def gravatar_for(user, size: 80)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/216eff9512da98332a1f4988810e119d"
        image_tag(gravatar_url, alt: user.name, class:"gravatar")
    end
end
