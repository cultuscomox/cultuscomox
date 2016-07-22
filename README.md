Finstrap
======
Bootstrap starting point for ocean-science cats, based on Bootstrap Sass and Grayscale

Finstrap is a simple starter website you can clone and tailor to be your own. It uses [Bootstrap 3](http://getbootstrap.com/), specifically, the [Sass-port](https://github.com/twbs/bootstrap-sass) and [Grayscale](http://startbootstrap.com/template-overviews/grayscale/) as our foundation.

See a live-demo at https://mareoc.github.io/finstrap/

### Important notes
As with all websites, you'll need a host. Luckily for us, GitHub provides free hosting with [GitHub Pages](https://pages.github.com/)! These instructions are written assuming you've never touched GitHub, a terminal, an IDE, HTML, Sass, or any of those ~~fancy~~ ridiculously-awesome web-development helpers before. We're attempting to be very thorough here!

If anything is wrong/not clear/deprecated, use the Issues tab (at the top of the GitHub repository) to let us know –– thanks!

Getting started (from scratch)
------
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

### Step 4: Link the newly-cloned project to your GitHub Pages repo
Right now, the Finstrap project you just cloned is linked to the _mareoc_ GitHub account. We need to link it you the GitHub pages repository you created in Step 1.

First, run `rm -rf .git` to remove the _mareoc_ git configuration. You should notice the _git:(master)_ text in the terminal is now gone. Good job!

You'll need to run the following commands in order:
<ol>
<li><code>git init</code> initializes an empty git project.</li>
<li><code>git add .</code> adds all the files to the code you'll be committing to GitHub.</li>
<li><code>git commit -m "First commit"</code> creates the initial commit.</li>
<li><code>git remote add origin git@github.com:username.github.io</code> replacing username with your GitHub username, this will link the code in your IDE to your GitHub Pages repo.</li>
<li><code>git remote -v</code> verifies the repo exists.</li>
<li><code>git push origin master</code> pushes the codebase in your IDE to your GitHub Pages repo.</li>
</ol>
Visit your GitHub pages repo online (i.e. https://github.com/mareoc/mareoc.github.io) and you should see it's filled with code now. Yay!!

Finally, visit your GitHub Pages site at _https://[username].github.io_ and you should see your starter website. Again, be sure to replace [username] with your GitHub username.

### Step 5: Install Sass-y magic
Nitrous has installed Ruby for you, and your starter website's codebase is now in place, but we need to install the helper functions ([Compass](http://compass-style.org/) and such) to put the icing on the cake.

In your Nitrous IDE's terminal, you should be in the _code/finstrap_ directory. If not `cd $HOME/code/finstrap` into it.

Again, you'll need to run the following commands in order:
<ol>
<li><code>gem install bundler</code> installs the Bundler Ruby gem.</li>
<li><code>bundle install</code> will install all the required gems for this project.</li>
</ol>

__Congratulations!!!__ Compass, Sass, Boostrap-Sass, and their friends are now all installed! Get customizing!

Customizing your new site
------
We're focusing on using HTML and Sassy-CSS (the .scss files that you see in the _sass_ directory) to stylize your site. We're not covering Javascript here, though the site does utilize JS for the menu bar, transitions, and such.

The homepage is the _index.html_ file. This is where you'll do most of your customizing. You'll notice the site is broken into sections with HTML comments like `<!-- Navigation -->` and `<!-- Intro Section -->`. Comments do not show up on the site.

The _sass_ directory is where the "look and feel" of the site is determined. The _styles.scss_ file imports the fonts, icons, and stylesheets we're using. You shouldn't need to touch it. The main file you'll want to edit is <em>_main.scss</em> in the _base_ directory. Sass also allows the use of variables, which are set in the <em>_variables.scss</em> file in the _variables_ directory. You can easily change the site's fonts and primary colors there.

## Make your local changes live
Each time you edit/save changes to your Sass files, you'll need to have [Compass](http://compass-style.org/) compile the Sass code into plain-old CSS. The easiest way to do this is to run `compass watch` from within your Finstrap directory (`cd $HOME/code/finstrap`). Each time you save a .scss file, Compass will compile it, or attempt to do so and warn you of errors. Press the `control` and `c` keys on your keyboard to have Compass stop watching for changes. You can also run `compass compile -e production --force` to force Compass to compile new stylesheets on a one-off basis.

__To see changes online, you'll need to _push_ your code to GitHub__. This is an easy, 3-step process:
<ol>
<li><code>git add -A</code> gathers your current code changes.</li>
<li><code>git status</code> allows you to see what's all been staged for commit. If you're expecting to see a file that's not staged, be sure you saved your changes to the file and then run <code>git add -A</code> again.</li>
<li><code>git push origin master</code> pushes your local code to GitHub. Wait about 15-30 seconds, and then refresh your GitHub Pages' site to see your changes.</li>
</ol>

### Rename the site and add your contact information
In the `<head>` of your _index.html_ file, the first things you'll want to change are the site's name and authoring information.

_Meta tags_ contain metadata (that's data about data) about your site. The _Meta Description_ tag is what search engines (like Google and Bing) show below your site's name in search results. Keep this under 160 characters. The _Meta Author_ tag would be you/your organization. The _Title_ tag is the name of your website, e.g. _Professor X's Lab_ or _OpenChannels: Forum for Ocean Planning and Management_.

### Add your logo
Logos and images live in the _images_ directory. Being a responsive website, you need to be a bit careful about what images you use. Think _mobile first_! Will the logo or image you're using look good scaled down to a smartphone-sized screen? If so: use it! If not: pick something else.

You'll notice we reference the MARE logo with `<img src="..finstrap/images/fins.png" alt="Diving fins" style="max-width:100%; max-height:197px">`. Change _../finstrap/images/fins.png_ to _../images/filename.png_ replacing _filename.png_ with your image. The _alt_ should describe the image. Replace _max-height_ with the height of your image at original size, or the largest height you'd like the image to be on a desktop monitor. The image will automatically scale-down when the site is viewed on smaller screens.

### Fontawesome icons
We're using [Fontawesome](http://fontawesome.io/) for icons, i.e. the icons you see in the Contact section for Twitter and GitHub. You can [browse the list of icons here](http://fontawesome.io/icons/). To add a Facebook icon, you'd use the class `fa fa-facebook fa-fw`or for LinkedIn use `fa fa-linkedin fa-fw`.

### Add a custom domain name
If you own (or have purchased) a domain name, you can add that via the settings tab for your repo. Just go to the _GitHub Pages_ section about halfway down the page. Click the _learn more_ link there for full details. But basically, you just type in the domain name, click save, and then add the relevant DNS records. Create a CNAME record for the www subdomain pointing to _github.com/username/username.github.io_. Create an ALIAS or ANAME record for the bare (non-www) domain.
