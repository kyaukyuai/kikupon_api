kikupon_api
===========

[![Build Status](https://travis-ci.org/kyaukyuai/kikupon_api.png?branch=master)](https://travis-ci.org/kyaukyuai/kikupon_api)

## access to

    http://localhost:3000/s/v1/get_rests?id=1234&lat=35.664035&lng=139.698212

## how to run on local

    git clone https://github.com/kikupon/kikupon_api.git  
    cd kikupon_api  
    bundle install --path vendor/bundle  
    bundle exec rails server  

## middleware dependencies

    mongo-server
    qt
    xquartz http://xquartz.macosforge.org/landing/

## exec test

    cd kikupon_api  
    bundle exec rake spec
