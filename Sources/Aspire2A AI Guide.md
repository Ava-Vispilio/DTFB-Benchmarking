

NSCCBeginner’sGuidetoRunAIJobs
## ______________________________________________________________________________
## NSCCASPIRE2A:
ABeginner'sGuideto
RunningAIJobs
Updated:7-March-2024

NSCCBeginner’sGuidetoRunAIJobs
## Preface
ThisguideservesasaquickintroductionforuserstorunAIjobsontheNSCCsupercomputing
facilitiesandnotasaguidetolearnAIanditsprogramming.
TheguidediscussesthreemainwaysofrunningAIjobsonNSCCfacilities,namely,ASPIRE2A
## Supercomputer.
## 1

NSCCBeginner’sGuidetoRunAIJobs
TableofContents
1.Introduction4
1.1UsingthisGuide5
1.2NSCCSupercomputers-ASPIRE2AAISystems4
1.3Pre-Requisites6
2.OverviewofArtificialIntelligence6
2.1ArtificialIntelligence6
2.2MachineLearning7
2.3DeepLearningandNeuralNetworks7
2.4ArtificialIntelligenceLibraries8
3.DifferentWaystoRunArtificialIntelligenceJobsatNSCC9
3.1RunningAIJobsontheASPIRE2ACPU9
3.2RunningAIJobsontheASPIRE2AGPU9
3.3RunningAIJobsontheNSCCAICluster10
4.Exercise1:FirstDeepLearningProgramonASPIRE2ACPU10
4.1WritingyourFirstDeepLearningProgram-linear.py11
Step1:ImporttheRelevantLibraries11
Step2:BuildtheModel12
Step3:SettheLossandOptimizerFunction12
Step4:InitializeInputData13
Step5:FittheModel13
Step6:Prediction13
4.2RunningyourFirstDeepLearningProgramontheASPIRE2ACPU13
4.3Understandingtheoutput15
4.4Takeaways16
5.Exercise2:DeepLearningProgramonASPIRE2AGPU16
5.1WritingyourDeepLearningProgram-fashion.py17
Step1:ImportLibrariesandData18
Step2:PartitionInputData18
Step3:BuildtheModel18
Step4:CompileandFittheModel19
Step5:TesttheModel19
5.2RunningyourDeepLearningProgramontheASPIRE2AGPU19
5.3UnderstandingtheOutput20
5.4Takeaways21
6.Exercise3:ConvolutionalNeuralNetworkProgramonNSCCAISystem22
6.1UnderstandingConvolutionalNeuralNetworks22
6.2WritingyourConvolutionalNeuralNetworkProgram-convolution.py23
Step1:ImportLibrary24
Step2:PartitionInputData25
## 2

NSCCBeginner’sGuidetoRunAIJobs
Step3:ReshapeInputData25
Step4:BuildtheModel25
Step5:CompilingandFittingtheModel26
Step6:TestingtheModel27
6.3RunningyourConvolutionalNeuralNetworkProgramontheNSCCAISystem27
6.4UnderstandingtheOutput28
6.5Takeaways29
7.Summary30
8.References30
## 3

NSCCBeginner’sGuidetoRunAIJobs
1.Introduction
ThisguideisfornewuserstobeginrunningArtificialIntelligence(AI)programsonthe
supercomputersatNSCC(NationalSupercomputingCentre)[1].NSCChastwomainclusters
whichareforHPC(High-PerformanceComputing)jobsonASPIRE2A,thepbs101(normal
queue)andpbs102(aiqueue,alsocalledtheAIcluster).
1.1UsingthisGuide
## ➔
## Thisguideisorganizedinto6sections:
●Section1(thissection)introducesthesectionswithinthedocument.
●Section2providesaquickoverviewofArtificialIntelligenceandtherelevantsoftware
libraries.
●Section3presentsthedifferentwaysthatanAIjobcanberunontheNSCCresources.
●Section4guidesyouthroughyourveryfirstAIprogramontheASPIRE2Acompute
nodes.
●Section5showsanexampleofrunninganAIprogramontheASPIRE2AGPU
accelerator.
●Section6providesanexampleofhowyoucanutilizetheHPEApollo6500Gen10plus
machinetorunAIprograms.
●Finally,inSection7,wehaveprovidedsomeresourcesforyoutofurtheryourjourney
withAI.
## 4

NSCCBeginner’sGuidetoRunAIJobs
1.2NSCCSupercomputers-ASPIRE2AAICluster
ASPIRE2AisthenewgenerationHPCsystemwhichhasatotalcomputecapacityof3.145
petaflop.(Table1,thehighlightedrows).
➔FortheAICluster:-
●Itcontains18GPUnodes,totaling96A100GPUs.
●Thereare12GPUnodeswhichhave4GPUs,and6GPUnodeswhichare
equippedwith8GPUs.
●AllthenodesandstorageareconnectedwiththeSlingshothighspeednetwork.
TheOperatingSystem(OS)ofeachnodeisRedHatEnterprise8.4[3].
Figure1.1:ComputeNodeArchitectureofASPIRE2A[5]
## 5

NSCCBeginner’sGuidetoRunAIJobs
Table1.ASPIRE2AComputeNodeSpecifications:-
ServerCPUModelCores
per
socket
## Socket
per
server
## Total
## Physical
coresper
server
## Availabl
eRAM
## (DDR4)
GPUs
StandardComputeNode
## (768nodes)
Dual-CPUAMD
## EPYC7713
642128512GBNoGPU
GPUcomputenode
## (64nodes)
Single-CPU
## AMDEPYC
## 7713
64164512GB4xNvidia
## A100
## 40GB
GPUAINode
## (12nodes)
Single-CPU
## AMDEPYC
## 7713
64164512GB4xNvidia
## A100
## 40GB
(11TBnvme)
GPUAINode
## (6nodes)
Dual-CPU
## AMDEPYC
## 7713
6421281TB8xNvidia
## A100
## 40GB
(14TBnvme)
## Largememorynode
## (12nodes)
Dual-CPU
## AMDEPYC
## 7713
6421282TBNoGPU
## Largememorynode
## (4nodes)
Dual-CPU
## AMDEPYC
## 7713
6421284TBNoGPU
## Highfrequencynode
## (16nodes)
Dual-CPU
## AMDEPYC
## 75F3
32264512GBNoGPU
## 6

