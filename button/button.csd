<Cabbage>  bounds(0, 0, 0, 0)

bounds(0, 0, 0, 0)
form caption("BUTTON") size(400, 400), guiMode("queue"), bundle("/resources")  pluginId("plug")
image bounds(0, 0, 400, 400) channel("image1"), file("resources/bg.png")  
button bounds(76, 114, 250, 250) channel("trigger"),text("") , corners(20) imgFile("On", "resources/on.png")  imgFile("Off", "resources/off.png") 
vslider bounds(54, 8, 50, 100) channel("att") range(0.005, 1, 0.005, 1, 0.001) trackerColour(0, 103, 210, 255) filmstrip("resources/slider.png", 30)popupText(0)
vslider bounds(132, 8, 50, 100) channel("dec") range(0.02, 1, 0.5, 1, 0.001) filmstrip("resources/slider.png", 30)popupText(0)
vslider bounds(212, 8, 50, 100) channel("sus") range(0.1, 1, 0.4, 1, 0.001) filmstrip("resources/slider.png", 30)popupText(0)
vslider bounds(286, 8, 50, 100) channel("rel") range(0.05, 10, 1., 1, 0.001) filmstrip("resources/slider.png", 30)popupText(0)
rslider bounds(262, 272, 150, 150) channel("kAmp") range(0, .8, .5, 1, 0.001)  imgFile("Slider", "resources/knob.png") filmstrip("resources/knob.png", 30)popupText(0)
checkbox bounds(18, 166, 60, 60) value(1) channel("mp") colour:1(255, 115, 0, 255) imgFile("On", "resources/poly.png") imgFile("Off", "resources/mono.png")
rslider bounds(6, 304, 80, 80) channel("kAmp2") range(0, 1, 0.586, 1, 0.001) filmstrip("resources/knob.png", 30)popupText(0)
rslider bounds(6, 228, 80, 80) channel("port") range(0, 0.25, 0, 1, 0.001) filmstrip("resources/knob.png", 30)popupText(0)
button bounds(178, 352, 50, 40) channel("crash")text("") imgFile("On", "resources/logoon.png") imgFile("Off", "resources/logooff.png")popupText(0)
nslider bounds(10, 14, 42, 18) channel("cutoff") range(3000, 5500, 0, 1, 0.01) active(1) visible(0)
nslider bounds(10, 32, 42, 18) channel("LFOfreq") range(0, 9, 0, 1, 0.01)  active(1) visible(0)
nslider bounds(10, 50, 42, 18) channel("LFOfm") range(0, 20, 0, 1, 0.01) active(1) visible(0)
nslider bounds(10, 68, 42, 18) channel("voicex") range(0, 30, 0, 1, 0.01)  visible(0)

combobox bounds(334, 172, 48, 24), populate("*.snaps") automatable(0) channel("combo23") channelType("string") text("Preset 1", "Preset 2", "Preset 3", "Preset 4", "Preset 5", "Preset 6", "Preset 7", "Preset 8", "Preset 9", "Preset 10", "Preset 11", "Preset 12", "Preset 13", "Preset 14", "Preset 15", "Preset 16", "Preset 17", "Preset 18") value("1") fontColour(103, 255, 91, 255) alpha(0.7)fontSize(15)
filebutton bounds(334, 148, 50, 20), text("save", ""), mode("preset"), populate("*.snaps") channel("filebutton24")  corners(0) fontColour:0(92, 255, 98, 255)  fontSize(15) alpha(0.7)






</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -m01 -+rtmidi=NULL -M0 --midi-key-oct=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1
maxalloc	2,1


