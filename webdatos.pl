binmode(STDOUT,"ENCODING(CP850)");
binmode(STDIN,"ENCODING(CP850)");

use strict;
use WWW::Mechanize;

my $url = $ARGV[0];
my $tipo = $ARGV[1];
my $fichero = $ARGV[2]; 

 	my $mechanize = WWW::Mechanize->new();
 	$mechanize->get ($url);
 	my @elementos = $mechanize->$tipo;
 	my $resultado;
 	foreach(@elementos)
 	{
 		$resultado .= $_->url. "\n";
 	}



	open(ARCHIVO, ">","links.txt");
    print ARCHIVO $resultado;
    close(ARCHIVO);

print $resultado;



 use strict;
use LWP::Simple;

my $url = $ARGV[0];
my $content = LWP::Simple::get($url);
open(ARCHIVO, ">", "contenido.txt");
print ARCHIVO $content;
close(ARCHIVO);
open(ARCHIVO, "<", "contenido.txt");
my $regex = qr/[A-Z0-9._%+-]+\@[A-Z0-9.-]+\.[A-Z]{2,4}/i;
my $datos;
while (<ARCHIVO>) {
	while (/($regex)/g) {
		$datos .= $1 . "\n";
		print"Email:". $1 . "\n";
	}
}
close ARCHIVO;
open(ARCHIVO, ">>", "emails.txt");
print ARCHIVO $datos;
close(ARCHIVO);


open(ARCHIVO, "<", "contenido.txt");
my $regex = qr/\([0-9]+[0-9]\)+[0-9]+[0-9]+[0-9]+[0-9]+\-[0-9]+[0-9]+[0-9]+[0-9]/i;
my $datos;
while (<ARCHIVO>) {
	while (/($regex)/g) {
		$datos .= $1 . "\n";
		print"telefono:". $1 . "\n";
	}
}
close ARCHIVO;
open(ARCHIVO, ">>", "tel.txt");
print ARCHIVO $datos;
close(ARCHIVO);
