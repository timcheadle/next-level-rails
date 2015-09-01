# Next Level Rails

This is the reference app for the Next Level Rails class I teach. It's intended to give students an example of how a small, production-ready Rails app might be implemented.

## Development Environment Setup

There is some software we will need to install to make sure we can run
this Rails app. These reflect how you may see a real production app in
the real world, so there's a bit more to do than your standard Rails
install.

### Mac

1. Install [Homebrew](http://brew.sh/)

    ```
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

1. Install / Upgrade Ruby

    ```
    $ brew install rbenv ruby-build

    # Or, if rbenv is already installed...
    $ brew upgrade rbenv ruby-build

    $ rbenv install 2.2.3
    $ rbenv global 2.2.3
    ```

1. Check your Ruby version; it should be `2.2.3`

    ```
    $ ruby -v
    ```

1. Add rbenv to bash so that it loads every time you open a terminal

    ```
    $ echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

    $ source ~/.bash_profile
    ```

1. Install PostgreSQL (which we use as a database)

    ```
    $ brew install postgresql
    ```

1. Set up PostgreSQL to launch automatically on login

    ```
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
    ```

### Windows

1. Install Ruby and Rails using this guide:

    http://docs.railsbridge.org/installfest/windows

1. Install PostgreSQL using this guide:

    https://www.youtube.com/watch?v=-f9lke78g2U

    Note: This may be tricky, your mileage may vary. Sorry Windows users =(

## Resources

- [Rails Guides](http://guides.rubyonrails.org/index.html)
- [Thoughtbot Trail Map: Ruby](https://github.com/thoughtbot/trail-map/blob/master/ruby.md)
- [Thoughtbot Trail Map: Rails](https://github.com/thoughtbot/trail-map/blob/master/rails.md)
- [Michael Hartl's Ruby on Rails tutorial](https://www.railstutorial.org/book)
- [RailsCasts](http://railscasts.com/)

### Articles

- [How DNS Works (a web comic)](https://howdns.works/)
- [A Web Server vs. An App Server](http://www.justinweiss.com/blog/2015/07/15/a-web-server-vs-an-app-server/)
