# WWW-design

## Setup

We are using the following three core technologies: **VSCode, Git, and Vercel**. You are free to experiment with other services or tools, but for the sake of consistency and easier troubleshooting with your peers, we recommend sticking with this shared environment.

This page references official guides and installation resources. If you encounter problems, you might want to have a look at the official documentation.

### VSCode

Visual Studio Code is our primary code editor. The following guide explains how to install and set up VSCode on Windows, macOS, and Linux:
[VSCode Setup Guide](https://code.visualstudio.com/docs/setup/setup-overview)

We will also use the **Live Server** extension, which allows us to run HTML files locally in the browser with automatic reload on changes. Install it here:
[Live Server Extension](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

After installing, you can access it from the bottom status bar in VSCode.

### Git

Git is required for version control and for interacting with GitHub. It makes sure you can go back in your code's history. This way you cannot destroy anything if you commited it before. Install it using the instructions provided in the official guide:
[How to Install Git](https://github.com/git-guides/install-git)

#### Ssh Key
The ssh key that you create on your local computer and then later on share with Github, works like a form of authentication. This way you and Github can be sure, that you are authorised to make changes in your code. Before going forward we need to setup a working ssh key: [Generating a new ssh key and adding it to the ssh agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

#### GitHub

Our course repository is hosted on GitHub. To work independently, you will need your own copy of the repository. This is done by **forking** the main repository:

1. Open the course repository link: [www-design](https://github.com/maaaaaaaaaaaaaaaax/www-design)
2. Click the **Fork** button in the top right corner – this creates a copy of the repository under your account.
3. Make your you have created a working Ssh Key in the previous step
4. Clone your forked repository onto your computer using Git: [https://docs.github.com/de/repositories/creating-and-managing-repositories/cloning-a-repository](https://docs.github.com/de/repositories/creating-and-managing-repositories/cloning-a-repository)

### Vercel

We are going to use vercel to host our code and publish your website. This way you can access it from anywhere, you will have a "real" website after this step.

## Running

1. Open your local cloned version of the course repository in VSCode.
2. Open the integrated terminal and navigate into the `src` directory. Run:

   `
   ./generate-file-array.sh
   `
3. Navigate to the `index.html` file in the file explorer.
4. Click the **Go Live** button in the VSCode bottom bar.

Your browser should now open and display the running app.

## Developing

Most of the rendering logic is located in `modules/render`. Only make changes here if you are confident in what you are doing.

Development workflow:

* Add new assets and content into their dedicated folders: `/assets`, `/content`.
* Always run `./generate-file-array.sh` after updating content to refresh the file index.
* Write your own custom CSS classes and animations 
* Manually integrate HTML or JavaScript into your app

## Deploying

[--]

## In case of updates
In case the original repository needs to be updated, you need to sync your forked version with the original. Run the following in your console:

1. Add the original repository to your version: `git remote add upstream https://github.com/your-username/y2k-swag-webdesign-course.git`
2. Collect all recent updates: `git fetch upstream`
3. Integrate the updates into your main branch: `git merge upstream/main`

Find more information here: [https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork](https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)

## Further Resources

If you encounter problems, consider the following resources:

* **VSCode Documentation**: [VSCode Docs](https://code.visualstudio.com/docs)
* **Git Documentation**: [Git Docs](https://git-scm.com/doc)
* **GitHub Docs**: [GitHub Documentation](https://docs.github.com/)
* **Vercel Documentation**: [Vercel Docs](https://vercel.com/docs)
* **General Troubleshooting**:

  * [MDN Web Docs](https://developer.mozilla.org/) – Reference for HTML, CSS, and JavaScript.

## Vocabulary

During the course you will encounter a lot of programming-specific language.  
Here you can find definitions of the most important technical terms used in the wiki and in web development.

### Development Environment

**IDE (Integrated Development Environment)**  
A software application that combines a code editor, terminal, and debugging tools in one place (e.g. VSCode).

**Terminal / Console**  
A text-based interface used to run commands.

**Command**  
A text instruction typed into the terminal.

**Local**  
Running something on your own computer.

**Remote**  
Running something on another server (e.g. GitHub, Vercel).

---

### Web Development

**HTML (HyperText Markup Language)**  
Defines the structure of a website.

**CSS (Cascading Style Sheets)**  
Controls the visual design of a website.

**JavaScript (JS)**  
Adds interactivity and logic to websites.

**Live Server**  
A VSCode extension that runs your site locally and reloads it automatically on changes.

**Rendering**  
The process of turning code into a visible website.

**Assets**  
Media files like images, fonts, or videos used in a project.

**Module**  
A separate piece of code that handles a specific task.

---

### Version Control (Git & GitHub)

**Git**  
A tool for tracking changes in code.

**Repository (Repo)**  
A project managed by Git.

**Commit**  
A saved version of your project.

**Branch**  
A parallel version of the project.

**Fork**  
Your own copy of another repository on GitHub.

**Clone**  
Download a repository to your computer.

**Upstream**  
The original repository you forked from.

**Fetch**  
Download updates from another repository.

**Merge**  
Combine changes from different sources.

**Sync**  
Update your fork with the original repository.

---

### Deployment & Hosting

**Deploy**  
Publish your website online.

**Hosting**  
A service that stores your website.

**Server**  
A computer that delivers your website to users.

**Vercel**  
A platform for hosting web projects.

**Production**  
The live, public version of your site.

---

### Command Line & Scripts

**Shell Script (.sh)**  
A file containing terminal commands.

**Run / Execute**  
Start a program or script.

**Argument**  
Extra information passed to a command.

---

### Project Structure

**Index.html**  
The main entry file of a website.

**Source (src)**  
Folder containing the main project files.

**Root Directory**  
The top-level folder of a project.

**Generate**  
Automatically create something (e.g. a file list).

---

### Collaboration

**Pull Request (PR)**  
A request to merge changes into a repository.

**Conflict**  
When changes cannot be merged automatically.

**Issue**  
A tracked problem or task.

---

### Debugging

**Bug**  
An error in the code.

**Debugging**  
Finding and fixing errors.

**Documentation**  
Official instructions for software and tools.
