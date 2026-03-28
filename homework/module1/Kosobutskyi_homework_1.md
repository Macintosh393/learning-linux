# Завдання 1
## Базові команди
1. 
``` 
user@debian:~$ ls -la
total 88
drwxr-xr-x 16 user user 4096 бер 28 15:38 .
drwxr-xr-x  3 root root 4096 бер 20  2024 ..
-rwxr-xr-x  1 root root   33 лип  1  2024 auth.sh
-rw-------  1 user user  615 бер 28 15:38 .bash_history
-rw-r--r--  1 user user  220 бер 20  2024 .bash_logout
-rw-r--r--  1 user user 3526 бер 20  2024 .bashrc
drwx------ 12 user user 4096 бер 28 15:38 .cache
drwx------ 12 user user 4096 бер 28 15:38 .config
drwxr-xr-x  2 user user 4096 бер 28 14:48 Desktop
drwxr-xr-x  3 user user 4096 бер 28 14:56 Documents
drwxr-xr-x  2 user user 4096 бер 28 15:33 Downloads
-rw-r--r--  1 user user   94 бер 28 15:02 .gitconfig
drwxr-xr-x  3 user user 4096 бер 20  2024 .local
drwx------  4 user user 4096 бер 28 14:58 .mozilla
drwxr-xr-x  2 user user 4096 бер 28 14:48 Music
drwxr-xr-x  2 user user 4096 бер 28 14:48 Pictures
drwx------  3 user user 4096 бер 28 15:38 .pki
-rw-r--r--  1 user user  807 бер 20  2024 .profile
drwxr-xr-x  2 user user 4096 бер 28 14:48 Public
drwxr-xr-x  2 user user 4096 бер 28 14:48 Templates
drwxr-xr-x  2 user user 4096 бер 28 14:48 Videos
drwxr-xr-x  4 user user 4096 бер 28 15:39 .vscode 
```
2. 
```
user@debian:~$ cd ./Downloads/
user@debian:~/Downloads$ ls -la
total 127044
drwxr-xr-x  2 user user      4096 бер 28 15:33 .
drwxr-xr-x 16 user user      4096 бер 28 15:38 ..
-rw-r--r--  1 user user 130080366 бер 28 15:33 code_1.113.0-1774364744_amd64.deb
```
3. `user@debian:~/Downloads$ > empty-file.txt`
4. `ser@debian:~/Downloads$ cat empty-file.txt` 

5. `user@debian:~/Downloads$ cd /home/user`
6. `user@debian:~$ cd ~`

