.. _transfer-data:

Transfer data
=============

In order to transfer your data into a RDR collection, you have to make use of WebDAV. You can compare this to for example FTP or Samba. A number of tools are available for transferring data to and from the repository, depending on your operating system. Please select your preferred one and click on it to get more information. 
For Windows users, :ref:`YodaDrive <YodaDrive>` is the most easy and accessible solution to use. MacOS users can directly :ref:`Mount the network drive <mount-network-drive>`.

+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+
| Tool                                                | User Interface  | Mounts network drive  | Windows                                 | MacOS           | Linux           |
+=====================================================+=================+=======================+=========================================+=================+=================+
| :ref:`YodaDrive <YodaDrive>`                        | Graphical       | |check|               | |check|                                 |                 |                 |
+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+
| :ref:`Cyberduck <cyberduck>`                        | Graphical       |                       | |check|                                 | |check|         |                 |
+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+
| :ref:`Mount network drive <mount-network-drive>`    | Graphical       | |check|               | |check| |warning|                       | |check|         |                 |
+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+
| :ref:`Thunar <thunar>`                              | Graphical       | |check|               |                                         |                 | |check|         |
+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+
| :ref:`Cadaver <cadaver>`                            | Command line    |                       |                                         |                 | |check|         |
+-----------------------------------------------------+-----------------+-----------------------+-----------------------------------------+-----------------+-----------------+

.. |warning| image:: images/warning.png
             :scale: 50%
             
.. |check| image:: images/checkmark.png
            :scale: 5% 
            :scale: no-scaled-link

|warning| *This is not the preferred option for Windows as it can cause several issues. We suggest either using YodaDrive or Cyberduck.*

To use these tools, you need a username and password. Radboud University and RadboudUMC employees can use the credentials provided by their employer (u-, s-, e- or z-number and its password) to use WebDAV file transfer. If you have no Radboud University of RadboudUMC employee account, first create an account by following the steps on :ref:`this <data-access-account>` page before continuing.

.. toctree::
   :maxdepth: 1
   :hidden:

    Data access account <transfer-data/data-access-account.rst>
    YodaDrive <transfer-data/YodaDrive.rst>
    Cyberduck <transfer-data/cyberduck.rst>
    Mount network drive <transfer-data/mount-network-drive.rst>
    Thunar <transfer-data/thunar.rst>
    Cadaver <transfer-data/cadaver.rst>
    Windows known issues <transfer-data/windows-known-issues.rst>

Best practice is to not work directly on a network drive, but to store your files there whenever you’re done. When you would work directly on a network drive, each update results in a file transfer to a remote system which does involve some latency. Moreover, some tools create files that should not be stored, but that would be transferred anyway. For instance, MAC creates a .DS_Store file, and Word creates ~$temp.docx.

After up- or downloading your files, make sure the transfer was completed accurately.

.. toctree::
   :maxdepth: 1

    Check transferred data <transfer-data/check-transferred-data.rst>