NSCCBeginner’sGuidetoRunAIJobs
1.3Pre-Requisites
Inthisguide,wedonotrequireuserstohaveanybackgroundknowledgeinAI.However,a
basicunderstandingofPythonandbashwillbehelpful.Weareusingtheopen-source
programminglanguagesPythonandLinuxbashshell.
2.1ArtificialIntelligence
ArtificialIntelligencereferstothesimulationofhumanintelligenceinmachinesthatare
programmedtothinklikehumansandmimictheiractions.Thetermmayalsobeappliedto
anymachinethatexhibitstraitsassociatedwithahumanmindsuchaslearningandproblem-
solving.
2.4ArtificialIntelligenceLibraries
Inthisguide,weshallbeusingtwomainAIlibraries,namelyTensorFlow[12]andKeras
[13].Fortherelativelysimpleprogramsinthisguide,itisnotimportanttodelveintothe
detailsofeitherlibrary.However,formoreadvancedAIprograms,agoodunderstandingof
theselibrarieswillbebeneficial.
## 7

NSCCBeginner’sGuidetoRunAIJobs
3.DifferentWaystoRunAIJobs
Inthissection,weshallbecoveringthemainwaysthroughwhichyoucanrunAIjobsonthe
NSCCresources,whicharethroughtheASPIRE2ACPU,ASPIRE2AGPUandAICluster.
EachapproachhassimilarsoftwareandNSCCaccountrequirements,asdiscussedbelow.We
recommendapproachesbasedonpossibleusecases.IfthejobsplantoruninAICluster,the
projectshouldhavetheAISU.
3.1RunningAIJobsontheASPIRE2ACPU
SometypesofAIthatdonotrequireGPUpowersuchasbelow&ThesetypesofAIjobsare
muchfittheCPUnodesofAspire2A.
## ➔
Rule-basedAI,nearestneighbor
## ➔
Decisiontrees,ProbabilisticAI,
## ➔
SymbolicAI,andetc.
OnAspire2A,userscancreatetheAIresearchbydifferentwayssuchascreatingthe
environmentfromsourcecodesorpullingacontainerfromDockerHub.Singularityis
supportedonAspire2atoreplaceDockerforthesafetyreason.Therearesomepre-build
containersaboutAIwhicharelocatedatapp/apps/containers.Anexampleofhow
touseSingularityisavailableinSection4.
3.2RunningAIJobsontheASPIRE2AGPU
Fordeep-learning,computervisionandnaturallanguageprocessing,GPUcangivehuge
benefitsfortrainingthemodels.GPUscanperformmanycomputationssimultaneously.Itis
importantforAItrainingbecauseitinvolvesalotofmatrixmultiplicationandother
mathematicaloperations.
OnAspire2A,besidethesingularityimages,therearealsosomepre-builtAIapplications,
suchasPytorch,Tensorflowwhicharemanagedbymodulefiles.Withthecommand
moduleavail
## (avforshort),youcanseealistofpre-installedsoftwarepackages
andlibraries.Figure3.1isascreenshotoftheAIsoftwareavailableonASPIRE2A.
## 8

NSCCBeginner’sGuidetoRunAIJobs
## $moduleavtensorflow
## ----------------------/app/apps/modulefiles---------------------------
tensorflow/1.15.5-hpetensorflow/2.7.0-hpetensorflow/2.8.1-py3
tensorflow/1.15.5-hpe-gputensorflow/2.7.0-hpe-gputensorflow/2.8.1-py3-gpu
## $moduleavpytorch
## ----------------------/app/apps/modulefiles---------------------------
pytorch/1.11.0-hpepytorch/1.11.0-hpe-gpupytorch/1.11.0-py3
pytorch/1.11.0-py3-gpu
Figure3.1:AIsoftwareavailableonNSCC
## Kindlyuserbelowcommandtoloadasoftwarepackageorlibraryintoyourenvironment,
moduleload<softwarepackagename>.
## Forexample:moduleloadtensorflow/2.8.1-py3loadsversion2.8.1of
TensorFlowintoyourenvironment.Thesuffix“-gpu”meansthemodulesupportsGPU.
## Insection5,youwillseeanexampleofloadingthetensorflowenvironmentduringthe
training.
3.3RunningAIJobsontheNSCCAICluster
TheNSCCAIClusterismadeupofHPEApollo6500Gen10Plusserverswhichare
apowerfulresourcededicatedtoAIjobs.BesidesthepowerfulGPUsandCPUs,
thereislocalNVMestorage,whichcangivehugeI/OIOPsduringthetraining
processeswhenreadingthedatasets.SeeTable[1].
ThelocalNVMEhas
someofthebenefitsforAItraining:
●Fasterdatatransferspeeds:NVMecantransferdataupto10timesfasterthanSATA
SSDsandupto50timesfasterthantraditionalharddrives.
●Lowerlatency:NVMehaslowerlatencythanotherstorageinterfaces,whichmeans
thatthereislessdelaybetweenwhenarequestismadeandwhenthedatais
returned.
●Higherthroughput:NVMecanhandlemoredatapersecondthanotherstorage
interfaces,whichcanimprovetheperformanceofapplicationsthatneedtoprocess
largeamountsofdata.
●Betterscalability:NVMeisscalable,soitcanbeeasilyexpandedtomeettheneeds
ofgrowingAIworkloads.
ThenifyourAItrainingneedstodealwithlotsofdatasets,pleasetrytousethelocal
NVMetoachievebetterperfoamnce.
## 9

NSCCBeginner’sGuidetoRunAIJobs
4.Exercise1:FirstDeepLearningProgramon
## ASPIRE2ACPU
## Inthisexercise,youwilllearnthebasicsofwritingandrunningyourfirstdeeplearning
programontheASPIRE2Acomputenodes.Wewillillustratethisusingtheopen-source
TensorFlowplatformandKeraslibrary.Wewillalsogothroughtheoutputoftheprogram.
TheprogramiswritteninPythonandthesubmissionscriptiswritteninbash.Pleaseusea
plaintexteditortoeditthefiles.Thesourcecodesofexamplescanbeclonedtolocal.The
clonecommandis:
gitclone/app/workshops/introductory/ai.examples
## Theprogram,linear.py[16],usesaneuralnetworkalgorithmtopredictthevaluesofa
straight-linegraphona2-dimensionalaxis.Thisprogramhassixmainsteps.
1.Importtherelevantlibraries.
2.Buildthemodel,
3.Setthenecessaryfunctionsandparameters,
4.Initializeourinput.
5.Fitandtrainourmodel,
6.Gettheprediction.
4.1WritingyourFirstDeepLearningProgram-linear.py
Below,wehaveprovidedtheentirelinear.pyprogram.Followingthat,wehaveastepbystep
descriptionandexplanationofthecode.
#Exercise1-linear.py
importnumpyasnp
importkeras
#Buildthemodel
model=
keras.Sequential([keras.layers.Dense(units=1,input_shape=[1])])
#Setthelossandoptimizerfunction
model.compile(optimizer='sgd',loss='mean_squared_error')
#Initializeinputdata
xs=np.array([-1.0,0.0,1.0,2.0,3.0,4.0],dtype=float)
## 10

