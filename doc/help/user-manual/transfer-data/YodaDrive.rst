.. _YodaDrive:

YodaDrive
=========

YodaDrive is an easy way to integrate your ${repositoryName} collections in your windows file explorer. It is a WebDAV client for Windows, allowing the user to mount a remote WebDAV server as a local drive.

YodaDrive is recommended over :ref:`mounting a network drive <mount-network-drive>` directly using Windows, because it solves the problems with directories with too many files, files that are too large and in general it’s more stable.

Install YodaDrive
-----------------

1. Download and install YodaDrive from https://github.com/UtrechtUniversity/YodaDrive/releases/download/0.2.6.2/YodaDrive-0.2.6.2.zip. You need administrator privileges to complete the installation procedure. If you work on a PC or laptop managed by the RU, please contact the ICT helpdesk to gain temporary administrator privileges.

2. After installation open YodaDrive by clicking on the system tray icon
   
   .. figure:: images/Yoda_system_tray_icon.png
   
   and choosing *Manage*. 

3. Enter the following information, as seen on the screenshot:
   
   .. figure:: images/Yoda_configuration_anonymous_Donders.png
   
   *	*Drive name*: Enter a name for your Yoda Network Drive
   *	*Drive letter*: Select a drive letter - any free letter is okay
   *	*URL*: Either enter ${repositoryWebdavUrl} to access all your collections or enter the link to a specific collection you are working on
   *	*Login*: Your u-number followed by @ru.nl or your z-number followed by @umcn.nl
   *	*Password*: Your password belonging to your RU account
   *	Check the following boxes: *Remember Password* (do NOT check this box if you are on a publicly accessible PC or laptop), *Auto-mount drive* and *Start with Windows* 

4. Click *Save*, then *Mount* and you can now view the Yoda Network Disk in Explorer.
   
   .. figure:: images/Yoda_explorer.png
   
   In order to add data to your ${repositoryName} collection, you need to add files to your Yoda Network Drive in Windows Explorer. Step 5 to 7 will instruct you on how exactly to do this. 

5. Open the folder of your collection in the Yoda Network Drive.
   
   The name of the folder of your collection is based on the *collection identifier*. This identifier can be found underneath the title and abstract of your collection.
   
   .. figure:: images/Yoda_collection_identifier_place.png
   
   The *collection identifier* consists of the following parts:
   
   .. figure:: images/Yoda_collection_identifier.png
   
   These parts correspond to the folder structure in your Yoda Network Drive (i.e. first your organizational unit and then the last part of the *collection identifier*). 

6. You are currently in the folder that corresponds to the collection you want to work in. 
   You can move/open/edit/delete/etc. files in this folder just as you would do in ‘regular’ folders in Windows Explorer.

7. *Optional*. You can check whether your files are synchronised to the ${repositoryName}. In order to do this, open the ${repositoryName} in your browser and log in. Find your collection and select it. Under the tab files you should now see the files you have added in the Yoda Network Drive. 
   
   **Note**: The synchronization to the ${repositoryName} might take some time (up to several hours), especially for large files. Please be patient when handling a lot of and/or large files.
