[![Gem Version][badge-img]][badge-link]

[badge-img]: https://badge.fury.io/rb/jekyll-commonmark-pluggable.svg
[badge-link]: https://badge.fury.io/rb/jekyll-commonmark-pluggable

# jekyll-commonmark-pluggable

jekyll-commonmark-pluggable adds support for plugins to CommonMarker.

The `cmark` reference parser used by CommonMarker supports extensions to the
CommonMark specification but these are written in C. The
jekyll-commonmark-pluggable plugin allows users to extend CommonMarker's parsing
capabilities with plugins written in Ruby.

## Installation

The jekyll-commonmark-pluggable plugin requires the jekyll-commonmark plugin to
be installed and configured ([instructions here][jk-cm]). The only additional
step is to add jekyll-commonmark-pluggable to your `Gemfile` like so:

[jk-cm]: https://github.com/jekyll/jekyll-commonmark

```ruby
group :jekyll_plugins do
  gem 'jekyll-commonmark'
  gem 'jekyll-commonmark-pluggable'
end
```

## Writing Plugins

Once jekyll-commonmark-pluggable is installed, you can add Jekyll plugins that
manipulate the Markdown document parsed by `cmark`.

A Jekyll plugin must implement the `self.call()` module method. This method
takes one argument: `doc`. This is a `CommonMarker::Node` object representing
the top-most node of a parsed Markdown document.

An example plugin is set out below:

```ruby
module CommonMarker
  module Plugin
    module Example
      def self.call(doc)
        doc.walk do |node|
          node.delete if node.string_content == 'To be deleted'
        end
      end
    end
  end
end
```

This plugin would be installed in Jekyll's plugins directory (default:
 `_plugins`).

## Bugs

Found a bug? I'd love to know about it. The best way is to report them in the
[Issues section][gh-i] on GitHub.

[gh-i]: https://github.com/pyrmont/jekyll-commonmark-pluggable/issues

## Contributing

If you're interested in contributing to jekyll-commonmark-pluggable, feel free
to fork and submit a pull request.

## Versioning

The jekyll-commonmark-pluggable plugin uses [Semantic Versioning 2.0.0][sv2].

[sv2]: http://semver.org/

## Licence

The jekyll-commonmark-pluggable plugin is released into the public domain. See
[LICENSE.md][lc] for more details.

[lc]: https://github.com/pyrmont/jekyll-commonmark-pluggable/blob/master/LICENSE.md