# Завдання 2
## Робота з документацією
1. 
`user@debian:~$ man ls`
```
S(1)                            User Commands                           LS(1)

NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION
       List  information  about  the FILEs (the current directory by default).
       Sort entries alphabetically if none of -cftuvSUX nor --sort  is  speci‐
       fied.

       Mandatory  arguments  to  long  options are mandatory for short options
       too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
```
2. 
```
user@debian:~$ help cd
cd: cd [-L|[-P [-e]] [-@]] [dir]
    Change the shell working directory.
    
    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.
    
    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.
    
    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.
    
    Options:
      -L	force symbolic links to be followed: resolve symbolic
    		links in DIR after processing instances of `..'
      -P	use the physical directory structure without following
    		symbolic links: resolve symbolic links in DIR before
    		processing instances of `..'
      -e	if the -P option is supplied, and the current working
    		directory cannot be determined successfully, exit with
    		a non-zero status
      -@	on systems that support it, present a file with extended
    		attributes as a directory containing the file attributes
    
    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.
    
    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.
```
3. 
`user@debian:~$ man cat`
```
CAT(1)                           User Commands                          CAT(1)

NAME
       cat - concatenate files and print on the standard output

SYNOPSIS
       cat [OPTION]... [FILE]...

DESCRIPTION
       Concatenate FILE(s) to standard output.

       With no FILE, or when FILE is -, read standard input.

       -A, --show-all
              equivalent to -vET

       -b, --number-nonblank
              number nonempty output lines, overrides -n

       -e     equivalent to -vE

       -E, --show-ends
              display $ at end of each line
```
4. 
`user@debian:~$ man man`
```
MAN(1)                        Manual pager utils                        MAN(1)

NAME
       man - an interface to the system reference manuals

SYNOPSIS
       man [man options] [[section] page ...] ...
       man -k [apropos options] regexp ...
       man -K [man options] [section] term ...
       man -f [whatis options] page ...
       man -l [man options] file ...
       man -w|-W [man options] page ...

DESCRIPTION
       man  is  the system's manual pager.  Each page argument given to man is
       normally the name of a program, utility or function.  The  manual  page
       associated with each of these arguments is then found and displayed.  A
       section, if provided, will direct man to look only in that  section  of
       the  manual.   The  default action is to search in all of the available
       sections following a pre-defined order (see DEFAULTS), and to show only
       the first page found, even if page exists in several sections.
```
5. 
```
user@debian:~$ cp --help
Usage: cp [OPTION]... [-T] SOURCE DEST
  or:  cp [OPTION]... SOURCE... DIRECTORY
  or:  cp [OPTION]... -t DIRECTORY SOURCE...
Copy SOURCE to DEST, or multiple SOURCE(s) to DIRECTORY.

Mandatory arguments to long options are mandatory for short options too.
  -a, --archive                same as -dR --preserve=all
      --attributes-only        don't copy the file data, just the attributes
      --backup[=CONTROL]       make a backup of each existing destination file
  -b                           like --backup but does not accept an argument
      --copy-contents          copy contents of special files when recursive
  -d                           same as --no-dereference --preserve=links
  -f, --force                  if an existing destination file cannot be
                                 opened, remove it and try again (this option
                                 is ignored when the -n option is also used)
  -i, --interactive            prompt before overwrite (overrides a previous -n
                                  option)
  -H                           follow command-line symbolic links in SOURCE
  -l, --link                   hard link files instead of copying
  -L, --dereference            always follow symbolic links in SOURCE
  -n, --no-clobber             do not overwrite an existing file (overrides
                                 a previous -i option)
  -P, --no-dereference         never follow symbolic links in SOURCE
  -p                           same as --preserve=mode,ownership,timestamps
      --preserve[=ATTR_LIST]   preserve the specified attributes (default:
                                 mode,ownership,timestamps), if possible
                                 additional attributes: context, links, xattr,
                                 all
      --no-preserve=ATTR_LIST  don't preserve the specified attributes
      --parents                use full source file name under DIRECTORY
  -R, -r, --recursive          copy directories recursively
      --reflink[=WHEN]         control clone/CoW copies. See below
      --remove-destination     remove each existing destination file before
                                 attempting to open it (contrast with --force)
      --sparse=WHEN            control creation of sparse files. See below
      --strip-trailing-slashes  remove any trailing slashes from each SOURCE
                                 argument
  -s, --symbolic-link          make symbolic links instead of copying
  -S, --suffix=SUFFIX          override the usual backup suffix
  -t, --target-directory=DIRECTORY  copy all SOURCE arguments into DIRECTORY
  -T, --no-target-directory    treat DEST as a normal file
  -u, --update                 copy only when the SOURCE file is newer
                                 than the destination file or when the
                                 destination file is missing
  -v, --verbose                explain what is being done
  -x, --one-file-system        stay on this file system
  -Z                           set SELinux security context of destination
                                 file to default type
      --context[=CTX]          like -Z, or if CTX is specified then set the
                                 SELinux or SMACK security context to CTX
      --help     display this help and exit
      --version  output version information and exit

By default, sparse SOURCE files are detected by a crude heuristic and the
corresponding DEST file is made sparse as well.  That is the behavior
selected by --sparse=auto.  Specify --sparse=always to create a sparse DEST
file whenever the SOURCE file contains a long enough sequence of zero bytes.
Use --sparse=never to inhibit creation of sparse files.

When --reflink[=always] is specified, perform a lightweight copy, where the
data blocks are copied only when modified.  If this is not possible the copy
fails, or if --reflink=auto is specified, fall back to a standard copy.
Use --reflink=never to ensure a standard copy is performed.

The backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control method may be selected via the --backup option or through
the VERSION_CONTROL environment variable.  Here are the values:

  none, off       never make backups (even if --backup is given)
  numbered, t     make numbered backups
  existing, nil   numbered if numbered backups exist, simple otherwise
  simple, never   always make simple backups

As a special case, cp makes a backup of SOURCE when the force and backup
options are given and SOURCE and DEST are the same name for an existing,
regular file.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/cp>
or available locally via: info '(coreutils) cp invocation'
```
6. 
```
user@debian:~$ mv --help
Usage: mv [OPTION]... [-T] SOURCE DEST
  or:  mv [OPTION]... SOURCE... DIRECTORY
  or:  mv [OPTION]... -t DIRECTORY SOURCE...
Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.

Mandatory arguments to long options are mandatory for short options too.
      --backup[=CONTROL]       make a backup of each existing destination file
  -b                           like --backup but does not accept an argument
  -f, --force                  do not prompt before overwriting
  -i, --interactive            prompt before overwrite
  -n, --no-clobber             do not overwrite an existing file
If you specify more than one of -i, -f, -n, only the final one takes effect.
      --strip-trailing-slashes  remove any trailing slashes from each SOURCE
                                 argument
  -S, --suffix=SUFFIX          override the usual backup suffix
  -t, --target-directory=DIRECTORY  move all SOURCE arguments into DIRECTORY
  -T, --no-target-directory    treat DEST as a normal file
  -u, --update                 move only when the SOURCE file is newer
                                 than the destination file or when the
                                 destination file is missing
  -v, --verbose                explain what is being done
  -Z, --context                set SELinux security context of destination
                                 file to default type
      --help     display this help and exit
      --version  output version information and exit

The backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control method may be selected via the --backup option or through
the VERSION_CONTROL environment variable.  Here are the values:

  none, off       never make backups (even if --backup is given)
  numbered, t     make numbered backups
  existing, nil   numbered if numbered backups exist, simple otherwise
  simple, never   always make simple backups

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/mv>
or available locally via: info '(coreutils) mv invocation'
```

## Питання
1. Який ключ `ls` показує приховані файли?  
**Відповідь:** `-a`
2. Який ключ `cat` нумерує рядки?  
**Відповідь:** `-n`
3. Чим відрізняються `man` і `--help`?  
**Відповідь:** `--help` є найшвидшим способом пригадати прапорці до команди та отримати базову інформацію, а `man` є розгорнутою локальною документацією до команд та функцій, що дозволяє найдетальніше ознайомитись з всіма можливостями.

# Завдання 3
## Сценарій
1. `user@debian:~/Documents/Learning/homework/module1$`
2. `user@debian:~/Documents/Learning/homework/module1$ touch new-file.txt`
3. `ser@debian:~/Documents/Learning/homework/module1$ ls -la`
4. `user@debian:~/Documents/Learning/homework/module1$ cd /`
5. `user@debian:/$ cd -`
6. `user@debian:~/Documents/Learning/homework/module1$ man mv`