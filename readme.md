JEDI Code Library for Freepascal
================================


The JEDI Code Library (JCL) consists of a set of thoroughly tested and fully documented
utility functions and non-visual classes which can be instantly reused in your Delphi
and C++ Builder projects.

This fork aims to keep JCL compatible with Freepascal/Lazarus.

The original repository can be found at <https://github.com/project-jedi/jcl>

Clone with GIT
--------------
```
> git clone git://github.com/blikblum/jcl.git jcl
> cd jcl
```

Requirements
------------

Freepascal 2.6.4

Lazarus 1.2.x or above

How to install
--------------
Open the **jcl/packages/fpc/*.lpk** files in Lazarus and compile

Add the compiled package as a dependency in your Lazarus project

For more info about Lazarus packages: <http://wiki.freepascal.org/Lazarus_Packages>

Report Bugs
-----------
To make the bug reporting as efficient as possible, please try to follow these rules:

- Make the report as detailed as possible so we have a fair chance to reproduce and fix it.
- If you have any code that reproduce the problem, attach it to the report (zip file, source only, no dependencies on third-party software).
- Detailed steps are mandatory for us to understand and solve your problem. 
- If you already have a solution you believe will work, include it in the bug report.
- Be prepared to monitor the report after submission since it is very common that we will need additional information.

Use the github [issues](https://github.com/blikblum/jcl/issues) to report a bug

Remarks
-------
 - JclContainers.lpk package was merged into Jcl.lpk. It was necessary because one package was depending from the other.
 - The code is mostly untested under fpc. Only JclExprEval unit was tested.
 - Assembler code was disabled in non windows, so some functions may not have the same performance as in Delphi
 
Known Issues
------------
 - JclVcl.lpk, JclDeveloperTools.lpk compiles only in windows 
 - In the first try to compile JclVcl.lpk package, the compiler will abort due to an Access violation. The compilation will succeed in the second try.
 - Many units from Jcl.lpk relies on Windows specific code that cannot be ported in straight manner to other enviroments. It was created a new package JclWin.lpk with the windows specific units.
 - Jcl.lpk will not be compiled under non windows with THREADSAFE directive defined. Code enclosed in THREADSAFE directives relies on JclSynch that relies on windows specific code.
 - Some functions/procedures where commented under non windows
 - MultiByteToWideChar/WideCharToMultiByte functions were created in non windows to get JclStringConversions compiled. Since fpc 2.6.4 does not have code page aware string support, working with arbitrary code pages won't work in non windows. Using CP_ACP or CP_UTF8 should work fine.
 - Fpc does note have a Mapi unit even in Windows, so JclMapi is not compiled
