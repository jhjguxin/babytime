module BabyTime
  module Interface
    class Monitor < Base

      #获取严重错误
      #uid          true    int
      #token        true    int
      def private_get_errors(data = {}, params = {})
        get("/monitor/private_get_errors", data, params)
      end

    end
  end
end
