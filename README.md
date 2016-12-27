# Smallest Ruby Image for Docker

A Ruby image with most common build dependencies installed to compile native GEMs. It is only 329.7 MB  and is optimized for minimum overhead, while including all required dependencies for common GEMs like nokogiri, curb or mysql2. The base image is a minimal Ubuntu 14.04 which makes it easy and flexible to install more exotic Ruby apps.

```
ruby:2.3 | 285.1 MB
```

#### Image Name

````
firedev/ruby:2.3
````

#### Quick Usage

````
$ docker run -it firedev/ruby:2.3 ruby -e 'puts RUBY_VERSION'
2.3.3
````

## Image Size

This image is only **285.1 MB** and contains most common build dependencies.
Additionally, the image is based on a normal Ubuntu 14.04 base image and
therefore most of your applications should install without problems.

We have looked at more exotic Linux distributions with even smaller base
images. But when installing common dependencies required for Ruby GEMs, these
images result in similar sizes, sometimes even larger. And having an Ubuntu
based image makes life often easier as documentation and common knowledge is
far better.

### Comparison to Similar Images

Similar images are more than double the size of this image. We have researched
popular Ruby images for Docker:

````
Semi-official Ruby image
ruby:2.2.0                  774.7 MB

Without build dependencies (native GEMs can't be compiled)
ruby:2.2.0-slim             299.3 MB

Atlas Health (only minimal build dependencies, libcurl & libxml)
atlashealth/ruby            347.2 MB
````

The semi-official Ruby-slim image is only 30 MB smaller but has no build
dependencies included at all and hence all GEMs with native extension will fail
to install. In contrast the minimal CloudGear Ruby image is only **222.7 MB**.

## What's Included in the Image?

The image comes in multiple variations and versions. For detailed information
check the corresponding Dockerfiles in the [Github repository](https://github.com/firedev/ruby).

The image includes the specified Ruby version, the latest Rubygems and Bundler
packages and common build dependencies. It is based on the
`cloudgear/build-deps` image, [check it
out](https://github.com/cloudgear-images/build-deps) for more details.

**Image name:** only version tags without any suffix, e.g. `firedev/ruby:2.3`

#### Tested GEMs

Most common GEMs with native extensions install fine, we have tested following GEMs:

* sqlite
* mysql2
* postgres (pg)
* nokogiri
* oj (json using native extension)
* curb
* unicorn
* puma

Please help us to test and support other GEMs with native extensions and report
your problems as [Github
issues](https://github.com/cloudgear-images/ruby/issues). Thanks.

## Usage

**Run IRB**

````
$ docker run -it firedev/ruby:2.3 irb
````

**Run a single Ruby command**

````
$ docker run firedev/ruby:2.3 ruby -e 'puts "A simple Ruby demo"'
A simple Ruby demo
````

**Dockerfile**

To build a custom image with some GEMs installed, create a Dockerfile:

````
FROM cloudgear/ruby:2.3

RUN gem install haml

ENTRYPOINT ["haml"]
````

## Supported Tags

The image comes with the latest Ruby versions 2.3

All variations and versions

* `firedev/ruby:2.3`

## Contributing

We welcome contributions like new features, fixes, version bumps and other optimizations. Please create a pull request or in case of problems or questions file a [Github issue](https://github.com/cloudgear-images/ruby).

The image is configured as a Docker Automated Build and gets built and pushed to the Docker registry for every push.

## License

MIT License. Copyright 2015 CloudGear

![CloudGear Container Platform](https://www.cloudgear.net/img/logo-white.png)

A product by [CloudGear](https://www.cloudgear.net).
