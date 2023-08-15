# exa Installation Instructions 
> whats exa?
> exa is a modern replacement for the traditional 'ls' command, which is used to list files and directories in a terminal. exa is written in Rust and provides several enhancements over the standard ls, including improved colors, icons, and additional information.
 ### Here is a step-by-step guide to automate the process of building the Exa command-line tool from source using shell scripting. Please review the script and understand its actions before running it.

#### Check for Cargo Installation:
-  Check if the cargo command is available.
-  If not, install Rust using rustup.
#### Print Cargo Version:
-  Display the version of Cargo (Rust's package manager).
#### Set Default Rust Toolchain:
-  Set the default Rust toolchain to stable.
#### Clone exa Repository (if not cloned):
- Check if the "exa" repository directory exists.
-  If not, clone the "exa" repository from GitHub.
#### Change Directory to "exa":
-  Navigate into the "exa" repository directory.
#### Build exa Using Cargo:
-  Build the "exa" program using the Cargo package manager.
#### Check Build Status:
-  Check if the build process was successful.
-  If not, display an error message and exit.
#### Make Binary Executable:
-  Make the compiled "exa" binary executable.
#### Check Write Permissions:
-  Check if the user has write permissions to "/usr/local/bin".
#### Move Binary to /usr/local/bin:
-  If write permissions are granted, move the built "exa" binary to the "/usr/local/bin" directory.
#### Display Success Message:
-  Display a success message indicating that "exa" has been successfully built and installed.

This sequence of steps ensures that Cargo is available, the Rust environment is set up correctly, the "exa" repository is cloned if necessary, the program is built, and the binary is moved to a suitable directory for execution.
