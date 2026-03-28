# frozen_string_literal: true

# Facil Guide - Multilingual tech guides for seniors
# https://facil.guide

module FacilGuide
  VERSION = '0.1.0'

  BASE_URL = 'https://facil.guide'

  LANGUAGES = %w[en es fr pt it].freeze

  def self.version
    VERSION
  end

  def self.base_url
    BASE_URL
  end
end
