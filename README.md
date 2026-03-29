# FacilGuide

[![Gem Version](https://badge.fury.io/rb/facilguide.svg)](https://rubygems.org/gems/facilguide)

Utilities for building multilingual content with FacilGuide. The platform publishes simplified technology guides designed for older adults who are learning to use smartphones, apps, and online services for the first time. All content is available in five languages: English, Spanish, French, Portuguese, and Italian.

## Installation

```
gem install facilguide
```

Or add to your Gemfile:

```ruby
gem 'facilguide'
```

## Getting Started

### Language Support

FacilGuide's content is built around a five-language matrix. The gem exposes language codes and their native labels for use in your own multilingual tooling:

```ruby
require 'facilguide'

FacilGuide::LANGUAGES.each do |code, label|
  puts "#{code} - #{label}"
end
# en - English
# es - Espanol
# fr - Francais
# pt - Portugues
# it - Italiano
```

### Building Localized Paths

```ruby
# Generate a URL for a specific language edition
lang = "es"
path = "#{FacilGuide::BASE_URL}/#{lang}/"
puts path  # => "https://facil.guide/es/"

# Iterate all language roots
FacilGuide::LANGUAGES.keys.map { |code|
  "#{FacilGuide::BASE_URL}/#{code}/"
}
```

### Guide Categories

The platform organizes content into categories that reflect common tasks seniors encounter:

```ruby
FacilGuide::GUIDE_CATEGORIES.each { |cat| puts cat }
# smartphones, messaging, video-calls, social-media,
# email, online-safety, photos, streaming, shopping
```

### Platform Info

```ruby
info = FacilGuide.info
puts info[:name]            # => "FacilGuide"
puts info[:language_count]  # => 5
puts info[:audience]        # => "seniors and older adults"
```

## Content Approach

Guides follow a consistent format: large text, numbered steps with screenshots, and plain vocabulary. Each guide avoids jargon -- "tap the green phone icon" instead of "initiate a VoIP session." The goal is zero assumed knowledge. Topics range from setting up WhatsApp to recognizing phishing emails, structured so that each guide can be completed in under ten minutes.

## Links

- [FacilGuide](https://facil.guide) -- simplified tech guides in 5 languages
- [English Guides](https://facil.guide/en/) -- browse the English edition
- [Source Code](https://github.com/arnaudleroy-studio/facilguide-ruby)

## License

MIT
