mkdocs build --clean && cp -rv docs/dist/ site/dist && cp -v docs/dist/octo.json site/octo.json
tar -cvf octoKBOffline.tar site/
