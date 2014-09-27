# Display the name of each data file and count of the number
# of distinct occurences of each species in that file.
# Results are displayed in alphabetical order by species name.
for file_name in data/*.txt
do
    echo $file_name
    grep -v Species $file_name | cut -d , -f 2 | sort | uniq -c
done
