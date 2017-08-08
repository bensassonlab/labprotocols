#!/usr/bin/perl

use warnings;
use strict;
use Getopt::Std;

my $program = 'genbankPrep.pl';					#name of script

my $file = "ScCEN1ii.fasta";
my $seqfile = "allcens.fa";
my $outseq = "TilakBensassJune2015.fa";
my $collection = "collection.tsv";

my $seq_recog = "acgtn";

my %exclude;
$exclude{"RM11"}++;
$exclude{"S288cRef"}++;
$exclude{"YIIc17_E5"}++;
$exclude{"YJM789"}++;

# READ IN CONTENTS OF COLLECTION TO GENERATE DBuid from strainUIDs
my %DBuids;
open COLLECTION, "<$collection" or die "couldn't open $collection : $!";
while (<COLLECTION>) { 
	if (/^(\S+)\t(\S+.*?)\t/m) { 
		my $dbuid = $1;
		my $strainuid = $2;
		$strainuid =~ s/ //g;
		if ($strainuid =~ /s1$/m) { $DBuids{$strainuid} = "DB".$dbuid; }
		else { $DBuids{$strainuid} = "$strainuid"; }
	#	print "[$dbuid]\t[$strainuid]\n";

	}
}

# READ IN OLD SEQUENCE DATA to filter this out of the new submission	
my ($oldseq_ref,@oldnames) = fasta2strings($file,$seq_recog); 
my %oldseq = %$oldseq_ref;

my %oldstrains;
foreach my $oname (@oldnames) {
	if ($oname =~ /cerC1_(\S+)/) {
		$oldstrains{$1}++;
	}
}
print "Found ".(keys %oldstrains)." old strain names in $file\n";


# READ IN SEQUENCE DATA SO THAT LATER .. CAN PRINT OUT FASTA FORMAT FILE WITH MODIFIERS	
my ($seq_ref,@seqnames) = fasta2strings($seqfile,$seq_recog); 
my %seq = %$seq_ref;


open FASTA, ">$outseq" or die "couldn't open $outseq : $!";

my (@excluded, %newstrains);
my $seqcount = 0;
my $nseq = 0;
foreach my $name (@seqnames) {
	
	if ($name =~ /cen(\d+)_(\S+)/) {
		my $locus = $1;
		my $strain = $2;
		my $cstrain = $strain;		# strain namea as it appears in the collection
		$cstrain =~ s/SDO/SD0/;		# generate version of SDO strains for look up in collection.tsv 
		if ($strain eq "HUN9s1") { $cstrain = "HUN9.1s1"; }
		if ((defined $oldstrains{$strain}) || (defined $exclude{$strain})) { push(@excluded, $name); } 
		else { 
			$newstrains{$strain}++; 
			$seqcount++;  
			unless (defined $DBuids{$cstrain}) { warn "$strain is undefined\n"; }
			my $desc = "";

			
			if ($seq{$name} =~ /^n*(\S+?)n*$/mi) { $seq{$name} = $1; }	# remove Ns from starts and ends os sequence

			if ($seq{$name} =~ /n/i) { $desc = " [note=bases with an estimated error rate over 1 in 10,000 are shown as n]"; $nseq++; }
			if ($name eq "cen13_ARN056As1") { $desc = " [note= Ns represent a gap of uncertain length and are probably due to a full-length Ty insertion] "; }
			print FASTA ">$name [organism=Saccharomyces cerevisiae] [strain=$DBuids{$cstrain}]$desc Saccharomyces cerevisiae strain $DBuids{$cstrain}, chromosome $locus centromere and flanking DNA; CEN$locus.\n$seq{$name}\n";
		#	print "$name\t$DBuids{$cstrain}\n";
		} 	
	}
}

print "Excluded ".@excluded." sequences from submission.\n";
my @newstrains = sort keys %newstrains;
print "\nIncluded ".@newstrains." different new strains in the submission:\n@newstrains\n";
print "\n$nseq out of $seqcount seqs contain at least one N.\n";
print "Sequence file ready for GenBank submission of $seqcount seqs in $outseq.\n\n";



## READ IN ALIGNMENT FROM FASTA FORMAT 
#
# NOTE SEQ IS RETURNED AS A STRING NOT AS AN ARRAY, BETTER FOR LARGE DATA SETS
sub fasta2strings {

	my $datafile = shift;
	my $seq_recog = shift;

	my (%seq, @names, $name, %seen, $seq, $alignment);
	my $length = 0;

	open DATA, "<$datafile" or die "couldn't open $datafile : $!";	

	while (<DATA>) {
		if (/^>(\S+)/mi) {				# NAME LINE

			if (defined $name) { 			# FINISH OFF PREVIOUS FASTA ENTRY
				if ($length == 0) { $length = length($seq); }
				elsif (length($seq) != $length) { 
					$alignment = 'no';
				}
				if ($seq =~ /[$seq_recog]/i) { 
					unless ($seen{$name}++) { push (@names, $name); }
					else { print "WARNING: $name has been seen $seen{$name} times. Only its last sequence will be analysed.\n"; }
					$seq{$name} = $seq;	# STRINGS
					
					# @{$seq{$name}} = split (//, $seq); 	
				}
				else { print "WARNING: No sequence for $name in fasta file. It is not included in the analysis.\n"; }
				$seq = '';
			}
			
			$name = $1;				# START NEW FASTA ENTRY
		}
		elsif (/^\s*([$seq_recog\-]+)\s*$/mi) { $seq .= $1; }	# GATHER SEQ (even if spread across multiple lines)
		elsif (/\S+/) { 
			while (/(\S)/g) { 
				unless ($1 =~ /([$seq_recog\-])/i) { 
					print "seq_recog[$seq_recog] unrecognised character: [$1]\n"; 
				} 
			}
		}
	}
	if ($seq =~ /[$seq_recog]/i) { 				# FINISH OFF LAST FASTA ENTRY
		unless ($seen{$name}++) { push (@names, $name); }
		else { print "WARNING: $name has been seen $seen{$name} times. Only its last sequence will be analysed.\n"; }

		$seq{$name} = $seq;				# STRINGS

		# @{$seq{$name}} = split (//, $seq); 		
	}
	else { print "WARNING: No sequence for $name in fasta file. It is not included in the analysis.\n"; }


	print "\nFound ".@names." sequences in fasta format in $datafile. ";
	if (defined $alignment) { print "Sequences are different lengths\n\n"; }
	else { print "All sequences are $length bp long.\n\n"; }

	return (\%seq,@names);
}




