# require modules here
require "yaml"
require 'pry'

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
  emoticon = load_library(yaml_file)["get_emoticon"][emoticon]
  apology = 'Sorry, that emoticon was not found'
  if emoticon == nil
   apology
  else
   emoticon
  end
end

def get_english_meaning(yaml_file, emoticon)
  binding.pry
  meaning = load_library(yaml_file)["get_meaning"][emoticon]
  apology = 'Sorry, that emoticon was not found'
  if meaning == nil
    apology
  else
    meaning
  end
end
