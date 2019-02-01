# Gif-to-Mp4-Convertor
Convert your Gif to MP4 (for video editing) using this simple **bash** script

## Requirements : You need to install imagemagick & ffmpeg

* on mac
```
$ brew install imagemagick ffmpeg
```

* on ubuntu/debian 
```
$ apt-get install imagemagick ffmpeg
```

## Usage
Copy all your GIF' files in a same location
Add the **convert.sh** in the same location
Add execution privilege for convert.sh
```
$ chmod 744 convert.sh
```
Then simply run the script. All your MP4 will be in the **output** folder
```
$ ./convert.sh
```
