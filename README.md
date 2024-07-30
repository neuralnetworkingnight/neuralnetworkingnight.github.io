# Neural Networking Night website content


This repository contains all the content necessary for proper rendering of [Neural Networking Night](https://neuralnetworkingnight.github.io) website.


- If you want to make **_minor, not accident-prone changes_**, you should login with your personal GitHub account and    directly edit the respective markdown in https://github.com/caycogajiclab/website (download a temporary version 
   before editing though)

- If you want to make **_major changes_**, locally install the repo (see **Local repo installation**) and use
   `make <command>` (see **# Modify content & Obtain previews**).

- If you want to apply structural changes to the repo (e.g. changing the Makefile or its related scripts), PLEASE CONTACT THE PEOPLE IN CHARGE OF THE WEBSITE BEFORE, since these can break the repo.


# Local repo installation

Execute the following commands, REPLACING " < path-to-folder > " with the one you prefer:

```
git clone git@github.com:caycogajiclab/website.git <path-to-folder>
cd <path-to-folder>
make setup
```
<br>
Note: `make setup` works only on Mac and Linux. In other cases, or if you encounter issues, manually install 
dependencies following setup.sh.


# Update local repo (IMPORTANT)

BEFORE ANY MODIFICATION, on the terminal, run the following:

`cd <website-folder>` (substitute <website-folder> with the correct path)<br>
`make update-local`
   
NOTE: this will run `git pull`. If you applied changes before running this command, these WILL BE LOST. 

# Modify content & Obtain previews

All repo management can be easily handled using `make` commands, that can be called from the main folder.

- `make help`: show the present list;
- `make setup`: install all repo necessary stuff (hugo software, the used theme, etc.) 
- `make install-theme`: install hugo dependencies.
- `make preview`: provides a preview of the website following local changes;
- `make update-local`: update the repo (MANDATORY BEFORE APPLYING ANY CHANGE);
- `make upload-repo`: upload on GitHub local changes (without modifying the public website);
- `make publish`: applies local changes to the website;
- `make build-website`: locally build the website;

## If you only want to make minor (text etc.) changes without the terminal

You can directly edit markdown files (.md) on the GitHub repository in your browser, without needing to pull and push 
the code. If you want to make more complex modifications, follow the instructions below.

## Modifying content and update repo

BEFORE APPLYING CHANGES, make sure none else is updating the repo, otherwise you will probably be forced to deal with git :)
Everytime you want to apply changes to the repo, please follow the following instructions:

- (First time ONLY): create a local version of the repository (follow ___Local repo installation___);
- within the main folder, run `make update-local`;
- apply changes to any file in the repo, apart from the ___theme___ folder;
- for a preview of the changes, run `make preview` (it should automatically open it on the browser; if not, in the 
	terminal it will show the link to use, usually http://localhost:34557/ )
- run `make upload-repo`, for saving changes on GitHub;
- enter the commit message, describing what you modified. PLEASE BE CLEAR AND EXHAUSTIVE: if some changes will 
	break the website, it will help (you and the others) understanding the origin of the problem  

## Publishing local changes

For updating local changes, run from terminal (main website folder):

`make publish`

Note: this command doesn't update the repo, but only the website. If you didn't yet, run `make upload-repo`.

# Git-PRO users

If you are confident in using git, you can of course use the standard git ways for managing this repo. This will allow you to use all the powerful git tools. Just make an example, to keep your changes on your local version (aka `branch`) and update the online version subsequently. 

[//]: # ()
[//]: # (## Add new content &#40;don't use it for the moment&#41;)

[//]: # (To add new content use `hugo new` command:)

[//]: # ()
[//]: # (        `hugo new post/post-title.md`)

[//]: # ()
[//]: # (This way `hugo` will generate a template markdown file based on corresponding archetype with some of attributes filled with default values &#40;creation timestamp, etc.&#41;, which you can later edit.)

[//]: # ()
[//]: # (More information on adding content can be found in the Hugo documentation in [Content]&#40;https://gohugo.io/content/organization/&#41; and [Getting Started]&#40;https://gohugo.io/overview/quickstart/&#41; sections.)

[//]: # ()
[//]: # (## How can I publish my Jupyter notebook on this website?  &#40;don't use it for the moment&#41;)

[//]: # ()
[//]: # (1. Convert the notebook using `juputer-nbconvert` command, specifying Markdown as an output format:)

[//]: # ()
[//]: # (        jupyter-nbconvert --to markdown ./notebook.ipynb)

[//]: # ()
[//]: # (    This command should convert your notebook to markdown file named `notebook.md` and create a separate directory for the files required for proper rendering of Markdown file named `notebook_files`.)

[//]: # ()
[//]: # (2. Move the `notebook_files` directory somewhere to the `static` folder of the website "notebook_files". Open the `notebook.md` file and edit all the links to the folder, omitting `/static` part of the path. For example:)

[//]: # ()
[//]: # (        ![png]&#40;notebook_files/image.png&#41; --> ![png]&#40;/images/notebook_files/image.png&#41;)

[//]: # ()
[//]: # (3. Create a new post:)

[//]: # ()
[//]: # (        hugo new post/notebook.md)

[//]: # ()
[//]: # (    and copy content from your original `notebook.md` file to the newly created post. This way Hugo will automatically populate some fields in the header of the file.)


[//]: # (All the basic build operations might be carried with the use of `make` command. If you do not have a working installation of GNU Make, study the contents of the `Makefile` and use the corresponding commands to operate the website. Currently following commands are defined in the file:)

[//]: # (    * `build-website`: Generates all the static content for the website. )
[//]: # (    * `preview-website`: Builds the website content and starts Hugo debugging server with live reload enabled. )
[//]: # (* `publish`: Publishes the contents of the `./public` directory to the `master` branch of https://biaslab.github.io repository.)