NSCCBeginner’sGuidetoRunAIJobs
ys=np.array([-2.0,1.0,4.0,7.0,10.0,13.0],dtype=float)
#Fitthemodel
model.fit(xs,ys,epochs=500)
#Prediction
dataIn=np.array([10.0],dtype=float)
print(model.predict(dataIn,1,1))
Step1:ImporttheRelevantLibraries
#Exercise1-linear.py
importnumpyasnp
importkeras
OpenyourfavoriteplaintexteditorandtypeinthecodeasinStep1above.
Here,wehaveimportedthecriticallibrariesfortheprogram.NumPyisamathematical
librarytohandlelinearalgebraandarrayprocessingindeeplearning.
Step2:BuildtheModel
#Buildthemodel
model=
keras.Sequential([keras.layers.Dense(units=1,input_shape=[1])])
## Next,createthemodelbyaddingtheabovelinesofcode.
OurmodelisaSequentialModel,whichconsistsofasimplelistoflayersofnodes.Inthis
model,eachlayerhasasingleinputandsingleoutput.Here,weonlyhaveonelayerofthe
node,whichisthelayers.Denselayer.ThewordDensereferstoaregulardeeply
connectedneuralnetworklayer,whichisthemostfrequentlyusedlayer.
## Finally,wehaveunits=1,whichreferstothenumberofnodes(i.e.1node)and
input_shape=[1],whichreferstotheformoftheinputdata.Inthiscase,ourinput
dataisanarrayofasinglevalue(thexvalue).Ourneuralnetworkthenoutputsthepredicted
yvalue.(Notethatthisinputshapereferstoamatrix.So,[1,2]wouldbeamatrixwith1row
and2columns).Withthis,wehavecreatedourneuralnetwork.
Step3:SettheLossandOptimizerFunction
#Setthelossandoptimizerfunction
## 11

NSCCBeginner’sGuidetoRunAIJobs
model.compile(optimizer='sgd',loss='mean_squared_error')
CompilethemodelasinStep3abovebyaddingtheappropriatemathematicalfunctions.
## Inthisline,wearesettingsomebasicfunctionswhicharethecruxofthetrainingprocessof
ourneuralnetwork.Priortostartingthetrainingprocess,theneuralnetworkwillassign
randomweights.Followingthat,duringtraining,themodeltakestheinputxvaluesandusing
therandomweights,outputsapredictedyvalue.Then,themodelcomparesthispredictedy
valueagainsttheactualyvaluegiveninthetrainingset.Thiscomparisonwillbedonewith
the"loss"function,whichinthiscaseistheloss='mean_squared_error'function.
Next,theweightsarereadjustedusinganoptimizerfunction,i.e.optimizer='sgd'.The
functionwilltrytoadjusttheweightssuchthatthenextpredictionisclosertotheexpected
valueofy.Thisisahigh-levelandsimplifiedviewofKeras.Tolearnmoreaboutthe
functions,pleaserefertotheofficialKeraswebsite[18].
Step4:InitializeInputData
#Initializeinputdata
xs=np.array([-1.0,0.0,1.0,2.0,3.0,4.0],dtype=float)
ys=np.array([-2.0,1.0,4.0,7.0,10.0,13.0],dtype=float)
## Here,definethetrainingdataset,witharraysforthexandyvalues.
## Therelationshipthatwearelookingforisy=3x+1
Step5:FittheModel
#Fitthemodel
model.fit(xs,ys,epochs=500)
## Now,trainthemodelbyaddingthelinesofcodeabove.
Wearetellingthemodeltobegintrainingwiththegiventrainingset.Inthiscase,weare
tellingthecomputertotraintheneuralnetwork500times.Withmoreepochs(roundsof
training),wegethigheraccuracy.Oneepochiswhenanentiredatasetispassedforwardand
backwardsthroughtheneuralnetworkonce.
Step6:Prediction
#Prediction
## 12

NSCCBeginner’sGuidetoRunAIJobs
dataIn=np.array([10.0],dtype=float)
print(model.predict(dataIn,1,1))
## Wecanthenchecktheaccuracyofourmodelbyaskingittopredictthevalueofywhenx=
10.0.Intuitively,iftheneuralnetworkhasbeentrainedwell,theanswershouldbe31.0
4.2RunningyourFirstDeepLearningProgramontheASPIRE
## 2ACPU
1.Saveyourprogramaslinear.py
2.Inthesamedirectory,youcancreateanotherfile,submit.sh.Thisisoursubmission
script:
## #!/bin/bash
#Exercise1submissionscript-submit.sh
#Below,isthequeue
#PBS-qnormal
#PBS-joe
#PBS-lselect=1:ncpus=1:mem=1G
#PBS-lwalltime=00:10:00
#PBS-P<projectId>
#PBS-Nlinear_program
#Commandsstarthere
cd${PBS_O_WORKDIR}
moduleloadtensorflow/2.8.1-py3
pythonlinear.py
3.Theimportantpartstofocusonforthisscriptarethetargetqueue#PBS-qnormal
andtheactualcommands.
4.Weareusingthenormalqueue,whichcomprisesCPUsandGPUs.Inthisexample,we
arenotmakinguseofGPUsbecausewearerunningasimpledeeplearningjobwithonly
onelayer,whichwillrunquicklyonCPUs.Thenintheselection,thevariable“ncpus”is
setup.
5.Asforthecommandsproperinthescript,first,weenterthecurrentworkingdirectory
${PBS_O_WORKDIR}.Tofindoutmoreaboutwritingandautomaticallygenerating
PBSscripts,youcanrefertothePBSscriptgeneratorwebsite[19].
6.Then,weloadtherelevantlibrariesbyusingthemoduleinterface.Inthiscase,weare
loadingSingularity.
7.Finally,weexecuteourprogramlinear.py.Wedothisbyexecutingoneofthe
## 13

