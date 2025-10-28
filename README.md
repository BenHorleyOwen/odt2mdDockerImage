abandoned, I dont have enough experience to get around the original script, i tried adding the binary directly and tried rewriting the odt2md to work without odt2html, but it just wont work. Save your files as docx

odt2md is a small script designed by ikus060 to quickly convert ODT (Open Document Text) files to Markdown text files. 
The original script utilizes the powerful pandoc library and odt2html with additional filters to generate well-formatted Markdown output.
This Dockerfile builds a docker image which removes the hassle of instaling dependancies and allows windows devices running docker engine to convert ODT files to Markdown format.


### installation
there would usually be a docker image to pull but the built image never worked.

**Or** you can download all these files and build the image from the dockerfile, but that will take a long time (10-15 mins)
cd to the folder you downloaded the folder to and run:
```docker build -t odt2md .```

### Usage
here youre mounting the file you want into docker and then telling the container run the script against the file in the mounted directory
```docker run --rm -v "path/to/file":/data odt2md "/data/FileName.odt"```
the quotation marks help if there is whitespace in the file name