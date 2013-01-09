# encoding: utf-8
module BabyTime
  module Interface
    class Comment < Base
    
      #发表评论
      #uid        true   int64    Login时获得
      #token      true   string   Login时获得
      #fid        true   int64    附加评论的feed的id
      #cid        true   string   客户端产生的128位唯一id
      #content    true   string   要发布的评论文本内容，必须做URLencode，内容不超过140个汉字。
      #created_at true   int      创建日期（时间戳）
      def create(data = {}, params = {})
        post("/comment/create", params, data)
      end
      
      #删除一条评论
      #uid        true   int64    Login时获得
      #token      true   string   Login时获得
      #cid        true   string   客户端产生的128位唯一id
      def destroy(data = {}, params = {})
        post("/comment/destroy", params, data)
      end
    end
  end
end
