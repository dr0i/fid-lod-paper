# invoke with: $ make
all: fid-lod.pdf fid-lod.doc fid-lod.html

fid-lod.doc: fid-lod.md
	pandoc -V fontsize=12pt fid-lod.md -o fid-lod.doc

fid-lod.pdf: fid-lod.md
	pandoc -V fontsize=12pt fid-lod.md -o fid-lod.pdf

fid-lod.html: fid-lod.md
	pandoc -V fontsize=12pt fid-lod.md -o fid-lod.html