gasend init 0
giSine    ftgen     0, 0, 2^10, 10, 1
giA  ftgen     0, 0, 0, 1, "resources/a.wav", 0, 0, 1
giB ftgen     0, 0, 0, 1, "resources/b.wav", 0, 0, 1
giC ftgen     0, 0, 0, 1, "resources/c.wav", 0, 0, 1
giD ftgen     0, 0, 0, 1, "resources/d.wav", 0, 0, 1
giE ftgen     0, 0, 0, 1, "resources/e.wav", 0, 0, 1
giF ftgen     0, 0, 0, 1, "resources/f.wav", 0, 0, 1
giG ftgen     0, 0, 0, 1, "resources/G.wav", 0, 0, 1
giH ftgen     0, 0, 0, 1, "resources/H.wav", 0, 0, 1
giI ftgen     0, 0, 0, 1, "resources/I.wav", 0, 0, 1
giJ ftgen     0, 0, 0, 1, "resources/J.wav", 0, 0, 1
giK ftgen     0, 0, 0, 1, "resources/K.wav", 0, 0, 1
giL ftgen     0, 0, 0, 1, "resources/L.wav", 0, 0, 1
giM ftgen     0, 0, 0, 1, "resources/M.wav", 0, 0, 1
giN ftgen     0, 0, 0, 1, "resources/N.wav", 0, 0, 1
giO ftgen     0, 0, 0, 1, "resources/O.wav", 0, 0, 1
giP ftgen     0, 0, 0, 1, "resources/P.wav", 0, 0, 1
giQ ftgen     0, 0, 0, 1, "resources/Q.wav", 0, 0, 1
giR ftgen     0, 0, 0, 1, "resources/R.wav", 0, 0, 1
giS ftgen     0, 0, 0, 1, "resources/S.wav", 0, 0, 1
giT ftgen     0, 0, 0, 1, "resources/T.wav", 0, 0, 1
giU ftgen     0, 0, 0, 1, "resources/U.wav", 0, 0, 1
giV ftgen     0, 0, 0, 1, "resources/V.wav", 0, 0, 1
giW ftgen     0, 0, 0, 1, "resources/W.wav", 0, 0, 1
giX ftgen     0, 0, 0, 1, "resources/X.wav", 0, 0, 1
giY ftgen     0, 0, 0, 1, "resources/Y.wav", 0, 0, 1
giZ ftgen     0, 0, 0, 1, "resources/Z.wav", 0, 0, 1

giNoise ftgen     0, 0, 0, 1, "resources/noise.wav", 0, 0, 1


instr 1000


  
gkMonoPoly cabbageGetValue "mp"
gkcrash cabbageGetValue "crash"
gkmax cabbageGetValue "max"
kGo init 1




 
   kval, kTrig cabbageGetValue "trigger"   
    if kTrig == 1 then
        gkBang = 1  
        endif
    
kDel delayk kTrig, .3	
cabbageSet kDel, "trigger" , "value", 0
    

    
    if gkBang == 1 && kGo == 1 then
   
    

;    printks "Random has been called to update", 0
    gkrand random 0, 30
    gkrez random 0, .8
    gkround round gkrand  
    gkCut random 3000,5000
    gkrandLFO random 0, 9
    gkFMLFO random 0,20
    gkGo = 0
    gkBang = 0
    gkDelrand random .1,1

    cabbageSetValue "cutoff",500+gkCut, kTrig
    cabbageSetValue "voicex",gkround, kTrig
    cabbageSetValue "LFOFreq",gkrandLFO, kTrig
    cabbageSetValue "LFOfm",gkFMLFO, kTrig
endif

if gkcrash =1  then
gkrandCrash randh 2,20
gkFloor floor gkrandCrash
cabbageSetValue "trigger",gkFloor, gkcrash
else 
gkFloor = 0
gkrandCrash = 0
gkBang = 0
endif

if gkFloor = 1 then
gkBang = 1
gkAmp = 0
else
gkBang = 0
gkFloor = 0
gkAmp = 1
endif


 

endin  

instr	1



kpb init 0 



midipitchbend kpb 


;add pitchbend values to octave-point-decimal value 

koct = p4+kpb

;convert octave-point-decimal value into Hz

gkcps = cpsoct(koct)	

	if i(gkMonoPoly)=0 then	
	  gkNoteOn	init	1	
	  event_i	"i",2,0,-1	
	  
	else
				
	  turnoff2	2,0,0		
	  aL,aR	subinstr	3, gkcps
	 outs aL, aR
	 
	
	endif
   
