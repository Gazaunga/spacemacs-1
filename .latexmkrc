# LaTeXmk configuration file

# Usage example
# latexmk file.tex

# Main command line options
# -pdf : generate pdf using pdflatex
# -pv  : run file previewer
# -pvc : run file previewer and continually recompile on change
# -C   : clean up by removing all regeneratable files

# Define command to compile with pdfsync support and nonstopmode
#$pdflatex = 'xelatex -synctex=1 --interaction=nonstopmode -file-line-error';
$pdflatex = "xelatex %O %S";

# Use default pdf viewer (Skim)
$pdf_previewer = 'open';

# Also remove pdfsync files on clean
$clean_ext = 'pdfsync synctex.gz';

$pdf_mode = 1;

$dvi_mode = 0;

$postscript_mode = 0;
