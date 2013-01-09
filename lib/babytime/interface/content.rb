# encoding: utf-8
module BabyTime
  module Interface
    class Content < Base
    
      #获取某个宝宝的时间流
      #uid          true   int
      #token        true    int
      #target_uid   false        要获取用户的uid
      #count        true   int
      #start_time   false   int
      def user_time_line(data = {}, params = {})
        get("/content/user_time_line", params, data)
      end
      
      #获取朋友圈时间流
      #uid true int
      #token true int
      #src false friend(default) public
      #count true int
      #start_time false int
      #若src为‘public’：不需要登陆；其他情况：需要登陆
      def mixed_time_line(data = {}, params = {})
        get("/content/mixed_time_line", params, data)
      end
      
      #获取条目详细信息
      #uid      true     int64   Login时获得
      #token    true     string  Login时获得
      #ids      true     string  要获取的feed id，逗号隔开多个
      def get_feeds_content(data = {}, params = {})
        post("/content/get_feeds_content", params, data)
      end
      
      #检查图片是否上传过
      #uid     true    int64   Login时获得
      #token   true    string  Login时获得
      #hashes  true    string  要查询的picture hash，逗号隔开多个
      #qucik_hash
      #三段MD5（小于100*1024字节则为全文MD5；否则：“前10*1024字节”拼上“中间10*1024字节”拼上“末尾10*1024字节”，中间的定义是：(int)(len/2)）
      def check_pics_exist(data = {}, params = {})
        post("/content/check_pics_exist", params, data)
      end
      
      #获取某天用于导入照片的Feed ID
      #uid     true    int64   Login时获得
      #token   true    string  Login时获得
      #dates   true    string  要查询的日期时间戳，逗号隔开多个
      def check_import_feeds(data = {}, params = {})
        post("/content/check_import_feeds", params, data)
      end
      
      #发微博（图片、文字）
      def upload(data = {},params = {})
        post("/content/upload", params, data)
      end
      
      #删除一条微博
      def destroy(data = {},params = {})
        post("/content/destroy", params, data)
      end
    end
  end
end
