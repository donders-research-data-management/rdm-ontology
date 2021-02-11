.. _YodaDrive:

YodaDrive
=========

YodaDrive is an easy way to integrate your RDR collections in your windows file explorer. It is a WebDAV client for Windows, allowing the user to mount a remote WebDAV server as a local drive.

YodaDrive is recommended over :ref:`mounting a network drive <mount-network-drive>` directly using Windows, because it solves the problems with directories with too many files, files that are too large and in general it’s more stable.

Install YodaDrive
-----------------
1. Download and install YodaDrive from https://github.com/UtrechtUniversity/YodaDrive/releases/download/0.2.6.2/YodaDrive-0.2.6.2.zip. You need administrator privileges to complete the installation procedure. Contact the ICT helpdesk in case you temporarily need them.
2. After installation open YodaDrive by clicking on the system tray icon
   
   .. figure:: images/Yoda_system_tray_icon.png
   
   and choosing *Manage*. 
3. Enter the following information, as seen on the screenshot:
   
   .. figure:: images/Yoda_configuration_anonymous.png
   
   *	*Drive letter*: Select a drive letter - any free letter is okay.
   *	*URL*: Either enter ${repositoryWebdavUrl} to access all your collections or enter the link to a specific collection you are working on.
   *	*Login*: Your u-number or z-number followed by @ru.nl
   *	*Password*: Your password belonging to your RU account
   *  Check the following boxes: *Remember Password* (only if you are working on a personal PC or laptop), *Auto-mount drive* and *Start with Windows*
|
4. Click *Save*, then *Mount* and you can now view the Yoda Network Disk in Explorer. 
