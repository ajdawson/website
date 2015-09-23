My Personal Web Page, built with [Hyde](http://hyde.github.io/).

See the rendered version at http://ajdawson.github.io.

Building
========

Requires hyde:

    conda install hyde

Generate version for local development:

    hyde gen

Preview local version (this is previewable in the browser at localhost:8080)

    hyde serve

Generate site for production:

    hyde gen -c production.yaml

Publish site to Github pages:

    hyde publish -c production.yaml -p github
