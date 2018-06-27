# HUGO Website Engine in Docker

**Dockerized version of the HUGO (gohugo.io) based on alpine linux**

*This was cloned from [github.com/giantswarm/hugo-docker](https://github.com/giantswarm/hugo-docker).*

More about Hugo: http://www.gohugo.io/

## Running

### Help

    docker run --rm -ti philipbalinov/hugo-docker help

### Run hugo in development mode (create a new site in the current dir)

    `docker run --rm -ti -v $(pwd):/site -w /site philipbalinov/hugo-docker new site .`

### Run hugo in development mode

    `docker run --rm -ti -v $(pwd):/site -w /site -p 1313:1313 philipbalinov/hugo-docker server --bind=0.0.0.0 -w`
    # hugo will be accessible on localhost:1313 in your browser
