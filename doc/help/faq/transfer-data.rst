Transfer data
=============

.. _faq-files-without-checksum:

1.  **Why are there files without checksum in the manifest file?**

    The checksum calculation is performed in the background after the file is uploaded to the repository.  Before the checkum is available, you can expect files without checksum in the manifest file.  If this happens to you, wait a few minutes and try download the manifest file again.

.. _faq-download-manifest-timeout:

2.  **It took very long time to download the manifest file; and eventually failed with the "504 Gateway Time-out" error.  What should I do?**

    Generating the manifest file can be a time-consuming process when the collection contains a large amount of files (e.g. more than 50,000 files in the collection).  If the process takes too long to complete, the system will terminate it and throw the *504 Gateway Time-out* error.  If this happens to you, please contact ${repositorySupportEmail} to request for the manifest file.

.. _faq-file-transfer-error:

3. **Why do I get the following error during a file transfer?**

+---------------------------------------+---------------------------------------------------+
| Error message                         | Solution                                          |
+=======================================+===================================================+
| The file exceeds the limits allowed   | The directory probably has                        |
| and cannot be saved                   | :ref:`too many files <too-many-files>`            |
+---------------------------------------+---------------------------------------------------+
| Access denied. Please verify disk     | The file you want to download is probably         |
| permissions                           | :ref:`too large <too-large-files>`                |
+---------------------------------------+---------------------------------------------------+
| … is not accessible. You might not    | The file probably has a                           |
| have permissions to use this network  | :ref:`reserved character <reserved-characters>`   |
| resource                              |  or name in it                                    |      |
+---------------------------------------+---------------------------------------------------+
| Could not find this item. This is no  | The file probably exceeds the                     |
| longer located in …                   | :ref:`path length <exceed-path-length>`           |
+---------------------------------------+                                                   |
| Invalid file handle                   |                                                   |
+---------------------------------------+                                                   |
| The file name you specified is not    |                                                   |
| valid or too long                     |                                                   |
+---------------------------------------+                                                   |
| This file name is reserved for use by |                                                   |
| Windows                               |                                                   |
+---------------------------------------+                                                   |
| Unexpected error. The parameter is    |                                                   |
| incorrect                             |                                                   |
+---------------------------------------+                                                   |
| The file is too large for the         |                                                   |
| destination file system               |                                                   |
+---------------------------------------+                                                   |
| FileStream was asked to open a device |                                                   |
| that was not a file                   |                                                   |
+---------------------------------------+                                                   |
| Path does not exist                   |                                                   |
+---------------------------------------+---------------------------------------------------+
