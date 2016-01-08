# Opal.rb Demo App
This is a quick working example of what's possible using [Opal.rb](http://opalrb.com/) to compile Ruby code into Javascript.
A lot of the scaffolding of this app comes from [this guide](http://opalrb.com/docs/guides/master/static_applications.html).

## The ruby app
Inside `app/cards.rb` is an idiomatic Ruby model of a deck of playing cards, complete with methods to deal, shuffle, compare cards, etc. This example uses some ruby core modules like `Comparable` and `Enumerable` for fully native behavior. If you load this code in a Ruby REPL you can instantiate a `PlayingCard::Deck`, `deal` any number of cards (which are then removed from the deck), etc.

## Compile to JS
1. Clone the Repo
2. run `bundle install` and `rake build`
3. Open `index.html` in your browser. You should see a `<ul>` of randomly dealt playing cards if you have JS enabled. See the `application.rb` file for implementation.

