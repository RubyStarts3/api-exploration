# frozen_string_literal: true
require 'simplecov'
SimpleCov.start

require 'yaml'
require 'minitest/autorun'
require 'minitest/rg'
require 'vcr'
require 'webmock'
require './lib/comment_threads.rb'
require './lib/display_text.rb'
require './lib/youtube_api.rb'

FIXTURES_FOLDER = 'spec/fixtures'
CASSETTES_FOLDER = "#{FIXTURES_FOLDER}/cassettes"
CASSETTE_FILE = 'youtube_api'
CREDENTIALS = YAML.load(File.read('config/credentials.yml'))
# RESULT_FILE = "#{FIXTURES_FOLDER}/youtube_api_results.yml"
# YT_RESULT = YAML.load(File.read(RESULT_FILE))
