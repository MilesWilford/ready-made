Modified HTML5 Boilerplate Kickstart
==========
Miles Wilford

This is the "default" static site project I use with Nanoc.
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

Modifications were made to the boilerplate to effectively use
relativize_paths in nanoc as well as the SASS stylesheet.  The
non-ajax jQuery fallback will not work if the site is not in the
root directory.

Nanoc is configured with a number of rules to do the following:

* Use relative URLs for HTML
* Do not compile/route `humans.txt`, `robots.txt`, `404.html`
* Do not compile/route JS *except* for `main.js` and `plugins.js`,
which will be copied over and *also* minified.
* Do not compile/route contents of `/img/`
* Interpret the SCSS of `main.scss` using SASS

The CSS is modified to use SASS and exist in a single stylesheet.

Preqrequisites
-----------
See the GemFile.
This needs Ruby and a bunch of Gems, particularly nanoc and SASS

Usage
--------------------
As per standard nanoc.  Make sure you have installed the
gems in GemFile and their prerequisites
