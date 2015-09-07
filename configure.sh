#!/bin/bash

echo "Generating message translations... "
find "." \
  -name "crtwo2fits.po" \
  -execdir msgfmt "{}" -o "crtwo2fits.mo" \; \
  -exec echo " --> Found: '{}'" \;
echo ""

echo "Generating man files..."
python generate-man.py
echo ""

echo "Building source package..."
python setup.py sdist
echo ""

echo "Done!"
