# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true
# rubocop:disable Layout/EmptyLinesAroundModuleBody
# rubocop:disable Layout/EmptyLinesAroundMethodBody
# rubocop:disable Layout/IndentationWidth
# rubocop:disable Layout/TrailingWhitespace
# rubocop:disable Style/StringLiterals
# rubocop:disable Style/HashSyntax
# rubocop:disable Layout/EndAlignment
# rubocop:disable Layout/ElseAlignment
# rubocop:disable Layout/EmptyLines

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
# rubocop:enable Layout/EmptyLinesAroundModuleBody
# rubocop:enable Layout/IndentationWidth
# rubocop:enable Layout/TrailingWhitespace
# rubocop:enable Style/StringLiterals
# rubocop:enable Style/HashSyntax
# rubocop:enable Layout/EndAlignment
# rubocop:enable Layout/ElseAlignment
# rubocop:enable Layout/EmptyLines
# rubocop:enable Layout/EmptyLinesAroundMethodBody
# rubocop:enable Layout/EmptyLineAfterMagicComment
