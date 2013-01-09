module BabyTime
  module Interface
    class Statistics < Base
      
      #获取某个宝宝的统计信息
      #uid          true    int
      #token        true    int
      #target_uid   false   int    要获取用户的uid
      def user_stat(data = {}, params = {})
        get("/statistics/user_stat", data, params)
      end


      #运营的“精彩成长”
      #uid          true    int
      #token        true    int 
      #src          false   需要的数据源，取值范围：‘excellent’：精彩成长(默认), ‘all’：列出所有(需要权限)
      #count        true    int    拉取count条feed
      #start_time        true    int      从start_time及更早拉取，不填则返回最新的count条，排序按：created_at
      def mixed_stat(data = {}, params = {})
        get("/statistics/mixed_stat", data, params)
      end
      
      #立即检查并生成（一般用于导入照片后触发统计生成）
      #uid          true    int
      #token        true    int 
      def generate_now(data = {}, params = {})
        post("/statistics/generate_now", data, param)
      end
      
      #上传身高体重
      #uid          true    int
      #token        true    int 
      #weight       false   float  体重
      #height       false   float  身高
      #created_at   true    int    创建日期（时间戳）
      def upload_weigheight(data = {}, params = {})
        post("/statistics/upload_weigheight", data, params)
      end
    end
  end
end
