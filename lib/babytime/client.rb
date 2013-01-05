require 'babytime/interface/base'
require 'babytime/interface/account'
require 'babytime/interface/test'

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
      self.site = "t0.117show.com/"
      #self.port = "80"
      @test_instance_variable = "I'm a instance variable"
      @@test_class_variable = "I'm a class instance variable"
    end
    
    def account
      @account ||= BabyTime::Interface::Account.new(self)
    end
    
    def test
      @test ||= BabyTime::Interface::Test.new(self)
    end
  end
end
