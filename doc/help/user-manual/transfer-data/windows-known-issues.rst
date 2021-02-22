.. _windows-known-issues:

Windows known issues
====================

.. note::
    :mode: warning
    
    Mounting a network drive on Windows is known to be unstable and often problematic. It is suggested to use other WebDAV client (such as :ref:`YodaDrive <YodaDrive>` or :ref:`Cyberduck <cyberduck>`) to transfer data on Windows. If you decide to use it anyway be aware of the issues below.

|
.. _too-many-files:

Directories with too many files
-------------------------------

By default you cannot download more than 1000 files per folder on Windows.
You can prevent this by maximizing the files uploaded per folder to 1000, or by archiving them a tool like zip or tar. Keep in mind this might make it less friendly for the end user.

Workaround is to either use another tool such as :ref:`YodaDrive <YodaDrive>` or :ref:`Cyberduck <cyberduck>` or have a system administrator increase the number (DWORD) value of the following registry value:

.. code-block:: none

   HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient\Parameters\FileAttributesLimitInBytes

The maximum value for this is +- 4.3 million files (decimal 4294967295, hexadecimal ffffffff). 

The default value is 1000 files (decimal 1000000).

References
^^^^^^^^^^

https://docs.microsoft.com/en-us/troubleshoot/windows-client/networking/cannot-access-webdav-web-folder 

|
.. _too-large-files:

Files that are too large
------------------------

By default you cannot download files larger than 50 MB on Windows.
You can either prevent uploading these files, or consider splitting them up. Keep in mind this might make it less friendly for the end user.

Workaround is to either use another tool such as :ref:`YodaDrive <YodaDrive>` or :ref:`Cyberduck <cyberduck>` or have a system administrator increase the bytes value of the following registry value:

.. code-block:: none

   HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient\Parameters\FileSizeLimitInBytes

The maximum value is +- 4.3 GB (decimal 4294967295, hexadecimal ffffffff). 

The default value is 50 MB (decimal 50000000).

References
^^^^^^^^^^ 

`https://support.microsoft.com/en-us/topic/you-cannot-download-more-than-50-mb-or-upload-large-files <https://support.microsoft.com/en-us/topic/you-cannot-download-more-than-50-mb-or-upload-large-files-when-the-upload-takes-longer-than-30-minutes-using-web-client-in-windows-7-8709ae9d-e808-c5a0-95d0-9a7143c50b11>`_

|
.. _reserved-characters:

Files with reserved characters
------------------------------

Files containing the following characters or names can be uploaded with other operating systems, but cannot be downloaded on Windows:

* Files with the following reserved characters:
  
  * < (less than)
  
  * > (greater than)
  
  * : (colon)
  
  * " (double quote)
  
  * / (forward slash)
  
  * \\ (backslash)
  
  * \| (vertical bar or pipe)
  
  * ? (question mark)
  
  * \* (asterisk)

* Files with integer value zero, sometimes referred to as the ASCII NUL character.

* Files with the following reserved names:
  CON, PRN, AUX, NUL, COM1, COM2, COM3, COM4, COM5, COM6, COM7, COM8, COM9, LPT1, LPT2, LPT3, LPT4, LPT5, LPT6, LPT7, LPT8, and LPT9.

* Files or directories that end with a space or a period.

Prevent this by not using these reserved characters or names.

Workaround is to store these files with a different name that does not contain the reserved characters. This can be done by providing a different target filename on the command line, or using a tool that supports to download files with a different name, such as :ref:`Cyberduck <cyberduck>`.

References
^^^^^^^^^^ 

https://docs.microsoft.com/en-us/windows/win32/fileio/naming-a-file 

|
.. _exceed-path-length:

Files that exceed the path length
---------------------------------

Files uploaded using another operating system such as Linux might not be downloadable to any path in Windows. This is illustrated below:

+-------------------+-----------------------+-------------------+-----------------------+-------------------+
| Operating system  | File systems          | Max length total  | Max length filename   | Max length path   |
+===================+=======================+===================+=======================+===================+
| Linux             | EXT4, most others     | 4096              | 255                   | 4096              |
+-------------------+-----------------------+-------------------+-----------------------+-------------------+
| Windows 10        | NTFS                  | 260               |                       | 260               |
+-------------------+-----------------------+-------------------+-----------------------+-------------------+
| MacOS             | APFS, HFS+            | unlimited         | 255                   |                   |
+-------------------+-----------------------+-------------------+-----------------------+-------------------+

For example, when you try to download a file with path length 300 Windows will do nothing, without giving you a specific error message.

In order to prevent this problem a good practice is to avoid uploading files in very long 
paths, longer than 200 characters.

Workaround is to download these files to a target directory with a short path, such as a file system root directory: ``C:\``

References
^^^^^^^^^^ 

https://docs.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation
https://en.wikipedia.org/wiki/Comparison_of_file_systems#Limits 
