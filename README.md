# Welcome to the Herb-AI website repo

Welcome to the website of Herb-AI.

## How to use:

### Local setup using Docker (Recommended)
Using Docker to install Jekyll and Ruby dependencies is the easiest way.

You need to take the following steps to get the website up and running on your local machine:

- First, install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/).
- Finally, run the following command that will pull the latest pre-built image from DockerHub and will run your website.

```bash
$ docker-compose up
```

### Making changes

Simply push your changes to main branch, which will be automatically deployed to the `github-pages` branch.
All pages can be found under `_pages`.
To add a post, add your post under `_posts` by copying and editing the existing posts. 
To add news, add a new file to `_news`.



## Template

This website uses the [al-folio](https://github.com/alshedivat/al-folio) theme: a simple, clean, and responsive [Jekyll](https://jekyllrb.com/) theme for academics. If you like the theme, give it a star!

### License

The theme is available as open source under the terms of the [MIT License](https://github.com/alshedivat/al-folio/blob/master/LICENSE).

Originally, **al-folio** was based on the [\*folio theme](https://github.com/bogoli/-folio) (published by [Lia Bogoev](https://liabogoev.com) and under the MIT license).
Since then, it got a full re-write of the styles and many additional cool features.
