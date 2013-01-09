require 'net/http'
require 'net/https'
require 'json'

module BabyTime
  module Interface
    class Base
      def initialize(client)
        @client = client
      end
      
      def set_headers(param = {use_gzip: true})
        headers = {
                     "Accept" => "text/html,application/json, text/javascript, */*; q=0.01;q=0.9,*/*;q=0.8", 
                     "Accept-Charset" => "utf-8;q=0.7,*;q=0.3"#,
                     #"Accept-Language" => "en-US,en;q=0.8"
                  }
        if param.present? and param.delete(:use_gzip)
          #If initheader doesn’t have the key ‘accept-encoding’, then a value of “gzip;q=1.0,deflate;q=0.6,identity;q=0.3” is used, so that gzip compression is used in preference to deflate compression, which is used in preference to no compression
          #headers.reverse_merge({"Accept-Encoding" => "gzip,deflate"})
          headers.merge!({"Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3"})
        end
        headers
      end
      #http://www.rubyinside.com/nethttp-cheat-sheet-2940.html
      def uri(path,param={},use_ssl)
        protocol = use_ssl ? "https://" : "http://"
        u = URI protocol << @client.site
        u.port = @client.port.to_i if @client.port.present?
        u.path = path
        u.query = param.to_param
        u
      end

      def get(path, param = {}, data={}, use_ssl = false)

        u = uri(path, param, use_ssl)
        http = Net::HTTP.new(u.host, u.port)
        request = Net::HTTP::Get.new(u.request_uri, set_headers)
        
        if use_ssl
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        end

        #response = Net::HTTP.get uri(path, param) #can only return some string   
        response = http.request(request)
        
        
        begin
          response.header.value
          JSON.parse try_unpack_gzip(response.body) 
        rescue => e
          {error: e.message}
        end
      end
      
      #c.test.post("/account/login",{},data ={username: "xxxxxxxxxxxxx",sina_token: "xxxxxxxxxxxxxx"}, use_ssl = true)
      #c.test.post("/account/login",{},data ={username: "xxxxx@xxx.xxx",sina_token: "xxxxxxxxxx"}, use_ssl = true)
      def post(path, param = {}, data={}, use_ssl = false)
        u = uri(path, param, use_ssl)
        http = Net::HTTP.new(u.host, u.port)
        
        request = Net::HTTP::Post.new(u.request_uri, set_headers)

        request.set_form_data data

        if use_ssl
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE #not work
        end

        #response = Net::HTTP.post_form(uri(path, param), data) #can only return some string  
        response = http.request(request)
        
        begin
          response.header.value
          JSON.parse try_unpack_gzip(response.body) 
        rescue => e
          {error: e.message}
        end
        
      end
      
      private
      def try_unpack_gzip(body)
        #http://stackoverflow.com/questions/1361892/how-to-decompress-gzip-string-in-ruby
        #Zlib::GzipReader.new(StringIO.new(http.request(request).body)).read
        if body.present? and body.encoding.to_s.eql? "ASCII-8BIT"
          Zlib::GzipReader.new(StringIO.new(body)).read
        else
          body
        end
      end
    end
  end
end