NSCCBeginner’sGuidetoRunAIJobs
providedSingularityimageswithintheNSCCsystem.Inthiscase,ourimagecontains
TensorFlow1.7.0andKeras2.2.0.
8.Submityourjobwiththecommandbelow:
qsubsubmit.sh
9.Uponsubmittingtheprogram,youshouldseethejobIDofyourjobsubmission,ascanbe
seeninFigure4.1(Theblanked-outareaisyourNSCCuserID).NotethatthejobIDwillbe
differentforyou.
## [linear]$qsubsubmit.sh
## 2129113.pbs101
## [linear]$
Figure4.1Theoutputaftersubmitajob
4.3Understandingtheoutput
## Oncethemodelhasfinishedtraining,youshouldseeanewfileappearinyourworking
directory,somethinglikeFigure4.2below.Theoutputfileisnamed
linear_program.1254710,withthenamelinear_programcorrespondingtothe
namewesetinoursubmissionscript,andthenumber1254710correspondingtoourjobID.
## [linear]$ls
linear_program.o2129113linear.pysubmit.sh
## [linear]$
Figure4.2-Outputfileswhenjobfinished
Openthefileusingvimusingthiscommandvimlinear_program.o<JOBID>.Scroll
throughtheoutputandnotethatthe"lossvalue"(Figure4.3)decreaseswitheachepoch,
signifyingthatthedifferencesbetweenthepredictedandactualvaluesaredecreasing.
## Epoch1/500
## 1/1[=======================]-2s2s/step-loss:22.2192
## Epoch2/500
## 1/1[=======================]-0s1ms/step-loss:17.4979
## Epoch3/500
## 1/1[=======================]-0s781us/step-loss:13.7831
## Epoch4/500
## 1/1[=======================]-0s953us/step-loss:10.8601
## Epoch5/500
## 1/1[=======================]-0s888us/step-loss:8.5601
## 14

NSCCBeginner’sGuidetoRunAIJobs
Figure4.3-Lossfromeachepochoflinear.py
Attheendoftheoutputfile(Figure4.4)notehowsmallthelossvalueis.Wecanalsoseethe
predictionofourinputx=10.0.However,insteadoftheexpected31.0,itisafloat,30.996.
Ourinputtrainingsetisverysmall,andTensorFlowconsiderstheprobabilityoftheobserved
relationshipholdingwhenitcalculatesthepredictedvalue,hencegivingusavalueslightly
differentfromwhatweexpected.
## Epoch500/500
## 1/1[==============================]-0s771us/step-loss:
## 2.7902e-06
## 1/1[==============================]-0s63ms/step
## [[31.004871]]
Figure4.4-Finalpredictionfromlinear.py
4.4Takeaways
## Fromthisexercise,wehopeyouhavelearntthebasicsofasimpledeeplearningprogram.
## Youshouldhaveabetterunderstandingofhowweuselayersofnodestobuildneural
networks,andthepurposeoflossandoptimizerfunctionsintrainingthemodels.Youshould
alsohaveaclearerideaofthestepsinvolvedinwritingdeeplearningprograms,namely
importingtherelevantlibraries,building,compilingandfittingthemodeltothetrainingdata
andfinallytestingthemodel.
Additionally,youshouldhaveaclearerunderstandingofhowtouseaSingularityimageto
runAIprogramsontheASPIRE2Acomputenodes.Youmayexploretheotherimages
withintheNSCCsystemtoexpandthecapabilitiesofyourAIprograms.
## 15

