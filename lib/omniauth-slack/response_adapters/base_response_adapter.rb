module OmniAuth
  module Slack
    class BaseResponseAdapter
      attr_reader :access_token

      def initialize(access_token)
        @access_token = access_token
      end

      def identity_access_token
        @identity_access_token ||= ::OAuth2::AccessToken.from_hash(access_token.client, access_token.params['authed_user'])
      end
    end
  end
end
