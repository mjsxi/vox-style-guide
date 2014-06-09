compass_config do |config|
  config.output_style = :compact
end

set :app_name, "Voxdotcom Style Guide"

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :debug, "true"
set :url_prefix, ""
set :absolute_prefix, "http://localhost:4567"

activate :livereload

activate :chorus
activate :directory_indexes

configure :build do
   set :debug, "false"
   set :url_prefix, "/a/style-guide"
   set :absolute_prefix, "http://vox.com"
   activate :minify_javascript
   activate :minify_css
   activate :relative_assets
end
