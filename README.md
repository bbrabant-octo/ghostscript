# ghostscript

A docker image based on alpine with ghostscript package installed

## Sample usage

To compress a PDF named 'big_file.pdf' in current directory and produce the 'small_file.pdf' file : 

```bash
docker run --rm -ti \
  -v "$PWD":/work \
  --workdir /work \
  jess/ghostscript \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.4 \
  -dQUIET \
  -q -dNOPAUSE -dBATCH -dSAFER \
  -dPDFSETTINGS=/screen \
  -dEmbedAllFonts=true \
  -dSubsetFonts=true \
  -dAutoRotatePages=/None \
  -dColorImageDownsampleType=/Bicubic \
  -dColorImageResolution=300 \
  -dGrayImageDownsampleType=/Bicubic \
  -dGrayImageResolution=300 \
  -dMonoImageDownsampleType=/Bicubic \
  -dMonoImageResolution=300 \
  -sOutputFile="small_file.pdf" \
  "big_file.pdf"

```

