# some custom extensions to clear up
$clean_ext .= ' loa run.xml xmpdata';

# always run biber and treat .bbl as disposable
$bibtex_use = 2;


# fragments copied from https://ctan.mirror.norbert-ruehl.de/support/latexmk/example_rcfiles/

# ~ bib2gls (modified: also check %R-1.glstex as we have two glossaries) ~
push @generated_exts, 'glstex', '%R-1.glstex', 'glg';
add_cus_dep('aux', 'glstex', 0, 'run_bib2gls');
add_cus_dep('aux', '%R-1.glstex', 0, 'run_bib2gls');
sub run_bib2gls {
    if ( $silent ) {
        my $ret = system "bib2gls --silent --group '$_[0]'";
    } else {
        my $ret = system "bib2gls --group '$_[0]'";
    };
    my ($base, $path) = fileparse( $_[0] );
    if ($path && -e "$base.glstex") {
        rename "$base.glstex", "$path$base.glstex";
    }
    local *LOG;
    $LOG = "$_[0].glg";
    if (!$ret && -e $LOG) {
        open LOG, "<$LOG";
	while (<LOG>) {
            if (/^Reading (.*\.bib)\s$/) {
		rdb_ensure_file( $rule, $1 );
	    }
	}
	close LOG;
    }
    return $ret;
}

# lualatex
$dvi_mode = 0;
$pdf_mode = 4;
$postscript_mode = 0;
