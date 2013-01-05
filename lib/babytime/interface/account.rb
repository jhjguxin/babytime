# encoding: utf-8
module BabyTime
  module Interface
    class Account < Base
      #各协议新消息条数（可频繁轮询）
      def msg_count
      end
      
      #为【宝宝】增加【登陆账户】，从sina拉的候选人列表
      def candidate_list
      end
    
      #username 邮箱 或 手机号 或 sina微博uid(sina_xxxxxx)
      # sina_+id，facebook注册用户标识是fb_+id
      #login(data = {username: "sina_xxxxxxxx",sina_token: "xxxxxxxxxxx"},params = {})
      #username & md5(passwd) => {uid, token}
      def login(data = {},params = {})
        post("/account/login",params = {},data, use_ssl = true)
      end
      
      #退出登录
      #uid true int64 Login时获得
      #token true string Login时获得
      #end_session(data = {uid: "xxxxxxx",token: "xxxxxxxxxxxx"},params = {})
      def end_session(data = {},params = {})
        post("/account/end_session",params = {},data, use_ssl = true)
      end
      
      
 
      #             必选  类型及范围  说明 
      # username    true  string      邮箱 或 手机号 或 sina微博uid(sina_xxxxxx)
      # passwd      false string      密码
      # sina_token  false string      用sina微博登陆：提供token作验证
      # fb_token    false string      用Facebook登陆：提供token作验证
      # baby_name   true  string      宝宝名字
      # baby_birth  true  int         宝宝生日(时间戳)
      # baby_gender false int         性别，0: girl, 1: boy
      # pic         false binary      用户头像，仅支持JPEG、GIF、PNG格式，图片大小小于5M。
      #注册【宝宝】
      def register(data = {},params = {})
        post("/account/end_session",params = {},data, use_ssl = true)
      end
      
      #更新登陆机器信息（Apple push notification token）
      def update_session
      end
      
      #为【宝宝】增加【登陆账户】（设置宝宝的爸爸或妈妈）
      def add_account
      end
      
      #删除【登录账户】（必须是尚未接受的）
      def del_account
      end
      
      #接受共同管理某个【宝宝】的【登陆账户】
      def confirm_account
      end
    end
  end
end
