# 贡献方法

!!! warning

    建设中

## 软件

你可能需要以下软件，除 git 外不是必须的，但它们很有用，可以简化下面的步骤，减少学习成本，尤其是 git 命令们。

- [Git](https://git-scm.com/downloads)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Python](https://www.python.org/downloads/)
- [GitHub Desktop](https://desktop.github.com/) - 使用 GitHub Desktop，可以将所有需要手动敲 git 命令的过程变成图形化界面操作。

## 步骤

### TL;DR

1. 创建 GitHub 账号，假设你叫作 xxx
2. fork [LeSnow-Ye/wx-wiki](https://github.com/LeSnow-Ye/wx-wiki)，你会得到一个名为 `xxx/wx-wiki` 的 repo
3. 在本地 `git clone https://github.com/xxx/wx-wiki.git`
4. 编辑 /docs/\*/*.md
5. 编辑 mkdocs.yml 中的 nav 部分
6. [可选] 在根目录运行命令 `pip install -r requirements.txt` 后，使用 `mkdocs serve` 在本地调试。
7. 将所有更改 commit (提交) 到 `xxx/wx-wiki` 的 `main` 分支。一些软件会帮助你完成这一过程，例如 vscode
8. `git push`

### 本地测试

由于在 merge 前，你并不知道你的 md 文件的最终在网页上的呈现效果，你可以在本地搭建一个测试环境。

参考 [Creating your site - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/creating-your-site/)
