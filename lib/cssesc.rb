require 'active_support/core_ext/hash/keys'
require 'active_support/core_ext/string/inflections'
require 'cssesc/source'
require 'execjs'

module CSSEsc
  source = File.read(CSSEsc::Source.bundled_path)
  @cssescjs = ExecJS.compile(source)

  def self.escape(value, options = {})
    options.transform_keys! { |key| key.to_s.camelize(:lower) }
    @cssescjs.call('cssesc', value, options)
  end
end
