source .env

# Alias to run once-off commands inside a docker container
alias dr="docker run --rm --volume=\"$PWD:/srv/jekyll\" --interactive --tty jekyll/jekyll:$JEKYLL_VERSION"
# Examples:
# dr jekyll new nitsas.github.io`
# dr jekyll build

# Alias to (re)build the static site
alias drbuild="dr bundle exec jekyll build && cp -r _site/ docs/"

# Alias to serve the site locally
alias drserve="docker run --rm --volume=\"$PWD:/srv/jekyll\" --interactive --tty --publish=4000:4000 jekyll/jekyll:$JEKYLL_VERSION jekyll serve --watch --drafts"
# Alternatively just use `docker-compose up`
