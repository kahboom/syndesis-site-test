require './source/lib/redcarpet_header_fix'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Activate the syntax highlighter
activate :syntax
ready do
  require './lib/multilang.rb'
end

activate :asciidoc
activate :directory_indexes
activate :syntax
activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Layouts
page "/api-docs/*", :layout => "api-docs"
page "/developers/*", :layout => "developers"
page "/users/*", :layout => "users"

# Build Configuration
configure :build do
  # If you're having trouble with Middleman hanging, commenting
  # out the following two lines has been known to help
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :asset_hash
  # activate :gzip
end

# Deploy Configuration
# If you want Middleman to listen on a different port, you can set that below
set :port, 4567

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  deploy.build_before = true # default: false
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  deploy.branch   = 'master' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  deploy.commit_message = 'Deploy to GitHub'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
