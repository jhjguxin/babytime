# encoding: utf-8
module BabyTime
  module Interface
    class Test < Base
      def https_post_request_test
        url = URI.parse('https://t0.117show.com/account/login')

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true if url.scheme == 'https'
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE 
        request = Net::HTTP::Get.new(url.path)
        response = http.request(request)
        #puts response.body
      end
      
      def https_get_request_test
        url = URI.parse('https://t0.117show.com/account/login')

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true if url.scheme == 'https'
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE 
        request = Net::HTTP::Get.new(url.path)
        response = http.request(request)
        #puts response.body
      end

      #another method
      def http_request_test
        @host = 't0.117show.com'
        @port = '80'

        @path = "/account/login"
        @body = {}.to_json

        request = Net::HTTP::Post.new(@path)
        request.body = @body
        response = Net::HTTP.new(@host, @port).start {|http| http.request(request) }
        #puts "Response #{response.code} #{response.message}: #{response.body}"
      end
    end
  end
end
