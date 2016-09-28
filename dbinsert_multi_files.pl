#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp;
use DBI;
use Config::Simple;

my $driver = "mysql";
my $database = "learnpearl";
my $dsn = "DBI:$driver:database=$database";
my $username = "root";
my $password = "";

#file source
my $source = "";

#DB coonect
my $dbh = DBI->connect($dsn,$username,$password) or die $DBI::errstr;

my $sth;
my $x;
my @lines;
my @words;
my @text;
my $file;

#Read line from file
     @lines = read_file("config.ini");
     	
	for($x=0;$x<=7;$x++)
	{
	     
	     #Split line into words 
	     @words = split /[|.]/, $lines[$x];
		 $file = $words[1];
		 
		 #read file 
		 @text = read_file("$file.php");
		 print @text;     
		
		 #update data in table
		 my $sth = $dbh->prepare("UPDATE table2 SET data = ? WHERE id= ? ");
	     $sth->execute(@text,$words[0]) or die $DBI::errstr;
	     $sth->finish();
		      
	}