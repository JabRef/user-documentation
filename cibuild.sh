#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
#HTMLproofer is disabled until https://github.com/JabRef/www.jabref.org/issues/17 is resolved
#bundle exec htmlproof ./_site
