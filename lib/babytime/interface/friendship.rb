# encoding: utf-8
module BabyTime
  module Interface
    class Friendship < Base
    
      #获取好友列表
      #uid           true   int64    Login时获得
      #token         true   string   Login时获得
      def friends(data = {}, params = {})
        get("/friendship/friends", data, params)
      end
      
      #添加好友
      #uid           true   int64    Login时获得
      #token         true   string   Login时获得
      #target_uid    true   int64    好友uid
      #ps	           false  string   附言
      def require(data = {}, params = {})
        post("/friendship/require" ,data, params)
      end

      #删除好友
      #uid           true   int64    Login时获得
      #token         true   string   Login时获得
      #target_uid    true   int64    好友uid
      def destroy(data = {}, params = {})
        post("/friendship/destroy", data, params)
      end
    end
  end
end
