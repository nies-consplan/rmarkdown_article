RMarkdownを使った論文執筆環境
=============================

## 構成

論文の各章をファイルに分割し、chunk optionのclildを使ってそれぞれ呼び出す。
このリポジトリのデモファイルでは、`article.Rmd`というファイルで論文全体を管理し、
`01_introduction.Rmd`、`02_methods.Rmd`などのファイルで個々の章の中身を書く、下記のような構成を想定している。

```
- 01_introduction.Rmd
- 02_methods.Rmd
- 03_results.Rmd
- 04_discussion.Rmd
- article.Rproj
- README.md
- reference.bib
```

### docker

[ramora](https://github.com/nies-consplan/ramora)イメージでは`RefManageR`パッケージを含め、本リポジトリ構成での執筆環境を整備している。

```
docker pull uribo/ramora
docker run --rm -p 8787:8787 uribo/ramora
```

## 文献管理

[RefManageR](https://cran.r-project.org/web/packages/RefManageR/index.html)を通して行う。

## 日本語版

本文に日本語を使う場合、[IPAexフォント](https://ipafont.ipa.go.jp/#jp)をダウンロードして、

```yaml
---
title: "Draft"
# header-includes:
# - \setmainfont{IPAexMincho}
# - \setsansfont{IPAexGothic}
output: 
  pdf_document:
    latex_engine: xelatex
    keep_tex: no
---
```

の3行のコメントアウトを外すこと。
