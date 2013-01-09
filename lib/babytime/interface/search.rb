# encoding: utf-8
module BabyTime
  module Interface
    class Search < Base
      
      #在全部微博中做全文搜索(微博内容以及评论)
      #uid          true    int
      #token        true    int
      #keywords     true    string
      def feeds(data = {}, params = {})
        get("/search/feeds", data, params)
      end
      
      #搜索用户
      #uid          true    int
      #token        true    int
      #keywords     true    string
      def users(data = {}, params = {})
        get("/search/feeds", data, params)
      end
    end
  end
end
