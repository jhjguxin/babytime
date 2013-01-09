module BabyTime
  module Interface
    class Tips < Base

      #获取提示
      #uid          true    int
      #token        true    int
      def get_tips(data = {}, params = {})
        get("/tips/get_tips", data, params)
      end

      #标记已读、删除一条提示
      #uid          true    int
      #token        true    int 
      #tid          false    要改变状态的tid，不填则改变该用户所有tips的状态
      #state        true    int       0, //未读    1, //已读    2, //已删除
      def change_state(data = {}, params = {})
        post("/tips/get_tips", data, params)
      end
    end
  end
end
