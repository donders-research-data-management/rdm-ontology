.. _cyberduck:

Cyberduck
=========

For Windows and MacOSX users, the recommended WebDAV client is Cyberduck.

*Please do not use older versions of Cyberduck than version 4.8.4. Cyberduck interface for MacOSX is very similar so it will not be described separately.*

Install Cyberduck
-----------------

If you are a Radboud University employee and have access to the Software Center, you can easily download CyberDuck via the `Software Center <https://www.ru.nl/ict-uk/staff/software/software-center/>`_. Otherwise, you can download the installer from the software's website. Once downloaded, follow the instructions step-by-step while executing the installer.

.. figure:: images/cyberduck_setup.png

Start with cyberduck
--------------------

When you open Cyberduck after installation, the interface looks like this:

.. figure:: images/cyberduck_start.png

To view, upload and download files you need to create a new bookmark. Click on the "+" sign to create a new bookmark.

.. figure:: images/cyberduck_new_input.png

A new pop-up window will appear. In this window you must configure the bookmark as follows:

- **WebDAV (HTTP/SSL)**
- **Nickname: add a freely chosen nickname to the new connection**
- Server: **${repositoryWebdavUrl}**
- Port: **443**
- Username: the *username* (CASE SENSITIVE!) of the :ref:`data access account <data-access-account>`

The configurations are saved to the bookmark automatically. Just close the configuration window when you are done.

.. figure:: images/cyberduck_credentials.png

Double-click on the saved bookmark to make connection.

You will be asked to provide the username and password of your :ref:`data access account <data-access-account>` to login window of Cyberduck. In that window, make sure you tick the option Save password (MacOSX: "Add to Keychain").

.. figure:: images/cyberduck_login.png

Transferring Data
-----------------

After your login, you will see a number of directories: one for each organisational unit of the ${organizationDescription}.

.. figure:: images/cyberduck_directory.png

In the subtree of a particular organisational unit, you will see directories of collections in which you are authorized for data access (i.e., you are a viewer, contributor or manager of the corresponding collection). As a viewer of a collection, you are only allowed to download data from that collection. As a contributor or manager, you are also allowed to upload and modify data.

After entering a collection's directory you can download data by selecting files/directories followed by clicking the "Action" button on the menu bar. In the drop-down menu, choose one of the download options and follow the dialog to save them locally.

.. figure:: images/cyberduck_download.png

Upload a file/directory by selecting the Action button on the menu bar. A dialog window will pop-up for you to select local files to upload. See the screenshot below:

.. figure:: images/cyberduck_upload.png

.. note::

   If the WebDAV client (i.e. Cyberduck) is inactive for two hours (e.g. no browsing or data transfer activities), you will be logged out automatically by the WebDAV server. In this case, you will have to login again with your :ref:`data access account <data-access-account>`.

If you try to upload files to a directory for which you are not authorized (i.e., you are not a contributor or manager of the corresponding collection), you will get an Internal Server Error message similar to the screenshot below.

.. figure:: images/cyberduck_error.png

.. include:: readmore.rst
