# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected
    
    def find_verified_user
      if verified_user = env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end

# User Logs On (typically in a session#new)
# cookies.signed['user.id'] = user.id
# cookies.signed['user.expires_at'] = 30.minutes.from_now

# ActionCable Connection
# def find_verified_user
#   verified_user = User.find_by(id: cookies.signed['user.id'])
#   if verified_user && cookies.signed['user.expires_at'] > Time.now
#     verified_user
#   else
#     reject_unauthorized_connection
#   end
# end

# User Logs Off (typically in a session#destroy)
# cookies.signed['user.id'] = nil
# cookies.signed['user.expires_at'] = nil
