# require modules here
require 'yaml'
def load_library(path)
  # code goes here
  emoticons = YAML.load(File.read("#{path}"))
  better_emoticons = {}
  emoticons.each {|key, values|
    better_emoticons[key] = {}
    better_emoticons[key][:english] = values[0]
    better_emoticons[key][:japanese] = values[1]
  }
  better_emoticons
end

def get_japanese_emoticon(path, meaning)
  # code goes here
  emoticons = load_library(path)


end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticons = load_library(path)
  emoticons.each {|key, values|
    if values[:japanese] = emoticon
      return key
    end
  }
end
