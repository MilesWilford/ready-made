Modified HTML5 Boilerplate Kickstart for Nanoc using SASS
==========
Miles Wilford

This is the "default" static site project I use with nanoc.
It's built off of an HTML5 Boilerplate via Initilizer with t
he following settings:

No HTML/CSS Template
* Just HTML5shiv
* jQuery (Minified)
* IE Classes
* Chrome Frame
* plugins.js
* Robots.txt
* Humans.txt
* 404 Page

Significant modifications were made to the boilerplate to effectively use
relativize_paths in nanoc as well as the SASS stylesheet.  The
non-ajax jQuery fallback will not work if the site is not in the
root directory.

Nanoc is configured with a number of rules to do the following:

* Use relative URLs for HTML/md.
* Use RubyPants to improve punctuation.
* Intrepret either `.html` files or `.md` files using erb and kramdown respectively.
* Route `humans.txt`, `robots.txt`, and `404.html` do the site root directory.
* Copy everything in `/js/` and also provide a minified representation, excluding `/js/vendors/`.
* Do not compile contents of `/img/` (which should be binary data anyway).
* Interpret the SCSS of `main.scss` using SASS and output all CSS to a single main.css file
(and a minified main.min.css file using rainpress).
* Copy the bare SCSS for end-user reference into a /sass/ folder (easily disabled in rules).

The CSS is modified to use SASS and exist in a single stylesheet.
Significant hirearchy framework is provided, along with some helpful mixins.

Preqrequisites
-----------
See the GemFile.
This needs Ruby and a bunch of Gems, particularly nanoc and SASS

Usage
--------------------
As per standard nanoc.  Make sure you have installed the
gems in GemFile and their prerequisites
