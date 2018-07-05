# slides
My slides  

## Setup
### Install backslide
- [backslide](https://github.com/sinedied/backslide): CLI tool for making HTML presentations with [Remark.js](https://github.com/gnab/remark) using Markdown 

```
# Required python v2.7 for build node-gyp 
# See also: https://github.com/nodejs/node-gyp#on-macos
$ pyenv install 2.7.15
$ pyenv shell 2.7.15

# Install backslide
$ npm install -g backslide
```

### Setting Github Pages
Settings > Options > GitHub Pages > Source:
- master branch /docs folder


## Quick Start
```
$ mkdir -p docs/20180709-hogefuga; cd $_
$ bs i
$ bs s
```

## Export
```
$ cd docs/20180709-myterminal
$ bs e
$ mv dist/presentations.md index.html
$ rmdir dist
```

## Usage
See also: [Backslide Presentations with a kick](https://sinedied.github.io/backslide/#1)

