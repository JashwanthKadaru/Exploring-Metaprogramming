class AppConfig
  def initialize
    @settings = {}
  end

  def setting(name, value)
    @settings[name] = value
  end

  def self.configure(&block)
    config = self.new
    config.instance_eval(&block)
    config
  end

  def get_setting(name)
    @settings[name]
  end
end

config = AppConfig.configure do
  setting :database_url, 'postgres://localhost:5432/rubyactiverecorddb'
  setting :api_key, 'abc123'
  setting :debug_mode, true
end

puts config.get_setting(:database_url)   # Output: "postgres://localhost:5432/rubyactiverecorddb"
puts config.get_setting(:api_key)        # Output: "abc123"
puts config.get_setting(:debug_mode)     # Output: true