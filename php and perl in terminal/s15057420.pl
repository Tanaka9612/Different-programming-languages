#!/usr/bin/perl

use strict;
use warnings;

$ARGV[0] + $ARGV[1]; #take in the command line arguments
# Open the file for reading
open(my $filehandle, '<', $ARGV[0]) or die "Could not open file 'input_file.txt' $!";
#count the matches
my $count = 0;
# Read the entire file content into a single string
my $content = do { local $/; <$filehandle> };
my $search_word = $ARGV[1];
# Close the file handle
close($filehandle);
print"\n";

# Remove white spaces and punctuation from the content

$content =~ s/\s+//g;  # Remove white spaces
$content =~ s/[[:punct:]]//g;  # Remove punctuation
$content =~ s/\d//g; #remove numbers
my $lowercase = lc($content);#lowercase

#reverse the word
my $search_word_r = reverse($search_word);
my $pos = length($lowercase);

#search for the word from right to left
while (($pos = rindex($lowercase, $search_word_r, $pos - 1)) != -1) {
    $count++;
}

print"\n";
#first change to lower case

# Print the modified content
print $lowercase;
print"\n";
print"\n";
print("Matches: ",$count, "\n\n");
