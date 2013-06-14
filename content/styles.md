---
title: Some basic default styling
---

<nav markdown="1">

* [Description Lists](#dls)
* [Addresses](#address)
* [Blockquotes](#blockquote)
* [Headings](#h1-6)
* [Typography](#p)
* [Code and multi-line code](#code)

</nav>

Navigation elements
=============
You can already see them in the two navigation elements above, which
are `<nav>` elements that contain unordered lists.

Description Lists {#dls}
===============

Item 1
:  Some description for item 1

Item 2
:  Some description for item 2

Item 3
:  Some description for item 3

Addresses {#address}
==============

I use description lists for addresses when possible.

<address markdown="1">

The Fake Address
: 123 Street Rd.<br />
  Some City, Some State<br />
  10000<br />
  United States

Contact
:  P: [(555) 555-5555](tel:+15555555555)<br />
   F: [(555) 555-5555](fax:+15555555555)

*[P:]: Phone
*[F:]: Fax
</address>

Blockquotes {#blockquote}
===============

I use `<cite>` for the citation even if it is a speaker because the W3C's standard
is [absolute garbage](http://24ways.org/2009/incite-a-riot/) and
I resolutely reject it.  But you can use `<i>` the same way, if you want to.



>Lorem ipsum dolor sit amet, consectetur adipiscing
>elit. Integer posuere erat a ante.
><cite markdown="1">From [lipsum.com](http://www.lipsum.com/)</cite>



Headings {#h1-6}
=============

I've given all the various headings some default styles to make them highly predictable.

h2. Heading 2
---------

### h3: Heading 3

#### h4: Heading 4

##### h5: Heading 5

###### h6: Heading 6

Typography {#p}
==========

Typography is defined at the body as 14px with a line-height of 1.43.  `<p>` elements
are given only a margin-bottom of 0.65em.

<small markdown="1">The `<small>` tag is available and styled.

*The `<em>` tag is available and styled.*

**The `<strong>` tag is available and styled.**

Fusce ut fringilla mi. Vestibulum ante ipsum primis in faucibus orci luctus
et ultrices posuere cubilia Curae; Aliquam hendrerit bibendum metus fringilla
malesuada. Aliquam erat volutpat. Proin in nunc sapien. Duis tristique viverra
ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
cubilia Curae; Pellentesque vitae dapibus tortor. Duis tellus sem, luctus in
tristique eget, fermentum euismod ante. Donec id sollicitudin purus, non euismod erat.

Pellentesque imperdiet sed dui eu venenatis. Morbi in nibh a est placerat porta
nec vel dolor. Sed et erat neque. Cras non dignissim urna. Vestibulum vulputate
justo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada
fames ac turpis egestas. Maecenas volutpat dictum nulla quis scelerisque.

Cras accumsan metus massa, in pretium felis accumsan ac. Nulla facilisi. Suspendisse
in felis elit. Donec ullamcorper fringilla massa, sollicitudin facilisis mauris dictum in

Code and multi-line code {#code}
============

Examples of `<code>` blocks have appeared througought this guide.  Here's a sample of a `<pre>` block:

~~~~~~~~~~ markdown
I can also label this code block by setting its "data-codelang" attribute to the label I want to use.
I've given it the microformat class language-markdown for the sake of sytax highlighters,
which Kramdown places on the <code> element instead of the <pre> element.

h2. Heading 2
---------

### h3: Heading 3

#### h4: Heading 4

##### h5: Heading 5

###### h6: Heading 6
~~~~~~~~~~~~~~~~~~~~
{: data-codelang="Markdown"}
