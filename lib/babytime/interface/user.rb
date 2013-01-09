# encoding: utf-8
module BabyTime
  module Interface
    class User < Base
    
      #获取用户信息
      #uid          true   int
      #token        true    int
      #target_uid   false        要获取用户的uid
      def show(data = {}, params = {})
        get("/user/show",params, data)
      end
      
      #更改用户信息
      #HTTPS(modify new_passwd), HTTP(modify other things), POST
      def modify(data = {}, params = {})
        if data.has_key? :old_passwd or data.has_key? "old_passwd"
          post("/user/modify",params, data, use_ssl = true)
        else
          post("/user/modify",params, data, use_ssl = false)
        end
      end
    end
  end
end
