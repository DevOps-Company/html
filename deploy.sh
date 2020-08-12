user=$(whoami)
echo $user

if [ "$user" = "root" ] ; then
	apt-get install apache2
	if [ ! -d html ] ; then
		git clone https://github.com/DevOps-Company/html.git
	fi
	cd html
	while [ True ] ;
	do
		git pull
		cp index.html /var/www/html/
	done
else
	echo "run from root user"
fi
