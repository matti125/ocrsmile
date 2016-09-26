# ocrsmile
scripts to make pfdpen from smile software to do batch OCR.
An example of use:
find /Users/matti/tmp/Documents -type f -name "*.pdf" -print0 |xargs -0 -n1 ./pdfpenocr.sh 

pdfpenocr is just a small wrapper that eventually calls "osascript pdfpenocr.scpt".

pdfpenocr.applescript is the source for pdfpenocr.scpt

pdfpenocr.scpt requires full paths to files, otherwise it cannot find the files. Did not easily find a way to make it behave.

