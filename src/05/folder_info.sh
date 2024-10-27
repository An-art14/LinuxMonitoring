#!/bin/bash

echo "Total number of folders (including all nested ones) = $(find $dir -type d | wc -l )"

top_folders=$(du -h "$dir" 2>/dev/null | sort -hr | head -n 5 | awk '{print $2 ", " $1}')
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$top_folders" | nl -w1 -s ' - ' 

echo "Total number of files = $(find $dir -type f | wc -l)"

echo "Number of:  "
conf_files=$(find "$dir" -type f -name "*.conf" 2>/dev/null | wc -l)
echo "Configuration files (with the .conf extension) = $conf_files"
text_files=$(find "$dir" -type f -name "*.txt" 2>/dev/null | wc -l)
echo "Text files = $text_files"
executable_files=$(find "$dir" -type f -executable 2>/dev/null | wc -l)
echo "Executable files = $executable_files"
log_files=$(find "$dir" -type f -name "*.log" | wc -l)
echo "Log files (with the extension .log) = $log_files"
archive_files=$(find "$dir" -type f -name "*.zip" -o -name "*.tar" -o -name "*.gz" | wc -l)
echo "Archive files = $archive_files"
symbolic_links=$(find "$dir" -type l | wc -l)
echo "Symbolic links = $symbolic_links"

top_ten_files=$(find "$dir" -type f -exec du -h {} + 2>/dev/null | sort -hr | head -n 10 | awk '{print $2 ", " $1 }')
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
index=1
while  read  file; do
    line=$(echo "$file" | cut -d ',' -f1) 
    per=$(echo "$line" | rev | cut -d. -f1 | rev)
    echo "$index - $file, $per"
    ((index++))
done <<< "$top_ten_files"

top_exec_files=$(find "$dir" -type f -executable -exec du -h {} + 2>/dev/null | sort -hr | head -n 10 | awk '{print $2 ", " $1 }')
echo "TOP 10 executable files of maximum size arranged in descending order (path, size and type):"
index=1
while  read  file; do
    line=$(echo "$file" | cut -d ',' -f1) 
    hash=$(echo "$line" | md5sum | cut -d ' ' -f1) 
    echo "$index - $file, $hash"
    ((index++))
done <<< "$top_exec_files"