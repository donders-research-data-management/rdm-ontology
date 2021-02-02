Transfer data
=============

.. _faq-files-without-checksum:

1.  **Why are there files without checksum in the manifest file?**

    The checksum calculation is performed in the background after the file is uploaded to the repository.  Before the checkum is available, you can expect files without checksum in the manifest file.  If this happens to you, wait a few minutes and try download the manifest file again.

.. _faq-download-manifest-timeout:

2.  **It took very long time to download the manifest file; and eventually failed with the "504 Gateway Time-out" error.  What should I do?**

    Generating the manifest file can be a time-consuming process when the collection contains a large amount of files (e.g. more than 50,000 files in the collection).  If the process takes too long to complete, the system will terminate it and throw the *504 Gateway Time-out* error.  If this happens to you, please contact ${repositorySupportEmail} to request for the manifest file.

.. faq-file-transfer-error:

3. **Why do I get the following error during a file transfer?**

+---------------------------------------+-------------------------------------------+
| Error message                         | Solution                                  |
+=======================================+===========================================+
| The file exceeds the limits allowed   | The directory probably has too many files.|
| and cannot be saved                   |                                           |
+---------------------------------------+-------------------------------------------+
| Access denied. Please verify disk     | The file you want to download is probably |
| permissions                           | too large                                 |
+---------------------------------------+-------------------------------------------+
| … is not accessible. You might not    | The file probably has a reserved          |
| have permissions to use this network  | character or name in it                   |
| resource.                             |                                           |
+---------------------------------------+-------------------------------------------+
