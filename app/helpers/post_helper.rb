# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

module PostHelper

    def sign_in_or_out

     if user_signed_in? 
           link_to("Sign out", destroy_user_session_path, :method => :delete) 
     else 
           link_to("Sign in", new_post_path) 
      end 
    end

    def show_right_user
         if user_signed_in? 
           post.user.name 
        else 
           "Anonymous"
        end 
    end


  

end
# rubocop:enable Style/FrozenStringLiteralComment
