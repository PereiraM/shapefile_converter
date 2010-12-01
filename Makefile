
all: kml mysql

kml: shapefile_src/shpopen.o shapefile_src/dbfopen.o
	g++ -Wall -O3 to_kml.c shapefile_src/shpopen.o shapefile_src/dbfopen.o -o shapefile_to_kml

mysql: shapefile_src/shpopen.o shapefile_src/dbfopen.o
	g++ -Wall -O3 to_mysql.c shapefile_src/shpopen.o shapefile_src/dbfopen.o -o shapefile_to_mysqldump
