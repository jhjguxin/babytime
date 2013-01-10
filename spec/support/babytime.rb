# encoding: utf-8
#bellow code to initialize the BabyTime
BabyTimeConfig = YAML.load_file("./spec/support/babytime.yml")["test"].symbolize_keys
BabyTime::Config.site = BabyTimeConfig[:site]
