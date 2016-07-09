# Finstrap
_Bootstrap starting point for ocean-science cats, based on Bootstrap Sass and Grayscale_

Finstrap is a simple starter website you can clone and tailor to be your own. It uses [Bootstrap 3](http://getbootstrap.com/), specifically, the [Sass-port](https://github.com/twbs/bootstrap-sass) and [Grayscale](http://startbootstrap.com/template-overviews/grayscale/) as our foundation.

## Hosting
As with all websites, you'll need a host. Luckily for us, GitHub provides free hosting with [GitHub Pages](https://pages.github.com/)!

## Getting started (from scratch)
### Step 1: Setup a GitHub Pages repository
First off, if you don't have a GitHub account, go [create one](https://github.com/join)! Note that your GitHub Pages site will live at https://[username].github.io –– so choose your username wisely.

Follow along with the initial setup instructions for GitHub pages at https://pages.github.com/. In short, you'll create a new repository named _[username].github.io_ –– for example, the MARE website's GitHub pages repository is _mareoc.github.io_. Do not add any files to the repository yet (e.g. README or .gitignore).

### Step 2: Setting up a development environment
As every machine and operating system (Windows, macOS, Linux) is different, it's easiest to use a "cloud" development environment in which to install your site's codebase and customize it. [Nitrous](https://www.nitrous.io/) provides these for _free_ for up to two projects.

Go ahead and create a free Nitrous account, and then create a new _Project_ using the _Ruby_ Nitrous template. You can call the project anything you want, but we'll call it _NitrousFinstrap_ for this tutorial. Once the Project is created, click the button to go back to your Project list.

From the main project list, click your user avatar in the top-right corner of the page and select _Account Settings_. Look for the GitHub section (the second from the top) and click the button to connect to your GitHub account. You'll need to supply your GitHub username and password. Once your Nitrous and GitHub accounts are linked, you should see a notice that says "Connected as __username__."

Click in the upper-left of the screen to go back to your Nitrous Dashboard. Under your NitrousFinstrap project, click the Settings button and select _Manage SSH Keys..._ At the top of the page should be a section called _Container Public Key_ with a button just below it in the lower-right that says _Add to GitHub_. Click that button, and this project will have access to your GitHub account! If you see a button that says _Remove from GitHub_, don't click it: Nitrous has already added it for you.

### Step 3: Clone your new GitHub pages repository to Nitrous
Now that our IDE (which stands for Integrated Development Environment) is setup, you'll need to clone the Finstrap codebase into it. From your Projects list in Nitrous, click the button on your NitrousFinstrap project to _Open IDE_. You should be greeted with a README that says, _Welcome to your Nitrous Pro Ruby container!_ Click the little "x" next to the README tab to close it.

On the lower part of your IDE, there should be a black area with a text block that starts with `-> ~`. Click in that black area: this is your _terminal_. Commands you type in this terminal will be executed within your IDE. Start by typing `cd code` and pressing enter or return on your keyboard. (After each command, you'll need to press enter/return to execute the command. Henceforth, we'll omit the instruction to press enter/return after a command. Don't forget to press _enter_!).

You should now see `-> code` in your terminal. Type `git clone git@github.com:mareoc/finstrap` (and don't forget to press enter –– no more reminders!) to clone the Finstrap codebase. If you see a notice about an RSA key, just type `yes` to continue. Type `cd finstrap` to enter the folder.

### Step 4: Link the newly-cloned project to your GutHub Pages repo
Right now, the Finstrap project you just cloned is linked to the _mareoc_ GitHub account. We need to link it you the GitHub pages repository you created in Step 1.

First, run `rm -rf .git` to remove the _mareoc_ git configuration. You should notice the _git:(master)_ text in the terminal is now gone. Good job!

You'll need to run the following commands in order:
1. `git init` initializes an empty git project.
2. `git add .` adds all the files to the code you'll be committing to GitHub.
3. `git commit -m "First commit"` creates the initial commit.
4. `git remote add origin git@github.com:username.github.io` replacing username with your GitHub username, this will link the code in your IDE to your GitHub Pages repo.
5. `git remote -v` verifies the repo exists.
6. `git push origin master` pushes the codebase in your IDE to your GitHub Pages repo.

Visit your GitHub pages repo online (i.e. https://github.com/mareoc/mareoc.github.io) and you should see it's filled with code now. Yay!!

Finally, visit your GitHub Pages site at _https://[username].github.io_ and you should see your starter website.
__Congratulations!!!__
