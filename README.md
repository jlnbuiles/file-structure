# My iOS Project File Structure
I've been developing apps for years now and although every project is different as far as its requirements and complexity, I have started to identify some patterns with respect to how I generally end up structuring my projects. 

After many iterations and a little bit of though, here's a general overview of how I usually organize my projects' file hierarchy:
* **Source** - All source code
  * **Account** - Account-related classes (session-related classes, account logic, etc)
  * **Application** - Application-related classes. App delegate, configuration classes, etc
  * **Core Additions** - Extensions and subclasses stemming from apple's classes
    * **Utilities** - General utility classes. Useful extensions, formatting utilities, convenience classes and such
    * **Element-based folders** - Folder for UIView, UITableViewCell, etc
  * **Local Persistence** - Local persistence layer. All interactions with local database (realm, core data)
    * **Repositories** - All model-related local persitence logic
  * **Constants** - All constants. URLs, fonts, colors, errors, etc 
  * **Models** - All models (server-side entities' representation). We would also throw here any object mapping logic
  * **Modules** - Here we can find each of the application's pieces divided by functionality
    * **Module-based folders** - Each folder contains all module-specific view controllers, views, delegates and related classes
  * **Networking** - The app's networking layer (e.g. classes responsible for interacting with web services)
    * **Services** - All model-related web logic
* **Storyboards** - Contains all storyboard files
* **Resources** - Any additionaly resources like media, documents, localization files and such


![Xcode Screenshot](https://github.com/jlnbuiles/file-structure/blob/master/FileStructure/Resources/Xcode%20Screenshot.png "Xcode side bar screenshot")


#### Notes
* In small enough applications, a service and repository can probably live within the same file for a given class
* In large enough projects, each module might contain sub-modules as it grows in complexity
* If you're disciplined about your design patterns (MVC, MMVC or even VIPER) these seem to fit well inside the modules folder by dividing their core elements within each module as subfolders for large projects or plain files if the project is small enough
* I suggest to use folders instead of folder references for numerous reasons:
  * It organizes your project outside of Xcode
  * Makes repository more manageable (allows you to visualize project way easier in your repo)
  * Allows you to do cool things like commit in a specific directory
* It seems like Xcode **FINALLY** (tested with v.9.1) creates folders in your file system for you if you created a group inside Xcode's file navigator (via right click)
* There are tools like Venmo's [Synx](https://github.com/venmo/synx)
   that help you organize your existing project into folders if you haven't already. Be sure to check it out!
