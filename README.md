# jekyll-commonmark-pluggable

The jekyll-commonmark-pluggable extension adds support for plugins to
jekyll-commonmark.

## Installation

Add the following to your `Gemfile`:

```ruby
group :jekyll_plugins do
  gem 'jekyll-commonmark-pluggable'
end
```

and modify your `_config.yml` to use CommonMark as your Markdown converter:

```yaml
markdown: CommonMark
```

## Configuration

To specify [extensions](https://github.com/gjtorikian/commonmarker#extensions)
and [options](https://github.com/gjtorikian/commonmarker#options) for use in
converting Markdown to HTML, supply options to the Markdown converter:

```yaml
commonmark:
  options: ["SMART", "FOOTNOTES"]
  extensions: ["strikethrough", "autolink", "table"]
```

## Bugs

Found a bug? I'd love to know about it. The best way is to report them in the
[Issues section][ghi] on GitHub.

[ghi]: https://github.com/pyrmont/jekyll-commonmark-pluggable/issues

## Contributing

If you're interested in contributing to jekyll-commonmark-pluggable, feel free
to fork and submit a pull request.

## Versioning

Taipo uses [Semantic Versioning 2.0.0][sv2].

[sv2]: http://semver.org/

## Licence

Taipo is released into the public domain. See [LICENSE.md][lc] for more details.

[lc]: https://github.com/pyrmont/taipo/blob/master/LICENSE.md