endin


  
instr 2
kFre = gkcps
kPortTime cabbageGetValue "port"
kFreq portk kFre, kPortTime
kAmp = p5

kactive1	active	1	
kAmpEnv		init	0
kAtta chnget "att"
kDeca chnget "dec"
kSusa chnget "sus"
kRela chnget "rel"
kRes chnget "res"
kCut chnget "cutoff"
kLFO chnget "LFOFreq"
kLFA chnget "LFOfm"
kV chnget "voicex"
kAmp chnget "kAmp"
kAmp2 chnget "kAmp2"
kmix chnget "wd"


	kAmpEnv		init	0	

if  gkNoteOn=1&&kactive1==1 then	
reinit	RestartEnv					
endif	
		
RestartEnv:


if	kactive1>0 then							
	  kAmpEnv		linseg	i(kAmpEnv),i(kAtta),i(kAmp), i(kDeca), i(kSusa)  
	  kAmpSus		=	kAmpEnv				

	elseif	kactive1=0 then						
	  kAmpEnv		linseg	i(kAmp),i(kRela),0  		
	  kAmpEnv		=	kAmpEnv*kAmpSus				

	endif								
	rireturn								
	
	aEnv		interp	kAmpEnv	
rireturn
 

      
kLFO lfo kLFO, kLFA , 1

if kV == 0 then        
aSums vco2  kAmp, kFreq+kLFO, 6
elseif kV == 1 then        
aSums vco2   kAmp, kFreq+kLFO, 8
elseif kV == 2 then        
aSums vco2   kAmp, kFreq+kLFO, 12
elseif kV == 3 then        
aSums vco2   kAmp, kFreq+kLFO, 2, .5
elseif kV == 4 then        
aSums poscil  kAmp, kFreq+kLFO, giSine
elseif kV == 5 then 
itablen   =         ftlen(giA) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giA
elseif kV == 6 then        
itablenB   =         ftlen(giB) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giB
elseif kV == 7 then        
itablen   =         ftlen(giC) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giC
elseif kV == 8 then        
itablen   =         ftlen(giD) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giD
elseif kV == 9 then        
itablen   =         ftlen(giE) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giE

elseif kV == 10 then        
itablen   =         ftlen(giF) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giF

elseif kV == 11 then        
itablen   =         ftlen(giG) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giG

elseif kV == 12 then        
itablen   =         ftlen(giH) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giH

elseif kV == 13 then        
itablen   =         ftlen(giI) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giI

