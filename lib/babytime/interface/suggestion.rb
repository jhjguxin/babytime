# encoding: utf-8
module BabyTime
  module Interface
    class Suggestion < Base
      
      #获取可能感兴趣的用户列表
      #uid          true    int
      #token        true    int
      #count        true    int
      #page         false   int     第几页(从0起)
      def users(data = {}, params = {})
        get("/suggestion/users", data, params)
      end
    end
  end
end
