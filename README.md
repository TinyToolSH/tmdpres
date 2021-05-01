# tmdpres

A Tiny Markdown presentation generator. It is designed to convert `markdown` files to `html` presentations.

## Dependencies

* [python3](https://www.python.org/downloads/);
* [pandoc](https://pandoc.org/);
* [tyaml](https://github.com/TinyToolSH/tyaml).

## Instalation

To install `tmdpres` you can edit the `Makefile` to match your local setup (`tmdpres` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tmdpres` (if necessary as root).

```bash
sudo make install
```

To uninstall `tmdpres`:

```bash
sudo make uninstall
```

## Syntax

You should write your `markdown` presentation by separating the slides with `---`.

And can also add `yaml` metadata to the file by adding then as an `html` comment (to be hidden in the html file).
By now `tmdpres` just interprets  `title` metadata.

Example:

```markdown
<!--
title: "Hello World"
author: Edimar Calebe Castanho
date: 2021-05-01
time: 14:39
-->

<center>
# This is an example
</center>

---

## First!

* Some list items
* 2
* 3

---

## Another slide

* Thats it!
```

## Operation

The `tmdpres` was designed to be a single file markdown presentation creator. It is designed to be as simple as possible. 
The script converts your `markdown` presentation to `html` using pandoc.
It then splits the result html file into slides and surround every slide into a `<div class="slide">` tag using a built-in python script.
After this process `tmdpres` then creates your presentation by contatenating the your converted markdown with the built-in `_header` and `_footer.html`.
Also `tmdpres` uses [spcss](https://github.com/susam/spcss) as CSS style.

## Customization

You can change the layout of the slides by changing the `_header.html` and `_footer.html` inside the `tmdpres` script.

## Usage

To create your presentation just run the following command:

```bash
$ tmdpres presentation.md
```

The presentation output will be `presentation.html`.

# Team

| <img src="https://github.com/Calebe94.png?size=200" alt="Edimar Calebe Castanho"> | <img src="https://github.com/gbgabo.png?size=200" alt="Gabriel Gaboardi"> |
|:---------------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [Edimar Calebe Castanho (Calebe94)](https://github.com/Calebe94)                  | [Gabriel Gaboardi (Gabo)](https://github.com/gbgabo)                      |

# License

All software is covered under [GNU General Public License
v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

