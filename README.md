# ocrsmile
scripts to make pfdpen from smile software to do batch OCR.
An example of use:
find /Users/matti/tmp/Documents -type f -name "*.pdf" -print0 |xargs -0 -n1 ./pdfpenocr.sh 

pdfpenocr is just a small wrapper that calls pdfpenocr.scpt.

pdfpenocr.applescript is the source for pdfpenocr.scpt
