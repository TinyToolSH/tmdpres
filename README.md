# tmdpres

A Tiny Markdown presentation generator.

## Dependencies

* [dzslides](https://github.com/paulrouget/dzslides);
* [pandoc](https://pandoc.org/);

## Instalation

To install `tgoeswall` you can edit the `Makefile` to match your local setup (`tgoeswall` is installed into the `/usr/local/bin` by default).

Afterwards enter the following command to install `tgoeswall` (if necessary as root).

```bash
sudo make install
```

After the installation you can enable `tgoeswall` to run as a service by running the following command (as user not as root):

```bash
tgoeswallctrl start
```

## Operation

DZSlides is a one-file HTML template to build slides in HTML5 and CSS3.

But we want it to work with markdown. We know that DZSlides separate each page as a html tag `<section>`.

We should write our markdown presentetion by separating each page by surrounding it by the <section> tag.

We can add metadata to the markdown file so the `tmdpres` can add these info to the presentation.

`tmdpres` will replace the following info:

* `__TITLE__`: get from metadata
* `__HEADER__`: get from metadata
* `__FOOTER__`: get from metada

When running `tmdpres` it will surround our presentetion by the `_header.html` and `_footer.html` files.

This files is the taken by `dzslides`'s `template.html` file.

## Usage

To create your presentetion just run the following command:

```bash
$ tmdpres presentetion.md
```

# License

All software is covered under [GNU General Public License
v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

