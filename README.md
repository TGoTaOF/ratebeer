# README

RUBY-ON-RAILS WEBPALVELINOHJELMOITI 2018

https://dashboard.heroku.com/apps/quiet-refuge-41570

[![Build Status](https://travis-ci.org/TGoTaOF/ratebeer.svg?branch=master)](https://travis-ci.org/TGoTaOF/ratebeer)
[![Maintainability](https://api.codeclimate.com/v1/badges/438edd310f3dfd36e71d/maintainability)](https://codeclimate.com/github/TGoTaOF/ratebeer/maintainability)

Herokussa sellainen ongelma että beers sivu aiheuttaa virheen. Tämä johtuu login mukaan siitä että luokka style on nil jolloin sillä ei voi olla muuttujaa "name". Kuiva testasin tätä omalla koneella railsin serverillä, mutta ongelmaa ei ilmennyt paikallisesti testatessa. Syy on sii täysin herokun databasessa, mutta en sitä saanut muun muassa migrateilla korjattua. uudelleen deploominen ei ole auttanut asiaan.  