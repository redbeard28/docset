<h1>
  <span>redbeard-consulting_docs</span>
  <a href='https://readthedocs.org/projects/redbeard-consulting-docs/badge/?version=latest'>
    <img src='https://readthedocs.org/projects/redbeard-consulting-docs/badge/?version=latest' alt='Documentation Status' />
  </a>
</h1>

## Howto use
### Build
Depuis un terminal  lancez le **build** la commande suivante:
```bash
sudo docker build -t redbeard28:docs github.com/redbeard28/redbeard-consulting_docs
```

### Serve your project
```bash
sudo docker run --rm -v `pwd`:/docs -p 8000:8000 redbeard28:docs serve -a 0.0.0.0:8000
```

## mkdocs.yml
Prendre exemple sur [mkdocs.yml](https://github.com/redbeard28/redbeard-consulting_docs/blob/master/mkdocs.yml)

## Documentation mkdocs
You can find any informations on []mkdocs website](https://www.mkdocs.org/user-guide/writing-your-docs/)
