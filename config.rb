require 'compass/import-once/activate'
require 'bootstrap-sass'
require 'sass-globbing'
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
output_style = :compressed # or :expanded or :nested or :compact

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# Add the 'sass' directory itself as an import path to ease imports.
add_import_path 'sass'

# Set better precision for decimals. The default is 5 decimal places,  8 is required
Sass::Script::Number.precision = 8
