
////////////////////////////////////////////////////////////////////////////////
// SYNDESIS WEBSITE
////////////////////////////////////////////////////////////////////////////////

The GitHub repository for the Syndesis website located at https://kahboom.github.io/syndesis-site-test/.


//--- CONTRIBUTING ------------------->>

If you want to contribute to this repository, please fork it first and clone that fork to your computer. Then, to run it you must have Ruby, Jekyll, and Bundler installed. Linux-based distros usually come with Ruby installed already. If not, please use rbenv or RVM to manage your Ruby installations.


//--- RUNNING LOCALLY ------------------->>

gem install jekyll bundler
bundle install
bundle exec middleman server

You should be able to see the Red Hat iPaaS website in your browser on `http://localhost:5678`.


//--- BUILDING & DEPLOYING TO GITHUB PAGES ------------------->>

We currently use middleman-deploy to deploy the iPaaS website. Make sure to have the Bundler and Middleman CLI installed locally and run `bundle exec middleman deploy`.
