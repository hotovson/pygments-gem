## Pygments

>Pygments is a generic syntax highlighter for general use in all kinds of software such as forum systems, wikis or other applications that need to prettify source code.

* [Home Page][Pygments]
* [Source Code][pygments_src]

Pygments is the defacto-standard syntax highlighter, supporting a large range of languages, including the newer and lesser known, like CoffeeScript and Factor. Pygments is written in [Python][], this gem provides a wrapper written in [Ruby][].

### Alternatives

* [Albino][] is a wrapper around the `pygmentize` command-line, open sourced by GitHub.
* [CodeRay][] is a Ruby native syntax highlighter. It's fast but supports few languages. ([GitHub mirror][coderay_mirror])
* [SyntaxHighlighter][] is a syntax highlighter written in JavaScript, capable of running both on the client and server.
* [GeSHi][] is a syntax highlighter for PHP.

## Proof of Concept

The Pygments gem is a *proof of concept* presently based on [Albino][]. It bundles in the Python code for Pygments, allowing it to run on Ruby host [Heroku][], as well as making installation more *Rubyish.*

This is only the beginning. See the Issues and the Wiki for our future plans.

Note: The purpose of this gem is to provide a Ruby interface to Pygments. If you are looking for a command line interface (CLI), it is suggested that you install [Pygments][] in the usual way and use `pygmentize`. (this may change)


[Pygments]: http://pygments.org/
[pygments_src]: http://bitbucket.org/birkenfeld/pygments-main/src
[Python]: http://python.org
[Ruby]: http://www.ruby-lang.org/en/
[Albino]: https://github.com/github/albino
[CodeRay]: http://coderay.rubychan.de/
[coderay_mirror]: https://github.com/rubychan/coderay
[SyntaxHighlighter]: http://alexgorbatchev.com/SyntaxHighlighter/
[GeSHi]: http://qbnz.com/highlighter/
[Heroku]: http://heroku.com