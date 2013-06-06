---
title: Some basic default styling
---

<nav markdown="1">

* [Tables](#tables)
* [Description Lists](#dls)
* [Addresses](#address)
* [Blockquotes](#blockquote)

</nav>

Navigation elements
=============
You can already see them in the two navigation elements above, which
are `<nav>` elements that contain unordered lists.

Tables  {#tables}
=============

 A header | Second header | Third Header
----------|---------------|----------------
 Item 1   | Value for 1   | Something else
 Item 2   | Value for 2   | Something else
 Item 3   | Value for 3   | Something else
 Item 4   | Value for 4   | Something else

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
I resolutely reject it.

<blockquote markdown="1">

Lorem ipsum dolor sit amet, consectetur adipiscing
elit. Integer posuere erat a ante.
<cite markdown="1">From [lipsum.com](http://www.lipsum.com/)</cite>

</blockquote>
