git clone https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev.git Cuis
(cd Cuis && git checkout db5b3fb23d5f420d69b0287e747d7aa7c3e9)
./sqcogspur64linuxht/bin/squeak -vm-display-null Cuis/Cuis*-4426.image -s index.bl.st -d "Smalltalk snapshot: true andQuit: true clearAllClassState: false."
