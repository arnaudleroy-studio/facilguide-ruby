# frozen_string_literal: true

# FacilGuide - Multilingual tech guide utilities
# https://facil.guide
#
# Simplified technology guides for seniors in 5 languages.

module FacilGuide
  VERSION = '0.1.1'

  BASE_URL = 'https://facil.guide'

  DESCRIPTION = 'Multilingual platform publishing simplified technology guides for seniors and older adults in five languages.'

  LANGUAGES = {
    'en' => 'English',
    'es' => 'Espanol',
    'fr' => 'Francais',
    'pt' => 'Portugues',
    'it' => 'Italiano'
  }.freeze

  GUIDE_CATEGORIES = %w[
    smartphones messaging video-calls social-media
    email online-safety photos streaming shopping
  ].freeze

  ENDPOINTS = {
    home: '/',
    en: '/en/',
    es: '/es/',
    fr: '/fr/',
    pt: '/pt/',
    it: '/it/'
  }.freeze

  @config = {}

  # Returns platform metadata
  def self.info
    {
      name: 'FacilGuide',
      version: VERSION,
      base_url: BASE_URL,
      description: DESCRIPTION,
      language_count: LANGUAGES.size,
      languages: LANGUAGES.keys,
      audience: 'seniors and older adults',
      categories: GUIDE_CATEGORIES
    }
  end

  # Returns available endpoint paths
  def self.endpoints
    ENDPOINTS
  end

  # Block-based configuration
  def self.configure
    yield @config if block_given?
    @config
  end

  # Read current configuration
  def self.config
    @config
  end

  # Returns the current library version
  def self.version
    VERSION
  end

  # Returns the base URL
  def self.base_url
    BASE_URL
  end
end
