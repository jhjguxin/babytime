module BabyTime
  class Client
    attr_accessor :token, :site, :port
    
    # Initializes a new Client
    #
    # @param [Hash] opts the options to create the client with
    # @option opts [Hash] :connection_opts ({}) Hash of connection options to pass to initialize Faraday with
    # @option opts [FixNum] :max_redirects (5) maximum number of redirects to follow
    # @yield [builder] The Faraday connection builder
    def initialize(options={})
      #self.use_ssl = false
      # must end with '/'
      #self.site = "b0.117show.com/" # for production env
      #self.site = "t0.117show.com/"
      #self.port = "80"
      self.site = BabyTime::Config.site
      @test_instance_variable = "I'm a instance variable"
      @@test_class_variable = "I'm a class instance variable"
    end
    
    def account
      @account ||= BabyTime::Interface::Account.new(self)
    end

    def user
      @user ||= BabyTime::Interface::User.new(self)
    end

    def content
      @content ||= BabyTime::Interface::Content.new(self)
    end
    
    def comment
      @comment ||= BabyTime::Interface::Comment.new(self)
    end
    
    def favorite
      @favorite ||= BabyTime::Interface::Favorite.new(self)
    end
    
    def friendship
      @friendship ||= BabyTime::Interface::Friendship.new(self)
    end
    
    def suggestion
      @suggestion ||= BabyTime::Interface::Suggestion.new(self)
    end
    
    def search
      @search ||= BabyTime::Interface::Search.new(self)
    end

    def tips
      @tips ||= BabyTime::Interface::Tips.new(self)
    end
    
    def statistics
      @statistics ||= BabyTime::Interface::Statistics.new(self)
    end
    
    def knowledge
      @knowledge ||= BabyTime::Interface::Knowledge.new(self)
    end
    
    def monitor
      @monitor ||= BabyTime::Interface::Monitor.new(self)
    end
    
    def test
      @test ||= BabyTime::Interface::Test.new(self)
    end
  end
end
