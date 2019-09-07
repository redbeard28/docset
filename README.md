<h1>
  <span>My personnal Docset(s)</span>
</h1>

## Howto use
### Build
Depuis un terminal  lancez le **build** la commande suivante:
```bash
sudo docker build -t redbeard28:docs github.com/redbeard28/docset
```

### Serve your project
```bash
sudo docker run --rm -v `pwd`:/docs -p 8000:8000 redbeard28:docs serve -a 0.0.0.0:8000
```

## mkdocs.yml
Prendre exemple sur [mkdocs.yml](https://github.com/redbeard28/docset/blob/master/mkdocs.yml)

## Create docset from mkdocs html results
```bash
python html2dash.py -n redbeard28  -d release docs -i icon.png
```

## Documentation mkdocs
You can find any informations on []mkdocs website](https://www.mkdocs.org/user-guide/writing-your-docs/)
