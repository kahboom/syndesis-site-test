# Syndesis

The GitHub repository for the Syndesis website.

## Contributing

If you want to contribute to this repository, please fork it first and clone that fork to your computer. Then, to run it you must have Ruby, <a href="http://jekyllrb.com/" target="_blank" rel="nofollow">Jekyll</a>, and <a href="http://bundler.io/" target="_blank" rel="nofollow">Bundler</a> installed. Linux-based distros usually come with Ruby installed already. If not, please use <a href="http://rbenv.org/" target="_blank" rel="nofollow">rbenv</a> or <a href="https://rvm.io/" target="_blank" rel="nofollow">RVM</a> to manage your Ruby installations.

```
gem install jekyll bundler
bundle exec middleman server
```

You should be able to see the Red Hat iPaaS website in your browser on `http://localhost:5678`.

### Building & Deploying to GitHub Pages
We currently use [middleman-deploy](https://github.com/middleman-contrib/middleman-deploy) to deploy the iPaaS website. Make sure to have the Bundler and Middleman CLI installed locally and run `bundle exec middleman deploy`.
