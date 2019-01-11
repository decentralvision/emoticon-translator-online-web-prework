# require modules here
require "yaml"
def load_library(file_path)
  dict = {'get_meaning' => {}, 'get_emoticon' => {}}
  yaml = YAML.load_file(file_path)
  yaml.each do |key, hash|
    dict['get_meaning'][hash[1]] = key
    dict['get_emoticon'][hash[0]] = hash[1]
  end
  dict
end

def get_japanese_emoticon(yaml_file, emoticon)
   if load_library(yaml_file)['get_emoticon'][emoticon] == nil
     puts 'Sorry, that emoticon was not found'
end

def get_english_meaning(yaml_file, emoticon)
  load_library(yaml_file)['meaning'][emoticon]
end
