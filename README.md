# Finstrap
_Bootstrap starting point for ocean-science cats, based on Bootstrap Sass and Grayscale_

Finstrap is a simple starter website you can clone and tailor to be your own. It uses [Bootstrap 3](http://getbootstrap.com/), specifically, the [Sass-port](https://github.com/twbs/bootstrap-sass) and [Grayscale](http://startbootstrap.com/template-overviews/grayscale/) as our foundation.

## Hosting
As with all websites, you'll need a host. Luckily for us, GitHub provides free hosting with [GitHub Pages](https://pages.github.com/)!

# Getting started (from scratch)
## Step 1: Setup a GitHub Pages repository
First off, if you don't have a GitHub account, go [create one](https://github.com/join)! Note that your GitHub Pages site will live at https://[username].github.io –– so choose your username wisely.

Follow along with the initial setup instructions for GitHub pages at https://pages.github.com/. In short, you'll create a new repository named [username].github.io –– for example, the MARE website's GitHub pages repository is _mareoc.github.io_.

## Step 2: Setting up a development environment
As every machine and operating system (Windows, macOS, Linux) is different, it's easiest to use a "cloud" development environment in which to install your site's codebase and customize it. [Nitrous](https://www.nitrous.io/) provides these for _free_ for up to two projects.

Go ahead and create a free Nitrous account, and then create a new _Project_ using the _Ruby_ Nitrous template. You can call the project anything you want, but we'll call it _NitrousFinstrap_ for this tutorial. Once the Project is created, click the button to go back to your Project list.

From the main project list, click your user avatar in the top-right corner of the page and select _Account Settings_. Look for the GitHub section (the second from the top) and click the button to connect to your GitHub account. You'll need to supply your GitHub username and password. Once your Nitrous and GitHub accounts are linked, you should see a notice that says "Connected as __username__."

Click in the upper-left of the screen to go back to your Nitrous Dashboard. Under your NitrousFinstrap project, click the Settings button and select _Manage SSH Keys..._ At the top of the page should be a section called _Container Public Key_ with a button just below it in the lower-right that says _Add to GitHub_. Click that button, and this project will have access to your GitHub account! If you see a button that says _Remove from GitHub_, don't click it. Nitrous has already added it for you.

## Step 3: Clone your new GitHub pages repository to Nitrous
Finally, you'll want to clone your new repository to your development environment.
