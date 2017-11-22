# My iOS Project File Structure
A simple file structure proposal suitable for any small or mid-sized iOS code base.

I've been developing apps for years now and although every project is different as far as its requirements and complexity, I have started to identify some patterns with respect to how I generally end up structuring my projects. 

After many iterations and a little bit of though, here's a general overview of how I usually organize my project's file hierarchy:
* Source - All source code
  * Account - Account-related classes (session-related classes, account logic, etc)
  * Application - Application-related classes. App delegate, configuration classes, etc
  * Core Additions - Extensions and subclasses stemming from apple's classes
    * Utilities - General utility classes. Useful extensions, formatting utilities, convenience classes and such
    * Element-based folders - Folder for UIView, UITableViewCell, etc
  * Local Persistence - Local persistence layer. All interactions with local database (realm, core data)
    * Repositories - All model-related local persitence logic
  * Constants - All constants. URLs, fonts, colors, errors, etc 
  * Models - All models (server-side entities' representation). We would also throw here any object mapping logic
  * Modules - All application modules. Here we can find each of the application's pieces divided by functionality. Here we also create a folder for each module. Each folder contains all module-specific view controller, view, delegate and presenting classes
  * Networking - The app's networking layer (e.g. classes responsible for interacting with web services)
    * Services - All model-related web logic
* Storyboards - Contains all storyboard files
* Resources - Any additionaly resources like media, documents, localization files and such

Markup : ![Xcode Screenshot](https://github.com/jlnbuiles/file-structure/blob/master/FileStructure/Resources/Xcode%20Screenshot.png "Xcode side bar screenshot")

#### Notes
* In small enough applications, a service and repository can probably live within the same file for a given class
* In large enough projects, each module might contain sub-modules as it grows in complexity
* I suggest to use folders instead of folder references for numerous reasons:
  * It organizes your project outside of Xcode
  * Makes repository more manageable (allows you to visualize project way easier in your repo)
  * Allows you to do cool things like commit in a specific directory
