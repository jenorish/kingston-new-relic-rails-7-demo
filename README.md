# New Relic Rails 7 on Render Demo Application

[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/master/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

![GitHub forks](https://img.shields.io/github/forks/newrelic-experimental/new-relic-rails-7-demo?style=social)
![GitHub stars](https://img.shields.io/github/stars/newrelic-experimental/new-relic-rails-7-demo?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/newrelic-experimental/new-relic-rails-7-demo?style=social)

![GitHub last commit](https://img.shields.io/github/last-commit/newrelic-experimental/new-relic-rails-7-demo)

![GitHub issues](https://img.shields.io/github/issues/newrelic-experimental/new-relic-rails-7-demo)
![GitHub issues closed](https://img.shields.io/github/issues-closed/newrelic-experimental/new-relic-rails-7-demo)
![GitHub pull requests](https://img.shields.io/github/issues-pr/newrelic-experimental/new-relic-rails-7-demo)
![GitHub pull requests closed](https://img.shields.io/github/issues-pr-closed/newrelic-experimental/new-relic-rails-7-demo)

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.txt)

Learn how to integrate the [New Relix Ruby Agent](https://github.com/newrelic/newrelic-ruby-agent) into your Rails 7 web application and deploy it to [Render](https://onrender.com).

Read the full blog post with step-by-step instructions on the [New Relic blog](https://newrelic.com/blog/how-to-relic/monitoring-rails-7-applications-with-new-relic).

This is a fully functioning web application running on Rails that incorporates the New Relic Ruby agent to send telemetry data to the New Relic One dashboard. You can fork this repository to start building your own Rails app instrumented with New Relic, or copy and paste the relevant sections from it and add it to your own code.

* [Requirements](#requirements)
* [Installation](#installation)
* [Usage](#usage)
    * [Deploying to Render](#deploying-to-render)
* [Support](#support)
* [License](#license)

## Requirements

This app was built with Ruby v3.1 and Rails v7.0.

## Installation

Once you clone or fork the repository, first change into the directory and execute the following commands in your terminal:

```bash
$ bundle install
$ bundle exec rails db:prepare
```

Lastly, rename the `.env.sample` file to `.env`.

## Usage

To use this app you must [sign up for an account with New Relic](https://newrelic.com/signup?utm_source=devrel&utm_medium=organic_social&utm_campaign=github_newrelic_experimental_devrel_repo). An account with New Relic is and will always be free. Once you have an account, create a new license key in the API keys section of the user settings, and copy the value to your `.env` file's `NEW_RELIC_LICENSE_KEY=` value.

The configuration for the New Relic Ruby agent can be found inside the `config/newrelic.yml` file. You can customize the name that will appear for your application in the New Relic dashboard by changing the `app_name` setting:

```ruby
common: &default_settings
  license_key: <%= ENV.fetch("NEW_RELIC_LICENSE_KEY") %>
  app_name: nr-demo-rails-7
```

Once you have done that, you can start your app locally by running `bundle exec rails s` from the command line and
navigate to `localhost:3000` in your web browser.

### Deploying to Render

To deploy to Render follow these steps:

1. [Create a free Render account](https://dashboard.render.com/register)
2. Create a [Render blueprint](https://dashboard.render.com/blueprints)
3. Set the value of the `RAILS_SECRET_KEY` to the contents of your `config/master.key` in the deploy window and click `Approve`
4. Set the value of the `NEW_RELIC_LICENSE_KEY` environment variable in the app settings on Render to the value in your `.env` file

That's it. You app will live on your `#{appname}.onrender.com` URL as soon as the build finishes.

## Support

New Relic has open-sourced this project. This project is provided AS-IS WITHOUT WARRANTY OR DEDICATED SUPPORT. Issues and contributions should be reported to the project here on GitHub.

We encourage you to bring your experiences and questions to the [Explorers Hub](https://discuss.newrelic.com) where our community members collaborate on solutions and new ideas.

## Contributing

We encourage your contributions to improve this Phoenix demo app! Keep in mind when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project. If you have any questions, or to execute our corporate CLA, required if your contribution is on behalf of a company, please drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

## License

This project is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.

[license]: LICENSE.md