folder=`date "+%Y-%m-%d_%H-%M-%S"`;
query=$(mysql -f -u root -e 'show databases' -s --skip-column-names);
mkdir $folder
cd $folder

for I in $query; do
                mysqldump -u root $I | gzip > "$I.sql.gz"
done