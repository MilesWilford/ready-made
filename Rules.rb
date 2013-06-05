#!/usr/bin/env ruby

# A few helpful tips about the Rules file:
#
# * The string given to #compile and #route are matching patterns for
#   identifiers--not for paths. Therefore, you can’t match on extension.
#
# * The order of rules is important: for each item, only the first matching
#   rule is applied.
#
# * Item identifiers start and end with a slash (e.g. “/about/” for the file
#   “content/about.html”). To select all children, grandchildren, … of an
#   item, use the pattern “/about/*/”; “/about/*” will also select the parent,
#   because “*” matches zero or more characters.

# Do nothing to /sass/ contents for raw sass copying
compile '/sass/*/' do
  nil
end

route '/sass/*/' do
  # Comment out the next line to remove /sass/ folder from output
  item.identifier.chop + '.' + item[:extension]
end

# Create main.css from main.scss
compile '/sass/main/', :rep => :css do
  filter :sass, syntax: :scss
end

route '/sass/main/', :rep => :css do
  '/css/main.css'
end

# Also create a minified main.min.css
compile '/sass/main/', :rep => :minified do
  filter :sass, syntax: :scss
  filter :rainpress
end

route '/sass/main/', :rep => :minified do
  '/css/main.min.css'
end

# Move raw js files
compile '/js/*/' do
  nil
end

route '/js/*/' do
  item.identifier.chop + '.' + item[:extension]
end

# Minify all js

compile '/js/*/', :rep => :minified do
  filter :yui_compressor, :type => :js
end

## But discard contents of /vendor/ folder which were minified from the start
route '/js/vendor/*/', :rep => :minified do
  nil
end

route '/js/*/', :rep => :minified do
  item.identifier.chop + '.min.' + item[:extension]
end

# Move raw images.  This probably isn't necessary since they're binary?
#compile '/img/*/' do
#  nil
#end

#route '/img/*/' do
#  item.identifier.chop + '.' + item[:extension]
#end

# Do nothing to humans.txt, robots.txt
compile %r{/(humans)|(robots)/} do
  nil
end

route %r{/(humans)|(robots)/} do
  item.identifier.chop + '.' + item[:extension]
end

# And finally deal with our html pages
compile '*' do
  if item.binary?
    # don’t filter binary items
  else
    # can't select base on identifiers my foot
    case item[:extension]
    when 'html'
      filter :erb
    when 'md'
      filter :kramdown
    else
      # if not .html or .md, assume it was markdown
      filter :kramdown
    end
    layout 'default'
    filter :rubypants
    filter :relativize_paths, :type => :html
  end
end

# 404 should not be routed to /404/
route '/404/' do
  '/404.html'
end

route '*' do
  if item.binary?
    # Write item with identifier /foo/ to /foo.ext
    item.identifier.chop + '.' + item[:extension]
  else
    # Write item with identifier /foo/ to /foo/index.html
    item.identifier + 'index.html'
  end
end

layout '*', :erb