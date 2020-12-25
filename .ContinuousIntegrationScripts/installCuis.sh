pip install mega.py
#python -c "from mega import Mega;mega = Mega();mega.login('smalltalkland0@gmail.com','$MEGA');mega.download(mega.find('Cuis5.0-4426.image'));"
cat release.image.gz | gzip -d > Cuis5.0-4426.image
sqcogspur64linuxht/bin/squeak -vm-display-null Cuis5.0-4426.image -d "Smalltalk at: #Auto put: #x.Smalltalk snapshot: true andQuit: true clearAllClassState: true."
cat Cuis5.0-4426.image | gzip > release.image.gz