NSCCBeginner’sGuidetoRunAIJobs
5.Exercise2:DeepLearningProgramon
## ASPIRE2AGPU
## Inthisexercise,wewillintroduceamorecomplexdeeplearningprogram,againusingthe
open-sourceplatformTensorFlowandlibraryKeras.Thiswillallowuserstobetter
understandthecapabilitiesandvariationsofdeeplearningprograms.
Additionally,weshallbecoveringthescriptrequiredtorunAIprogramsontheGPU
(graphicalprocessingunit),whichisanacceleratedapproachascomparedtorunningAIjobs
onthecomputenodes,allowingyoutorunlargerandmorecomplexAIprograms.
TheprogramiswritteninPythonandthesubmissionscriptiswritteninbash.
## Theprogram,fashion.py[20],trainsaneuralnetworktotakeanimageofapieceofclothing
andcategorizeitinto10differentcategories.Ourtrainingandtestingdataset,Fashion
MNIST[17],containsacollectionofover70,000imagesofclothing.LikeExercise1,this
programhasseveralmainsteps,withsomechanges.First,weimporttherelevantlibraries.
Followingthat,wepartitionourinputdataandbuildourmodel.Then,wecompileandfitthe
modelbeforefinallytestingit.
5.1WritingyourDeepLearningProgram-fashion.py
Below,wehaveprovidedtheentirefashion.pyprogram.Followingthat,wehaveprovideda
stepbystepdescriptionandexplanationofthecode.
#Exercise2-fashion.py
importtensorflowastf
importkeras
fashion_mnist=keras.datasets.fashion_mnist
#Partitioninputdata
## (train_images,train_labels),(test_images,test_labels)=
fashion_mnist.load_data()
#Buildthemodel
model=keras.Sequential([
keras.layers.Flatten(input_shape=(28,28)),
keras.layers.Dense(128,activation=tf.nn.relu),
## 16

NSCCBeginner’sGuidetoRunAIJobs
keras.layers.Dense(10,activation=tf.nn.softmax)
## ])
#Compileandfitthemodel
model.compile(optimizer=tf.keras.optimizers.Adam(),
loss='sparse_categorical_crossentropy',
metrics=['accuracy'])
model.fit(train_images,train_labels,epochs=5)
#Testthemodel
test_loss,test_acc=model.evaluate(test_images,test_labels)
print('Testloss:{},Testaccuracy:{}'.format(test_loss,
test_acc*100))
Step1:ImportLibrariesandData
#Exercise2-fashion.py
importtensorflowastf
importkeras
fashion_mnist=keras.datasets.fashion_mnist
OpenyourfavoriteplaintexteditorandtypeinthecodeasinStep1above.Here,wehave
importedthecriticallibrariesandthedatasetfortheprogram.
Step2:PartitionInputData
#Partitioninputdata
## (train_images,train_labels),(test_images,test_labels)=
fashion_mnist.load_data()
Next,let'ssplitourdatainto2portions.Thefirstwillbethetrainingimagesandtherelevant
labels,whichiswhatwewillbeusingwhenbuildingourmodel.Thesecondisthetestset,
withwhichwecanchecktheaccuracyofourmodel.
Step3:BuildtheModel
#Buildthemodel
model=keras.Sequential([
keras.layers.Flatten(input_shape=(28,28)),
keras.layers.Dense(128,activation=tf.nn.relu),
keras.layers.Dense(10,activation=tf.nn.softmax)
## 17

NSCCBeginner’sGuidetoRunAIJobs
## ])
Now,let'sbuildourmodel.Giventhatwehaveamuchmorecomplextasknow,ourmodel
willalsobemorecomplexascomparedtotheintroductoryexercise.
Firstly,wewillbebuildingaSequentialModelagain.Priortoworkingonthedata,the
keras.layers.Flatten(input_shape=(28,28))functiontakesintheimages
(whichareof28x28pixels)andconvertsthemintoaone-dimensionalset.Thisisforeaseof
manipulationasthereisaruleofthumbthatthefirstlayerintheneuralnetworkshould
followtheshapeoftheinputdata.Thus,having28x28nodesisnotfeasibleandby
flatteningtheimages,weareabletobuildamorefeasibleneuralnetwork.
Next,wehave2layersofnodes,bothofwhicharekeras.layers.Dense.Bothlayers
alsohaveanactivationfunction[21],which(insimpleterms)isafunctionthattellseach
layerofnodeswhattodo.
Step4:CompileandFittheModel
#Compileandfitthemodel
model.compile(optimizer=tf.keras.optimizers.Adam(),
loss='sparse_categorical_crossentropy',
metrics=['accuracy'])
model.fit(train_images,train_labels,epochs=5)
Next,weshallbecompilingandfittingourmodelwithonly5epochs.Notetheusageofthe
lossandoptimizerfunctions.
Step5:TesttheModel
#Testthemodel
test_loss,test_acc=model.evaluate(test_images,test_labels)
print('Testloss:{},Testaccuracy:{}'.format(test_loss,
test_acc*100))
## Oncethemodelhasfinishedtraining,wemayevaluateitsaccuracyusingourtestdata.
## 18

NSCCBeginner’sGuidetoRunAIJobs
5.2RunningyourDeepLearningProgramontheASPIRE
## 2AGPU
1.SaveyourAIprogramasfashion.py
2.Inthesamedirectory,createanotherfile,submit.sh.Thisisoursubmissionscript.
## #!/bin/bash
#Exercise2submissionscript-submit.sh
#Below,isthequeue
#PBS-qnormal
#PBS-joe
#PBS-lselect=1:ngpus=1
#PBS-lwalltime=00:10:00
## #PBS-P90000001
#PBS-Nfashion_program
#Commandsstarthere
moduleloadtensorflow/2.8.1-py3-gpu
cd${PBS_O_WORKDIR}
python2_fashion.py
3.Theimportantpartstofocusonforthisscriptarethetargetqueue#PBS-qgpu
andtheactualcommands.
4.WeareusingtheGPUqueueasAIjobstendtorunmoreefficientlyonGPUsinsteadof
CPUs.TheGPUacceleratedapproachallowsustocompletecomplexmathematicaljobs
inparallel.TofindoutmoreaboutwritingandautomaticallygeneratingPBSscripts,
pleaserefertothePBSscriptgeneratorwebsite[19].
5.Asforthecommands,weloadtherelevantlibrariesbyusingthemoduleinterface.Inthis
case,weareloadingTensorFlow1.4.Next,weenterourcurrentworkingdirectory
## ${PBS_O_WORKDIR}.
6.Finally,weruntheactualprogramusingPython.
7.Onceyouhavedonethatandloggedintoyouraccount,submityourjobwiththis
command:
qsubsubmit.sh
8.Uponsubmittingtheprogram,youshouldseethejobIDofyourjobsubmission,ascanbe
seeninFigure5.1.[Theblanked-outareaisyourNSCCuserID].NotethatthejobID
willbedifferentforyou.
## [fashion]$ls
fashion.pysubmit.sh
## [fashion]$qsubsubmit.sh
## 19

NSCCBeginner’sGuidetoRunAIJobs
## 2129125.pbs101
Figure5.1-JobIDforFashionJobSubmission
5.3UnderstandingtheOutput
## Oncethemodelhasfinishedtraining,youshouldseeanewfileappearinyourworking
directory(asperFigure5.2).Theoutputfileisnamedfashion_program.o1255226,
withthenamefashion_programcorrespondingtothenamewesetinoursubmission
script,andthenumber1255226correspondingtoourjobID.
## [fashion]$ls
fashion_program.o2129125fashion.pysubmit.sh
## [fashion]$
Figure5.2-Outputfile
Openthefileusingvimusingthiscommandvimfashion_program.<JOBID>and
scrollthroughit.YoushouldseesomethinglikeFigure5.3below.Noticethatthe"lossvalue"
decreaseswitheachepoch,signifyingthatthedifferencesbetweenthepredictedandactual
valuesaredecreasing.
## Epoch1/5
## 2023-08-0622:36:36.656194:I
tensorflow/stream_executor/cuda/cuda_blas.cc:1786]
TensorFloat-32willbeusedforthematrixmultiplication.
## Thiswillonlybeloggedonce.
## 1875/1875[==============================]-5s984us/step-
loss:3.1328-accuracy:0.6751
## Epoch2/5
## 1875/1875[==============================]-2s966us/step-
loss:0.7319-accuracy:0.7128
## Epoch3/5
## 1875/1875[==============================]-2s961us/step-
loss:0.6372-accuracy:0.7459
Figure5.3-Lossfromeachepochoffashion.py
Attheendoftheoutputfile(Figure5.4),wecanseethetest_accuracyvalue,whichis
arelativelylow24.7%,duetothesmallnumberofepochs.
## 20

NSCCBeginner’sGuidetoRunAIJobs
## 1875/1875[==============================]-2s959us/step-
loss:0.6110-accuracy:0.7623
## Epoch5/5
## 1875/1875[==============================]-2s964us/step-
loss:0.5695-accuracy:0.7856
## 313/313[==============================]-0s934us/step-loss:
## 0.5703-accuracy:0.7962
Testloss:0.570262610912323,Testaccuracy:79.61999773979187
Figure5.4-Finaltestaccuracyfromfashion.py
5.4Takeaways
## Fromthisexercise,wehopeyouhavelearntmoreaboutthepossiblevariationsthatyoucan
includeinyourdeeplearningmodel.Wecanhavemanymorelayers,henceincreasingthe
complexityoftheneuralnetwork.SimilartoExercise1,youshouldalsohaveacleareridea
ofthestepsinvolvedinwritingdeeplearningprograms,namelyimportingtherelevant
libraries,building,compilingandfittingthemodeltothetrainingdataandfinallytestingthe
model.Inthisexercise,wehavealsointroducedtheconceptofpartitioningthetrainingand
testingdata.
## Additionally,youshouldhaveaclearerunderstandingofhowtousethemoduleinterfaceto
runAIprogramsontheASPIRE2AGPU.YoucanexploretheotherTensorFlowmodules
availableonASPIRE2A.
## 21

NSCCBeginner’sGuidetoRunAIJobs
6.Exercise3:ConvolutionalNeuralNetwork
ProgramonNSCCAICluster
Inthisexercise,wewillintroduceadifferenttypeofneuralnetwork,theconvolutionalneural
network.Convolutionalneuralnetworksarebetteratclassifyingimagesthantheneural
networkwediscussedinExercise2.
## Theprogram,convolution.py[22],trainsaconvolutionalneuralnetworktotakeanimageof
apieceofclothingandcategorizeitinto10differentcategories.Ourtrainingandtesting
dataset,FashionMNIST[17],containsacollectionofover70,000imagesofclothing.While
thisislargelysimilartoExercise2,wewillseeamorecomplexmodelwhichprovidesa
betterresult.Thereisalsoaslightchangeinhowweprocessourinputdata.First,weimport
therelevantlibraries.Followingthat,wepartitionandreshapeourinputdata.Then,webuild,
compileandfitthemodelbeforefinallytestingit.
6.1UnderstandingConvolutionalNeuralNetworks
InExercise2,weusedasimpleneuralnetworkasawaytoclassifyimagesofclothes.This,
however,wouldonlyworkforimageswhicharealreadycenteredonthemainsubjectmatter
oftheimage.Asaresult,theneuralnetworkwouldonlybeabletoidentifyimagessimilarto
theonesinFigure6.1.Asusers,wewouldwantaprogramwhichcouldcorrectlyidentifyany
shoe,regardlessofcolor,sizeororientationoftheshoeintheimage.
Figure6.1-ImagesfromExercise2[23]
## Tobuildamorepowerfulneuralnetworkwhichcanclassifyalargervarietyofimages,we
havetointroduceconvolutionsintoourearlierneuralnetwork.Convolutionsarefilterswhich
passoveranimageduringtrainingandprocessit,thusextractingthecommonfeaturesfrom
imagesofthesameclassification.Asaresult,ourneuralnetworkwillbeabletopickout
commonfeatures,insteadofbeingrestrictedbythetypeandsizeoftheimage.
## 22

NSCCBeginner’sGuidetoRunAIJobs
6.2WritingyourConvolutionalNeuralNetworkProgram-
convolution.py
Wehaveprovidedtheentireconvolution.pyprogrambelow.Astepbystepdescriptionand
explanationofthecodeisprovidedbelowthecode.
#Exercise3-convolution.py
importtensorflowastf
print(tf.__version__)
#Partitioninputdata
mnist=tf.keras.datasets.fashion_mnist
## (training_images,training_labels),(test_images,test_labels)
## =mnist.load_data()
#Reshapeinputdata
training_images=training_images.reshape(60000,28,28,1)
training_images=training_images/255.0
test_images=test_images.reshape(10000,28,28,1)
test_images=test_images/255.0
#Buildthemodel
model=tf.keras.models.Sequential([
tf.keras.layers.Conv2D(64,(3,3),activation='relu',
input_shape=(28,28,1)),
tf.keras.layers.MaxPooling2D(2,2),
tf.keras.layers.Conv2D(64,(3,3),activation='relu'),
tf.keras.layers.MaxPooling2D(2,2),
tf.keras.layers.Flatten(),
tf.keras.layers.Dense(128,activation='relu'),
tf.keras.layers.Dense(10,activation='softmax')
## ])
#Compileandfitthemodel
model.compile(optimizer='adam',
loss='sparse_categorical_crossentropy',
metrics=['accuracy'])
model.fit(training_images,training_labels,epochs=5)
#Testthemodel
test_loss,test_accuracy=model.evaluate(test_images,test_label
s)
print('Testloss:{},Testaccuracy:{}'.format(test_loss,
test_accuracy*100))
## 23

NSCCBeginner’sGuidetoRunAIJobs
Step1:ImportLibrary
#Exercise3-convolution.py
importtensorflowastf
print(tf.__version__)
OpenyourfavoritetexteditorandtypeinthecodeasinStep1above.
Here,wehaveimportedTensorFlowfortheprogram.TheTensorFlowimagesavailableon
theAspire2A(whichwewillbeusing)containanewerversionofTensorFlow,version2.18..
ThisversioncontainsKerasasasubmodule,allowinguserstoseamlesslyuseKerasasa
high-levelAPIandTensorFlowasthecomputationalbackend.Asaresult,wewillbeableto
refertoKerasastf.keras(below).
Step2:PartitionInputData
#Partitioninputdata
mnist=tf.keras.datasets.fashion_mnist
## (training_images,training_labels),(test_images,
test_labels)=mnist.load_data()
Next,let'ssplitourinputdatainto2portions.Thefirstwillbethetrainingimagesandthe
relevantlabels,whichiswhatwewillbeusingwhenbuildingourmodel.Thesecondisthe
testsetwithwhichwecanchecktheaccuracyofourmodel.
Step3:ReshapeInputData
#Reshapeinputdata
training_images=training_images.reshape(60000,28,28,1)
training_images=training_images/255.0
test_images=test_images.reshape(10000,28,28,1)
test_images=test_images/255.0
## Here,wehavetoreshapetheinputimagestofittheneuralnetwork.
Thefirstconvolution(filter)expectsasinglesourceofinputforboththetrainingandtesting
phase,ratherthanhaving60000trainingand10000testingimagesofdimensions28x28x1
## 24

NSCCBeginner’sGuidetoRunAIJobs
pixels.Asaresult,wereshapebothsetsofimagesintoasingle4-dimensionallist.
Afterthat,wealsonormalizethepixelvalues.Neuralnetworksgenerallyprocessinputsusing
smallweightvaluesandusinginputswithlargeintegervaluescandisruptandslowdownthe
trainingprocess.Pixelsareunsignedintegersintherangebetween0and255(representedas
abyte).Wenormalizethevaluetothe0-1rangebydividingwith255tospeedupthe
trainingprocess.
Step4:BuildtheModel
#Buildthemodel
model=tf.keras.models.Sequential([
tf.keras.layers.Conv2D(64,(3,3),activation='relu',
input_shape=(28,28,1)),
tf.keras.layers.MaxPooling2D(2,2),
tf.keras.layers.Conv2D(64,(3,3),activation='relu'),
tf.keras.layers.MaxPooling2D(2,2),
tf.keras.layers.Flatten(),
tf.keras.layers.Dense(128,activation='relu'),
tf.keras.layers.Dense(10,activation='softmax')
## ])
Now,let'sbuildourmodel.Withtheconvolutions,wehaveanevenmorecomplexmodel
withseverallayers.
Firstly,wewillbebuildingasequentialmodelagain.Priortoworkingonthedata,the
tf.keras.layers.Conv2D(64,(3,3),activation='relu',input_sh
ape=(28,28,1))servesastheconvolutionallayer.Theparametersofthis
functiondescribethecharacteristicsoftheconvolutionallayer.Inthiscase,weare
generating64convolutions(filters),eachofdimension(3x3).Next,weusethe
reluactivationfunction,whichensuresthatthelayeronlyreturnsnonnegative
results.Wealsohavethedimensionsoftheinputdata.
## Followingtheconvolutionallayer,wehavethepoolinglayer,whichisanothermechanismto
helpprogrammerstoreducetheamountofinformationinimages,whilestillmaintainingthe
importantfeatures.Thetf.keras.layers.MaxPooling2D(2,2)layerreducesthe
sizeoftheimagebyafactorof4.Morespecifically,itsplitstheimageintogroupsof4pixels
andchoosesthelargestpixelvalue,hencethenameMaxPooling.Thisiterationand
removalprocessreducestheimagesize.Afterthat,werepeattheconvolutionandpooling
## 25

NSCCBeginner’sGuidetoRunAIJobs
oncemore.
Aftertheconvolutionsandpooling,weusethesameneuralnetworkusedinExercise2.We
flattentheimagesintoaone-dimensionalsetandthenpassthemthroughthe2
keras.layers.Denselayers,givingusourcompletedmodel.
Step5:CompilingandFittingtheModel
#Compileandfitthemodel
model.compile(optimizer='adam',
loss='sparse_categorical_crossentropy',
metrics=['accuracy'])
model.fit(training_images,training_labels,epochs=5)
Next,weshallbecompilingandfittingourmodelwithonly5epochs.Notetheusageofthe
lossandoptimizerfunctions.
Step6:TestingtheModel
#Testthemodel
test_loss,test_accuracy=model.evaluate(test_images,test_label
s)
print('Testloss:{},Testaccuracy:{}'.format(test_loss,
test_accuracy*100))
## Oncethemodelhasfinishedtraining,wemayevaluateitsaccuracyusingourtestdata.
6.3RunningyourConvolutionalNeuralNetworkProgramon
theNSCCAICluster
1.TousetheNSCCAISystem,youmusthaveaspecialaccountwithNSCC.
2.SaveyourAIprogramasconvolution.py
3.Inthesamedirectory,createanotherfile,submit.sh.Thisisoursubmissionscript.
## #!/bin/sh
#Below,isthequeue
#PBS-qai
## 26

NSCCBeginner’sGuidetoRunAIJobs
#PBS-joe
#Numberofcores
#PBS-lselect=1:ngpus=1
#PBS-lwalltime=00:25:00
## #PBS-P90000001
#PBS-Nconvolution_program
#Startofcommands
cd$PBS_O_WORKDIR
moduleloadsingularity/3.10.0
image="/app/apps/containers/tensorflow/tensorflow-nvidia-22.0
## 4-tf2-py3.sif"
singularityrun--nv-B/scratch,/app,/data$imagepython
## 3_convolution.py
4.Theimportantpartstofocusonforthisscriptarethetargetqueue#PBS-qai,the
numberofcores#PBS-lselect=1:ngpus=8,projectID#PBS-P
<Project_ID>andtheactualcommands.
5.Weareusingthe“ai”queuetoshowcasetheefficiencyandpoweroftheHPEApollo6500
machine.Inaddition,youhavetouseyourassignedprojectID,whichyoumayapplyfor
throughtheNSCCwebsite[25].
6.Wearealsousing8GPUsand40CPUcoresoneachnode.Ifyoudecidetousefewer
GPUs,youwillhavetoreducethenumberofCPUsbyfivetimesthenumberofGPUs.For
example,withoneGPU,youwillhavefiveCPUs,or#PBS-lselect=1:ngpus=1.To
findoutmoreaboutwritingandautomaticallygeneratingPBSscripts,pleaserefertothePBS
scriptgeneratorwebsite[19]
7.Asforthecommands,weentertheworkingdirectoryandloadtheTensorFlowimage.To
seetheavailableimagesontheNSCCsystem,youcantypenscc-dockerimagesin
thecommandline.Followingthat,weruntheDockerimageandruntheconvolution.py
inthecontainer.
8.Submityourjobwiththiscommand:
## $qsubsubmit.sh
9.Uponsubmittingtheprogram,youshouldseethejobIDofyourjobsubmission,ascanbe
seeninFigure6.2.[Theblanked-outareaisyourNSCCuserID].NotethatthejobIDwill
## 27

NSCCBeginner’sGuidetoRunAIJobs
bedifferentforyou.
## [convolution]$ls
convolution.pysubmit.sh
## [convolution]$qsubsubmit.sh
## 2129229.pbs101
Figure6.2-JobIDforConvolutionJobSubmission
6.4UnderstandingtheOutput
## Oncethemodelhasfinishedtraining,youshouldseeanewfileappearinyourworking
directory,asperFigure6.3below.Theoutputfileisnamed
convolution_program.o2129229,withthenameconvolution_program
correspondingtothenamewesetinoursubmissionscript,andthenumber1328360
correspondingtoourjobID.
## [convolution]$ls
convolution_program.o2129229convolution.pysubmit.sh
## [convolution]$
Figure6.3-Outputfile
Openthefileusingvimwiththiscommandvimconvolution_program.o<JOBID>
andscrollthroughit.YoushouldseesomethinglikeFigure6.4below.Attheendofthe
outputfile(Figure6.4),wecanseethetest_accuracyvalue,whichismuchhigherthan
Exercise290.77%.Wecanattributethistotheusageofconvolutions,whichincreasethe
accuracyandspeedofourprogram.
Testloss:0.2551686465740204,Testaccuracy:90.77000021934509
## ====================================================================
Figure6.4-Lossfromeachepochoffashion.py
6.5Takeaways
## Fromthisexercise,wehopeyouhavelearntmoreaboutconvolutionsandhowbeneficial
theycanbeinimageclassification.SimilartoExercise2,youshouldalsohaveacleareridea
ofthestepsinvolvedinwritingdeeplearningprograms,namelyimportingtherelevant
libraries,building,compilingandfittingthemodeltothetrainingdataandfinallytestingthe
model.Inthisexercise,wehavealsointroducedtheconceptofreshapingtheinputdata.
## 28

NSCCBeginner’sGuidetoRunAIJobs
Additionally,youshouldhaveaclearerunderstandingofhowtorunAIprogramsonthe
NVIDIAGPU.YoumayexploretheotherDockerimagesavailableontheNGC
(https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=)and
convertittoSingularityImage.
ToconverttheDockerimagetosingularityimage.
moduleloadsingularity
singularitybuildmypytorch22.09.sif
docker://nvcr.io/nvidia/pytorch:22.09-py3
singularityexec--nvmypytorch22.09.sifpythonmy_python_script.py<args>
7.Summary
## Withtheknowledgefromtheintroductoryandadvancedtutorials,youshouldbeabletoget
startedonexploringmoreadvancedDeepLearningandMachineLearningtutorials.Withthe
increasingcomplexityandtimerequirementsofAIprograms,youmayexploreusingtheAI
ClustertorunlargerandmorecomplexAIprograms.Ifyouarenewtoprogramming,you
mayrefertothePython[8]andbash[9]references.Youmayalsocontinuewiththenextset
ofvideotutorialsfollowingExercise1and2[26].
8.References
[1]NSCC,[Online].Available:https://www.nscc.sg/[Accessed10Dec2020]
[2]"NSCC-Software/HardwareInformation",NationalSupercomputingCentre
Singapore,[Online].Available:https://help.nscc.sg/softwarehardware-information/
[Accessed10Dec2020].
[3]"BasicLinuxTutorial",NationalSupercomputingCentreSingapore,[Online].
## 29

NSCCBeginner’sGuidetoRunAIJobs
Available:https://help.nscc.sg/wp-content/uploads/2016/03/BasicLinuxTutorial-
v0.1.pdf[Accessed10Dec2020].
[4]NSCC,"GettingStartedwithNSCCSupercomputingonASPIRE1".
[5]NSCC,"Software/HardwareInformation",[Online].Available:
https://help.nscc.sg/softwarehardware-information/[Accessed10Dec2020].
[6]NVIDIA,"DGX-1Infographic",[Online].Available:
https://www.nvidia.com/content/dam/en-zz/Solutions/Data-Center/dgx-1/dgx-1-print-
infographic-738238-nvidia-web.pdf[Accessed10Dec2020].
[7]NSCC,"AISystemQuickStartGuide",22August2019.[Online].Available:
https://help.nscc.sg/wp-content/uploads/AI_System_QuickStart.pdf[Accessed10Dec
## 2020].
[8]LearnPython,"WelcomePage",[Online].Available:https://www.learnpython.org/
[Accessed10Dec2020].
[9]LinuxConfig,"BashScriptingTutorialforBeginners",[Online].Available:
https://linuxconfig.org/bash-scripting-tutorial-for-beginners[Accessed10Dec2020].
[10]Y.Gavrilova,"ArtificialIntelligencevs.MachineLearningvs.DeepLearning:
Essentials",8April2020.[Online].Available:https://serokell.io/blog/ai-ml-dl-
difference[Accessed10Dec2020].
[11]C.Nicholson,"ABeginner'sGuidetoNeuralNetworksandDeepLearning",[Online].
Available:https://pathmind.com/wiki/neural-network[Accessed10Dec2020].
[12]TensorFlow,[Online].Available:https://www.tensorflow.org/[Accessed10Dec2020].
[13]Keras,[Online].Available:https://keras.io/[Accessed10Dec2020].
[14]Sylabs,[Online].Available:https://sylabs.io/docs/[Accessed10Dec2020].
[15]EnvironmentModules,[Online].Available:
https://modules.readthedocs.io/en/latest/module.html[Accessed10Dec2020].
[16]TensorFlow,"IntrotoMachineLearning(MLZerotoHero-Part1)",31August2019.
[Online].Available:https://www.youtube.com/watch?v=KNAWp2S3w94[Accessed
10Dec2020].
[17]TensorFlow,"fashion_mnist",[Online].Available:
https://www.tensorflow.org/datasets/catalog/fashion_mnist[Accessed10Dec2020].
[18]Keras,"APIReference",[Online].Available:https://keras.io/api/[Accessed10Dec
## 2020].
[19]NSCC,"PBSScriptGenerator",[Online].Available:
https://tishyakhanna97.github.io/astarWebsite/index.html[Accessed10Dec2020].
[20]TensorFlow,"BasicComputerVisionwithML(MLZerotoHero-Part2)",4
September2019.[Online].Available:
https://www.youtube.com/watch?v=bemDFpNooA8[Accessed10Dec2020].
[21]Keras,"Layeractivationfunctions",[Online].Available:
## 30

NSCCBeginner’sGuidetoRunAIJobs
https://keras.io/api/layers/activations/[Accessed10Dec2020].
[22]TensorFlow,"Introducingconvolutionalneuralnetworks(MLZerotoHero-Part3)",
[Online].Available:https://www.youtube.com/watch?v=x_VrgWTKkiM[Accessed10
## Dec2020].
[23]TensorFlow,"WhatareConvolutions?",[Online].Available:
https://codelabs.developers.google.com/codelabs/tensorflow-lab3-convolutions/#1
[Accessed10Dec2020].
[24]TensorFlow,"UsingConvolutions",[Online].Available:
https://codelabs.developers.google.com/codelabs/tensorflow-lab3-convolutions/#2
[Accessed10Dec2020].
[25]NSCC,"Contactus-Help",[Online].Available:https://help.nscc.sg/contact-us/
[Accessed10Dec2020].
[26]TensorFlow,"Buildanimageclassifier(MLZerotoHero-Part4)",[Online].
Available:https://www.youtube.com/watch?v=u2TjZzNuly8&vl=en[Accessed10Dec
## 2020].
## 31