elseif kV == 14 then        
itablen   =         ftlen(giJ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giJ

elseif kV == 15 then        
itablen   =         ftlen(giK) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giK

elseif kV == 16 then        
itablen   =         ftlen(giL) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giL

elseif kV == 17 then        
itablen   =         ftlen(giM) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giM

elseif kV == 18 then        
itablen   =         ftlen(giN) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giN

elseif kV == 19 then        
itablen   =         ftlen(giO) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giO

elseif kV == 20 then        
itablen   =         ftlen(giP) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giP

elseif kV == 21 then        
itablen   =         ftlen(giQ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giQ

elseif kV == 22 then        
itablen   =         ftlen(giR) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giR

elseif kV == 23 then        
itablen   =         ftlen(giS) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giS

elseif kV == 24 then        
itablen   =         ftlen(giT) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giT

elseif kV == 25 then        
itablen   =         ftlen(giU) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giU

elseif kV == 26 then        
itablen   =         ftlen(giV) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giV

elseif kV == 27 then        
itablen   =         ftlen(giW) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giW

elseif kV == 28 then        
itablen   =         ftlen(giX) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giX

elseif kV == 29 then        
itablen   =         ftlen(giY) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giY

elseif kV == 30 then        
itablen   =         ftlen(giZ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giZ
endif

itablen2   =         ftlen(giNoise) ;length of the table
idur2      =         itablen2 / sr ;duration      
aNoise poscil3  kAmp2, 10000+kLFO, giNoise
aNew sum aSums, aNoise
aLP moogladder aNew, kCut, gkrez
aIn = kAmp*(aLP*aEnv)

outs aIn*gkAmp, aIn*gkAmp


gkNoteOn =0

endin
  
instr 3


kFre = gkcps
kPortTime cabbageGetValue "port" 
kFreq portk kFre, kPortTime
kAmp = p5


iAtt chnget "att"
iDec chnget "dec"
iSus chnget "sus"
iRel chnget "rel"
kRes chnget "res"
kCut chnget "cutoff"
kLFO chnget "LFOFreq"
kLFA chnget "LFOfm"
kV chnget "voicex"
kAmp chnget "kAmp"
kAmp2 chnget "kAmp2"
kmix chnget "wd"
aEnv madsr iAtt, iDec, iSus, iRel      
kLFO lfo kLFO, kLFA , 1

if kV == 0 then        
aSums vco2  kAmp, kFreq+kLFO, 6
elseif kV == 1 then        
aSums vco2   kAmp, kFreq+kLFO, 8
elseif kV == 2 then        
aSums vco2   kAmp, kFreq+kLFO, 12
elseif kV == 3 then        
aSums vco2   kAmp, kFreq+kLFO, 2, .5
elseif kV == 4 then        
aSums poscil  kAmp, kFreq+kLFO, giSine
elseif kV == 5 then 
itablen   =         ftlen(giA) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giA
elseif kV == 6 then        
itablenB   =         ftlen(giB) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giB
elseif kV == 7 then        
itablen   =         ftlen(giC) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giC
elseif kV == 8 then        
itablen   =         ftlen(giD) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giD
elseif kV == 9 then        
itablen   =         ftlen(giE) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giE

elseif kV == 10 then        
itablen   =         ftlen(giF) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giF

elseif kV == 11 then        
itablen   =         ftlen(giG) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giG

elseif kV == 12 then        
itablen   =         ftlen(giH) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giH

elseif kV == 13 then        
itablen   =         ftlen(giI) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giI

elseif kV == 14 then        
itablen   =         ftlen(giJ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giJ

elseif kV == 15 then        
itablen   =         ftlen(giK) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giK

elseif kV == 16 then        
itablen   =         ftlen(giL) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giL

elseif kV == 17 then        
itablen   =         ftlen(giM) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giM

elseif kV == 18 then        
itablen   =         ftlen(giN) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giN

elseif kV == 19 then        
itablen   =         ftlen(giO) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giO

elseif kV == 20 then        
itablen   =         ftlen(giP) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giP

elseif kV == 21 then        
itablen   =         ftlen(giQ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giQ

elseif kV == 22 then        
itablen   =         ftlen(giR) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giR

elseif kV == 23 then        
itablen   =         ftlen(giS) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giS

elseif kV == 24 then        
itablen   =         ftlen(giT) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giT

elseif kV == 25 then        
itablen   =         ftlen(giU) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giU

elseif kV == 26 then        
itablen   =         ftlen(giV) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giV

elseif kV == 27 then        
itablen   =         ftlen(giW) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giW

elseif kV == 28 then        
itablen   =         ftlen(giX) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giX

elseif kV == 29 then        
itablen   =         ftlen(giY) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giY

elseif kV == 30 then        
itablen   =         ftlen(giZ) ;length of the table
idur      =         itablen / sr ;duration      
aSums poscil3  kAmp, kFreq+kLFO, giZ
endif

itablen2   =         ftlen(giNoise) ;length of the table
idur2      =         itablen2 / sr ;duration      
aNoise poscil3  kAmp2, 10000+kLFO, giNoise
aNew sum aSums, aNoise
aLP moogladder aNew,kCut, gkrez
aIn = kAmp*(aLP*aEnv)

outs aIn*gkAmp, aIn*gkAmp

    


endin



</CsInstruments>
<CsScore>
i1000 0 z
;causes Csound to run for about 7000 years...
f0 z
</CsScore>
</CsoundSynthesizer>