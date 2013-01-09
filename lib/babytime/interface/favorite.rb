# encoding: utf-8
module BabyTime
  module Interface
    class Favorite < Base
    
      #加星标 或 改星标类型
      #uid           true   int64    Login时获得
      #token         true   string   Login时获得
      #fid           true   int64    附加评论的feed的id
      #favorite_type true   string   星标类型
      #FavoriteType_t: “like” “smile” “cry”
      def update(data = {}, params = {})
        post("/favorite/update", params, data)
      end
      
      #删除一条星标
      #uid           true   int64    Login时获得
      #token         true   string   Login时获得
      #fid           true   int64    附加评论的feed的id
      def destroy(data = {}, params = {})
        post("/favorite/destroy", params, data)
      end
    end
  end
end
