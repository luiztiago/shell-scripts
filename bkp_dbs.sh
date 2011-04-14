query=$(mysql -f -u root -e 'show databases' -s --skip-column-names);

for I in $query; do 
		mysqldump -u root $I | gzip > "$I.sql.gz"
done
