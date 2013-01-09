module BabyTime
  module Interface
    class Knowledge < Base
      
      #获取针对某个宝宝的知识
      #uid          true    int
      #token        true    int
      #src          false   string  需要的数据源，取值范围：‘user’：给我看的知识(默认), ‘all’：列出所有(需要权限)
      def user_knowledge(data = {}, params = {})
        get("/knowledge/user_knowledge", data, params)
      end

    end
  end
end
