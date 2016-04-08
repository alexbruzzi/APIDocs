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

mkdocs build --clean && cp -rv docs/dist/ site/dist
tar -cvf octoKBOffline.tar site/

```


# Troubleshooting #

## can't start server. ERROR - Error building page /dist/index.html ##

Open `mkdocs.yml` and change the line that reads 

**FROM**

```yaml
    - 'Swagger' : '/dist/index.html'
```

**TO**

```yaml
    - 'Swagger' : 'dist/index.html'
```

## Can't open http://127.0.0.1:8000/dist/index.html ##

Open `mkdocs.yml` and change the line that reads 

**FROM**

```yaml
    - 'Swagger' : 'dist/index.html'
```

**TO**

```yaml
    - 'Swagger' : '/dist/index.html'
```
