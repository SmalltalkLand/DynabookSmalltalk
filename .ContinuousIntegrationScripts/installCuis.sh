
#python -c "from mega import Mega;mega = Mega();mega.login('smalltalkland0@gmail.com','$MEGA');mega.download(mega.find('Cuis5.0-4426.image'));"
echo "GZipping Squeak"
cat release.image.gz | gzip -d > Cuis5.0-4426.image
#sqcogspur64linuxht/bin/squeak -vm-display-null Cuis5.0-4426.image -d "Smalltalk at: #Auto put: #x.BaseLine fileOutSystem."  -d "Smalltalk at: #Auto put: #x.Smalltalk snapshot: true andQuit: true clearAllClassState: true."
echo "Starting Squeak"
sqcogspur64linuxht/bin/squeak -vm-display-null Cuis5.0-4426.image -d "Smalltalk at: #Auto put: #x.[(Delay forSeconds: 590) wait. StdIOWriteStream stdout newLine; nextPutAll: 'Failed build, continuing'.Smalltalk quitPrimitive: 1] fork. BaseLine fileOutSystem. Smalltalk snapshot: true andQuit: true embedded: false clearAllClassState: true."
echo "Cuis install done"
cat Cuis5.0-4426.image | gzip > release.image.gz
echo "bundle done"
