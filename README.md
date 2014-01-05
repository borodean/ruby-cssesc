Ruby cssesc
===========

A Ruby wrapper for [cssesc][1], a JavaScript library for [escaping text for
use in CSS strings or identifiers][2].


Installation
------------

```bash
gem install cssesc
```

API
-----

### `CSSEsc.escape(value, options = {})`

This function takes a value and returns an escaped version of the value where
any characters that are not printable ASCII symbols are escaped using the
shortest possible (but valid) [escape sequences for use in CSS strings or
identifiers][2].

```ruby
CSSEsc.escape('Ich ♥ Bücher')
# => 'Ich \\2665  B\\FC cher'
```

By default, `CSSEsc.escape` returns a string that can be used as part of a CSS
string. If the target is a CSS identifier rather than a CSS string, use the
`is_identifier: true` setting.

The optional `options` arguments accepts a `Hash` with the exact [options
which JavaScript version cssesc uses][3] only converted to the `snake_case`:

```ruby
CSSEsc.espace('123a2b', {
  escape_everything: true
})
```

Dependencies
------------

This library depends on the `cssesc-source` gem which is updated any time a
new version of cssesc is released. (The `cssesc-source` gem's version number
is synced with each official cssesc release.)

### ExecJS

The [ExecJS][4] library is used to automatically choose the best JavaScript
engine for your platform. Check out its [README][5] for a complete list of
supported engines.

[1]: http://github.com/mathiasbynens/cssesc
[2]: http://mathiasbynens.be/notes/css-escapes
[3]: http://github.com/mathiasbynens/cssesc#api
[4]: http://github.com/sstephenson/execjs
[5]: http://github.com/sstephenson/execjs/blob/master/README.md
