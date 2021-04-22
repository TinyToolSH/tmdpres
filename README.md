# tmdpres

A Tiny Markdown presentation generator.

## Dependencies

* [dzslides](https://github.com/paulrouget/dzslides);
* [pandoc](https://pandoc.org/);

## Installation

(same installation method as ever)

## Operation

DZSlides is a one-file HTML template to build slides in HTML5 and CSS3.

But we want it to work with markdown. We know that DZSlides separate each page as a html tag `<section>`.

We can process markdown to create a `<section>` every time it sees a `<hr />` tag.

* Example:

```markdown
# Page 1
* This is the page 1
---
# Page 2
* This is a page 2
```

The `html` will be:

```html
<section>
# Page 1
* This is the page 1
</section>

<section>
# Page 2
* This is a page 2
</section>
```

Or we can just add the <section> tag manually.

We can add metadata to the markdown file so the `tmdpres` can add these info to the presentation.

`tmdpres` will replace the following info:

* `__TITLE__`: get from metadata
* `__HEADER__`: get from metadata
* `__FOOTER__`: get from metada
* `__CONTENT__`: the entire markdown content

## Usage
