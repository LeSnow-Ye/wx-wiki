# Markdown Guide

## Headers (atx style)

```markdown
# h1
## h2
### h3
#### h4
##### h5
###### h6
```

## Headers (setext style)

```markdown
Header 1
========
```

```markdown
Header 2
--------
```

## Blockquotes

```markdown
> This is
> a blockquote
>
> > Nested
> > Blockquote
```

> This is
> a blockquote
>
> > Nested
> > Blockquote

## Unordered List {.row-span-2}

```markdown
- Item 1
- Item 2
    - item 3a
    - item 3b
```

- Item 1
- Item 2
    - item 3a
    - item 3b

or

```markdown
* Item 1
* Item 2
```

or

```markdown
+ Item 1
+ Item 2
```

or

```markdown
- [ ] Checkbox off
- [x] Checkbox on
```

- [ ] Checkbox off
- [x] Checkbox on

## Ordered List

```markdown
1. Item 1
2. Item 2
3. Item 3
```

1. Item 1
2. Item 2
3. Item 3

## Links

```markdown
[link](http://example.com)

<http://example.com>
```

[link](http://example.com)

<http://example.com>

## Emphasis

```markdown
*italic*
_italic_
```

*italic*

```markdown
**bold**
__bold__
```

**bold**

```markdown
~~struck out~~
```

~~struck out~~

## Horizontal line

Hyphens

```markdown
---
```

Asterisks

```markdown
***
```

Underscores

```markdown
___
```

---

## Code

~~~markdown
```javascript
console.log("This is a block code")
```
~~~

### inline code

```markdown
`Inline code` has back-ticks around it
```

`Inline code` has back-ticks around it

## Tables {.col-span-2}

```markdown
| Left column | Center column | Right column |
|:------------|:-------------:|-------------:|
| Cell 1      |   Centered    |        $1600 |
| Cell 2      |    Cell 3     |          $12 |
```

| Left column | Center column | Right column |
|:------------|:-------------:|-------------:|
| Cell 1      |   Centered    |        $1600 |
| Cell 2      |    Cell 3     |          $12 |

Simple style

```markdown
Left column | Center column | Right column
:----------:|:-------------:|:-----------:
   Cell 1   |   Centered    |    $1600
   Cell 2   |    Cell 3     |     $12
```

Left column | Center column | Right column
:----------:|:-------------:|:-----------:
   Cell 1   |   Centered    |    $1600
   Cell 2   |    Cell 3     |     $12

A markdown table generator: [tableconvert.com](https://tableconvert.com/)

## Images

```markdown
![Logo](/images/logo.png)

![Alt Text](url)
```

### Image with link

```markdown
[![Logo](/images/logo.png)](https://github.com/)

[![Alt Text](image_url)](link_url)

[![Logo](https://www.wxc.tsinghua.edu.cn/images/logo.png)](https://www.wxc.tsinghua.edu.cn)
```

[![Logo](https://www.wxc.tsinghua.edu.cn/images/logo.png)](https://www.wxc.tsinghua.edu.cn)

## Backslash escapes

| Characters | Escape | Description |
|------------|--------|-------------|
| \\         | \\\\   | backslash   |
| \`         | \\\`   | backtick              |
| \*         | \\\*   | asterisk              |
| \_         | \\\_   | underscore            |
| \{\}       | \\\{\} | curly braces          |
| \[\]       | \\\[\] | square brackets       |
| \(\)       | \\\(\) | parentheses           |
| \#         | \\\#   | hash mark             |
| \+         | \\\+   | plus sign             |
| \-         | \\\-   | minus sign \(hyphen\) |
| \.         | \\\.   | dot                   |
| \!         | \\\!   | exclamation mark      |
