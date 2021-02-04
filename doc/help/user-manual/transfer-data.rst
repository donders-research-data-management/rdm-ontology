.. _transfer-data:

Transfer data
=============

To transfer data, you should use a HTTP-based file transfer called `WebDAV <https://nl.wikipedia.org/wiki/WebDAV>`_. To use this, you need a username and password.

*Radboud University or RadboudUMC employees can use the credentials provided by their employer (u-, s-, e- or z-number and its password) to use WebDAV file transfer.
If you have no Radboud University of RadboudUMC employee account, first create an account by following the steps on :ref:`this page <transfer-data/data-access-account.rst>` before continuing.*

.. toctree::
   :maxdepth: 1
   :hidden:

    Data access account <transfer-data/data-access-account.rst>

Depending on your operating system, a number of tools are available for transferring data to and from the repository. Please select your preferred one and click on it to get more information.

+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+
| Tool                                                               | User Interface  | Mounts network drive  | Windows         | MacOS           | Linux           |
+====================================================================+=================+=======================+=================+=================+=================+
| :ref:`YodaDrive <YodaDrive>`                                       | Graphical       | X                     | X               |                 |                 |
+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+
| :ref:`Cyberduck <cyberduck>`                                       | Graphical       |                       | X               | X               |                 |
+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+
| :ref:`Mount network drive <mount-network-drive>`                   | Graphical       | X                     | X!*             | X               |                 |
+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+
| :ref:`Thunar <thunar>`                                             | Graphical       | X                     |                 |                 | X               |
+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+
| :ref:`Cadaver <cadaver>`                                           | Command line    |                       |                 |                 | X               |
+--------------------------------------------------------------------+-----------------+-----------------------+-----------------+-----------------+-----------------+

\* *This is not the preferred option for Windows as it can cause several issues. We suggest either using YodaDrive or Cyberduck.*

Best practice is to not work directly on a network drive, but to store your files there whenever you’re done. When you would work directly on a network drive, each update results in a file transfer to a remote system which does involve some latency. Moreover, some tools create files that should not be stored, but that would be transferred anyway. For instance, MAC creates a .DS_Store file, and Word creates ~$temp.docx.


.. toctree::
   :maxdepth: 1
   :hidden:

    YodaDrive <transfer-data/YodaDrive.rst>
    Cyberduck (Windows and MacOSX) <transfer-data/cyberduck.rst>
    Mount network drive (Windows and MacOSX) <transfer-data/mount-network-drive.rst>
    Thunar (Linux - GUI) <transfer-data/thunar.rst>
    Cadaver (Linux - command line) <transfer-data/cadaver.rst>
    

After up- or downloading your files, make sure the transfer was completed accurately.

.. toctree::
   :maxdepth: 1

    Check transferred data <transfer-data/check-transferred-data.rst>
