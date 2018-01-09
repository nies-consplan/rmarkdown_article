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

## 文献管理

[RefManageR](https://cran.r-project.org/web/packages/RefManageR/index.html)を通して行う。
