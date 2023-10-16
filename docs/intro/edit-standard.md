# 编辑规范

!!! warning

    建设中

## 文件名与目录

文件名与目录将反映在网址上，不应使用中文等特殊字符，推荐使用英文+连字符 `-`，参考线性代数：`linear-algebra`。页面标题可以由唯一的 `# h1` 指定。导航部分可参考 `mkdocs.yml` 已有内容编辑。

## Markdown

请尽量使用标准的 Markdown 语法，可以借助 vscode 的 [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) 插件等工具进行格式化。

### 图片

图片请放入与当前文件同名的目录中。例如：

`![wxc](edit-standard/wxc.png)`

![wxc](edit-standard/wxc.png)

如果使用 vscode 进行编辑，本 repo 中包含了该路径设置，将自动将粘贴的图片保存在相应目录下。

`.vscode/settings.json`:

```json
{
    "markdown.copyFiles.destination": {
        "/docs/**/*": "${documentDirName}/${documentBaseName}/"
    }
}
```

## 空格，标点等

参考 [中文文案排版指北](https://github.com/sparanoid/chinese-copywriting-guidelines)。

> 為什麼你們就是不能加個空格呢？
