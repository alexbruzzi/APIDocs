# Octo Enterprise Knowledge Base #

This repository contains all the KB related stuff.

# Setup #

- Clone this repo
- Install MkDocs. [Installation Guide](http://www.mkdocs.org/#installation)
- Serve mkdocs `$ mkdocs serve`

# Building for offline usage #

In case you want to convert this into static files, do the following

```bash

./build.sh
```

This is a shorthand for

```bash

mkdocs build --clean
tar -cvf octoKBOffline.tar site/

```

It will create a `site/` and a tarball containing the static pages to be deployed.
