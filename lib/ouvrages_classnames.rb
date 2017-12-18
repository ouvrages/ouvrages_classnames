warn "[DEPRECATION] This gem has been renamed to klassnames and will no longer be supported. Please switch to klassnames as soon as possible."

require "ouvrages_classnames/version"

module OuvragesClassnames
  require 'ouvrages_classnames/railtie' if defined?(Rails)
end
