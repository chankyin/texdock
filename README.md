# texdock
A minimal docker image to build tex documents

## Image structure
**`/input`** A read-only mounting point where input .tex files are located

**`/output`** A read-write mounting point where output files are located. Also used as the working directory.

**`/pdf.sh`** The main command, to be executed from `/output` to `pdflatex` each `/input/*.tex`.

**`/install.sh`** An internal shell script used in docker build creation.
