

## DFTB+
## Version 25.1
## U S E R   M A N U A L

## 2

## Contents
## 1    Introduction9
2    Input for DFTB+11
2.1Main input .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .11
2.2Geometry   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .12
2.2.1Explicit geometry specification .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .12
2.2.2GenFormat{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .13
2.2.3xyzFormat{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .14
2.2.4VaspFormat{}    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .14
2.3Driver   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .15
2.3.1GeometryOptimisation  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .16
2.3.2SteepestDescent{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .19
2.3.3ConjugateGradient{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .21
2.3.4gDIIS{} .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .21
2.3.5LBFGS{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .22
2.3.6FIRE{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .22
2.3.7SecondDerivatives{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .23
2.3.8VelocityVerlet{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .24
2.3.9Socket{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .30
2.4Hamiltonian  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .31
2.4.1Density Functional based Tight Binding  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .31
2.4.2Extended Tight Binding Hamiltonian   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .38
2.4.3External Hamiltonian models    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .39
2.4.4ElectronicConstraints .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .39
2.4.5Mixer  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .41
2.4.6SpinPolarisation    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .43
2.4.7SpinOrbit  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .47
2.4.8Solver  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .47
2.4.9Filling .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .51
2.4.10   Time-independent DFTB (TI-DFTB) excited states  .  .  .  .  .  .  .  .  .  .  .  .  .52
2.4.11   SlaterKosterFiles  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .53
2.4.12   KPointsAndWeights   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .55
2.4.13   OrbitalPotential .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .57
2.4.14   ElectricField   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .58
2.4.15   AtomSitePotential   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .60
2.4.16   Dispersion    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .60
2.4.17   DFTB3   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .70
2.4.18   Mdftb  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .71
2.4.19   Implicit Solvation Model  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .72
## 3

## 4CONTENTS
2.4.20   Halogen corrections    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .79
2.4.21   Hydrogen corrections .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .79
2.4.22   Hybrid    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .82
2.4.23   On site corrections   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .85
2.4.24   Differentiation   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .86
2.4.25   ForceEvaluation    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .86
2.5Options   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .87
2.5.1MDOutput   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .89
2.6Analysis  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .89
2.6.1ProjectStates   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .91
2.6.2Localise / Localize   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .91
2.6.3ElectrostaticPotential  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .92
2.6.4Response properties by perturbation  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .93
2.7ExcitedState  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .95
2.7.1Casida .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .95
2.7.2PP-RPA  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .99
2.8ElectronDynamics .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .99
2.8.1Perturbation{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   102
2.8.2WriteEnergyAndCharges .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   104
2.8.3EnvelopeShape{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   104
2.9REKS   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   105
2.9.1SSR22    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   105
2.10  ParserOptions  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   108
2.11  Parallel    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   109
3    Output of DFTB+111
3.1band.out  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   111
3.1.1dE_band.out    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   111
3.2detailed.out   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   111
3.3results.tag  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   112
3.4hamsqrN.dat, oversqr.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   113
3.5hamrealN.dat, overreal.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   114
3.6eigenvec.out, eigenvec.bin    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   114
3.7charges.bin / charges.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   115
3.8md.out  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   115
3.9Electrostatic potential data   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   115
3.10  Excited state results files   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   116
3.10.1   ARPACK.DAT   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   117
3.10.2   COEF.DAT  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   117
3.10.3   EXC.DAT .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   117
3.10.4   SPX.DAT  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   118
3.10.5   TDP.DAT  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   118
3.10.6   TRA.DAT .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   118
3.10.7   NACV.DAT  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   118
3.10.8   TEST_ARPACK.DAT   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   118
3.10.9   XCH.DAT    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   119
3.10.10 XplusY.DAT   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   119
3.10.11 XREST.DAT   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   119
3.11  Electron dynamics results files   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   119
3.11.1   energyvst.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   119

## CONTENTS5
3.11.2   qsvst.dat    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   120
3.11.3   atomenergies.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   120
3.11.4   mu.dat/mux.dat/muy.dat/muz.dat .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   120
3.11.5   laser.dat  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   120
3.11.6   molpopul1.dat/molpopul2.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   120
3.11.7   forcesvst.dat    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   121
3.11.8   tdcoords.xyz   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   121
3.11.9   bondenergy.bin  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   121
3.11.10 bondpop.bin    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   121
3.12  ppRPA_ener.DAT  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   121
3.13  REKS results files .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   122
3.13.1   tdp.dat    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   122
3.13.2   relaxed_charge.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   122
3.14  Halting DFTB+ .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   122
4    Transport calculations123
4.1Definition of the geometry   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   123
4.1.1Rules to build a valid input geometry    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   123
4.2Transport.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   125
4.2.1Device{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   125
4.2.2Contact{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   126
4.2.3Task = ContactHamiltonian{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   127
4.2.4Task = UploadContacts{}.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   128
4.3GreensFunction.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   129
4.4Solver = TransportOnly  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   131
4.5Contour integration  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   132
4.6Spin-polarised transport .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   133
4.7Poisson solver  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   133
4.7.1Boundary Conditions.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   135
4.7.2Electrostatic Gates.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   137
4.8Parallelisations.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   138
4.9Analysis  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   138
4.10TunnelingAndDos.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   139
4.11  Setting electronic temperature    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   140
4.12  Troubleshooting transport .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   140
4.13  Transport Tools   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   140
5MODESprogram143
5.1Input forMODES.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   143
5.1.1Hessian{} .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   145
5.1.2BornCharges{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   145
5.1.3BornDerivs{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   145
5.1.4DisplayModes{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   146
## 6    PHONONS149
6.1Phonon transport calculation   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   149
6.1.1Transport{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   150
6.1.2Hessian{} .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   151
6.1.3Analysis{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   151
6.2Phonon dispersion .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   153

## 6CONTENTS
6.2.1PhononDispersion{}   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   153
## 7WAVEPLOT155
7.1Input for WAVEPLOT.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   155
7.1.1Options  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   156
7.1.2Basis   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   159
7.1.3ParserOptions .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   161
## 8SETUPGEOM163
8.1Input forSETUPGEOM.  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   163
8.1.1Transport{}  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   163
8.1.2Code output .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   165
## 9DFTB+ API167
9.1Building the library  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   167
9.2General guidelines    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   167
A   DFTB+ Releases169
B   The HSD format171
B.1    Scalars and list of scalars  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   172
B.2    Methods and property lists   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   173
B.3    Modifiers   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   174
B.4    File inclusion   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   175
B.5    Processing .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   175
B.6    Extended format .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   176
B.7    Index selection expressions  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   178
C   Unit modifiers181
D   Description of the gen format185
E   Atomic spin constants187
F    Slater-Kirkwood dispersion constants189
G   DftD3 dispersion constants191
H   DftD4 dispersion constants193
ISolvent parameters195
J    Atomic onsite constants197
K   Hartree Hubbard constants for pp-RPA calculations199
L   Description of restart files201
L.0.1charges.bin / charges.dat   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   201
L.0.2contact.bin / contact.dat    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   202
L.0.3tddump.bin / tddump.dat  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .   203
M  Publications to cite205

## CONTENTS7
## Index215

## 8CONTENTS

## Chapter 1
## Introduction
The code  DFTB+  is the Fortran 2003 successor of the old  DFTB  code,  which implements the
density functional based tight binding approach [27]. The code has been completely rewritten from
scratch and extended with various features.  The most recent features of the code are described in
## Ref. [40].
The main features of DFTB+ are:
-  Non-scc and scc calculations (with an expanded range of SCC accelerators)
–Cluster/molecular systems
–Periodic systems (arbitraryk-point sampling, band structure calculations, etc.)
–Open boundary conditions (wire and semi-infinite contacts)
-  l-shell resolved calculations possible
-  Spin polarised calculations (both collinear and non-collinear spin)
-  Geometry and lattice optimisation
-  Geometry optimisation with constraints (in xyz-coordinates)
-  Molecular dynamics (NVE, NPH, NVT and NPT ensembles as well as metadynamics)
-  Numerical vibrational mode calculations
-  Finite temperature calculations
-  Dispersion corrections (van der Waals interactions)
-  Ability to treatf-electrons
-  Linear response excited state calculations for cluster/molecular systems
-  Geometry optimisation and molecular dynamics in excited states
-  LDA+U/pSIC extensions
•L·Scoupling
-  3rd order on-site corrections (improved H-bonding)
## 9

## 10CHAPTER 1. INTRODUCTION
-  Multipole expansion (mDFTB)
-  Long range hybrid corrections
-  REKS calculations for a strongly correlated system
-  QM/MM coupling with external point charges (smoothing possible)
-  GPU acceleration and OpenMP and MPI parallelisation with a range of electronic solvers
-  Electronic transport calculations (non-equilibrium Green function methodology, transmission
calculations)
-  More general electrostatic boundary conditions via a Poisson equation electrostatic solver
-  Automatic code validation (autotest system)
-  New user friendly, extensible input format (HSD)
-  Dynamic memory allocation
-  Additional  tool  for  generating  cube  files  for  charge  distribution,  molecular  orbitals,  etc.
(Waveplot)
-  Excitation energies for cluster/molecular systems using the particle-particle Random Phase
## Approximation.
The recent releases of the code are listed in appendix A.

## Chapter 2
Input for DFTB+
DFTB+ can read the Human-friendly Structured Data format (HSD). If you are not familiar with
the HSD format,  a detailed description is given in appendix B. The input file for  DFTB+  must
be nameddftb_in.hsdand must be present in the working directory.  After processing the input,
DFTB+ creates a file of the parsed input calleddftb_pin.hsd. This contains the user input as well
as default values for unspecified options.  The file also contains the version number of the current
input parser.  You should always keep this file, since if you want to exactly repeat your calculation
with a later version of  DFTB+,  it is recommended to use this file instead of the original input.
(You must of course renamedftb_pin.hsdintodftb_in.hsd.)  This guarantees that you will obtain
the  same  results,  even  if  the  defaults  for  some  non  specified  options  have  been  changed  in  the
meanwhile (asdftb_pin.hsdstores the original choice).
The following sections list properties and options that can be set in DFTB+ input. The first column
of each of the tables of options specifies the name of a property.   The second column indicates
the type of the expected value for that property.  The letters “l”, “i”, “r”, “s”, “p”, “m” stand for
logical,  integer,  real,  string,  property  list  and  method  type,  respectively.   An  optional  prefixing
number specifies how often (if more than once) this type must occur.  An appended “+” indicates
arbitrary occurrence greater than zero, while “*” allows also for zero occurrence. Alternative types
are separated by “|”. Parentheses serve only to delimit groups of settings.
Sometimes a property is only interpreted on meeting some condition(s). If this is the case, the third
column gives details of the requirement(s).  The fourth column contains the default value for the
property. If no default value is specified (“-”), the user is required to assign a value to that property.
The description of the properties immediately follows the table.  If there is also a more detailed
description available for a given keyword somewhere else, the appropriate page number appears in
the last column.
Some properties are allowed to carry a modifier to alter the provided value (e.g. converting between
units).   The possible modifiers are listed between brackets ([]) in the detailed description of the
property.  If the modifier is a conversion factor for a physical unit, only the unit type is indicated
(length, energy, force, time, etc.). A list of the allowed physical units can be found in appendix C.
2.1    Main input
The input file for DFTB+ (dftb_in.hsd) must contain the following property definitions:
## 11

## 12CHAPTER 2. INPUT FORDFTB+
NameTypeConditionDefaultPage
## Geometryp|m-12
## Hamiltonianm-31
Additionally optional blocks of definitions may be present:
NameTypeConditionDefaultPage
## Driverm{}15
## Optionsp{}87
## Analysisp{}89
ExcitedStatep{}95
ElectronDynamicsp{}99
REKSp{}105
InputVersionsNone
ParserOptionsp{}108
## Parallelp{}109
GeometrySpecifies the geometry for the system to be calculated. See p. 12.
HamiltonianConfigures the Hamiltonian and its options. See p. 31.
DriverSpecifies a geometry driver for your system. See p. 15.
OptionsVarious global options for the run. See p. 87.
AnalysisPost-run analysis and properties options. See p. 89.
ExcitedStateCalculations in excited state of the system. See p. 95.
ElectronDynamicsReal time electronic dynamics of the system. See p. 99.
REKSCalculations in ensemble DFT for a strongly correlated system. See p. 105.
InputVersionProgram version, which the input file was written for. See p. 108 for a list.
ParserOptionsVarious options affecting the parser only. See p. 108 for a list.
ParallelOptions affecting the MPI-parallel execution. See p. 109.
## 2.2    Geometry
The geometry can be specified either directly by passing the appropriate list of properties or by
using theGenFormat{}method.  For molecular input thexyzFormat{}is supported as well.  For
periodic input theVaspFormat{}supports reading POSCAR and CONTCAR files.
2.2.1    Explicit geometry specification
If the geometry is being specified explicitly, the following properties can be set:
PeriodiclNo
LatticeVectors9rPeriodic = Yes-
TypeNamess+-
TypesAndCoordinates(1i3r)+-

## 2.2. GEOMETRY13
PeriodicSpecifies if the system is periodic in all 3 dimensions or is to be treated as a cluster. If set
toYes, propertyLatticeVectors{}must be also specified.
LatticeVectors[length]Thex,yandzcomponents of the three lattice vectors if the system is
periodic.
TypeNamesList of strings with the names of the elements, which appear in your geometry.
TypesAndCoordinates[relative|length]For every atom the index of its type in theTypeNames
list and its coordinates.   If for a periodic system (Periodic = Yes) the modifierrelativeis
specified, the coordinates are interpreted in the coordinate system of the lattice vectors.
Example: Geometry of GaAs:
## Geometry = {
TypeNames = { "Ga" "As" }
TypesAndCoordinates [Angstrom] = {
## 1 0.000000   0.000000   0.000000
## 2 1.356773   1.356773   1.356773
## }
## Periodic = Yes
LatticeVectors [Angstrom] = {
## 2.713546   2.713546   0.
## 0.2.713546   2.713546
## 2.713546   0.2.713546
## }
## }
2.2.2    GenFormat{}
You can use the generic format to specify the geometry (see appendix D). The geometry specifica-
tion for GaAs would be the following:
Geometry = GenFormat {
## 2 S
## Ga As
## 1 1   0.000000   0.000000   0.000000
## 2 2   1.356773   1.356773   1.356773
## 0.000000   0.000000   0.000000
## 2.713546   2.713546   0.
## 0.2.713546   2.713546
## 2.713546   0.2.713546
## }
It is also possible to include the gen-formatted geometry from a file:
Geometry = GenFormat {
## <<< "geometry.gen"
## }

## 14CHAPTER 2. INPUT FORDFTB+
2.2.3    xyzFormat{}
You can also use the xyz format to specify molecular geometries. The geometry specification for a
caffeine molecule would be the following:
Geometry = xyzFormat {
## 24
caffeine C8H10N4O2
## C1.073170.04885-0.07573
## N2.513650.01256-0.07580
## C3.351991.09592-0.07533
## N4.618980.73028-0.07549
## C4.57907-0.63144-0.07531
## C3.30131-1.10256-0.07524
## C2.98068-2.48687-0.07377
## O1.82530-2.90038-0.07577
## N4.11440-3.30433-0.06936
## C5.45174-2.85618-0.07235
## O6.38934-3.65965-0.07232
## N5.66240-1.47682-0.07487
## C7.00947-0.93648-0.07524
## C3.92063-4.74093-0.06158
## H0.733981.08786-0.07503
## H0.71239-0.456980.82335
## H0.71240-0.45580-0.97549
## H2.993012.11762-0.07478
## H7.76531-1.72634-0.07591
## H7.14864-0.321820.81969
## H7.14802-0.32076-0.96953
## H2.86501-5.02316-0.05833
## H4.40233-5.159200.82837
## H4.40017-5.16929-0.94780
## }
It is also possible to include the xyz-formatted geometry from a file:
Geometry = xyzFormat {
## <<< "geometry.xyz"
## }
2.2.4    VaspFormat{}
You can also use Vasp’s POSCAR or CONTCAR format to specify periodic geometries. Both VASP
4.x and VASP 5.x POSCAR are supported.  The geometry specification for a molecular ammonia
crystal with VASP 5.x would be the following:
Geometry = VaspFormat {
## Ammonia
## 1.00000000000000

## 2.3. DRIVER15
## 5.01336000000000   0.00000000000000   0.00000000000000
## 0.00000000000000   5.01336000000000   0.00000000000000
## 0.00000000000000   0.00000000000000   5.01336000000000
## H N
## 12 4
## Cartesian
## 2.19855889440000   1.76390058240000   0.88014548160000
## 1.76390058240000   0.88014548160000   2.19855889440000
## 0.88014548160000   2.19855889440000   1.76390058240000
## 4.84115108400000   1.61941554720000   4.93981400880000
## 4.35630903840000   2.49981169680000   3.63248012160000
## 3.51957925440000   1.15357413600000   4.08403345680000
## 4.08403345680000   3.51957925440000   1.15357413600000
## 4.93981400880000   4.84115108400000   1.61941554720000
## 3.63248012160000   4.35630903840000   2.49981169680000
## 2.49981169680000   3.63248012160000   4.35630903840000
## 1.15357413600000   4.08403345680000   3.51957925440000
## 1.61941554720000   4.93981400880000   4.84115108400000
## 1.37461317840000   1.37461317840000   1.37461317840000
## 3.99815460000000   1.99105592400000   4.46364507600000
## 4.46364507600000   3.99815460000000   1.99105592400000
## 1.99105592400000   4.46364507600000   3.99815460000000
## }
It is also possible to include the POSCAR/CONTCAR formatted geometry from a file:
Geometry = VaspFormat {
## <<< "POSCAR"
## }
## 2.3    Driver
The driver is responsible for changing the geometry of the input structure during the calculation.
Currently the following methods are available:
{}Static calculation with the input geometry.
GeometryOptimisation{}/GeometryOptimization{}Geometry optimisation of the input ge-
ometry. See p. 16.
SteepestDescent{}(deprecated) Geometry optimisation by moving atoms along the acting forces.
See p. 19.
ConjugateGradient{}(deprecated) Geometry optimisation using the conjugate gradient algo-
rithm. See p. 21.
gDIIS{}(deprecated) Geometry optimisation using the modified gDIIS method. See p. 21.
LBFGS{}(deprecated) Geometry optimisation using the LBFGS algorithm. See p. 22.

## 16CHAPTER 2. INPUT FORDFTB+
FIRE{}(deprecated) Geometry optimisation using the FIRE algorithm. See p. 22.
SecondDerivatives{}Calculation of the second derivatives of the energy (the Hessian) and op-
tional first derivatives of other properties (the dipole moment, i.e. Born charges, or the electric
polarisability) with respect to atomic coordinates. See p. 23.
VelocityVerlet{}Molecular dynamics with the velocity Verlet algorithm. See p. 24.
Socket{}Hands over control to an external program via a socket interface. See p. 30.
2.3.1    GeometryOptimisation
OptimisermRational
MovedAtoms(i|s)+1:-1
LatticeOptlNo
FixAngleslLatticeOpt = YesNo
FixLengths3lLatticeOpt = YesNo No No
IsotropiclLatticeOpt = YesNo
## Convergencem19
MaxStepsi200
OutputPrefixs"geo_end"
AppendGeometrieslNo
Optimiser/OptimizerType of the geometry optimiser to use. (See following sections for possi-
ble optimiser types.)
MovedAtomsIndices of the atoms which should be moved. The atoms can be specified via index
selection expressions, as described in appendix B.7.
LatticeOptAllow the lattice vectors to change during optimisation.MovedAtomscan be option-
ally used with lattice optimisation if the atomic coordinates are to be co-optimised with the
lattice.
## 1
FixAnglesIf optimising the lattice, allow only the lengths of lattice vectors to vary, not the angles
between them.  For example if your lattice is orthorhombic,  this option will maintain that
symmetry during optimisation.
FixLengthsIf optimising the lattice withFixAngles=Yes, allow only the lengths of the specified
lattice vectors to vary.
IsotropicIf  optimising  the  lattice,  allow  only  uniform  scaling  of  the  unit  cell.   This  option  is
incompatible withFixAngles.
ConvergenceConvergence criteria. See section 2.3.1.
MaxStepsMaximum number of steps after which the optimisation should stop (unless already
stopped by achieving convergence).  Setting this value as -1 runs a huge() number of itera-
tions.
OutputPrefixPrefix of the geometry files containing the final structure.
## 1
This is functional but not very efficient at the moment.

## 2.3. DRIVER17
AppendGeometriesIf set toYes, the geometry file in the XYZ-format will contain all the geome-
tries obtained during the optimisation (instead of containing only the last geometry).
Example for performing a full lattice optimisation using the rational function optimiser.
Driver = GeometryOptimisation {
## Optimiser = Rational {}
LatticeOpt = Yes
## }
## Optimiser: Rational
Provides a rational function based optimiser.  The geometry displacement step is determined from
the  lowest  eigenvalue  of  the  augmented  Hessian  matrix  as  proposed  by  Pulayet  al.[23].   The
eigenvalue equation is solved iteratively using a Davidson solver updating the displacement vector
from  the  last  optimisation  cycle.   The  augmented  Hessian  is  built  from  a  guess  model  hessian,
which is updated every cycle from the gradient change and displacement vectors using a BFGS-like
scheme [14]. A unit matrix is used as guess for the model hessian.
The scaling behaviour of the computational cost and memory usage for this optimisation step is
quadratic in the number of optimised variables.  Carefully evaluate the runtime of the optimisation
step for (very) large systems together linear-scaling electronic solvers.
DiagLimitr1.0e-2
DiagLimitLower limit of the diagonal Hessian elements in the BFGS-like update step.
Driver = GeometryOptimisation {
Optimiser = Rational { DiagLimit = 1.0e-2 }
## }
Optimiser: LBFGS
Limited  memory  BFGS  optimiser  provides  a  quasi-Newton  optimisation  method  using  limited
amount of memory.
The scaling behaviour of the computational cost and memory usage for this optimisation step is
linear in the number of optimised variables.
## Memoryi20
MemoryNumber of past displacements and gradient vectors to keep.
Driver = GeometryOptimisation {
Optimiser = LBFGS { Memory = 20 }
## }
Optimiser: FIRE
Thefast inertial relaxation engineof Bitzeket al.[12], using the default values from their paper
and a Leap-frog integrator. This can be faster than conjugate gradient and competitive with LBFGS

## 18CHAPTER 2. INPUT FORDFTB+
in some cases, but you should verify if FIRE is stable and efficient for your system before using it
over other optimisers.
The scaling behaviour of the computational cost and memory usage for this optimisation step is
linear in the number of optimised variables.
nMini5
aParr0.1
fIncr1.1
fDecr0.5
fAlphar0.99
StepSizer1.0
StepSize[time]Step size (δt) for the propagation of the coordinates.
nMinMinimum number of steps before the step size is increased.
aParParameter for the update of the velocities.
fIncFactor for the increase of the step size.
fDecFactor for the decrease of the step size.
fAlphaFactor for the update the alpha parameter on reset.
Driver = GeometryOptimisation {
Optimiser = FIRE {
nMin = 5
aPar = 0.1
fInc = 1.1
fDec = 0.5
fAlpha = 0.99
StepSize = 1.0
## }
## }
Optimiser: SteepestDescent
Steepest descent optimiser, that proposes displacements according to the (scaled) gradient value.
ScalingFactorr1.0
ScalingFactorScaling factor to displace downwards according to the directional derivative.
Driver = GeometryOptimization {
Optimizer = SteepestDescent {
ScalingFactor = 1.0
## }
## }

## 2.3. DRIVER19
## Convergence
Data group to provide the convergence thresholds for the geometry optimisations.   To disable a
convergence criterium a large value should be provided.
## Energyrinf
GradElemr1e-4
GradNormrinf
DispElemrinf
DispNormrinf
Energy[energy]Maximum  energy  change  in  one  geometry  step  to  consider  optimisation  con-
verged. Disabled by default.
GradElem[force]Maximum absolute gradient element in one geometry step to consider optimi-
sation converged Default threshold is 1e-4 Hartree/Bohr.
GradNorm[force]Maximum gradient norm in one geometry step to consider optimisation con-
verged Disabled by default.
DispElem[length]Maximum  absolute  displacement  element  in  one  geometry  step  to  consider
optimisation converged Disabled by default.
DispNorm[length]Maximum displacement norm in one geometry step to consider optimisation
converged Disabled by default.
2.3.2    SteepestDescent{}
This geometry optimiser is deprecated and will be removed in future versions. Please use the
newGeometryOptimisationdriver instead.
MovedAtoms(i|s)+1:-1
MaxForceComponentr1e-4
MaxStepsi200
StepSizer100.0
OutputPrefixs"geo_end"
AppendGeometrieslNo
Constraints(1i3r)*LatticeOpt = No{}
LatticeOptlPeriodic = YesNo
FixAngleslPeriodic = Yes, LatticeOpt = YesNo
FixLengths3lFixAngles = YesNo No No
IsotropiclPeriodic = Yes, LatticeOpt = YesNo
PressurerPeriodic = Yes, LatticeOpt = Yes0.0
MaxAtomSteprMovedAtoms̸=None{}0.2
MaxLatticeSteprPeriodic = Yes, LatticeOpt = Yes0.2
MovedAtomsIndices of the atoms which should be moved. The atoms can be specified via index
selection expressions, as described in appendix B.7.
MaxForceComponent[force]Optimisation is stopped, if the force component with the maximal
absolute value goes below this threshold.

## 20CHAPTER 2. INPUT FORDFTB+
MaxStepsMaximum number of steps after which the optimisation should stop (unless already
stopped by achieving convergence).  Setting this value as -1 runs a huge() number of itera-
tions.
StepSize[time]Step size (δt) along the forces.  The displacementδx
i
along thei
th
coordinate is
given for each atom asδx
i
## =
f
i
## 2m
δt
## 2
, wheref
i
is the appropriate force component andmis the
mass of the atom.
OutputPrefixPrefix of the geometry files containing the final structure.
AppendGeometriesIf set toYes, the geometry file in the XYZ-format will contain all the geome-
tries obtained during the optimisation (instead of containing only the last geometry).
ConstraintsSpecifies geometry constraints.  For every constraint the serial number of the atom
is expected followed by thex,y,zcomponents of a constraint vector.  The specified atom is
not allowed to move along the constraint vector.  If two constraints are defined for the same
atom, the atom will only by able to move normal to the plane containing the two constraining
vectors.
## Example:
## Constraints = {
# Atom one can only move along the z-axis
## 1 1.0 0.0 0.0
## 1 0.0 1.0 0.0
## }
LatticeOptAllow the lattice vectors to change during optimisation.MovedAtomscan be option-
ally used with lattice optimisation if the atomic coordinates are to be co-optimised with the
lattice.
## 2
FixAnglesIf optimising the lattice, allow only the lengths of lattice vectors to vary, not the angles
between them.  For example if your lattice is orthorhombic,  this option will maintain that
symmetry during optimisation.
FixLengthsIf optimising the lattice withFixAngles=Yes, allow only the lengths of the specified
lattice vectors to vary.
## Example:
Driver = ConjugateGradient {
LatticeOpt = Yes
FixAngles = Yes # Fix angles between lattice vectors
FixLengths = {Yes Yes No} # Allow only lat. vector 3 to change length
## }
IsotropicIf  optimising  the  lattice,  allow  only  uniform  scaling  of  the  unit  cell.   This  option  is
incompatible withFixAngles.
Pressure[pressure]If  optimising  the  lattice,  set  the  external  pressure,  leading  to  a  Gibbs  free
energy of the formG=E+PV−T Sbeing printed as well (the included entropy term is only
the contribution from the electrons, therefore this is not the full free energy).
MaxAtomStepSets the maximum possible line search step size for atomic relaxation.
## 2
This is functional but not very efficient at the moment.

## 2.3. DRIVER21
MaxLatticeStepSets the maximum possible line search step size for lattice optimisation.  For
FixAnglesorIsotropiccalculations this is as a fraction of the lattice vectors or the volume
respectively.
2.3.3    ConjugateGradient{}
This geometry optimiser is deprecated and will be removed in future versions. Please use the
newGeometryOptimisationdriver instead.
MovedAtoms(i|s)+1:-1
MaxForceComponentr1e-4
MaxStepsi200
OutputPrefixs"geo_end"
AppendGeometrieslNo
## Constraints(1i3r)*{}
LatticeOptlPeriodic = YesNo
FixAngleslPeriodic = Yes, LatticeOpt = YesNo
IsotropiclPeriodic = Yes, LatticeOpt = YesNo
PressurerPeriodic = Yes0.0
MaxAtomSteprMovedAtoms̸=None{}0.2
MaxLatticeSteprPeriodic = Yes, LatticeOpt = Yes0.2
See previous subsection for the description of the properties.
2.3.4    gDIIS{}
This geometry optimiser is deprecated and will be removed in future versions. Please use the
newGeometryOptimisationdriver instead.
## Alphar0.1
## Generationsi8
MovedAtoms(i|s)+1:-1
MaxForceComponentr1e-4
MaxStepsi200
OutputPrefixs"geo_end"
AppendGeometrieslNo
## Constraints(1i3r)*{}
LatticeOptlPeriodic = YesNo
FixAngleslPeriodic = Yes, LatticeOpt = YesNo
IsotropiclPeriodic = Yes, LatticeOpt = YesNo
PressurerPeriodic = Yes0.0
MaxLatticeSteprPeriodic = Yes, LatticeOpt = Yes0.2
Specific properties for this method are:
AlphaInitial scaling parameter to prevent the iterative space becoming exhausted (this is dynami-
cally adjusted during the run).
GenerationsNumber of generations to consider for the mixing.

## 22CHAPTER 2. INPUT FORDFTB+
See previous subsection for the description of the other properties.
## 3
## 2.3.5LBFGS{}
This geometry optimiser is deprecated and will be removed in future versions. Please use the
newGeometryOptimisationdriver instead.
## Memoryi20
LineSearchlNo
MovedAtoms(i|s)+1:-1
MaxForceComponentr1e-4
MaxStepsi200
OutputPrefixs"geo_end"
AppendGeometrieslNo
## Constraints(1i3r)*{}
LatticeOptlPeriodic = YesNo
FixAngleslPeriodic = Yes, LatticeOpt = YesNo
IsotropiclPeriodic = Yes, LatticeOpt = YesNo
PressurerPeriodic = Yes0.0
MaxLatticeStepr
LatticeOpt = Yes, LineSearch = Yes
or setMaxStep = Yes
## 0.2
MaxAtomSteprLineSearch = Yes or setMaxStep = Yes  0.2
Specific properties for this method are:
MemoryNumber of last steps which are saved and used to calculate the next step via the lBFGS
algorithm. The literature recommends thatMemoryshould between 3 and 20 [72].
LineSearchShould a line search be performed, instead of a quasi-Newton step along the lBFGS
direction.
SetMaxStepLimit maximum changes per iteration if the quasi-Newton step along the lBFGS
direction is used.
## 2.3.6FIRE{}
This geometry optimiser is deprecated and will be removed in future versions. Please use the
newGeometryOptimisationdriver instead.
Thefast inertial relaxation engineof Bitzeket al.[12], using the default values from their paper
and a Leap-frog integrator. This can be faster than conjugate gradient and competitive with LBFGS
in some cases, but you should verify if FIRE is stable and efficient for your system before using it
over other optimisers.
TimeStepr1.0
Specific properties for this method are:
TimeStep[time]Controls the maximum step sizexs used in the dynamics integrator.
## 3
This approach is distinct from section 2.4.5, but uses a related algorithm based on Ref. [49] and comments from
P.R.Briddon.

## 2.3. DRIVER23
2.3.7    SecondDerivatives{}
Calculates the second derivatives of the energy, the dipole moment and electric polarisability (cur-
rently using a numerical first order finite difference with respect to positions).  These can then be
used with theMODEScode (chapter 5) to calculate the vibrational modes and estimate both their
Raman and infrared intensities (see sections 5.1.2 and 5.1.3 for how to do this).
The  polarizability  derivative  can  be  evaluated  either  for  a  static  electric  field  (probably  what  is
usually intended) or at a specific driving frequency (relevant when approaching an electronic reso-
nance).
The hessian matrix is written out for thei,jandkdirections of atoms 1. . .nas
## ∂
## 2
## E
## ∂x
i1
## ∂x
i1
## ∂
## 2
## E
## ∂x
j1
## ∂x
i1
## ∂
## 2
## E
## ∂x
k1
## ∂x
i1
## ∂
## 2
## E
## ∂x
i2
## ∂x
i1
## ∂
## 2
## E
## ∂x
j2
## ∂x
i1
## ∂
## 2
## E
## ∂x
k2
## ∂x
i1
## . . .
## ∂
## 2
## E
## ∂x
kn
## ∂x
kn
intohessian.out
If the dipole moment is available, the Born charges for thenatoms are writen as
## ∂
## 2
## E
∂ ε
i
## ∂x
i1
## ∂
## 2
## E
∂ ε
j
## ∂x
i1
## ∂
## 2
## E
∂ ε
k
## ∂x
i1
## ∂
## 2
## E
∂ ε
i
## ∂x
j1
## ∂
## 2
## E
∂ ε
j
## ∂x
j1
## ∂
## 2
## E
∂ ε
k
## ∂x
j1
## ∂
## 2
## E
∂ ε
i
## ∂x
k1
## ∂
## 2
## E
∂ ε
j
## ∂x
k1
## ∂
## 2
## E
∂ ε
k
## ∂x
k1
## .
## .
## .
## ∂
## 2
## E
∂ ε
i
## ∂x
kn
## ∂
## 2
## E
∂ ε
j
## ∂x
kn
## ∂
## 2
## E
∂ ε
k
## ∂x
kn
whereεis a cartesian electric field andxthe cartesian directions written intoborn.out
If  dipole  polarisability  is  also  requested  (see  section  2.6.4),  then  the  derivatives  with  respect  to
atomic coordinates are also calculated.  These are stored in the filebornderiv.out.  Polarisability at
only a single static or dynamic frequency should be calculated.
Note: for periodic calculations, all of these derivatives are obtained at theq=0 point, irrespective
of the k-point sampling used.
Important:In order to get accurate results for the second derivatives (and the resulting frequen-
cies) you must set a smaller self-consistent tolerance than the default value in theHamiltonian{}
section. We suggestSCCTolerance = 1e-7or better. A less accurate tolerance can yield nonphysical
vibrational frequencies.
## Atomsi+|m1:-1
MovedAtomsi+|mValue ofAtoms
## Deltar1e-4
AtomsIndex of the atoms for which the second derivatives should be computed. The index selec-
tion format is described in appendix B.7.

## 24CHAPTER 2. INPUT FORDFTB+
MovedAtomsOptional  parameter  enabling  to  select  a  subset  of  the  atoms  which  were  speci-
fied  with  theAtomskeyword.   Only  the  selected  atoms  will  then  be  moved  in  the  calcu-
lation,  yielding  a  rectangular  submatrix  (3 nMovedAtoms×3 nAtoms)  of  the  full  Hessian
(3 nAtoms×3 nAtoms).  This is useful for splitting the Hessian calculation among multiple
DFTB+ runs. See also the batch script intools/misc/set_partial_hessian. If the keyword is
not specified, the full Hessian for all atoms specified inAtomswill be calculated. Currently,
the atom indices provided inMovedAtomsmust build a contiguous range, and also the atom
indices listed inAtomsmust be contiguous if theMovedAtomsoption is used.
Delta[len]Optional step size for numerical differentiation of forces to get the second derivatives
of the energy with respect to atomic coordinates.
## Example:
Driver = SecondDerivatives {
## Atoms = 1:12
## }
2.3.8    VelocityVerlet{}
The code propagates atomic motion using velocity Verlet dynamics with optional thermostats or
barostats to control the temperature and/or pressure. Information is printed out during the simulation
everyMDRestartFrequencysteps, and logged in the filemd.out(see appendix 3.8).
MovedAtoms(i|s)+1:-1
## Stepsi-
TimeStepr-
KeepStationarylYes
## Thermostatm-25
OutputPrefixs"geo_end"
MDRestartFrequencyi1
## Velocities(3r)*-
BarostatmPeriodic = Yes-27
XlbomdpXlbomdFastnot set28
XlbomdFastpXlbomdnot set28
## Massesp30
PlumedlNo
MovedAtomsList of atoms to move during the MD. The atoms can be specified via index selec-
tion expressions, as described in appendix B.7.
StepsNumber of MD steps to perform. In the case of a thermostat using aTemperatureProfile{}
the number of steps is calculated from the profile.
KeepStationaryRemove translational motion from the system.
TimeStep[time]Time interval between two MD steps.
ThermostatThermostating method for the MD simulation. See p. 25.
OutputPrefixPrefix of the geometry files containing the final structure.

## 2.3. DRIVER25
MDRestartFrequencyInterval that the current geometry and velocities are written to the XYZ
format geometry file and md.out (see section 3.8).  In the case ofSCCMD runs, the charge
restart information is also written at this interval overridingRestartFrequency(see section 2.5).
Velocities[velocity]Specified atomic velocities for all the atoms of the given structure (including
“velocities” for any stationary atoms, which are silently ignored).  This option can be used
to restart an MD run, but make sure the geometry is consistent with the specified velocities.
The easiest way to do this is to copy both from the same iteration of the XYZ file produced
in the previous run (Note:the velocities printed in the XYZ files are specified in Å/ps, so
this should be set in the input).  If restarting anSCCMD run, westrongly suggestyou use
ReadInitialCharges, and in particular read charges for the geometry which you use to restart
(iterations at which charges are written to disc are marked in the XYZ file, with the most
recent being present incharges.binorcharges.datdepending on the optionWriteChargesAs-
## Text).
BarostatBerendsen method barostat for the MD simulation. See p. 27.
XlbomdIf present, extended Lagrangian type molecular dynamics is applied to speed up the sim-
ulation. For further options within theXlbomdblock see p. 28.
MassesIf present, over-ride the atomic masses from the Slater-Koster files. See p. 30
PlumedWhether Plumed should be invoked in order to modify the forces and to drive a meta-
dynamics. The parameters of the meta-dynamics must be stored in the fileplumed.datin the
current directory. The file must be formatted according to Plumed’s own format. (Note: This
option requires a DFTB+ binary built with Plumed support.)
## Thermostat
None{}No thermostating during the run, only the initial velocities are set according to either a
given temperature or velocities, hence an NVE ensemble should be achieved for a reasonable time
step.
InitialTemperaturer-
InitialTemperature[energy]Starting velocities for the MD will be created according the Max-
well-Boltzmann distribution at the specified temperature.  This is redundant in the case of
specified initial velocities.
Andersen{}Andersen thermostat [3] sampling an NVT ensemble.
Note:Andersen thermostating has a reputation for suppressing diffusion and also prevents accu-
mulation of data for dynamical properties.
## Temperaturer|m-
ReselectProbabilityr-
ReselectIndividuallyl-
AdaptFillingTemplNo
Temperature[energy]Target temperature of the thermostat.  It can be either a real value, spec-
ifying  a  constant  temperature  through  the  entire  run  or  theTemperatureProfile{}method
specifying a changing temperature. (See p. 27.)

## 26CHAPTER 2. INPUT FORDFTB+
ReselectProbabilityProbability for re-selecting velocities from the Maxwell-Boltzmann distri-
bution.
ReselectIndividuallyIfYes,  each atomic velocity is re-selected individually with the specified
probability. Otherwise all velocities are re-selected simultaneously with the specified proba-
bility.
AdaptFillingTempIfYes, the temperature of the electron filling is always set to the current tem-
perature of the thermostat.  (The appropriate tag for the temperature of the electron filling is
ignored.)
Berendsen{}Berendsen thermostat [11] samples something like an NVT ensemble (but without
the  correct  canonical  fluctuations,  be  aware  of  the  “flying  ice  cube”  problem  before  using  this
thermostat [37]).
## Temperaturer|m-
CouplingStrengthrTimescale not set-
TimescalerCouplingStrength not set-
AdaptFillingTemplNo
Temperature[energy]Target temperature of the thermostat. It can be either a real value specifying
a constant temperature through the entire run or theTemperatureProfile{}method specifying
a changing temperature. (See p. 27.)
CouplingStrengthDimensionless coupling strength for the thermostat (given as∆t/τ
t
in the orig-
inal paper where∆tis the MD time step).  AlternativelyTimescale[time]can be set directly
as the characteristic length of time to damp the temperature towards the target temperature.
TheCouplingStrengthandTimescaleoptions are mutually exclusive.
AdaptFillingTempIfYes, the temperature of the electron filling is always set to the current tem-
perature of the thermostat.  (The appropriate tag for the temperature of the electron filling is
ignored.)
NoseHoover{}Nosé-Hoover chain thermostat [63] sampling an NVT ensemble, currently with
the chain coupled to all of the atoms in the system.
## Temperaturer|m-
CouplingStrengthr-
ChainLengthi3
## Orderi3
IntegratorStepsi1
## Restartm
AdaptFillingTemplNo
Temperature[energy]Target temperature of the thermostat.  It can be either a real value, spec-
ifying  a  constant  temperature  through  the  entire  run  or  theTemperatureProfile{}method
specifying a changing temperature. (See p. 27, but note that profiles are not well tested with
this thermostat yet.)
CouplingStrength[Frequency]Frequency of oscillation of the thermostating particles (see sec-
tion 2.5 of Ref. [63]).  This is typically related to the highest vibrational mode frequency of
the system.

## 2.3. DRIVER27
ChainLengthNumber of particles in the thermostat chain.
OrderandIntegratorStepsSee section 4.3 of Ref. [63]).
RestartSpecifies the internal state of the thermostat chain, using three keywords (all three must
be present):x{},v{}andg{}containing the internal chain positions, velocities and forces
respectively (these are provided in md.out). See also section 2.3.8.
AdaptFillingTempIfYes, the temperature of the electron filling is always set to the current tem-
perature of the thermostat.  (The appropriate tag for the temperature of the electron filling is
ignored.)
TemperatureProfile{}Specifies  a  temperature  profile  during  molecular  dynamics.   It  takes  as
argument one or more lines containing the type of the annealing (string), its duration (integer), and
the target temperature (real), which should be achieved at the end of the given period. For example:
Temperature [Kelvin] = TemperatureProfile {  # Temperatures in K
constant1   10.0  # Setting T=10 K for the 0th MD-step
linear500  600.0  # Linearly rising T in 500 steps up to T=600 K
constant   2000  600.0  # Constant T through 2000 steps
exponential  500   10.0  # Exponential decreasing in 500 steps to T=10 K
## }
The annealing method can beconstant,linearorexponential, with the duration of each stage of
the anneal specified in steps of the driver containing the thermostat.  The starting temperature for
each annealing period is the final target temperature of the previous period, with the last step of
each stage being at the target temperature.  Since the initial stage in the temperature profile has no
previous step, the default starting temperature is set to 0.  In order to start the calculation from a
finite temperature for the first annealing period, a constant profile temperature stage with a duration
of one (or more) step(s) should be specified as the first step (see the example). The temperatures of
the stages are specified in atomic units, unless theTemperaturekeyword carries a modifier, as in
the example above.
## Barostat
Berendsen barostat [11] samples something like an NPH ensemble for MD (but without the correct
fluctuations). Options are provided for either isotropic or cell shape changing pressure control. This
can also be used in tandem with a thermostat (p. 25) for the NPT ensemble. If the barostat is used,
a partial Gibbs free energy is reported in code output, of the form
## G=E+PV−T S
electronic
## .
This does not include structural entropy, only any electronic entropy. For barostated constant energy
simulations (no thermostat in use), the conserved quantity is the sum of the kinetic and Gibbs partial
energies.
## Pressurer-
CouplingrTimescale not set-
TimescalerCoupling not set-
IsotropiclYes

## 28CHAPTER 2. INPUT FORDFTB+
Pressure[pressure]Sets the external target pressure.
CouplingCoupling strength for the barostat (given asβ∆t/τ
p
in the original paper where∆tis
the MD time step andβthe compressibility, so the coupling is technically dimensioned as
reciprocal pressure,  but this is usually ignored).   AlternativelyTimescale[time]can be set
directly  (β/τ
p
)  as  the  characteristic  length  of  time  to  damp  the  pressure.   Typically,βis
assumed to be either the experimental value or∼1, and Ref. [11] chooses the time scale to
be around 10–100 fs. TheCouplingandTimescaleoptions are mutually exclusive.
IsotropicShould isotropic scaling of the unit cell be used, or can the cell shape vary?  There is a
slight inconsistency between the standard forms of these scalings in the literature, which is
reproduced here, in brief the isotropic case scales the cell volume by a factor proportional to
the differences in the instantaneous and expected pressures (i.e., the cube of the cell vectors),
while the anisotropic case changes the cell vectors proportional to the difference instead.
Extended Lagrangian Born-Oppenheimer dynamics
For several systems Born-Oppenheimer molecular dynamics simulations can be significantly sped
up by using the extended Lagrangian formalism described in Ref. [6].  The XLBOMD integrator
can be used in two different modes:
-  Conventional XLBOMD scheme (Xlbomd):  The extended Lagrangian is used to predict the
input charge distribution for the next time step, instead of taking charges that were converged
for the geometry in the previous time step. The predicted starting charges should then require
fewer SCC iterations to converge.
-  Fast XLBOMD scheme,XlbomdFast(one diagonalisation per time step): The extended La-
grangian is used to predict the population for each time step.  This predicted population is
then used to build the Hamiltonian, but in contrast to the conventional XLBOMD scheme,
there is no self consistent cycle – the forces are calculated immediately after the diagonali-
sation of the first Hamiltonian.  The fast XLBOMD method usually only works for systems
without SCC instabilities (e.g. wider gap insulators or molecules without degenerate states).
See Ref. [6] for details.
The extended Lagrangian dynamics can be activated by specifying either theXlbomdor the
XlbomdFastoption block. Both methods offer the following options:
IntegrationStepsi5
PreStepsi0
IntegrationStepsNumber of time steps used for determining the population for the next time
step. Currently, only integration schemes for 5, 6 or 7 steps are implemented.
PreStepsNumber of molecular dynamics time steps before the XLBOMD integration becomes
activated.
Note:At the step where the XLBOMD integrator becomes active, it is initialised with results
of several subsequent converged MD steps, so a furtherIntegrationSteps+ 1 steps will be car-
ried out before the extended Lagrangian dynamics starts to predict the charges and accelerate
the calculation.

## 2.3. DRIVER29
The conventionalXlbomdblock has the following specific options in addition to the common XL-
BOMD settings above:
MinSccIterationsi1
MaxSccIterationsi200
SccTolerancer1e-5
MinSccIterationsMinimum number of SCC iterations to perform at each time step during the
extended Lagrangian dynamics.
MaxSccIterationsMaximum number of SCC iterations to perform at each step in the extended
Lagrangian dynamics. If this number of SCC iterations have been reached the forces will be
calculated and the MD advances to the next time step. See the note in section 2.4.12 regarding
non-convergent k-point sampling.
SccToleranceSCC convergence tolerance during the extended Lagrangian dynamics.  Once this
tolerance has been achieved the SCC cycle will stop and the forces will be calculated. You can
use this parameter to override theSccToleranceparameter in theDFTBblock for time steps
where the extended Lagrangian integrator is active (This way, you can calculate populations
with tight SCC tolerance when initialising the XLBOMD integrator, then use a less strict SCC
tolerance once the integrator is active).
TheXlbomdFastblock has the following specific options in addition to the common XLBOMD
settings above:
TransientStepsi10
## Scaler1.0
TransientStepsEnables a smoother transition between Born-Oppenheimer and extended Lagrangian
dynamics by carrying out intermediate additional steps with full SCC convergence, during
which the converged population and the one predicted by the extended Lagrangian integrator
are averaged.
ScaleScaling factor for the predicted charge densities∈(0,1].  The optimal value is system de-
pendent. One should take the highest possible value that still produces stable dynamics (good
conservation of energy).
Example for conventional XLBOMD:
## Xlbomd {
IntegrationSteps = 6
MinSccIterations = 2
MaxSccIterations = 200
SccTolerance = 1e-6
## }
Fast (SCC-free) XLBOMD with one diagonalisation per time step:
XlbomdFast {
PreSteps = 5

## 30CHAPTER 2. INPUT FORDFTB+
TransientSteps = 10
IntegrationSteps = 5
## Scale = 0.5
## }
Points to be aware of:
-  The extended Lagrangian (especially in the fast mode) needs special force evaluation giving
more accurate forces for non-convergent charges. Therefore you must set theForceEvaluation
option to’Dynamics’(for simulations with finite electronic temperature) or to’DynamicsT0’
(for simulations at 0 K electronic temperature) in theDFTBblock (see p. 86).
-  The extended Lagrangian implementation only works for the(N,V,E)ensemble so far, so
neither thermostats nor barostats are allowed.
-  The extended Lagrangian implementation currently cannot be used for spin-polarised or spin-
orbit systems, or when electron filling methods other thanFermi{}filling (see p. 51) are used.
## Masses
Provides values of atomic masses for specified atoms, ranges of atoms or chemical species. This is
useful for example to set isotopes for specific atoms in the system.
## Massp
Any atoms not given specified masses will use the default values from the appropriate homonuclear
Slater-Koster file. An example is given below
## Masses {
## Mass {
## Atoms = 1:2
MassPerAtom [amu] = 2.0
## }
## }
whereAtomsspecifies the atom or atoms which each have a mass ofMassPerAtomassigned.
## 2.3.9    Socket{}
The code tries to connect to a socket interface to receive control instructions from an external driver
code.
FilesHost not set-
PrefixsHost not set“/tmp/ipi_” for Protocol = i-PI{}
HostsFile not set-
PortiFile is set-
## Verbosityi0
Protocolmi-PI{}
MaxStepsi200

## 2.4. HAMILTONIAN31
FileName of UNIX style file socket to connect to.
PrefixPrefix to the file name, in the case of i-PI dialogue, the defaults to the path and file start that
i_PI expects.
HostName or ip address of internet host to connect to (“localhost” also possible).
PortPort of host to connect to.
VerbosityLevel of port traffic to document.
ProtocolChoice of message protocol over the socket connection (only communication with i-PI [17]
is currently supported).
MaxStepsNumber of geometry steps before termination of the  DFTB+  instance.   Setting this
value as -1 runs a huge() number of iterations.
## Examples
First an ip address connection:
## Driver = Socket {
Host = localhost
Port = 21012 # port number
Verbosity = 0 # minimal verbosity
Protocol = i-PI {} # i-PI interface
MaxSteps = -1 # Run indefinitely
## }
Then a UNIX socket via the /tmp file system
## Driver = Socket {
File = "dftb" # The protocol defines a default path in this case
Protocol = i-PI {} # i-PI interface
MaxSteps = 1000 # Terminate this instance after 1000 steps
## }
Please note that this driver changes the default behaviour of some options to remove (usually un-
needed) file writing:WriteDetailedOut=NoandWriteBandOut=No.
## 2.4    Hamiltonian
Currently, DFTB and xTB (section 2.4.2) Hamiltonians are implemented, with an optional interface
(ASI) to externally managed models.
2.4.1    Density Functional based Tight Binding
To select the DFTB Hamiltonian you must setHamiltonian = DFTB{}. TheDFTB{}method may
contain the following properties:

## 32CHAPTER 2. INPUT FORDFTB+
SCClNo
SCCTolerancerSCC = Yes1e-5
MaxSCCIterationsiSCC = Yes100
ConvergentSccOnlylSCC = YesYes
EwaldParameterrPeriodic = Yes SCC = Yes0.0
EwaldTolerancerPeriodic = Yes SCC = Yes1e-9
ShellResolvedSCClSCC = YesNo
ElectronicConstraintsp{}39
MixermSCC = YesBroyden{}41
MaxAngularMomentump-
## Charger0.0
SpinPolarisationmSCC = Yes{}43
SpinConstantspSpinPolarisation̸={}-46
ShellResolvedSpinlShellResolvedSCC = NoNo
SpinOrbitmSpinPolarisation̸=Colinear{} {}47
SolvermRelativelyRobust{}47
FillingmFermi{}51
NonAufbau{}m-52
SlaterKosterFilesp|m-53
OldSKInterpolationlNo
PolynomialRepulsivep|m{}
## Chimesp
KPointsAndWeights(4r)+|mPeriodic = Yes-55
OrbitalPotentialmSpinPolarisation̸={}{}57
ReadInitialChargeslSCC = YesNo
InitialChargespSCC = Yes{}
ElectricFieldp{}58
AtomSitePotentialp{}60
## Dispersionm{}60
HCorrectionmSCC = YesNone {}79
HalogenXCorrlThirdOrder(Full) = Yes, DftD3 No79
ThirdOrderlSCC = YesNo
ThirdOrderFulllSCC = YesNo70
MdftbmSCC = YesNone71
HybridpNone82
HubbardDerivspThirdOrder(Full) = Yes-
OnSiteCorrectionpSCC = Yes-85
## Solvationm-72
DifferentiationmFiniteDiff86
ForceEvaluations"Legacy"
CustomisedHubbardspSCC = Yes
CustomisedOccupationspSCC = Yes
TruncateSKRangep
HelicalSymmetryTolrHelical = Yes1e-6
SCCIf set toYes, a self consistent charge (SCC) calculation is made.
SCCToleranceStopping criteria for the SCC. Specifies the tolerance for the maximum difference
in any charge between two SCC cycles.

## 2.4. HAMILTONIAN33
MaxSCCIterationsMaximal number of SCC cycles to reach convergence. If convergence is not
reached after the specified number of steps, the program stops.  However in cases where the
calculation is not for a static structure (soDriver̸={}),  this behaviour can be overridden
usingConvergentSccOnly.Note:For calculations usingk-points, the default number of SCC
iterations will default to 1 in cases where a band structure is being plotted (seeKLines{}in
section 2.4.12).
ConvergentSccOnlyIf true, requires that the SCC cycle converges before proceeding to subse-
quent stages of the calculation (forces, analysis, etc.).
EwaldParameterSets the dimensionless parameterαin the Ewald electrostatic summation for
periodic calculations.  This controls the fraction of the Ewald summation occurring in real
and reciprocal space.  Setting it to zero or negative activates an automatic determination of
this parameter (default and recommended behaviour).  Setting it positive forces the code to
use the supplied value.  This is useful for very asymmetrical unit cells (typically a slab or
nanowire with a huge surrounding vacuum region) since the memory demand of DFTB+ can
increase dramatically in these cases (due to storage of a long range real space neighbour list).
To determine a suitable value ofαfor such a cell, you should initially reduce the vacuum
region and run a test calculation, looking for the value of the automatically chosen Ewald
parameter in the standard output.  This is then a suitable choice for the original cell with the
large vacuum region.
EwaldToleranceSets the tolerance for Ewald summation in periodic systems.
ShellResolvedSCCIf set toYes, all distinct HubbardUvalues for the different atomic angular
momenta  shells  are  used,  when  calculating  the  SCC  contributions.   Otherwise,  the  value
supplied for thes-shell is used for all angular momenta.  Please note, that the old standard
DFTB code wasnotorbitally resolved, so that only the HubbardUfor thes-shell was used.
Please  check  the  documentation  of  the  SK-files  you  intend  to  use  as  to  whether  they  are
compatible with an orbitally resolved SCC calculation (many of the biological files do not
use orbitally resolved charges), before you switch this option toYes. Even if the HubbardU
values for different shells are the same in the SK-files, this flag would still effect your results,
since when it is set toYes, any charge transfer between atomic shells will change the energy
of the system compared to when it is set to set toNo.
MixerMixer type for mixing the charges in an SCC calculation. See p. 41.
MaxAngularMomentumSpecifies the highest angular momentum for each atom type.  All or-
bitals up to that angular momentum will be included in the calculation.  Several main-block
elements required-orbitals, check the documentation of the SK-files you are using to deter-
mine if this is necessary. Possible values for the angular momenta ares,p,d,f.
## Example:
MaxAngularMomentum = {
Ga = "p"   # You can omit the quotes around the
As = "p"   # orbital name, if you want.
## }
By using theSelectedShellsmethod it is also possible to combine shells from different Slater-
Koster files together to treat atoms containing multiple shells with the same angular momen-
tum.  The shells to be picked from a particular atom type should be listed without any sep-
arating characters.  The list of shells of different atom types should be separated by white
spaces.

## 34CHAPTER 2. INPUT FORDFTB+
## Example:
# Defining sps* basis for Si and C by combining sp and s shells from
# Si and Si2, and C and C2, resp.
MaxAngularMomentum = {
Si = SelectedShells { "sp" "s" }   # Si atom with sps* basis
C = SelectedShells { "sp" "s" }    # C atom with sps* basis
## }
# Note, that you have to modify the Slater-Koster file definition accordingly
SlaterKosterFiles = {
Si-Si = "Si-Si.skf" "Si-Si2.skf" "Si2-Si.skf" "Si2-Si2.skf"
Si-C = "Si-C.skf" "Si-C2.skf" "Si2-C.skf" "Si2-C2.skf"
C-Si = "C-Si.skf" "C-Si2.skf" "C2-Si.skf" "C2-Si2.skf"
C-C = "C-C.skf" "C-C2.skf" "C2-C.skf" "C2-C2.skf"
## }
If for a given atomic type you pick orbitals from more than one species, you must specify
an appropriate combinations of file names for the Slater-Koster tables inSlaterKosterFiles{}.
For every atom type combinationn
## SK1
## ×n
## Sk2
Slater-Koster files must be defined, wheren
## SK1
andn
## SK2
are the number species combined to build up the shells of the two interacting atoms.
The  file  names  must  be  ordered  with  respect  to  the  interacting  species,  so  that  the  name
for the second interacting species is changed first.   Above you see an example,  where an
extended basis with ans
## ∗
-orbital was generated by introducing the new species "Si2" and
"C2", containing the appropriates
## ∗
-orbital for Si and C, resp., as only orbitals.
In the case of multiple Slater-Koster files for a certain interaction, the repulsive data is read
from  the  first  specified  file  (e.g.Si-Si.skf,Si-C.skf,C-Si.skfandC-C.skfin  the  example
above).   The  repulsive  interactions  in  the  other  files  are  ignored.   The  mass  for  a  certain
species is read from the first SK-file for its homo-nuclear interaction.
Non-minimal basis Slater-Koster data may be directly defined in the SK-files in future.
ChargeTotal charge of the system in units of the electron charge.  Negative values mean an ex-
cess of electrons.  If the keywordFixedFermiLevelis present (see section 2.4.9), then value
specified here will be ignored.
SpinPolarisation/SpinPolarizationSpecifies if and how the system is spin polarised. See p. 43.
SpinConstantsSpecifies the atom type specific constants needed for the spin polarised calcula-
tions, in units of Hartree. See p. 46.
SpinOrbitSpecifies if the system includes Russel-Saunders coupling. See p. 47
SolverSpecifies which solver (eigensolver, Green’s function, etc.)  to use with the hamiltonian.
See p. 47.
FillingMethod for occupying the one electron levels with electrons. See p. 51.
SlaterKosterFilesName of the Slater-Koster files for every atom type pair combination. See 53.
OldSKInterpolationIf set toYes(strongly discouraged), the look-up tables for the overlap and
non-scc  Hamiltonian  contribution  are  interpolated  with  the  same  algorithm  as  in  theold
DFTB code. Please note, that the new method uses a smoother function, is more systematic,

## 2.4. HAMILTONIAN35
and yields better derivatives than the old one.  This option is present only for compatibility
purposes, and may be removed in the future.
PolynomialRepulsiveSpecifies for each interaction, if the polynomial repulsive function should
be used. for every pairwise combination of atoms it should contain a logical value, whereYes
stands for the use of a polynomial repulsive function andNofor a spline. If a specific pair of
species is not specified, the default valueNois used.
## Example:
# Use the polynomial repulsive function for Ga-Ga and As-As interactions
# in GaAs
PolynomialRepulsive = {
Ga-Ga = Yes
Ga-As = No
# As-Ga unspecifed, therefore per default set to No
As-As = Yes
## }
If you want to apply the same setting for all species pairs, you can specify the appropriate
logical value as argument of theSetForAllkeyword:
# Using polynomial repulsive functions for all interactions in GaAs
PolynomialRepulsive = SetForAll { Yes }
ChimesIf specified, a ChIMES force field correction will be applied on top of the repulsive po-
tentials found in the SK-files, also known as DFTB/ChIMES model [30]. TheChimesblock
containsParameterFileas only keyword, where the file with the ChIMES parameters must
be specified.  The file is additionally searched for in the directory specified with theDFTB-
PLUS_PARAM_DIRenvironment variable.
## Example:
## Chimes {
ParameterFile = "chimes/CNOH.txt"
## }
Note: This option requires a DFTB+ binary built with ChIMES support.
KPointsAndWeights[relative|absolute]Contains the specialk-points to be used for the Brillouin-
zone integration.  See p. 55.  For automatically generatedk-point grids the modifier should
not be set.
OrbitalPotentialSpecifies which (if any) orbitally dependant contributions should be added to
the DFTB energy and band structure. See p. 57.
ReadInitialChargesIf set toYesthe first Hamiltonian is constructed by using the charge informa-
tion read from the filecharges.binorcharges.dat(depending on the optionWriteChargesAs-
Text, see section2.5).
InitialChargesSpecifies initial charges, either for all atoms or for only selected ones.  In order to
specify it for all atoms, use the keywordAllAtomChargesand supply the charge for every
atom as a list of real values:

## 36CHAPTER 2. INPUT FORDFTB+
InitialCharges = {
AllAtomCharges = { # Specifies charge for each atom in an H2O molecule
-0.88081627   # charge for atom 1 (O)
0.44040813   # charge for atom 2 (H1)
0.44040813   # charge for atom 3 (H2)
## }
## }
Alternatively you can specify charges individually for atoms or species using theAtomCharge
keyword. For everyAtomChargedeclaration you must provide a charge and the list of atoms,
which should be initialised to that charge.  (The atoms can be specified via index selection
expressions, as described in appendix B.7.):
InitialCharges = { # Specifying charge for various species
AtomCharge = {
## Atoms = H
ChargePerAtom = 0.44040813
## }
AtomCharge {
## Atoms = O
ChargePerAtom = -0.88081627
## }
## }
Charge on atoms not appearing in anyAtomChargespecification is set to be zero.
ElectricFieldSpecifies an external electric field, arising currently from either an applied field or a
distribution of electrostatic charges. See p. 58.
AtomSitePotentialSpecifies an external potential at an atom. See p. 60.
DispersionSpecifies which kind of dispersion correction to apply. See p. 60.
OnSiteCorrectionUsed to include the on-site matrix elements of Domínguezet al.[21].   See
p. 85.
DifferentiationSpecifies how to calculate finite difference derivatives in the force routines.  See
p. 86.
ForceEvaluationDecides  which  expressions  are  used  to  calculate  the  ground  state  electronic
forces.  See p. 86.Note:all methods give the same final forces when the charges are well
converged.  For non-converged charges however the resulting forces can differ considerably
between methods.
CustomisedHubbards/CustomizedHubbardsEnables overriding of the Hubbard U values for
given species.  If the optionShellResolvedScchas been set toYes, you need to specify one
Hubbard U value for each atomic shell in the basis of the given atom type, otherwise only
one atomic value is required. For all species not specified in this block, the value(s) found in
their respective Slater-Koster files will be used.
Warning:This option is for experts only! Overriding values stored in the SK-files may result
ininconsistent results. Make sure you understand the consequences when using this option.
## Example:

## 2.4. HAMILTONIAN37
CustomisedHubbards {
## Si = 0.32 0.24
## }
CustomisedOccupations/CustomizedOccupationsEnables overriding the reference neutral
atom electronic occupations of the shells.  Note that the atom remains neutral since a cor-
responding ionic counter charge is implicitly added to its core.   This option can be used,
for example, to simulate effective doping by setting a slightly larger or smaller number of
electrons on certain atoms.
## Example:
CustomisedOccupations{
ReferenceOccupation{
## Atoms={1:30}
p=2.01
## }
ReferenceOccupation{
## Atoms={31:60}
p=1.99
## }
## }
The example above sets a filling population of +0.01e or -0.01e in the p shell of the corre-
sponding atom indices. When the states are filled up, the electron excess or depletion results
in a shift of the Fermi level in the bands.
Warning:This  option  is  for  experts  only!   Overriding  values  stored  in  the  SK-files  may
result ininconsistent results. Please look at the transport section of the dftb+ recipes to see
an example of the correct use of this option.
TruncateSKRangeEnables  overriding  of  the  number  of  elements  to  be  read  from  the  Slater-
Koster parameters, shortening the interaction range of atoms.
Warning:This option is for experts only! Overriding values stored in the SK-files may result
ininconsistent results. Make sure you understand the consequences when using this option.
SKMaxDistancer–
HardCutOfflNo
SKMaxDistance[length]Length at which to cut the overlap and non-SCC interactions for
all atoms in the system.  If this length is longer than the distances in the Slater-Koster
files it will have no effect.
HardCutOffThe Slater-Koster interpolation DFTB+ produces will smoothly tail off to zero
at  a  short  distance  beyond  the  table,  which  is  controlled  byOldSKInterpolation.   If
HardCutOffis set toYes, then the distance set bySKMaxDistanceincludes this tail, i.e.,
no interactions occur beyond that distance.  In the case ofNothis zeroing tail extends
slightly beyond theHardCutOffdistance.
## Example:

## 38CHAPTER 2. INPUT FORDFTB+
TruncateSKRange = {
SKMaxDistance [AA] = 4.0
HardCutOff = Yes
## }
HelicalSymmetryTolSets the tolerance for testing whether providedk-points are consistent with
theC
n
rotational symmetry around thez-axis.
## 2.4.2    Extended Tight Binding Hamiltonian
The extended tight binding (xTB) Hamiltonian[8] is available if DFTB+ is built with support for a
communication bridge to thetblitelibrary.
## Methods
ParameterFiles
SCCTolerancer1e-5
MaxSCCIterationsi100
MaxAngularMomentump-
## Charger0.0
SpinPolarisationm{}43
SpinConstantspSpinPolarisation̸={}-46
SolvermRelativelyRobust{}47
FillingmFermi{}51
KPointsAndWeights(4r)+|mPeriodic = Yes-55
ElectronicConstraintsp{}39
MethodRequest library to initialise the xTB parametrisation for the given method. Doing so will
hand over the energy, potential and force evaluation to thetblitelibrary. Supported methods
are GFN1-xTB[33], IPEA1-xTB[7], and GFN2-xTB[9].  If presentParameterFilemust not
be provided.
ParameterFileRequest library to initialise the xTB parametrisation from a parameter file. Doing
so will hand over the energy, potential and force evaluation to thetblitelibrary.  The param-
eter format is documented inhttps://tblite.readthedocs.io/en/latest/spec/parameter.html
and can be generated using thetblitecommand line driver.  If presentMethodmust not be
provided.
This file is additionally searched for in the directory specified with theDFTBPLUS_PARAM_DIR
environment variable.
SCCToleranceStopping criteria for the SCC. Specifies the tolerance for the maximum difference
in any charge between two SCC cycles.
MaxSCCIterationsMaximal number of SCC cycles to reach convergence. If convergence is not
reached after the specified number of steps, the program stops.  However in cases where the
calculation is not for a static structure (soDriver̸={}),  this behaviour can be overridden
usingConvergentSccOnly.
ChargeTotal charge of the system in units of the electron charge.  Negative values mean an ex-
cess of electrons.  If the keywordFixedFermiLevelis present (see section 2.4.9), then value
specified here will be ignored.

## 2.4. HAMILTONIAN39
SpinPolarisation/SpinPolarizationSpecifies if and how the system is spin polarised. See p. 43.
SpinConstantsSpecifies the atom type specific constants needed for the spin polarised calcula-
tions, in units of Hartree. See p. 46.
SolverSpecifies which solver (eigensolver, Green’s function, etc.)  to use with the hamiltonian.
See p. 47.
FillingMethod for occupying the one electron levels with electrons. See p. 51.
KPointsAndWeights[relative|absolute]Contains the specialk-points to be used for the Brillouin-
zone integration.  See p. 55.  For automatically generatedk-point grids the modifier should
not be set.
Hamiltonian = xTB {
Method = "GFN1-xTB"
## }
2.4.3    External Hamiltonian models
For DFTB+ binaries compiled with the API included, the interface to Atomic Simulation Interface
(ASI [91]) can be enabled inside theHamiltonian{}input block:
ASIm
TheASI{}block allows an external code to read or replace the hamiltonian,  overlap or density
matrix during the calculation. Note, not all functionality of the code will be available if the interface
is active.
TheASI{}block currently contains no keywords. Via ASI callbacks it is possible able to change the
hamiltonian or overlap externally.  If the model is modified, forces cannot be calculated, likewise
self-consistent models cannot be computed (due to limitations of ASI).
Note:  as per the ASI API specification,  DFTB+  declares the types of matrices it expects to be
dealing with, but cannot check whether the client code is providing data matching this specification.
2.4.4    ElectronicConstraints
Allows imposition of constraints on the electronic ground state by finding the ground state of the
system in a (carefully chosen) external potential [39].
## Constraintsp{}
OptimisermFIRE
ConstrTolerancer1e-8
MaxConstrIterationsi100
ConvergentConstrOnlylYes
ConstraintsSpecifies the constraint(s) to be applied.  Currently these are only implemented for
atomic Mulliken populations:
MullikenPopulationsp{}

## 40CHAPTER 2. INPUT FORDFTB+
MullikenPopulationDefines a constraint based on Mulliken population.
## Atoms(i|s)+
## Populationsr
TotalPopulationr
## Chargesr
TotalCharger
AtomsIndices of the atoms within a constrained region.  The atoms can be specified
via index selection expressions, as described in appendix B.7.
PopulationsConstraint on the Mulliken population of individual atoms. Must contain
as  many  entries  as  selected  via  theAtomskeyword.   This  keyword  is  mutually
exclusive with the keywordsTotalPopulation,ChargesandTotalCharge.
TotalPopulationSets constraint on the sum of the Mulliken population for the atoms
selected  via  theAtomskeyword.   This  keyword  is  mutually  exclusive  with  the
keywordsPopulation,ChargesandTotalCharge.
ChargesConstraint on the Mulliken (gross) charges of individual atoms. Must contain
as  many  entries  as  selected  via  theAtomskeyword.   This  keyword  is  mutually
exclusive with the keywordsPopulations,TotalPopulationandTotalCharge.
TotalChargeSets constraint on the sum of the Mulliken charges of all atoms selected
via theAtomskeyword.  This keyword is mutually exclusive with the keywords
Population,TotalPopulationandCharges.
OptimiserThe optimiser is responsible for propagating the micro-iterations, while searching for
an optimal auxiliary potential that enforces the electronic constraints set in theRegions{}
block. Currently the following methods are available:
SteepestDescent{}Propagate micro-iterations using the steepest descent algorithm.  See
p. 18.
FIRE{}Propagate micro-iterations using the FIRE algorithm. See p. 17.
Rational{}Propagate micro-iterations using a rational function based optimiser. See p. 17.
LBFGS{}Propagate micro-iterations using the LBFGS algorithm. See p. 17.
Please note, that theSteepestDescent{}andFIRE{}optimiser proved to be most stable, when
propagating the micro-iterations.   However,  your experience may vary and manual testing
based on your particular system is advised.
## 4
ConstrToleranceStopping criteria for the micro-iterations.  Specifies the tolerance for the maxi-
mum difference in any condition ofRegions{}between two micro-iteration cycles.
MaxConstrIterationsMaximal number of micro-iterations to reach convergence. If convergence
is not reached after the specified number of steps, the program stops. Setting this value as -1
runs a huge() number of iterations.
ConvergentConstrOnlyIf true, requires that the micro-iterations converge before proceeding to
subsequent stages of the calculation (next SCC step and eventually forces, analysis, etc.).
## Examples:
## 4
For transport calculations, section 4, gradient-only optimizers, i.e.,SteepestDescent{}andFIRE{}are to be pre-
ferred.

## 2.4. HAMILTONIAN41
ElectronicConstraints {
## Constraints {
# Setting individual atomic populations by constraints
MullikenPopulation {
## Atoms = 1 2
## Populations = 1.2 0.8
## }
## }
Optimiser = FIRE {}
ConstrTolerance = 1.0e-08
MaxConstrIterations = 30
ConvergentConstrOnly = Yes
## }
ElectronicConstraints {
## Constraints {
# Setting constraint for the total gross charge of the constrained atoms
MullikenPopulation {
## Atoms = 1 2
TotalCharge = 1.0
## }
## }
## }
## 2.4.5    Mixer
DFTB+ currently offers the charge mixing methodsBroyden{},Anderson{},DIIS{}(DIIS accel-
erated simple mixer) andSimple{}(simple mixer).
## Broyden{}
Minimises the error function
## E=ω
## 2
## 0



## G
## (m+1)
## −G
## (m)



## +
m
## ∑
n=1
ω
## 2
n





n
## (n+1)
## −n
## (n)
## |F
## (n+1)
## −F
## (n)
## |
## +G
## (m+1)
## F
## (n+1)
## −F
## (n)
## |F
## (n+1)
## −F
## (n)
## |





## 2
## ,
whereG
## (m)
is the inverse Jacobian,n
## (m)
andF
## (m)
are the charge and charge difference vector in
iterationm. The weights are given byω
## 0
andω
m
, respectively. The latter is calculated as
ω
m
## =
c
## √
## F
## (m)
## ·F
## (m)
## ,(2.1)
cbeing a constant coefficient [43].
TheBroyden{}method can be configured using following properties:
MixingParameterr0.2
InverseJacobiWeightr0.01
MinimalWeightr1.0
MaximalWeightr1e5
WeightFactorr1e-2

## 42CHAPTER 2. INPUT FORDFTB+
MixingParameterMixing parameter.
InverseJacobiWeightWeight for the difference of the inverse Jacobians (ω
## 0
## ).
MinimalWeightMinimal allowed value for the weighting factorsω
m
## .
MaximalWeightMaximal allowed value forω
m
## .
WeightFactorWeighting factorcfor the calculation of the weighting factorsω
m
in (2.1).
Note: As the Broyden-mixer stores a copy of the mixed quantity for each SCC iteration at a given
geometry, you may consider to choose a different mixer with lower memory requirements, if your
system needs density matrix mixing (e.g. DFTB+U), is large and needs a high number of SCC-
iterations (MaxSCCIteration).
## Anderson{}
Modified Anderson mixer [26].
MixingParameterr0.05
## Generationsi4
InitMixingParameterr0.01
DynMixingParameters(2r)*{}
DiagonalRescalingr0.01
MixingParameterMixing parameter.
GenerationsNumber of generations to consider for the mixing.  Setting it too high can lead to
linearly dependent sets of equation.
InitMixingParameterSimple mixing parameter used until the number of iterations is greater or
equal to the number of generations.
DynMixingParametersAllows specification of different mixing parameters for different levels
of convergence during the calculation. These are given as a list of tolerances and the mixing
factor to be used below this level of convergence. If the loosest specified tolerance is reached,
the appropriate mixing parameter supersedes that specified inMixingParameter.
DiagonalRescalingUsed to increase the diagonal elements in the system of equations solved by
the mixer. This can help to prevent linear dependencies occurring during the mixing process.
Setting it to too large a value can prevent convergence.  (This factor is defined in a slightly
different way from Ref. [26]. See the source code for more details.)
## Example:
## Mixer = Anderson {
MixingParameter = 0.05
## Generations = 4
# Now the over-ride the (previously hidden) default old settings
InitMixingParameter = 0.01
DynMixingParameters = {
1.0e-2 0.1 # use 0.1 as mixing if more converged that 1.0e-2
1.0e-3 0.3 # again, but 1.0e-3

## 2.4. HAMILTONIAN43
1.0e-4 0.5 # and the same
## }
DiagonalRescaling = 0.01
## }
## DIIS{}
Direct inversion of the iterative space is a general method to acceleration iterative sequences.  The
current implementation accelerates the simple mix process.
InitMixingParameterr0.2
## Generationsi6
UseFromStartlYes
MixingParameterMixing parameter.
GenerationsNumber of generations to consider for the mixing.
UseFromStartSpecifies  if  DIIS  mixing  should  be  done  right  from  the  start,  or  only  after  the
number of SCC-cycles is greater or equal to the number of generations.
## Simple{}
Constructs a linear combination of the current input and output charges as(1−x)q
in
## +xq
out
## .
MixingParameterr0.05
MixingParameterCoefficient used in the linear combination.
2.4.6    SpinPolarisation
In an SCC calculation,  the code currently supports three different choices for spin polarisation;
non-SCC calculations are not spin polarised.
No spin polarisation ({})
No spin polarisation contributions to the energy or band-structure.
## Colinear{}
Colinear spin polarisation in thezdirection. The following options can be specified:
UnpairedElectronsr0
RelaxTotalSpinlNo
InitialSpinsp{}
UnpairedElectronsNumber of unpaired electrons.  This is kept constant during the run, unless
theRelaxTotalSpinkeywords says otherwise.

## 44CHAPTER 2. INPUT FORDFTB+
RelaxTotalSpinIf set toYes, a common Fermi-level is used for both spin channels, so that the
total spin polarisation can change during run.   In this case,  the spin polarisation specified
using theUnpairedElectronskeyword is only applied at initialisation.  If set toNo(default),
the initial spin polarisation is kept constant during the entire run.
InitialSpinsOptional initialisation for spin patterns.  If this keyword is present, the default code
behaviour is that the initial input charge distribution has a magnetisation of 0. Otherwise if it
is not present, the initial input charge distribution has a magnetisation matching the number
ofUnpairedElectronskeyword.
The initial spin distribution for the input charges can be set by specifying the spin polarisation
of atoms. For atoms without an explicit specification, a spin polarisation of zero is assumed.
TheInitialSpinsproperty block must contain either theAllAtomSpinskeyword with a list of
spin polarisation values for every atom, or one or moreAtomSpinblocks giving the spin for
a specific group of atoms using the following keywords:
## Atoms(i|s)+-
SpinPerAtomr-
AtomsAtoms to specify an initial spin value. The atoms can be specified via indices, index
ranges and/or species.  (The atoms can be specified via index selection expressions, as
described in appendix B.7.)
SpinPerAtomInitial spin polarisation for each atom in thisInitialSpinsblock.
For atoms not appearing in any of theSpinPerAtomblock, an initial spin polarisation of 0 is
set.
Example (individual spin setting):
SpinPolarisation = Colinear {
UnpairedElectrons = 0.0
InitialSpins = {
AtomSpin = {
## Atoms = 1:2
SpinPerAtom = -1.0
## }
AtomSpin = {
## Atoms = 3:4
SpinPerAtom = +1.0
## }
## }
## }
Example (setting all spins together):
SpinPolarisation = Colinear {
UnpairedElectrons = 0.0
InitialSpins = {
AllAtomSpins = { -1.0 -1.0 1.0 1.0 } # Atoms 1,2: -1.0, atoms 3,4: 1.0
## }
## }

## 2.4. HAMILTONIAN45
NonColinear{}
Non-collinear spin polarisation with arbitrary spin polarisation vector on every atom.   The only
option allowed is to set the initial spin distribution:
InitialSpinsp{}
InitialSpinsInitialisation of thex,yandzcomponents of the initial spins for atoms.  The default
code behaviour is an initial spin polarisation of (0 0 0) for every atom.
The initial spin distribution can be set by specifying the spin polarisation vector on all atoms
using theAllAtomSpinskeyword or by using one or moreAtomSpinblocks with the following
options:
## Atoms(i|s)+-
SpinPerAtom(3r)+-
AtomsAtoms to specify an initial spin vector. The atoms can be specified via index selection
expressions, as described in appendix B.7.
SpinPerAtomInitial spin polarisation for each atom in thisInitialSpinsblock.
For atoms not appearing in any of theSpinPerAtomblock, the vector (0 0 0) is set.
Please note, that in contrast to the collinear case, in the non-collinear case you must specify
the spin vector (3 components!) for the atoms.
## Example:
SpinPolarisation = NonColinear {
InitialSpins = {
# Setting the spin for all atoms in the system
AllAtomSpins = {
## 0.408 -0.408 0.816
## 0.408 -0.408 0.816
## -0.408 0.408 -0.816
## -0.408 0.408 -0.816
## }
## }
## }
## Example:
SpinPolarisation = NonColinear {
InitialSpins = {
AtomSpin = {
## Atoms = 1:2
SpinPerAtom = 0.408 -0.408 0.816
## }
AtomSpin = {
## Atoms = 3:4
SpinPerAtom = -0.408 0.408 -0.816
## }
## }
## }

## 46CHAPTER 2. INPUT FORDFTB+
SpinConstants
This  environment  suplies  the  atomic  constants  required  for  either  spin  polarised  calculations  or
when evaluating properties which depend on spin interactions (triplet excitations for example).  In
these cases, for each atomic species in the calculation the spin coupling constants for that atom must
be specified.
WhenShellResolvedSCC=No, an extra keyword in this block controls whether the spin constants
are resolved by shell or are identical for all shells:ShellResolvedSpin, defaulting to the same value
asShellResolvedSCC.
When shell resolved spin constants are specified, they must be ordered with respect to the pairs of
shells they couple, such that the index for the second shell increases faster.  For ans pd-basis, that
gives the following ordering:
w
ss
## ,w
s p
## ,w
sd
## , . . . ,w
ps
## ,w
p p
## ,w
pd
## , . . . ,w
ds
## ,w
d p
## ,w
dd
## , . . .
Example (GGA parameters for H
## 2
## O):
SpinConstants = {
## O = {
## # Wss Wsp   Wps   Wpp
## -0.035 -0.030 -0.030 -0.028
## }
## H = {
## # Wss
## -0.072
## }
## }
Several standard values of atomic spin constants are given in appendix E. Constants calculated with
the same density functional as the SK-files should be used.  This input block may be moved to the
SK-data definition files in the future.
When using theSelectedShellsmethod for the keywordMaxAngularMomentum, the spin constants
are listed as an array of values running over SK1SK2. . .in the same order as listed for SlaterKoster-
## Files.
SpinConstants = { # not real values, only an example
## Si = {
## # Wss Wsp   Wss*
## -0.035 -0.030 -0.01
## # Wps Wpp   Wps*
## -0.030 -0.037 -0.02
## # Ws*s Ws*p  Ws*s*
## -0.01 -0.02 -0.01
## }
For cases whereShellResolvedSpin=No, the spin constant for the highest occupied orbital of each
atom should be supplied: Example (GGA parameters for H
## 2
## O):

## 2.4. HAMILTONIAN47
SpinConstants = {
## O = {
#Wpp
## -0.028
## }
## H = {
## # Wss
## -0.072
## }
## }
2.4.7    SpinOrbit
If present, specifies thatL·Scoupling should be included for a calculation.  Currently spin unpo-
larised and non-collinear spin polarisation are supported, but not collinear spin polarisation.  For
every atomic species present in the calculation the spin-orbit coupling constants,ξ, for that atom
must be specified for all shells present.  The constants must be ordered with respect to the list of
shells for the given atom.
In the case that the spin-orbit constant for ansorbital has been set to be a non-zero value the code
prints a warning.  For periodic systems, use of this keyword automatically prevents the folding by
inversion normally used inSupercellFolding{}, but manually specifiedKPointsAndWeightsshould
notbe reduced by inversion.
Example (GaAs):
SpinOrbit = {
Ga [eV] = {0.0 0.12 0.0} # s p d shells
As [eV] = {0.0 0.32703} # s p shells
## }
The additional option in this block,Dual, sets whether to use a block population for the local spin
matrices consistent with the dual populations of Hanet al.[34] or the conventional on-site part of the
single particle density matrix. The default value of this option isYes, also giving extra information
regarding atomic orbital moments in the detailed output.
## 2.4.8    Solver
Currently the following LAPACK 3.0 [4] eigensolver methods are always available:
## •QR{}
(QR decomposition based solver)
•DivideAndConquer{}
(this requires about twice the memory of the other solvers)
•RelativelyRobust{}
(using the subspace form but calculating all states)
None of these solvers need any parameters or properties to be specified.
## Example:

## 48CHAPTER 2. INPUT FORDFTB+
Solver = DivideAndConquer {}
For ScaLAPACK enabled compilation, all three of the LAPACK solvers are also available for MPI
parallel use.
If the DFTB+ binary is compiled with additional libraries, the following solvers become available:
LibrarySolver(s)Note
MAGMA [95, 96, 22, 99]MAGMA{}Serial DFTB+
ELSI [102, 103]ELPA{},OMM{},PEXSI{},NTPoly{}MPI parallel DFTB+
Note: The ELSI-solvers are not tested with multiple OpenMP-threads. Therefore, DFTB+ will stop
with an error, if an ELSI-solver has been selected and the maximal number of allowed threads is
greater than one. (You can control the number of allowed OpenMP-threads via theOMP_NUM_THREADS
environment variable.)
## MAGMA
This uses available GPUs to accelerate eigensolution and (optionally) density matrix construction.
It accepts following options:
DensityMatrixGPUlYes
DensityMatrixGPUUse the GPU to construct the single particle density matrix from the eigen-
vectors.
## ELPA
The ELPA solver provides an efficient and scalable diagonaliser, which is also able to utilise GPUs
(provided the ELSI library was compiled with GPU support). It accepts following options
AutotunelNo
GpulNo
## Modei2
SparselNo
AutotuneWhether ELPAs autotune capability should be used to optimise performance (default:
## No)
GpuWhether ELPA should use available GPUs (default:No). Note, that you can only enable this
option, if DFTB+ was built with GPU support.
ModeELPA operation mode (possible values:1,2, default:2).  Mode 2 is supposed to be more
efficient for large problems.
SparseWhether the sparse matrix interface of ELPA should be used or the dense one (default:
dense).  The sparse interface does not reduce memory usage and is mainly for testing pur-
poses.
## Example:
Solver = ELPA {
## Mode = 2

## 2.4. HAMILTONIAN49
## Autotune = Yes
## Gpu = Yes
## }
One caveat for this solver is that the number of parallel groups (see p. 109) must match the number
of k-points (times 2 in the case of collinear spin polarisation).  Calculations without k-points can
use either one or two groups in the case of collinear spin polarisation.
## OMM
This method minimises the single particle density matrix, so does not make band structure infor-
mation available. It is only stable for insulating grounds states, i.e., systems with a HOMO-LUMO
(band) gap.
The orbital minimisation method has four options:
nInterationsELPAi5
Tolerancer1E-10
CholeskiilYes
SparselNo
nInterationsELPANumber  of  initial  iterations  to  be  performed  with  ELPA  before  the  OMM
method starts.
ToleranceMinimisation tolerance for this solver, larger values are faster by may be less stable.
CholeskiiWhether the overlap is Choleskii factorised before applying OMM. This may increase
stability of this method.
SparseWhether the code should use the sparse matrix interface to ELSI solvers.  This does not
substantially improve memory usage in this case as internally the dense problem is solved
with libOMM.
## PEXSI
The PEXSI solver directly calculates the density matrix, so does not make band structure informa-
tion or Mermi free energy available.  The scaling with system size is better than the other solvers
available in DFTB+, increasing asO(N
d/2+1/2
atom
)wheredis the effective dimensionality of the sys-
tem. Hence for three dimensional structures it will scale asO(N
## 2
)for general systems.
Methodi(PEXSI>2.5)3
PolesiMethod = 330
ProcsPerPolei1
muPointsi2
SymbolicFactorProcsi1
SpectralRadiusr10
SparselNo
ThresholdlSparse = No1E-15
Methodused for pole expansion.  ELSI v2.5 only supports methods 1 and 2, but v2.6 onwards
offers method 3 as well (see the ELSI user manual for details of the methods).  Methods 1

## 50CHAPTER 2. INPUT FORDFTB+
and 3 can calculate the electron entropy, so enable the Mermin energy to be evaluated. When
compiled with ELSI v2.5, the DFTB+ default isMethod=2, while for later versions method
3 is the default.
Polesnumber of poles for the complex plane calculation.Method=1 defaults to 60 poles, 2 has 20
and method 3 uses 30 by default.
ProcsPerPoleprocessors used to calculate the inversion at each pole.
muPointsnumber of processors used to search for the Fermi level.
SymbolicFactorProcsnumber of processors to use in evaluating the factorisation pattern of ma-
trices.
SpectralRadius[Energy]extension of the complex contour.
SparseWhether the code should use the sparse ELSI matrix interface.
ThresholdSets the threshold to convert dense matrices to the internal sparse representation that
ELSI uses. This may be useful in the case of matrix factorisation issues inside the solver.
NTPoly
This method constructs the single particle density matrix via a purification method based on matrix
polynomials (hence requires insulating systems). The solver does not make band structure informa-
tion available, but can be linear scaling in both time and memory depending on settings and system.
Currently the solver does not support spin polarisation or k-points.
This solver has several options:
PurificationMethodi2
Tolerancer1E-5
Truncationr1E-10
SparselNo
ThresholdlSparse = No1E-15
PurificationMethodAllowed choices are 0 for canonical purification, 1 for trace correcting pu-
rification, 2 for 4
th
order trace resetting purification, and 3 for generalised hole-particle canon-
ical purification.
ToleranceIterative convergence tolerance for this solver, larger values are faster by may be less
stable.
TruncationTolerance below which matrix elements in the density matrix are dropped to enforce
sparsity.
SparseWhether the code should use the sparse matrix ELSI interface.
ThresholdSets the threshold to convert dense matrices to the internal sparse representation that
NTPoly uses.
The default choices ofToleranceandTruncationlead to an accurate, but slow, solutions.  Alterna-
tively linear scaling can be achieved at smaller system sizes with a larger choice of these values.
Values in the range of 1E-3 and 1E-6 forToleranceandTruncationmay be suitable (but test the
quality of the solutions).

## 2.4. HAMILTONIAN51
## 2.4.9    Filling
There are currently three types of filling supported (see below). All have common options:
TemperaturerAdaptFillingTemp = No0.0
IndependentKFillinglPeriodic = YesNo
FixedFermiLevel(1|2)r-
Temperature[energy]Electron temperature in energy units.  This property is ignored for ther-
mostated MD runs, if theAdaptFillingTempproperty of the thermostat has been set toYes
(See p. 25).
IndependentKFillingCauses the occupation of the eigenstates to be independently determined
for eachk-point, thus preventing electron transfer between thek-points.  Please note that the
value for the Fermi level printed out by the code is meaningless in that case, since there is no
common Fermi level for allk-points.  This option is incompatible with use of theFixedFer-
miLevelkeyword.
FixedFermiLevel[energy]Can be used to fix the Fermi-level (total chemical potential,μ) of the
electrons in the system. For collinear spin polarisation, values for up and down spin channels
are required.  Otherwise only a single global chemical potential is required.  If this option is
present, the total charge and the total spin of the system are not conserved (settings in the
optionsChargeandUnpairedElectronswill be ignored). If a fixed chemical potential is used,
the outputforce related energyincludes the contribution to the free energy,−Nμ, hence if
differentiated will give the forces and stresses (if periodic).
## Fermi{}
Fills the single particle levels according to a Fermi distribution.  When using a finite temperature,
the Mermin free energy (which the code prints) should be used instead of the total energy.  This is
given byE−T S, where the electron entropySis used.
## Example:
## Filling = Fermi {
Temperature [K] = 300
## }
MethfesselPaxton{}
Produces a Fermi-like distribution but with much lower electron entropy [64].  This is useful for
systems that require high electron temperatures (for example when calculating metallic systems).
There is an additional option for this type of filling:
## Orderi1
OrderOrder of the Methessel-Paxton scheme,  the order must be greater than zero,  and the 0
th
order scheme is equivalent to Gaussian filling.  There is often no advantage to higher orders
than 1 (the default).  All orders higher than 0 have no linear or quadratic dependence of the
free energy with electronic temperature.

## 52CHAPTER 2. INPUT FORDFTB+
Note:Due to the non-monotonic behaviour of the Methfessel-Paxton filling function, the position of
the Fermi-level is not necessary unique for a given number of electrons. Therefore, different fillings,
band entropies, and Mermin free energies may result, depending which one has been found by the
Fermi-level search algorithm. The differences, however, are usually not physically significant.
## Gaussian{}
Fills the single particle levels acording to gaussian broadened levels.  When using a finite temper-
ature, the Mermin free energy (which the code prints) should be used instead of the total energy.
This is given byE−T S, where the electron entropySis used.
## Example:
## Filling = Gaussian {
Temperature [K] = 300
## }
Note:Gaussian  smearing  is  equivalent  to  Methfessel-PaxtonOrder=  0  broadening,  but  unlike
Methfessel-Paxton broadening, the entropy of the distribution is strongly affected by temperature.
2.4.10    Time-independent DFTB (TI-DFTB) excited states
## ∆DFTB
The time-independent approach∆DFTB modifies the SCC loop to allow variational relaxation of
the lowest singlet excited state of closed-shell singlet species [50].  The KS spin orbitals are self-
constently optimised under non-Aufbau orbital occupation constraints via promotion of an elec-
tron from the highest occupied molecular orbital (HOMO) of the ground state to lowest unoccu-
pied molecular orbital (LUMO) at each SCC iteration.   Specifically,  theNonAufbau{}block in
DFTB+manipulates the electronic filling to emulate a singlet excited state.  By modifying the oc-
cupation pattern, the target excited state density (ρ
e
) is can be constructed according to the standard
formula for obtaining the electron density from the occupied colinear spin orbitals,
ρ
e
## (r) =
## ∑
σ
## ∑
iεocc(σ)
## |φ
σ
i
## (r)|
## 2
## .
Because the constraint is placed on the spin orbitals rather than the MO’s, this method introduces
heavy spin contamination to the system by the arbitrary promotion ofαspin electrons.  This issue
is circumvented with spin purification, where the triplet state energy is subtracted from twice the
mixed singlet state energy, in accordance with the Ziegler sum rule,[106]
## E(S
## 1
) =2E[{φ
σ
i
## }
m
]−E[{φ
σ
i
## }
t
## ].
A non-spin-purified calculation can be performed ifSpinPurify = No.∆DFTB calculations can be
more challenging to converge than their ground-state analogs. To aid convergence, one can first run
a ground-state initial guess withGroundGuess = Yes. The DIIS mixer is often an effective alterna-
tive mixer for converging∆DFTB calculations in cases where the calculation fails to converge with
the Broyden mixer.
This is a singlet excitation from a spin zero ground state system, soSpinPolarisationshould not be
set in the input for this type of calculation, but spin constants (p. 46)arerequired. The calculation
can be modified by including the following properties in thenonAufbau{}block:

## 2.4. HAMILTONIAN53
SpinPurifylYes
GroundGuesslNo
SpinPurifyCalculates both a triplet and mixed state for spin-purification.  If set toNo, only the
mixed state is calculated.  The mixed state is formed by promoting anαelectron from the
HOMO to the LUMO.
GroundGuessCalculates the ground state energy prior to a non-Aufbau calculation.   The SCC
loop will run three times ifNonAubau,SpinPurify, andGroundGuessare set toYes, but only
twice ifSpinPurify = No.
The default settings, ifNonAufbau{}is included in the input, is equivalent to:
NonAufbau = {
GroundGuess = No
SpinPurify = Yes
## }
This performs two self-consistent calculations at each geometry step, and then evaluates the energy,
forces and charges in the∆DFTB first excited state. Note that this is a singlet state, hence only the
totalcharge is relevant in Mulliken populations.
If instead the ground state is also requested (SpinPurify=Yesby default):
NonAufbau = {
GroundGuess = Yes
## }
Thedetailed.outfile will then contain energies of the ground, triplet and the spin purified singlet
excitation, along with estimates for the excitation energies from theS
o
to theT
## 1
andS
## 1
states:
S0 -> T1:0.2104101411 H5.7256 eV
S0 -> S1:0.2615036445 H7.1159 eV
2.4.11    SlaterKosterFiles
There  are  two  different  ways  to  specify  the  Slater-Koster  files  for  the  atom  type  pairs,  explicit
specification and using theType2FileNames{}method.
All specified Slater-Koster files are additionally searched for in directory specified in theDFTB-
PLUS_PARAM_DIRenvironment variable.
Explicit specification
Every pairwise permutation atomic types, connected by a dash, must occur as a property with the
name of the corresponding file as an assigned value.
Example (GaAs):
SlaterKosterFiles = {
Ga-Ga = "./Ga-Ga.skf"
Ga-As = "./Ga-As.skf"

## 54CHAPTER 2. INPUT FORDFTB+
As-Ga = "./As-Ga.skf"
As-As = "./As-As.skf"
## }
You can also set aPrefixfor the files, typically their path Example (C):
SlaterKosterFiles = {
## Prefix = "my_skfiles/mio-1-1/"
C-C = "C-C.skf"
## }
Which would specify the file’s location as./my_skfiles/mio-1-1/C-C.skfinside the current direc-
tory.
If you treat shells from different species as shells of one atom by using theSelectedShells{}key-
word in theMaxAngularMomentum{}block, you will have to specify more than one file name for
certain species pairs. (For details see the description about theMaxAngularMomentum{}keyword.)
Type2FileNames{}
You can use this method to generate the name of the Slater-Koster files automatically using the
element names from the input geometry. You have to specify the following properties:
## Prefixs""
## Separators""
## Suffixs""
LowerCaseTypeNamelNo
PrefixPrefix before the first type name, usually the path.
SeparatorSeparator between the type names.
SuffixSuffix after the name of the second type, usually extension.
LowerCaseTypeNameIf the name of the types should be converted to lower case.  Otherwise
they are used in the same way, as they were specified in the geometry input.
Example (for producing the same file names as in the previous section):
SlaterKosterFiles = Type2FileNames {
## Prefix = "./"
## Separator = "-"
## Suffix = ".skf"
LowerCaseTypeName = No
## }
TheType2FileNamesmethod can not be used if an extended basis was defined with theSelected-
## Shellsmethod.

## 2.4. HAMILTONIAN55
2.4.12    KPointsAndWeights
Thek-points for the Brillouin-zone integration can either be specified explicitly, or automatically
for supercells by using theSupercellFolding{}orKLines{}methods for supercells or eitherHeli-
calUniform{}orHelicalSampled{}for helical boundary conditions.
Note:For the automatic grid methods, theKPointsAndWeightskeyword is not allowed to have a
modifier.
Explicit specification
Eachk-point  and  its  weight  in  the  integral  should  be  specified,  for  supercells  this  requires  that
four real numbers must be specified for each point:  The coordinates of the givenk-point followed
by its weight, while for helical coordinates there are two coordinates (along the helical axis and
with respect to the rotation around the axis) and the weight of the point.  By default, coordinates
are specified in fractions of the reciprocal lattice vectors.   If the modifierabsoluteis set for the
KPointsAndWeightskeyword, absolutek-point coordinates in atomic units are instead expected.
The sum of the k-point weights is automatically normalised by the program.
KPointsAndWeights = {  # 2x2x2 MP-scheme
## 0.25 0.25 0.25   1.0
## 0.25 0.25 -0.25   1.0
## 0.25 -0.25 0.25   1.0
## 0.25 -0.25 -0.25   1.0
## }
SupercellFolding{}
This method generates a sampling set containing all the special k-points in the Brillouin zone related
to points that would occur in an enlarged supercell repeating of the current unit cell. If twok-points
in the BZ are related by inversion, only one (with double weight) is used (in the absence of spin-orbit
coupling this is permitted by time reversal symmetry).  TheSupercellFolding{}method expects 9
integers and 3 real values as parameters:
n
## 11
n
## 12
n
## 13
n
## 21
n
## 22
n
## 23
n
## 31
n
## 32
n
## 33
s
## 1
s
## 2
s
## 3
The integersn
i j
specify the coefficients used to build the supercell vectorsA
i
from the original
lattice vectorsa
j
## :
## A
i
## =
## 3
## ∑
j=1
n
i j
a
j
## .
The real values,s
i
, specify the point in the Brillouin-zone of the super lattice, in which the folding
should occur.  The coordinates must be given in relative coordinates, in the units of the reciprocal
lattice vectors of the super lattice.
The originall
## 1
## ×l
## 2
## ×l
## 3
Monkhorst-Pack sampling [66] for cubic lattices corresponds to a uniform

## 56CHAPTER 2. INPUT FORDFTB+
extension of the lattice:
l
## 1
## 00
## 0l
## 2
## 0
## 00l
## 3
s
## 1
s
## 2
s
## 3
wheres
i
is 0.0, ifl
i
is odd, ands
i
is 0.5 ifl
i
is even. For the 2×2×3 scheme, you would write for
example
# 2x2x3 MP-scheme according original paper
KPointsAndWeights = SupercellFolding {
## 2   0   0
## 0   2   0
## 0   0   3
## 0.5 0.5 0.0
## }
To use k-points for hexagonal lattices which are consistent with the erratum to the original paper
[67], you should set the shift for the unique “c” direction,s
## 3
, in the same way as in the original
scheme.  Thes
## 1
ands
## 2
shifts should be set to be 0.0 independent of whetherl
## 1
andl
## 2
are even or
odd. So, for a 2×3×4 sampling you would have to set
# 2x3x4 MP-scheme according modified MP scheme
KPointsAndWeights = SupercellFolding {
## 2   0   0
## 0   3   0
## 0   0   4
## 0.0 0.0 0.5
## }
It  is  important  to  note  that  DFTB+  does  not  take  the  symmetry  of  your  system  explicitly  into
account.  For small high symmetric systems with a low number ofk-points in the sampling this
could eventually lead to unphysical results. (Components of tensor properties–e.g. forces–could be
finite, even if they must vanish due to symmetry reasons.)  For those cases, you should explicitly
specifyk-points with the correct symmetry.
KLines{}
This method specifiesk-points lying along arbitrary lines in the Brillouin zone. This is useful when
calculating the band structure for a periodic system. (In that case, the charges should be initialised
from the saved charges of a previous calculation with a properk-sampling.  Additionally for SCC
calculations the number of SCC cycles should be set to 1, so that only one diagonalisation is done
using the initial charges.)
TheKLines{}method accepts for each line an integer specifying the number of points along the
line segment, and 3 real values specifying the end point of the line segment. The line segments do
not include their starting points but their end points.  The starting point for the first line segment
can be set by specifying a (zeroth) segment with only one point and with the desired starting point
as end point.  The unit of thek-points is determined by any modifier of theKPointsAndWeights
property. (Default is relative coordinates.)
## Example:

## 2.4. HAMILTONIAN57
KPointsAndWeights [relative] = KLines {
1  0.5 0.0 0.0   # Setting (and calculating) starting point 0.5 0.0 0.0
10  0.0 0.0 0.0   # 10 points from 0.5 0.0 0.0 to 0.0 0.0 0.0
10  0.5 0.5 0.5   # 10 points from 0.0 0.0 0.0 to 0.5 0.5 0.5
1  0.0 0.0 0.0   # Setting (and calculating) a new starting point
10  0.5 0.5 0.0   # 10 points from 0.0 0.0 0.0 to 0.5 0.5 0.0
## }
Note:Since this set of k-points probably does not correctly integrate the Brillouin zone, the default
value ofMaxSccIterationsis set to be 1 in this case.
HelicalUniform{}
This method specifiesk-points lying along the generalised reciprocal vector of the Brillouin zone
of a helical cell and around the order-nrotational axis (currently thek-points that exactly represent
theC
n
rotation  are  used).   TheHelicalUniform{}method  expects  1  integer  and  1  real  value  as
parameters, where the first value specifies the number of sampling points along the helical axis,
while the second gives the shift (analogous to the three dimensional case ofSupercellFolding{}) in
this direction. A shift of 0.5 appears to give more rapid convergence of the grid.
## Example:
KPointsAndWeights = HelicalUniform {80 0.5}
HelicalSampled{}
Instead of exactly integrating around theC
n
rotation ink-space, theHelicalSampled{}method al-
lows for a sampled integration.  It expects 4 values:  the first two are the number of sample points
along the helix and around the rotation respectively, while the second two are shifts in the grid.
## Example:
KPointsAndWeights = HelicalSampled {20 4 0.5 0.25}
There are several things to note here:  firstly,  the second grid (values 4 and 0.25 in the example
above) approximates the integration around theC
n
symmetry,  so should only be used where the
order  of  this  rotation  axis  is  large.   Secondly,  non-zero  shifts  in  the  grid,  particularly  for  small
numbers of sampling points, are likely to be unphysical as are shifts for the grids at the exact order
of the rotation operation.
2.4.13    OrbitalPotential
Currently theFLL(fully localised limit) andpSIC[41] (pseudo self interaction correction ) forms
of the LDA+U corrections [77] are implemented.  These potentials effect the energy of states on
designated shells of particular atoms, usually increasing the localisation of states at these sites. The
FLLpotential lowers the energy of occupied states localised on the specified atomic shells while
raising  the  energy  of  unoccupied  states.   ThepSICpotential  corrects  the  local  part  of  the  self-
interaction error and so lowers the energy of occupied states (see Ref. [41] for a discussion of the
relation between these two potentials, and possible choices for the UJ constant).  These particular

## 58CHAPTER 2. INPUT FORDFTB+
corrections are most useful for lanthanide/actinidefstates and some localiseddstates of transition
metals (Ni3dfor example).
TheFunctionaloption chooses which correction to apply, followed by a list of the specific correc-
tions, listed as an atomic species and the shells on that atom followed by theU−Jconstant for that
block of shells.
OrbitalPotential = {
Functional = {FLL}
## Si = {
Shells = {1 2} # sp block on the atom
## UJ = 0.124
## }
## }
2.4.14    ElectricField
This tag contains the specification for an external electric field. Electric fields can only be specified
for SCC calculations.   You can apply the electric field of point charges
## 5
and/or a homogeneous
external  field  (which  may  change  harmonically  in  time).   TheElectricFieldblock  can  currently
contain either one or morePointChargesblocks and potentially anExternalblock.
PointCharges
The specification forPointChargeshas the following properties:
CoordsAndCharges(4r)+-
GaussianBlurWidthrPeriodic = No0.0
CoordsAndCharges[length]Contains the coordinates and the charge for each point charge (four
real values per point charge).  A length modifier can be used to alter the units of the coordi-
nates. The charge must be specified in proton charges. (The charge of an electron is -1.)
If you read in a huge number of external charges the parsing time to process this data could be
unreasonably long.  You can avoid this by including the coordinates and the charges directly
from an external file via theDirectRead{}method (see the example in the next paragraph).
Please note that when using this method the program will only read the specified number of
records from the external file, and ignores any additional data (so do not leave comments in
the external file for example). The external file should contain only one record (3 coordinates
and 1 charge) per line.
GaussianBlurWidth[length]Specifies the half widthσof the Gaussian charge distribution, which
is used to delocalise the point charges. The energy of the coulombic interactionE
## C
between
the delocalised point chargeMwith chargeQ
## M
and the atomAwith chargeq
## A
is weighted by
the error function as
## E
## C
## (A,M) =
q
## A
## Q
## M
r
## AM
erf
h
r
## AM
σ
i
## ,
wherer
## AM
is the distance between the point charge and the atom.
A length modifier can be used to specify the unit forσ.
## 5
Only in calculations with fixed lattice constants.

## 2.4. HAMILTONIAN59
## Example:
ElectricField = {
# 1st group of charges, with Gaussian delocalisation
# We have 100000 charges, therefore we choose the fast reading method.
PointCharges = {
GaussianBlurWidth [Angstrom] = 3.0
CoordsAndCharges [Angstrom] = DirectRead {
## Records = 100000
## File = "charges.dat"
## }
## }
# 2nd group of charges, no delocalisation (sigma = 0.0)
PointCharges = {
CoordsAndCharges [Angstrom] = {
## 3.3 -1.2 0.9    9.2
## 1.2 -3.4 5.6   -3.3
## }
## }
## }
Note:External charges are currently only available for the DFTB (section 2.4.1) hamiltonian,
and not for the xTB model (section 2.4.2).
## External
Specifies a homogeneous external electric field.  In the case ofperiodiccalculations, a saw-tooth
potential is currently used,  hence it is up to the user to guarantee that there is a vacuum region
isolating periodic copies of the system along the applied field direction. We suggest that you place
the structure in the ‘middle’ of the unit cell if possible, to reduce the chances of atoms approaching
cell boundaries along the direction of the applied electric field. The code will halt if atoms interact
with periodic images of the unit cell along the direction of the electric field.
TheExternalfield keyword has the following options
## Strengthr-
## Direction3r
Frequencyrmolecular dynamics used0.0
PhaseiGeometry step offset0
Strength[Electric field strength]Specified strength of the applied field.
DirectionVector direction of the applied field (the code normalises this vector). In the case of pe-
riodic calculations, currently the systemmust notbe continuous in this direction (see above).
Frequency[Frequency]If using molecular dynamics, the field can be time varying with this fre-
quency.
PhaseInitial field phase in units of geometry steps, this is needed if restarting an MD run in an
external field to give the offset in phase of the field after the specified number of steps from
the old calculation. The applied field is of the form
## E
## 0
sin(ω∆t(ste p+phase))

## 60CHAPTER 2. INPUT FORDFTB+
whereE
## 0
is the field vector specified byStrengthandDirection,ωis the angularFrequency
andste pis the current MD-step in the simulation, using the MDTimeStepof∆t(see section
## 2.3.8).
2.4.15    AtomSitePotential
Specifies an external potential at a selected atomic site or sites.  This potential either couples with
the  gross  atomic  charges  (charges  printed  indetailed.outwhenMullikenAnalysis  =Yes)  or  net
atomic charge (as printed whenWriteNetChargesis enabled).Note:The sign convention is that the
potential willincreasethe energy of states associated with the affected site for apositivepotential.
TheNetandGrosspotentials  are  specified  as  environments,  both  of  which  have  the  following
options
## Atomsi+
## Vextr+
AtomsThe atoms in the geometry for which an external potential should be applied.  As these
must be paired with a specified potential value, specific atom numbers in the structure should
be given (not ranges or chemical species).
Vext[energy]Specified strength of the applied potential at the listed sites.
## Example:
AtomSitePotential {
# potential(s) coupling to Mulliken charges
## Gross {
## Atoms = 1 2
Vext [eV] = 1.5 -0.5
## }
# on-site only part of potential
## Net {
## Atoms = 2
Vext [eV] = 0.5
## }
## }
## 2.4.16    Dispersion
TheDispersionblock controls whether DFTB interactions should be empirically corrected for van
der Waals interactions, since DFTB (and SCC-DFTB) does not include these effects.  Currently,
six  different  dispersion  correction  schemes  are  implemented  (for  the  detailed  description  of  the
methods see the following subsections):
•LennardJones:  Dispersion is included via a Lennard-Jones potential between each pair of
atoms. The parameters for the potential can either be entered by the user or the program can
automatically take the parameters from the Universal Force Field (UFF) [81].

## 2.4. HAMILTONIAN61
•SlaterKirkwood: The dispersion interaction between atoms is taken from a Slater-Kirkwood
polarisable atomic model [24].
•DftD3: Dispersion is calculated as in the s-dftd3 library [31, 32] (see section 2.4.16). Modifi-
cation hydrogen bond interaction strengths (see section 2.4.21). Note: If DFTB+ is compiled
without the s-dftd3 library, theSimpleDftD3can be used to include D3(BJ)-dispersion.
•SimpleDftD3: DFTB+ internal implementation of the D3-dispersion model.
•DftD4: Dispersion is calculated using the D4 model [15, 16] (see section 2.4.16).
•Ts: Dispersion is calculated using the Tkatchenko-Scheffler model [94] adapted for DFTB [92]
(see section 2.4.16).
•MbdDispersion is calculated using the MBD@rsSCS model [2] adapted for DFTB [92] (see
section 2.4.16).
LennardJones
The Lennard-Jones dispersion model in DFTB+ follows the method of Ref. [105], using the fol-
lowing potential:
## U
i j
## (r)  =d
i j
## 
## −2
## 
r
i j
r
## 
## 6
## +
## 
r
i j
r
## 
## 12
## 
r>=r
## 0
## U
i j
(r)  =U
## 0
## +U
## 1
r
## 5
## +U
## 2
r
## 10
r<r
## 0
wherer
## 0
is the distance at which the potential turns from repulsive to attractive. The parametersd
i j
andr
i j
are built from atomic parametersd
i
## ,d
j
andr
i
## ,r
j
via the geometrical mean (d
i j
## =
p
d
i
d
j
## ,
r
i j
## =
## √
r
i
r
j
). The parametersU
## 0
## ,U
## 1
## ,U
## 2
ensure a smooth functional form atr
## 0
## .
The parametersr
i
andd
i
can either be taken from the parameters of the UFF [81] (as in Ref. [105])
or can be specified manually for each species.
Example using UFF parameters:
Dispersion = LennardJones {
Parameters = UFFParameters {}
## }
Example using manually specified parameters:
Dispersion = LennardJones {
## Parameters {
## H {
Distance [AA] = 2.886
## Energy [kcal/mol] = 0.044
## }
## O {
Distance [AA] = 3.500
## Energy [kcal/mol] = 0.060
## }
## }
## }

## 62CHAPTER 2. INPUT FORDFTB+
The UFF provides dispersion parameters for nearly every element of the periodic table, therefore
it can be used for almost all systems “out of the box”.  The parameters are also independent of the
atomic coordination number, allowing straight forward geometry relaxation or molecular dynamics
(unlike the current implementation of Slater-Kirkwood type dispersion).
SlaterKirkwood
A Slater-Kirkwood type dispersion model is also implemented in DFTB+ as described in Ref. [24].
## 6
This model requires atomic polarisation values, van der Waals radii and effective charges for every
atom in your system.  These parameters are dependent on the coordination of each atom,  hence
values for different atoms of the same species may vary depending on local environment. You can
supply these parameters for the atoms in either of two ways, both using thePolarRadiusChargetag.
The first option is to specify the values within thePolarRadiusChargeenvironment by providing
three real values (polarisability, van der Waals radius, effective charge) for each atom separately.
## Example:
Dispersion = SlaterKirkwood {
# Using Angstrom^3 for volume, Angstrom for length and default
# unit for charge (note the two separating commas between the units)
PolarRadiusCharge [Angstrom^3,Angstrom,] = {
## # Polar    Radius   Chrg
## 0.560000   3.800000   3.150000    # Atom 1: O
## 0.386000   3.500000   0.800000    # Atom 2: H
## 0.386000   3.500000   0.800000    # Atom 3: H
## }
## }
Alternatively you can provide values for each atomic species in your system, but must supply differ-
ent values for different coordination numbers using theHybridDependentPol{}keyword. The code
needs specific parameters for each type of atom in environments with 0, 1, 2, 3, 4 or⩾5 neighbours.
DFTB+ then picks the appropriate values for each atom based on their coordination in thestarting
geometry. Two atoms are considered to be neighbours if their distance is less than the sum of their
covalent radii, hence you need to supply the covalent radii for each atomic species using theCo-
valentRadiuskeyword.  This is then followed by aHybridPolarisations/HybridPolarizationblock
containing a list of six values for atomic polarisabilities then six van der Waals radii and finally a
single hybridisation independent effective charge for that atomic species.
## Example:
Dispersion = SlaterKirkwood {
PolarRadiusCharge = HybridDependentPol {
## O = {
CovalentRadius [Angstrom] = 0.8
HybridPolarisations [Angstrom^3,Angstrom,] = {
# Atomic polarisabilities 0-5van der Waals radii 0-5 chrg
## 0.560 0.560 0.560 0.560 0.560 0.560 3.8 3.8 3.8 3.8 3.8 3.8 3.15
## 6
Please note,  that Ref. [24] contains two typos:  equation (7) should readC
αβ
## 6
## =
## 2C
α
## 6
## C
β
## 6
p
α
p
β
p
## 2
α
## C
β
## 6
## +p
## 2
β
## C
α
## 6
,  in equation (9) the
contribution from the dispersion should beE
dis
## =−
## 1
## 2
## ∑
αβ
f(R
αβ
## )C
αβ
## 6
## (R
αβ
## )
## −6
## .

## 2.4. HAMILTONIAN63
## }
## }
## H = {
CovalentRadius [Angstrom] = 0.4
HybridPolarisations [Angstrom^3,Angstrom,] = {
# Atomic polarisabilities 0-5van der Waals radii 0-5 chrg
## 0.386 0.396 0.400 0.410 0.410 0.410  3.5 3.5 3.5 3.5 3.5 3.5  0.8
## }
## }
## }
## }
Warning:For both methods of specifying the Slater-Kirkwood dispersion model the code keeps the
dispersion parameters fixed for each atom during the entire calculation. Even if the geometry (and
therefore the hybridisation) of atoms changes significantly during the calculation, the parameters are
unchanged.  Therefore if atoms are able to move during your calculation (geometry relaxation or
molecular dynamics) you shouldalwayscheck whether the coordination of your atoms has changed
during the run.
Furthermore,  when  using  theHybridDependentPol{}method  we  suggest  that  you  first  set  the
StopAfterParsingkeyword in theParserOptionsblock toYes(see p. 108) and inspect the gener-
ated polarisabilities, radii and charges for every atom in thedftb_pin.hsdfile. If fine tuning of the
generated values turns out to be necessary, you should replace the hybrid dependent specification in
the input file with corrected atom specific values based ondftb_pin.hsd.
In order to find suitable parameters for the Slater-Kirkwood model, you should consult Ref. [24]
and further references therein. Appendix F contains values which have already been used by some
DFTB-users for a few elements.
DftD3
Note:the DFTB+ binary must be compiled with the DFT-D3 library enabled to use this feature. It is
recommended to use theSimpleDftD3dispersion model instead, which offers similar functionality
but without any library dependence.
The DFT-D3 dispersion correction in DFTB+ is an implementation of the method used in the code
’dftd3’ by Stefan Grimme and coworkers. It is based on theansatzdescribed in Refs. [31] and [32].
This dispersion correction for DFTB adds a contribution to the general Kohn-Sham-like energy
## E
## DFTB-D3
## =E
## DFTB
## +E
disp
withE
## DFTB
being the DFTB total energy andE
disp
the dispersion energy.  The latter contains two-
body and optional three-body contributions:
## E
disp
## =E
## (2)
disp
## +E
## (3)
disp
## .
The form of the two-body contribution can change depending on the chosen damping factor:
-  Becke-Johnson damping function:
## E
## (2)
disp
## =−
## 1
## 2
## ∑
## A̸=B
## ∑
n=6,8
s
n
## C
## AB
n
r
n
## AB
+f(R
## AB
## 0
## )

## 64CHAPTER 2. INPUT FORDFTB+
with
f(R
## AB
## 0
## ) =a
## 1
## R
## AB
## 0
## +a
## 2
## .
-  Zero-damping (dispersion at short distances is damped to zero):
## E
## (2)
disp
## =−
## 1
## 2
## ∑
## A̸=B
s
n
## C
## AB
n
r
n
## AB
f
d,n
## (r
## AB
## )
with
f
d,n
## =
## 1
## 1+6(r
## AB
## /(s
r,n
## R
## AB
## 0
## ))
## −α
n
-  Modified zero-damping (dispersion at short distances is damped to zero):
## E
## (2)
disp
## =−
## 1
## 2
## ∑
## A̸=B
s
n
## C
## AB
n
r
n
## AB
f
d,n
## (r
## AB
## )
with
f
d,n
## =
## 1
## 1+6(r
## AB
## /(s
r,n
## R
## AB
## 0
## +β))
## −α
n
In order to adjust the dispersion for various energy functionals, the choice ofs
## 6
## ,s
## 8
and the damping
parametersa
## 1
anda
## 2
(for Becke-Johnson-damping),s
r,6
andα
## 6
(for zero damping) ors
r,6
## ,α
## 6
and
β(for modified zero damping) are treated as functional-dependent values. All other parameters are
fixed based on these parameters.
As the DFTB energy functional is largely determined by the underlying parameterisation (the Slater-
Koster-files) and the chosen DFTB model (e.g. non-scc, scc, 3rd order, etc.), there are no universal
parameter choices which can be used with all settings, but some relevant choices for various param-
eterisation are given in Appendix G.
Note:for the version 6 or earlier of the DFTB+ input parser (see section 2.10) the default values
of these parameters are set to be appropriate for DFTB3.  But from parser version 7 onwards, no
default values are set.
Example using adjusted parameters with Becke-Johnson damping:
Dispersion = DftD3 {
Damping = BeckeJohnson {
a1 = 0.5719
a2 = 3.6017
## }
s6 = 1.0
s8 = 0.5883
## }
Example using zero-damping:
Dispersion = DftD3 {
Damping = ZeroDamping {
sr6 = 0.7461
alpha6 = 14.0
## }
s6 = 1.0
s8 = 3.209
## }

## 2.4. HAMILTONIAN65
DftD3 optional settings
Apart from the functional dependent dispersion parameters, you can also adjust the additional pa-
rameters as shown below. The default values for these parameters are taken to be the same as in the
dftd3 code.
## Cutoffr
## √
## 9000
CutoffCNr40
ThreebodylNo
HHRepulsionlNo
AtomicNumbersm{}
Cutoff[length]Cutoff distance when calculating two-body interactions.
CutoffCN[length]Cutoff distance when calculating three-body interactions.
ThreebodyWhether three-body contributions should be included in the dispersion interactions.
AtomicNumbersAllows overwrite of atomic numbers associated with a species name.
# Default species (H-Og) are implied
AtomicNumbers {
D = 1 # set deuterium as hydrogen
S = 6 # overwrite sulfur as carbon
## }
HHRepulsionRequired when calculating the DFTB3-D3H5 [83] modification to D3 dispersion
(see section 2.4.21 for details and parameter values).   This keyword enables an additional
short range repulsion term in all hydrogen–hydrogen pairs [84] which prevents them from
approaching too closely together.
SimpleDftD3
D3-dispersion with Becke-Johnson damping. See section 2.4.16 for details and references.
s6r1.0
s8r
s10r0.0
a1r
a2r
alphar16.0
WeightingFactorr6.0
CutoffInterr64
CoordinationNumbermExp69
s8,s9,a1,a2Functional dependent dispersion parameters, see equations above.
s6Parameter for scaling pairwise dipole–dipole dispersion interaction, should always be set to 1.0.
s10Parameter for pairwise quadrupole–quadrupole dispersion interactions, should be kept set to
## 0.0.

## 66CHAPTER 2. INPUT FORDFTB+
alphaZero damping exponent for three-body damping function.
WeightingFactorCoordination number based interpolation.
CutoffInter[length]Cutoff distance when calculating two-body interactions.
CoordinationNumberMethod to determine the coordination numbers. See 69 for details.
Example using adjusted parameters:
Dispersion = SimpleDftD3 {
a1 = 0.5719
a2 = 3.6017
s6 = 1.0
s8 = 0.5883
## }
DftD4
The DFT-D4 dispersion correction in  DFTB+  is an implementation of the D4 model by Stefan
Grimme and coworkers. It is based on the method described in Ref. [16].
This dispersion correction for DFTB adds a contribution to the general Kohn–Sham-like energy,
## E
## DFTB-D4
## =E
## DFTB
## +E
disp
## ,
withE
## DFTB
being the DFTB total energy andE
disp
the dispersion energy.  The latter contains two-
body and optional three-body contributions:
## E
disp
## =E
## (2)
disp
## +E
## (3)
disp
## .
The D4 model uses the Becke–Johnson damping function for two-body contributions:
## E
## (2)
disp
## =−
## 1
## 2
## ∑
## A̸=B
## ∑
n=6,8,10
s
n
## C
## AB
n
r
n
## AB
+f(R
## AB
## 0
## )
with
f(R
## AB
## 0
## ) =a
## 1
## R
## AB
## 0
## +a
## 2
## .
The zero-damping function for three-body contributions is:
## E
## (3)
disp
## =−
## ∑
## A
## ∑
## B
## B<A
## ∑
## C
## C<B
s
## 9
(3 cosθ
## A
cosθ
## B
cosθ
## C
## +1)
q
## C
## AB
## 6
## C
## BC
## 6
## C
## CA
## 6
## (r
## AB
r
## BC
r
## CA
## )
## 3
f
## (3)
## (r
## AB
## )
with
f
## (3)
## =
## 1
## 1+6
## 
f(R
## AB
## 0
)f(R
## BC
## 0
)f(R
## CA
## 0
## )
r
## AB
r
## BC
r
## CA
## 
α/3
## .
In order to adjust the dispersion for various energy functionals, the choice ofs
## 8
and the damping
parametersa
## 1
anda
## 2
are treated as functional-dependent values.  All other parameters are fixed
based on these parameters. Depending on the choice of thes
## 9
parameter non-additive triple-dipole

## 2.4. HAMILTONIAN67
contributions will be evaluated.  Including non-additive effects usually improves the description of
dispersion interactions, but is also more expensive.
As  the  DFTB  energy  functional  is  largely  determined  by  the  underlying  parameterisation  (the
Slater–Koster-files) and the chosen DFTB model (e.g. non-scc, scc, 3rd order, etc.), there are no
universal parameter choices which can be used with all settings, but some relevant choices for vari-
ous parameterisation are given in Appendix H.
DftD4 settings
Beside the functional dependent dispersion parameters, the options shown below can be adjusted in
the input.
s6r1.0
s8r
s10r0.0
s9r
a1r
a2r
alphar16.0
WeightingFactorr6.0
ChargeSteepnessr2.0
ChargeScaler3.0
CutoffInterr64
CutoffThreer40
CoordinationNumbermCov69
ChargeModelmEEQ or SelfConsistent68
AtomicNumbersm{}
s8,s9,a1,a2Functional dependent dispersion parameters, see equations above.
s6Parameter for scaling pairwise dipole–dipole dispersion interaction, should always be set to 1.0.
s10Parameter for pairwise quadrupole–quadrupole dispersion interactions, should be kept set to
## 0.0.
alphaZero damping exponent for three-body damping function, default is 16 as in DFT-D3.
WeightingFactorCoordination number based interpolation, 4.0 used in DFT-D3, default for D4
is 6.0.
ChargeScaleMaximum possible charge scaling, used as exponential value, should be kept set to
## 3.0.
ChargeSteepnessSteepness of the charge scaling function, should be kept set to 2.0.
CutoffInter[length]Cutoff distance when calculating two-body interactions.
CutoffThree[length]Cutoff distance when calculating three-body interactions.
AtomicNumbersAllows overwrite of atomic numbers associated with a species name.

## 68CHAPTER 2. INPUT FORDFTB+
DftD4 ChargeModel
This implementation of DFT-D4 supports theEEQ{}method to initialise the charge model with
an electronegativity equilibration (EEQ) model[82] as well as a self-consistent evaluation of the
dispersion withSelfConsistent{}.
For  the  electronegativity  equilibration  model  the  following  parameters  are  available.   For  each
species four parameters (Chi,Gam,Kcn, andRad) have to be supplied in aValues{}method, since
the model is instanciated inside theDftD4{}method,Defaults{}for all elements up to 86 can be
supplied automatically [16].
ChimDefaults
GammDefaults
KcnmDefaults
RadmDefaults
## Cutoffr40
EwaldParameterr0.0
EwaldTolerancer1.0e-9
CoordinationNumbermErf69
ChiElectronegativities of all species.
GamChemical hardnesses of all species.
KcnCN scaling factor of all species.
RadCharge width of all species in Bohr.
Cutoff[length]Cutoff distance when calculating electrostatics interactions under PBC.
EwaldParameterSets the splitting parameter in the Ewald electrostatic summation for periodic
calculations. This controls the fraction of the Ewald summation occurring in real and recipro-
cal space. Setting it to zero or negative activates an automatic determination of this parameter
(default and recommended behaviour).
EwaldToleranceSets the tolerance for Ewald summation in periodic systems.
ChargeModel = EEQ {
EwaldParameter = 0.25165824
EwaldTolerance = 1.0E-9
## Chi = Values {
## Ga = 1.15018618
## As = 1.36313743
## }
## Gam = Values {
Ga = 8.299615E-2
## As = 0.19005278
## }
## Kcn = Values {
Ga = -1.05627E-002
As = 7.657769E-002
## }

## 2.4. HAMILTONIAN69
## Rad = Values {
## Ga = 1.76901636
## As = 2.41244711
## }
## }
DftD4 CoordinationNumber
TheCoordinationNumberdetermines how the local coordination environment for its parent method
is calculated.  Currently four different counting functions are available:Erf{},Cov{},Gfn{}, and
Exp{}.Erf{}is the default coordination number for the EEQ charge model, whileCov{}is the
default coordination number for DFTD4.
ElectronegativitiesmPaulingEN
RadiimCovalentRadiiD3
## Cutoffr40
CutCNr0 / 8
RadiiCovalent radii of all species in Bohr. Default values taken are the DFTD3 covalent radii [31].
ElectronegativitiesElectronegativities of all species. Default values taken are Pauling ENs.
Cutoff[length]Cutoff distance when evaluating counting function.
CutCNMaximum value for coordination number,  coordination numbers higher than this value
will be smoothly cut away. Deactivated for values smaller or equal to zero. Default depends
on parent method.
CoordinationNumber = Cov {
CutCN = 0
Electronegativities = PaulingEN {}
Radii = CovalentRadiiD3 {}
## }
## TS
Applies the Tkatchenko-Scheffler dispersion model [94, 92].
The following keywords can be used with this dispersion model:
## Dampingr20.0
RangeSeparation0.94
ReferenceSet"TS"
DampingDamping factor.
RangeSeparationRange separation parameter. The default value is the DFTB LDA-value. Note,
that various DFTB-parametrisations may require different values.
ReferenceSetReference  values  for  the  free  atoms.   Possible  choices  areTS(mostly  used  for
molecules) andTSsurf(mostly used when calculating surfaces).

## 70CHAPTER 2. INPUT FORDFTB+
## MBD
Applies the Tkatchenko many-body-dispersion model [2, 92].
The following keywords can be used with this dispersion model:
## Betar0.83
NOmegaGridi15
KGrid3r
KGridShift0.5 0.5 0.5
VacuumAxisNo No No
ReferenceSet"TS"
BetaRange separation parameter. Default value is optimised for pure DFT LDA functionals. The
value may be different for various SK-sets.
NOmegaGrid[force]Number of integration points.
KGridMonkhorst-Pack-like k-point grid to integrate the Hamiltonian of the interacting dipoles
over the Brillouin-zone.   Note,  that this grid is independent from the k-point grid used to
integrate the atomic Hamiltonian.
KGridShift of the Monkhorst-Pack grid.
VacuumAxisSetYesfor each axis, where there is vacuum between the periodically repeated im-
ages of the central cell.
ReferenceSetReference  values  for  the  free  atoms.   Possible  choices  areTS(mostly  used  for
molecules) andTSsurf(mostly used when calculating surfaces).
## 2.4.17    DFTB3
If you would like to use what is called “DFTB3” in some publication(s) [29], this group of options
include the relevant modifications to the SCC Hamiltonian and energy.To enable the DFTB3 model
you will need to setThirdOrderFull = Yesand damp H–X the interactions (see Section 2.4.21).
ThirdOrderIf set toYestheon-site3rd order correction [101] is switched on.  This corrects the
SCC-Hamiltonian with the derivatives of the Hubbard U parameters, which you have to spec-
ify for every element inHubbardDerivs. This correction only alters the on-site elements and is
only maintained for backward compatibility.You should use the full versionThirdOrderFull
instead.
ThirdOrderFullIf set toYesthefull3rd order correction [29] is switched on.  This corrects the
SCC-Hamiltonian with the derivatives of the Hubbard U parameters, which you have to spec-
ify for every element inHubbardDerivs.
HubbardDerivsDerivatives of the Hubbard U for the 3rd order correction (on-site or full).  For
every element the appropriate parameter (in atomic units) must be specified. If you use shell
resolved SCC (with full 3rd order), you must specify a list of derivatives for every element,
with one Hubbard U derivative for each shell of the given element.
Hamiltonian = DFTB {
## :

## 2.4. HAMILTONIAN71
ThirdOrder = Yes
HubbardDerivs {
## O = -0.14
## H = -0.07
## }
## :
## }
## 2.4.18    Mdftb
TheMdftbkeyword specifies the use of a multipole expansion (mDFTB) [98]. TheMdftbkeyword
expects eitherNone(default – no use of multipole expansion), or theOneCenterApproximation(on-
site approximation) block as value. TheOneCenterApproximationblock has the following options:
OneCenterAtomIntegralsp{}
AtomDIntegralScalingsp{}
AtomQIntegralScalingsp{}
OneCenterAtomIntegralsSpecifies the atomic dipole and quadrupole integrals.  For each ele-
ment, appropriate parameters must be specified.
AtomDIntegralScalingsSpecifies empirical scaling factors for the atomic dipole integrals of each
element. The default value is 1.0 for all elements.
AtomQIntegralScalingsSpecifies empirical scaling factors for the atomic quadrupole integrals
of each element. The default value is 1.0 for all elements.
Example using mDFTB without empirical scaling atomic dipole and quadrupole moments:
Mdftb = OneCenterApproximation {
OneCenterAtomIntegrals = {
## H:S|XX|S = 0.55976
O:S|X|Px = 0.60894
## O:S|XX|S = 0.45215
O:Px|XX|Px = 0.83893
O:Py|XX|Py = 0.27964
## }
## }
Example using mDFTB with empirical scaling atomic dipole and quadrupole moments:
Mdftb = OneCenterApproximation {
OneCenterAtomIntegrals = {
## H:S|XX|S = 0.55976
O:S|X|Px = 0.60894
## O:S|XX|S = 0.45215
O:Px|XX|Px = 0.83893
O:Py|XX|Py = 0.27964
## }

## 72CHAPTER 2. INPUT FORDFTB+
AtomDIntegralScalings = {
## H = 1.0
## O = 0.2
## }
AtomQIntegralScalings = {
## H = 1.0
## O = 3.0
## }
## }
## 2.4.19    Implicit Solvation Model
## Generalised Born Model
In generalised Born (GB) theory,[74] a molecule is considered as continuous region with a dielectric
constantε
in
surrounded by infinite solvent with a dielectric constantε
out
## . Chargesq
## A
are located at
the atomic sites
## ⃗
## R
## A
and their interaction in the presence of a polarised solvent can be expressed as
the solvation energy
## ∆G
## GB
## =−
## 1
## 2
## 
## 1
ε
in
## −
## 1
ε
out
## 
## N
## ∑
## A=1
## N
## ∑
## B=1
q
## A
q
## B
## 
## R
## 2
## AB
## +a
## A
a
## B
exp
h
## −
## R
## 2
## AB
## 4a
## A
a
## B
i
## 1
## 2
## .(2.2)
wherea
## A/B
are the effective Born radii of the atoms A/B. The GB model is added to the Hamiltonian
as second order fluctuation in the charge density, similar to the coulombic interactions.
The Born radii are evaluated by an Onufriev–Bashford–Case (OBC) corrected pairwise approxima-
tion to the molecular volume given as
## 1
a
## A
## =
## 1
a
scale
## 
## 1
## R
cov
## A
## −R
offset
## −
## 1
## R
cov
## A
## ·tanh
## 
b
## OBC
## Ψ
## A
## −c
## OBC
## Ψ
## 2
## A
## +d
## OBC
## Ψ
## 3
## A
## 
## 
## (2.3)
wherea
scale
is a scaling factor for the Born radii,R
offset
is a global shift parameter for the covalent
radii anda/b/c
## OBC
are the coefficients for the volume polynomial in the OBC correction to the
Born radii.Ψ
## A
is the pairwise approximation to the volume integral given by
## Ψ
## A
## =
## R
cov
## A
## −R
offset
## 2
## ∑
## B
## Ω(R
## AB
## ,R
cov
## A
## ,s
## B
## R
cov
## B
## )(2.4)
withΩbeing the pairwise function used to approximate the volume integral, which is only depen-
dent on the distance and the covalent radii.  Note that, the covalent radius of the second atom is
scaled by the element-specific descreening values
## B
to compensate the systematic overestimation of
the volume by this approach.
To use the generalised Born model in the SCC procedure use theGeneralisedBorn{}/General-
izedBorn{}method  in  the  input  toSolvation.   The  non-polar  solvent  area  model  can  be  com-
binded  with  the  GB  model  enabling  to  additionally  correct  for  hydrogen  bonding,  the  resulting
model  is  called  GBSA.  The  parameters  for  the  GBSA  model  are  currently  available  athttps:
//github.com/grimme-lab/gbsa-parametersand can be read in withParamFileand will setup the
completeGeneralisedBorn{}input.
Note that the GB(SA) model implemented is only available for finite systems.

## 2.4. HAMILTONIAN73
ParamFiles
Solventmnot has ParamFile
FreeEnergyShiftr
## Temperaturer298.15 K
## Statesgsolv
KernelsStill
BornScaler
BornOffsetr
OBCCorrection3r1.00, 0.80, 4.85
CM5m75
RadiimvanDerWaalsRadiiD3
## Descreeningm
Cutoffr35 AA
SASAm78
HBondCorrlhas SASA
HBondStrengthmHBondCorr = Yes
ALPBlNo
AlpharALPB = Yes0.571412
ParamFileReads in a parameter file for GBSA, specifying this keyword automatically provides
theSolventinformation,  and  defaults  values  forFreeEnergyShift,BornOffset,BornScale,
SASA{} Descreening,HBondCorrandHBondStrength.  Usually no other keywords need to
be specified whenParamFileis present.
This file is additionally searched for in the directory specified with theDFTBPLUS_PARAM_DIR
environment variable.
Additional parameter sets are available from this repository.
SolventDescriptors of the solvent, can be load from a database by providing the solvent name as
string in theFromName{}method or by specifying the necessary values with theFromCon-
stants{}method.FromConstants{}requires the dielectric constant as real forEpsilon, the
molecular mass inMolecularMass [mass]and the solvent density inDensity [massdensity].
MolecularMassandDensityonly affect the calculation if “reference” is chosen as state of the
solution.
Available solvent names and associated constants are given in Appendix I.
FreeEnergyShift[energy]Shift for free energy calculations.
TemperatureTemperature for free energy calculations.  Default is ambient temperature:  298.15
K. Only affects the calculation for if “reference” or “mol1bar” is chosen as state of the solu-
tion.
State[energy]Reference state of the solution for free energy calculations.  The calculated state
shift is added to the free energy shift. Takes “gsolv” (default), “reference” or “mol1bar”. The
reference state “gsolv” corresponds to 1 l of ideal gas and 1 l of liquid solution, “reference”
corresponds to 1 bar of ideal gas and 1 mol/L of liquid solution at infinite dilution, “mol1bar”
corresponds to 1 bar ideal gas and 1 mol/L of liquid solution.
KernelInteraction kernel for the screened Coulomb operator.  Possible options are the canonical
“Still” kernel[90] and the “P16” kernel [53].
BornScaleValue for scaling of Born radii.

## 74CHAPTER 2. INPUT FORDFTB+
BornOffset[length]Offset value for Born radii calculation.
OBCCorrectionParameters for Onufriev–Bashfold–Case volume polynomial to correct Born radii
calculation.  The default values 1.0, 0.8, 4.85 correspond to GB
## OBC
II, alternatively 0.8, 0.0,
2.91 can be used for GB
## OBC
## I [73].
CM5Use  the  charge  model  5  to  correct  the  atomic  partial  charges  before  evaluating  the  Born
energy.
RadiiAtomic radii for each element in Bohr,  either takesVanDerWaalsRadiiD3{}for DFT-D3
van-der-Waals radii (can be overwritten) or requires to provideValues{}for all species. Both
methods accept[length]units.
DescreeningDescreening values for each species.  Disabled byUnity{}method or enabled by
providingValues{}for each species.
Cutoff[length]Real space cutoff for the calculation of the Born radii.
HBondCorrInclude an empirical hydrogen bond correction. Only available for GBSA models.
HBondStrengthHydrogen bonding strength for each species used in the empirical hydrogen bond
correction.  To disable the correction for species not involved in hydrogen bonding, set the
value to zero.
ALPBUse analytical lineared Poisson Boltzmann (ALPB) model[88] instead of Generalised Born.
The main difference is a molecular shape dependent contribution for charged systems.
AlphaAlpha parameter in the ALPB model, should be kept to 0.571412 which was derived from
first principles [88].
Example for a GB model with CS
## 2
as solvent:
Hamiltonian = DFTB {
Solvation = GeneralisedBorn { # GFN2-xTB/GBSA(CS2)
Solvent = fromName { "cs2" }
FreeEnergyShift [kcal/mol] = 2.81072250
Radii = vanDerWaalsRadiiD3 [Bohr] {}
## Descreening = Values {
## H = 0.93699367
## C = 0.83307834
## N = 1.02661619
## O = 0.96508008
## }
BornScale = 1.40636177
BornOffset [Bohr] = 1.653719965215E-03
OBCCorrection = {1.00 0.80 4.85}
## Cutoff = 40
## }
## }
Example for a GBSA model for water

## 2.4. HAMILTONIAN75
Hamiltonian = DFTB {
Solvation = GeneralisedBorn { # GFN2-xTB/GBSA(water)
Solvent = fromConstants {
## Epsilon = 80.2
MolecularMass [amu] = 18.0
## Density [kg/l] = 1.0
## }
FreeEnergyShift [kcal/mol] = 1.16556316
BornScale = 1.55243817
BornOffset = 2.462811043694508E-02
Radii = vanDerWaalsRadiiD3 {}
## Descreening = Values {
## H = 0.71893869
## C = 0.74298311
## N = 0.90261230
## O = 0.75369019
## }
## SASA {
ProbeRadius = 1.843075777670416
Radii = vanDerWaalsRadiiD3 {}
SurfaceTension = Values {
## H = -3.34983060E-01
## C = -7.47690650E-01
## N = -2.31291292E+00
## O = 9.17979110E-01
## }
## }
HBondCorr = Yes
HBondStrength = Values {
## H = -7.172800544988973E-02
## C = -2.548469535762511E-03
## N = -1.976849501504001E-02
## O = -8.462476828587280E-03
## }
## }
## }
## Charge Model 5
The charge model 5 (CM5)[62] can be used to correct partial charges by
q
## CM5
## A
## =q
## A
## +
## ∑
## B
## D
## A–B
exp[−α(R
## AB
## −R
cov
## A
## −R
cov
## B
## ](2.5)
The pairwise parametersD
## A–B
are fixed to the original published ones, while the exponentαand
the covalent radiiR
cov
## A
default to the published parameters but can be adjusted in the input.
alphar2.474 1/AA
RadiimatomicRadii{}
## Cutoffr30.0

## 76CHAPTER 2. INPUT FORDFTB+
alpha[1/length]Exponent of the CM5 correction.
RadiiAtomic covalent radii for each species, either takesAtomicRadii{}for default atomic radii[60]
(can be overwritten) or requires to provideValues{}for all species.  Both methods accept
## [length]units.
Cutoff[length]Real space cutoff for the calculation of the CM5 correction.
## CM5 {
## Alpha = 1.30918451402600
Radii = AtomicRad {}
## }
Conductor like screening model
The conductor like screening model (COSMO)[45] allows to include dielectric screening effects
in quantum chemical calculations.  DFTB+ uses the fast domain decomposition algorithm[58] to
minimise the overhead of solving the COSMO equations in the SCC iterations.
In the domain decomposition algorithm the solvation energy is given by
## E
solv
## =
## 1
## 2
## 
## 1
ε
in
## −
## 1
ε
out
## 
## N
atoms
## ∑
j=1
## N
basis
## ∑
l=0
l
## ∑
m=−l
## [Ψ
j
## ]
m
l
## [X
j
## ]
m
l
## (2.6)
whereN
basis
is the maximum degree of the expansion in spherical harmonics,[Ψ
j
## ]
m
l
describes the
interaction of the tight-binding Hamiltonian with the spherical harmonics and[X
j
## ]
m
l
are the local
solution of the block sparse COSMO equation
LX=g(2.7)
The right-hand-side of the system of equations depends on the solute potential at the cavity by
## [g
j
## ]
m
l
## =
## N
grid
## ∑
n=1
w
n
## Y
m
l
## (⃗y
n
## )U
j
n
## Ψ
j
n
## (2.8)
whereΨ
j
n
is the solute’s potential at then-th grid point.
FreeEnergyShiftr0.0 Eh
## Temperaturer298.15 K
## Statesgsolv
AngularGridi
RadiimvanDerWaalsRadiiD3
RadiiScalingr1.0
SolvermDomainDecomposition
SASAm78
SolventDescriptors of the solvent, can be load from a database by providing the solvent name as
string in theFromName{}method or by specifying the necessary values with theFromCon-
stants{}method.FromConstants{}requires the dielectric constant as real forEpsilon, the
molecular mass inMolecularMass [mass]and the solvent density inDensity [massdensity].
MolecularMassandDensityonly affect the calculation if “reference” is chosen as state of the
solution. SettingEpsilontoInfresults in the ideal conductor limit.
Available solvent names and associated constants are given in Appendix I.

## 2.4. HAMILTONIAN77
FreeEnergyShift[energy]Shift for free energy calculations.
TemperatureTemperature for free energy calculations.  Default is ambient temperature:  298.15
K. Only affects the calculation for if “reference” or “mol1bar” is chosen as state of the solu-
tion.
State[energy]Reference state of the solution for free energy calculations.  The calculated state
shift is added to the free energy shift. Takes “gsolv” (default), “reference” or “mol1bar”. The
reference state “gsolv” corresponds to 1 l of ideal gas and 1 l of liquid solution, “reference”
corresponds to 1 bar of ideal gas and 1 mol/L of liquid solution at infinite dilution, “mol1bar”
corresponds to 1 bar ideal gas and 1 mol/L of liquid solution.
AngularGridSize  of  the  angular  Lebedev–Laikov  integration  grid  [55].   The  grid  size  mainly
determines the computational cost of solving the COSMO equations, too small grid sizes can
lead to significant errors due to missing rotational invariance.  Possible values are 6, 14, 26,
38, 50, 74, 86, 110, 146, 170, 194, 230, 266, 302, 350, 434, 590, 770, 974, 1202, 1454, 1730,
## 2030, 2354, 2702, 3074, 3470, 3890, 4334, 4802, 5294, 5810.
RadiiAtomic radii for each element, either defaults toVanDerWaalsRadiiD3{}for DFT-D3 van-
der-Waals radii (can be overridden) or requires to provideValues{}for all species.   Both
methods accept[length]units. Alternatively,VanDerWaalsRadiiCosmo{}andVanDerWaal-
sRadiiBondi{}can be used to provide van-der-Waals radii.   Note that Bondi radii[61] are
only available for main group elements and COSMO optimised radii default to 2.223 AA if
no optimised values are available.
RadiiScalingAllows to scale the provided radii by the provided value. Values greater one between
1.3 and 1.5 are recommended when using DFT-D3 van-der-Waals radii, while for Bondi radii
usually values between 1.2 and 1.3 are used. COSMO optimised radii should be used with a
scaling factor of unity.
Solverfor the COSMO equation.  Currently onlyDomainDecomposition{}is implemented (de-
fault). If specified explicitely, following parameters can be set:
MaxMomentMaximum moment for spherical harmonic expansion in the ddCOSMO equa-
tions. Moments of 6 and higher are recommended.
Regularisation/RegularizationRegularisation factor for the ddCOSMO equation. A value
of 0.2 is recommended
AccuracyConvergence criteria for the ddCOSMO equations, this value effects the cost of
the solver in the self-consistent charge iterations. The convergence thresholds are auto-
matically decreased for the gradient calculations to avoid numerical noise.
Example for a COSMO model
## Hamiltonian = Dftb {
## Solvation = Cosmo {
Solvent = FromConstants {
## Epsilon = 80.2
MolecularMass [amu] = 18.0
## Density [kg/l] = 1.0
## }
FreeEnergyShift [kcal/mol] = 0.0

## 78CHAPTER 2. INPUT FORDFTB+
Radii = VanDerWaalsRadiiD3 {}
RadiiScaling = 1.55
AngularGrid = 110
Solver = DomainDecomposition {
MaxMoment = 10
## Accuracy = 1e-8
## Regularisation = 0.2
## }
## }
## }
Solvent area model
The  non-polar  solvation  free  energy  can  be  estimated  from  the  solvent  accessible  surface  area
(SASA) by
## ∆G
non-polar
## =
## ∑
## A
γ
## A
σ
## A
## (2.9)
whereγ
## A
is the surface tension andσ
## A
is the accessible surface area of each atom. To calculate the
latter, the molecule is assumed as a convolution of spheres which is probed by a probe sphere rolled
around the surface. Here a smooth numerical integration approach is employed [42].
To use the non-polar surface area model in an calculation use theSASA{}method in the input to
Solvation. This model is currently only available for finite systems.
ProbeRadiusr
Smoothingr0.3 AA
Offsetr2.0 AA
## Tolerancer1.0e-6
AngularGridi230
RadiimvanDerWaalsRadiiD3
SurfaceTensionm
ProbeRadius[length]Radius of the probe sphere used to determine the accessible surface area.
Smoothing[length]Smoothing parameter for numerical integration.
Offset[length]This offset value is added on the realspace cutoff radius for the neighbourlist gen-
eration.  The realspace cutoff is determined automatically from the probe radius, the largest
atomic radius and the smoothing parameter.
ToleranceMinimal value of surface area contribution of a grid point to be accounted for as SASA.
AngularGridSize  of  the  angular  Lebedev–Laikov  integration  grid  [55].   The  grid  size  mainly
determines the computational cost of evaluating the accessible surface area, too small grid
sizes can lead to significant errors due to missing rotational invariance. A safe choice should
be 230 grid points per atom. Possible values are 6, 14, 26, 38, 50, 74, 86, 110, 146, 170, 194,
230, 266, 302, 350, 434, 590, 770, 974, 1202, 1454, 1730, 2030, 2354, 2702, 3074, 3470,
## 3890, 4334, 4802, 5294, 5810.
RadiiAtomic radii for each element, either takesVanDerWaalsRadiiD3{}for DFT-D3 van-der-
Waals radii (can be overwritten) or requires to provideValues{}for all species. Both methods
accept[length]units.

## 2.4. HAMILTONIAN79
SurfaceTensionSurface tension parameter for each species in dyn/cm.
Hamiltonian = DFTB {
Solvation = SASA { # GFN1-xTB/GBSA(Toluene)
ProbeRadius [AA] = 1.59772343
Smoothing [AA] = 0.3
Offset [AA] = 2
AngularGrid = 230
Radii = vanDerWaalsRadiiD3 {}
SurfaceTension = Values {
## H = -1.52312760
## C = -2.92375089
## O = 0.79482640
## }
## }
## }
External electric fields and dipole moments
For externally applied homogeneous electric fields (see section 2.4.14) where the solvent modifies
the dielectric surroundings, DFTB+ can approximate the local field corrections as due to a spherical
cavity surrounding the solvated system.  The applied field in the external medium is then rescaled
by
## ⃗
## E
e f f.
## =
## ⃗
## E
ext.
## 3ε
r
## 2ε
r
## +1
Likewise the dipole moment of the system is scaled to give the corresponding field in the external
medium:
## ⃗
μ
ext.
## =
## ⃗
μ
## 3ε
r
## 2ε
r
## +1
The rescaling can be turned off with the following keyword:
RescaleSolvatedFieldslYes
RescaleSolvatedFieldsEnables  or  disables  field  scaling  for  applied  homogeneous  fields  and
dipole moments.
2.4.20    Halogen corrections
TheHalogenXCorrkeyword  includes  the  halogen  correction  of  Ref.  [52].   This  is  fitted  for  the
DFTB3-D3 model and the3ob-3-1parameter set.  The correction is only relevant for systems in-
cluding interactions between {O,N}–{Cl,Br,I} pairs of atoms.
2.4.21    Hydrogen corrections
There are currently two available methods to correct hydrogen interactions (mainly hydrogen bonds)
in theHCorrectionenvironment:

## 80CHAPTER 2. INPUT FORDFTB+
## Damping
TheDampingmethod modifies the short range contribution to the SCC interaction between atoms
AandBwith the damping factor
e
## −
## 
## U
## Al
## +U
## Bl
## 2
## 
ζ
r
## 2
## AB
provided that at least one of the two atoms is hydrogen [29, 101].  (U
## Al
andU
## Bl
are the Hubbard
U  values  of  the  two  atoms  for  thel-shell,r
## AB
is  the  distance  between  the  atoms.)   An  atom  is
considered to be a hydrogen-like atom, if its mass (stored in the appropriate homonuclear SK-file)
is less than 3.5 amu. TheExponentkeyword in this environment sets the parameterζfor the short
range damping:
HCorrection = Damping {
## Exponent = 4.05
## }
Table 2 of reference [29] gives suggested values of the exponent for different DFTB2 and DFTB3
models applied to light atoms bonded to hydrogen.
## DFTB3-D3H5
DFTB3-D3H5 [83] is a variant of DFTB3 with additional corrections for non-covalent interactions
(dispersion  and  hydrogen  bonds).   It  consists  of  a  third-order  DFTB  calculation  using  the  3OB
parameter set,  but where the gamma-function damping (Dampingmethod above) is replaced by
the H5 correction and an additional D3 dispersion correction in included.   This method also in-
cludes a repulsive term which is added to prevent unphysically close approach of pairs of hydrogen
atoms [84].
Setting theHCorrectionenvironment toH5{}activates this correction for hydrogen bonds [83].  If
no additional parameters are provided in the input, suitable values for H-{O,N,S} systems are used
(the correction was developed for the DFTB3/3OB model and parameters).
HCorrection = H5 {}
Note:It was found that DFTB3 overestimates the strength of H-bonds involving the terminal nitro-
gen of an azide group, and the published results in Ref. [83] were obtained with the H5 correction
switched off for these specific atoms.  To reproduce this behavior in a system containing nitrogen
in several environments, a new atom type with a different name but the same DFTB parameters can
be used for specific N atoms to which the correction should not be applied.
If you want to specify the parameters manually,H5accepts following options, corresponding to
terms in Ref. [83]:
RScalingr0.714
WScalingr0.25
H5Scalingm
RScalingGlobal scaling factor,s
r
, when calculating the position of the correcting gaussian func-
tions:
r
## 0
## =s
r
## (r
vdW
(X)+r
vdW
## (H)).

## 2.4. HAMILTONIAN81
WScalingGlobal scaling factor,s
## W
, when calculating the width of the correcting gaussian func-
tions. The full-width at at half-maximum of the gaussian,w, is normalised to be 1 for a unit
value ofWScaling:
w=
s
w
## (r
vdW
(X)+r
vdW
## (H))
## 2
## √
2 ln 2
## .
H5ScalingAtom type specific scaling pre-factor,k
## XH
, of the correcting gaussian functions when
calculating the SCC-interaction:
γ
## H5
## XH
## =γ
## XH

## 1+k
## XH
exp

## −
## (r
## XH
## −r
## 0
## )
## 2
## 2w
## 2
## !!
## .
You will have to specify one value for each of the chemical species you would like to correct
(see the example below). Explicitly setting a negative value (e.g.-1.0) for a given atom type
switches off the correction for hydrogen bonds involving that type of atom.  In the special
cases of N, O or S, if you do not specify a value (and do not disable the contribution by using
-1.0), the default value from the reference paper will be used [83].  For any other omitted
atom types, the code defaults to a choice of-1.0(no correction).
Hamiltonian = DFTB {
## :
HCorrection = H5 {
RScaling = 0.714
WScaling = 0.25
H5Scaling {
## O = 0.06
## N = 0.18
## S = 0.21
## }
## }
## :
## }
Note:The van der Waals radii (r
vdW
) of atoms are also required.  DFTB+ stores these for most
of the periodic table,  but for cases that are not available their contribution to this correction are
neglected.
For a DFTB3-D3H5 calculation,  a specific parametrisation of the D3 dispersion has to be used.
In addition to setting up appropriate values of the D3 parameters,  as discussed in Ref. [83],  the
hydrogen–hydrogen repulsion of Ref. [84] has to also be activated. The complete input is:
Hamiltonian = DFTB {
## :
Dispersion = DftD3 {
Damping = ZeroDamping {
sr6 = 1.25
alpha6 = 29.61
## }
s6 = 1.0
s8 = 0.49
HHRepulsion = Yes

## 82CHAPTER 2. INPUT FORDFTB+
## }
## :
## }
## 2.4.22    Hybrid
TheHybridkeyword specifies the use of a (range-separated) hybrid functional. For the non-periodic
formalism we refer to Refs. [68, 59], whereas the formalism for periodic boundary conditions is
developed in Ref. [97].  The DFTB implementation is derived from the DFT approach, where the
electron-electron interaction is partitioned into short- and long-range contributions
## 1
r
## =
## 1−(α+β)+βe
## −ωr
r
## |{z}
## DFT
## +
α+β(1−e
## −ωr
## )
r
## |{z}
## HF
## ,
where the short-range part is handled by a modified pure density functional, while the exact Fock
exchange enforces the correct asymptotic decay in the long-range.   The parametersα,βandω
determine the fraction of global and long-range Fock exchange, as well as the value of the smooth
range-separation function, that is of Yukawa type.α,βandωare read from the Slater-Koster files.
TheHybridkeyword expects eitherNone(default – no use of hybrid functional),Global{} (global
hybrid functional with a static fraction of Fock-type exchange),LC{} (purely long-rage corrected
hybrid functional) or theCAM{} (general partitioning of the electron-electron interaction according
to the Coulomb-attenuating method) block as value.Global{} andLC{} are special cases ofCAM{}
with 0<α≤1,β=0 andα=0,β=1 respectively.   If the provided parametrization was not
created for the respective hybrid xc-functional, DFTB+ will issue an error message and halt. Before
running a calculation it is therefore required to infer the type of hybrid functional from the SK-files.
Note: Hybrid functionals can be used with spin-polarization (43). Non-collinear spins are currently
only available for non-periodic geometries and theMatrixBased{}screening algorithm.
The blocksGlobal{},LC{} andCAM{} have the following options:
ScreeningmThresholded {}
CoulombMatrixmPeriodic = YesTruncated {}
ScreeningChoice of the screening method. The following choices are possible:
Thresholded{}Screening according to estimated magnitude of terms.  This is faster than
theNeighbourBasedmethod below, but does not support all of the cases (restarting and
spin-polarisation).
## Thresholdr1e-6
CutoffReductionr0.0
ThresholdThreshold, below which elements are considered to be zero.
CutoffReduction[length]Reduces the spatial cutoff, beyond which the overlap be-
tween atoms is considered to be zero.  This can be used as an additional tweak to
speed up the hybrid-calculation, but test whether this does not change your results
considerably. Default: 0.0 – no reduction, using the cutoff from the SK-files.
Note:  The thresholded algorithm is only available for non-periodic systems and does
neither support colinear spin polarization, restarts nor MPI parallelism.

## 2.4. HAMILTONIAN83
NeighbourBased{}Uses a purely neighbour-list based algorithm.  This algorithm is usu-
ally considerably slower than theThresholded.
ThresholdrPeriodic = Yes1e-6
CutoffReductionr0.0
CutoffReduction[length]See description in theThresholdedblock.
ThresholdSee description in theThresholdedblock.
Note: Except for quasi-1D systems the neighbour-list based algorithm is usually consid-
erably slower than the matrix-based (or thresholded) algorithm. For systems treated be-
yond theΓ-point the neighbour-list based algorithm supports MPI parallelism. Collinear
spin polarization and analytic energy gradients (spin-unpolarized calculations) are avail-
able throughout.
MatrixBased{}Based on the multiplication of dense, square, dual-space density and over-
lap matrices. For small to medium sized systems, this method issignificantly fasterthan
the other two algorithms.
Note:  The matrix-based algorithm is available, and is therecommended choice, for
non-periodic and periodic systems, including calculations beyond theΓ-point.  It sup-
ports analytic energy gradients (spin-unpolarized calculations), collinear spin polariza-
tion and MPI parallelism. Restarting calculations however is not yet supported for MPI
enabled binaries in combination with non-periodic systems orΓ-point calculations.
CoulombMatrixChoice ofγ-electrostatics. The following options are available:
Truncated {}Truncated Coulomb operator of Ref. [89].
CoulombCutoffrcoupled to lattice vectors and k-point sampling
GSummationCutoffrcalculated based on CoulombCutoff value
CoulombCutoff[length]Spatial cutoff beyond whichγ-integrals are truncated to avoid the
artificial  Born–von  Kármán  periodicity  of  the  density  matrix  for  finite  k-point  sam-
plings.
GSummationCutoff[length]Spatial cutoff of g-summations of Ref. [97]. Usually a modi-
fication of the default value by the user is not necessary. Change only if you know what
you are doing.
Note: Recommended choice for most calculations, especially if analytic energy gradients are
required, i.e. geometry relaxation or MD simulations.
TruncatedAndDamped {}Identical toTruncatedblock, but with additional fifth-order polyno-
mial damping to zero, instead of hard truncation.
CoulombCutoffrsee Truncated block
GSummationCutoffrsee Truncated block
CoulombCutoff[length]See description in theTruncatedblock.
GSummationCutoff[length]See description in theTruncatedblock.
MinimumImage {}Adaption of the minimum image convention (MIC) to avoid divergent lattice
sums.
WignerSeitzReductioni0

## 84CHAPTER 2. INPUT FORDFTB+
WignerSeitzReductionNumber of unit cells to remove from the outer shell of the Wigner-
Seitz cell of the Born–von Kármán superlattice while carrying out the g-summations.
Usually the default value does not need to be changed by the user, since convergence is
established with increasingly fine k-point sampling.
Note:  Usually slightly slower than the truncated Coulomb operator.  Does not yet support
analytic energy gradients, i.e. atomic forces.
Full {}Full, unaltered Coulomb operator.  This option only exists for testing and debugging pur-
poses, do NOT use for production runs.
GSummationCutoffr
GSummationCutoff[length]See description in theTruncatedblock.
Examples: non-periodic systems
Example for thresholded screening with customised threshold value (shown for a purely long-range
corrected functional):
Hybrid = LC {
## Screening = Thresholded {
## Threshold = 1e-5
## }
## }
Example for neighbour-list based screening with customised cutoff reduction (shown for a purely
long-range corrected functional):
Hybrid = LC {
Screening = NeighbourBased {
CutoffReduction [AA] = 2.0
## }
## }
Example for matrix-matrix multiplication based method (shown for a purely long-range corrected
functional):
Hybrid = LC {
Screening = MatrixBased {}
## }
Examples:Γ-point calculations
Example for neighbour-list based screening with customised screening threshold and Coulomb cut-
off (shown for a global hybrid functional):
## Hybrid = Global {
CoulombMatrix = Truncated {

## 2.4. HAMILTONIAN85
CoulombCutoff = 20.0
## }
Screening = NeighbourBased {
## Threshold = 1e-05
## }
## }
Example for matrix-matrix multiplication based method (shown for a general range-separated func-
tional):
Hybrid = CAM {
Screening = MatrixBased {}
## }
Examples: calculations with k-points
Example for neighbour-list based screening with customised screening threshold and Coulomb cut-
off (shown for a global hybrid functional):
## Hybrid = Global {
CoulombMatrix = Truncated {
CoulombCutoff = 25.0
## }
Screening = NeighbourBased {
## Threshold = 1e-05
## }
## }
Example for neighbour-list based screening with customised screening threshold and MIC algo-
rithm (shown for a general range-separated functional):
Hybrid = CAM {
CoulombMatrix = MinimumImage {}
Screening = NeighbourBased {
## Threshold = 1e-07
## }
## }
2.4.23    On site corrections
This block enables corrections for on-site matrix elements which improve the description of multi-
centre integrals [28] leading to, for example, improved hydrogen-bond energies [21].
For each chemical species, the spin-same-spin and spin-different-spin constants should be specified
for all combinations of atomic shells.note:the matrix of constants is symmetric and the purely
s-with-s entries are zero (the code ignores their value due to symmetry).
## Example:

## 86CHAPTER 2. INPUT FORDFTB+
OnSiteCorrection= {
# same spin oxygen
## Ouu = {0.00000 0.08672
## 0.08672 -0.00523}
# hetero-spin oxygen
## Oud = {0.00000 0.14969
## 0.14969 0.03834}
# H all zero
## Huu = {0}
## Hud = {0}
## }
Some on-site constants are given in appendix J.
## 2.4.24    Differentiation
Calculations  of  forces  currently  require  the  numerical  derivatives  of  the  overlap  and  non-self-
consistent Hamiltonian. This environment controls how these derivatives are evaluated.
Note:In earlier DFTB+ versions (up to version 1.2), differentiation was done using finite difference
derivatives with a step size of 0.01 atomic units.  If you want to reproduce old results, choose the
FiniteDiffmethod and set the step size explicitly to this value.
FiniteDiff{}
Finite difference derivatives with a specified step size
## Deltarepsilon
## 1
## /4
Delta[length]Step size
## Richardson{}
Extrapolation of finite difference via Richardson’s deferred approach to the limit (in principle the
most accurate of the currently available choices).
2.4.25    ForceEvaluation
Chooses the method for evaluating the electronic contribution to the forces.
’traditional’Uses the “traditional” DFTB-force expression, given for example, in Ref. [25].
’dynamics’Force expression from Ref. [6]. This choice should be used if forces are being calcu-
lated with non-converged charges (e.g. when doing XLBOMD dynamics).Note:this force
expression is only compatible with the Fermi filling (see keywordFilling, p. 51.)
’dynamicsT0’Simplified dynamic force expression valid for electronic temperatureT=0 K [6].
This choice should be used if forces are calculated with non-converged charges and the elec-
tronic temperature is zero (e.g. when doing XLBOMD dynamics atT=0 K).

## 2.5. OPTIONS87
Note:that XLBOMD calculations (Section 2.3.8) are not able to use the’traditional’forces.
## Example:
ForceEvaluation = ’dynamics’
## 2.5    Options
This block collects some global options for the run.
WriteAutotestTaglNo
WriteDetailedXMLlNo
WriteResultsTaglNo
WriteDetailedOutlYes
RestartFrequencyiDriver = {}, SCC = Yes20
RandomSeedi0
MinimiseMemoryUsagelNo
TimingVerbosityi0
ShowFoldedCoordslPeriodic = YesNo
WriteHSlNo
WriteRealHSlNo
ReadChargesAsTextlReadInitialCharges = YesNo
WriteChargeslYes
WriteChargesAsTextlNo
SkipChargeTestlReadInitialCharges = YesNo
BinaryAccessTypess | 2s"stream"
MDOutputpMD = Yes{}89
WriteAllAtomGeometrylNo
WriteAutotestTagTurns the creation of theautotest.tagfile on and off. (This file can get quite
big and is only needed for the autotesting framework.)
WriteDetailedXMLTurns the creation of thedetailed.xmlfile on and off.  (Thedetailed.xmlfile
is needed among others by thewaveplotutility for visualising molecular orbitals.)
WriteResultsTagTurns the creation of theresults.tagfile on and off. (That file is used by several
utilities processing the results of DFTB+.) For a description of the file format see p. 112.
WriteDetailedOutControls the creation of the filedetailed.out(see p. 111).  Since this contains
the detailed information about the last step of your run, you shouldn’t turn it off without good
reasons.
RestartFrequencySpecifies the interval at which charge restart information should be written to
disc for static SCC calculations. Setting it to0prevents the storage of restart information. If
running an MD calculation, see also section 2.3.8 regardingMDRestartFrequency.
RandomSeedSets the seed for the random number generator. The value0causes random initial-
isation.  (This value can be used to reproduce earlier MD calculations by setting the initial
seed to the same value.)
MinimiseMemoryUsage/MinimizeMemoryUsageTries to minimise memory usage by stor-
ing various matrices on disc instead of keeping them in memory.  Set it toYesto reduce the

## 88CHAPTER 2. INPUT FORDFTB+
memory requirement for calculations with many k-points or spin polarisation.  Note:  Cur-
rently this option has no effect and you will get a warning if setting it to beYes.
TimingVerbosityLevel of information regarding CPU and wall clock timings of sections of the
code, higher values becoming more verbose. Setting this parameter to 0 or below suppresses
any information being printed (default). Setting it to -1 includes all measured timings.
ShowFoldedCoordsPrint coordinates folded back into the central cell, so if an atom moves out-
side the central cell it will reappear on the opposite side.  The default behaviour is to use
unfolded coordinates in the output.   (Please note,  that this option only influences how the
coordinates are printed and written, it does not change the way, periodic systems are treated
internally.)
WriteHSInstructs the program to build the square Hamiltonian and overlap matrices and write
them to files.  The output files arehamsqrN.datandoversqr.dat, whereNenumerates the
spin channels. For a detailed description of the file format see p. 113.
Note:If either of the optionsWriteHSorWriteRealHSare set toYes, the program only builds
the matrices, writes them to disc and then stops immediately.  No diagonalisation, no SCC-
cycles or geometry optimisation steps are carried out.  You can use theReadInitialCharges
option to build the Hamiltonian with a previously converged charge distribution.
WriteRealHSInstructs the program to build the real space (sparse) Hamiltonian and overlap ma-
trices and write them to files. The output files arehamreal.datandoverreal.dat. For a detailed
description of the file format see p. 113.
Note:If either of the optionsWriteHSorWriteRealHSare set toYes, the program only builds
the matrices, writes them to disc and then stops immediately.  No diagonalisation, no SCC-
cycles or geometry optimisation steps are carried out.  You can use theReadInitialCharges
option to build the Hamiltonian with a previously converged charge distribution.
ReadChargesAsTextIfNo, the program expects the filecharges.binto contain starting charges
stored in binary.  IfYes, thencharges.datshould contain a text file of this data.  See section
## 3.7.
WriteChargesTurns the creation of thecharges.bin(orcharges.dat) file on and off.  (This might
e.g. prove to be useful to avoid unnecessary I/O load during geometry optimization or MD, if
a later restart of the calculation is not needed.)
WriteChargesAsTextIfNo, the program stores charges in the binary filecharges.bin, while if
Yesthencharges.datcontains text of this data. See section 3.7.
SkipChargeTestIfYes, testing of whether the charges read from file match the total charge (and
magnetisation) specified in the DFTB+ input (if relevant) is performed.  Skipping this test
(setting toNo) may be useful if restarting from a charges generated for a similar system with
slightly different total charge or magnetisation.  Similarly,  in the event of serious instabil-
ities in the SCC cycle, the generated charge restart file may fall outside of the check-sum
tolerances, hence this option allows a re-start. Finally, in the case of user editedcharges.dat
file (see section 3.7), the check-sum this option removed the requirement that the checksum
values in the file match the charges.
BinaryAccessTypesSpecifies the default access format for binary (non-human-readable) files. It
contains either one string specifying the same type for both reading and writing those files, or
two strings separately specifying the types for reading and writing. Each value must be either
"stream"or"sequential". The default is"stream"for both actions.

## 2.6. ANALYSIS89
Starting  with  version  23.1,  DFTB+  consistently  uses  stream-I/O  for  binary  files  in  order
to produce files (e.g.eigenvec.bin,charges.bin, etc.), which can be processed by programs
written  in  other  languages  (Python,  C).  In  earlier  versions  most  binary  files  were  written
using sequential I/O, which were not transferable between languages or even between Fortran
compilers. You can read in or write out files in this old format by setting the appropriate action
to"sequential".
## Example:
# Use old sequential I/O for input and output of binary files
BinaryAccessTypes = "sequential"
# Use the old format when reading and the new format when writing binary files
BinaryAccessTypes = "sequential" "stream"
WriteAllAtomGeometryWrites  the  extended  geometry,  expanded  according  to  the  boundary
conditions to an internally required cut-off, as an xyz file, based on the name of theOut-
putPrefix, with “extendedGeom_” prepended. This is primarily a debugging tool, but shows
the atoms outside of the central cell for calculations for structures including periodic or trans-
port calculations.  The cutoff will depend on the type of calculation, but will be the longest
interaction distance considered in real-space by the code.Note:The structure uses the in-
ternal representation of neighbouring atoms, which only includes one triangle of the external
replicated atoms.
2.5.1    MDOutput
Options controlling output of data during molecular dynamics calculations.
AppendBandOutlNo
DerivativeslPrintforces = YesYes
ChargeslMullikenAnalysis = YesYes
AtomEnergieslWriteAtomicEnergies = YesYes
AppendBandOutIf enabled, add the band structure for the current geometry toband.outevery
MDRestartFrequencysteps. If set toNo, only the band structure for the most recent geometry
is stored in that file.
DerivatvesIf enabled, save forces (and stress if periodic) data inmd.out.
ChargesIf enabled, save charges and charge related quantities.
AtomEnergiesIf enabled, save atom resolved energies.
## 2.6    Analysis
This block collects some options to analyse the results of the calculation and/or calculate properties.

## 90CHAPTER 2. INPUT FORDFTB+
AtomResolvedEnergieslNo
MullikenAnalysislYes
WriteCosmoFilelNo
CM5mMullikenAnalysis = Yes75
WriteNetChargeslMullikenAnalysis = YesNo
ProjectStatesm{}
## Localisem{}
WriteEigenvectorslNo
EigenvectorsAsTextlWriteEigenvectors = YesNo
WriteBandOutlYes
PrintforceslNo
ElectrostaticPotentialmSCC = Yes{}92
PolarisabilitymHamiltonian = DFTB{}94
ResponseKernelmHamiltonian = DFTB{}94
CoordDerivativeslNo
AtomResolvedEnergiesSpecifies whether the contribution of the individual atoms to the total
energies should be displayed or not.
MullikenAnalysisIfYes, the results of a Mulliken analysis of the system is given.
WriteNetChargesIfYes, the net charges (component of the charge associated only with the on-
site part of the atomic orbitals, not the off-site hybridisation).
WriteCosmoFileIfYes,  the cavitity information is written to dftbp.cosmo.   Only works if the
solvation model is COSMO.
CM5If present the charge model 5 (CM5)[62] corrected atomic partial charges will be written.
WriteEigenvectorsSpecifies, if eigenvectors should be printed ineigenvec.bin. For a description
of the file format see p. 114.
EigenvectorsAsTextIf eigenvectors are being written, specifies if a text version of the data should
be printed ineigenvec.out. For a description of the file format see p. 114.
WriteBandOutControls the creation of the fileband.outwhich contains the band structure in a
more or less human friendly format.
Note: in the case ofnonAufbau{}calculations (See p. 52), separate files are written for each
configuration, prepended by the name of the state. Thes
## 1
state will be spin contaminated, so
if used for density of states will require processing according to the Ziegler sum rule [106].
PrintforcesIfYes, forces are reported, even if not needed for the actual calculation (e.g. static
geometry calculation).
CoordDerivativesCalculate second derivatives with respect to atomic positions (currently only
molecular boundary conditions and serial calculations for non-SCC or SCC DFTB). Deriva-
tives of the band structure are written todBand_dx.out, and Born effective charges are eval-
uated.

## 2.6. ANALYSIS91
2.6.1    ProjectStates
ProjectStatesevaluates  the  Mulliken  projection  of  electronic  states  onto  specific  regions  of  the
system being modelled (partial density of states – PDOS). The format of the projected data files is
similar toband.out, but the second column is the fraction of the state within that region, instead of
its occupation number (for non-collinear and spin-orbit calculations, three additional columns for
the magnetisation of the state are also given).
Each region for projection is specified within aRegion{}block, with the following options
## Atoms(i|s)+-
ShellResolvedlNo
OrbitalResolvedlNo
## Labels"regioni"
ShellResolvedProject onto separate atomic shells of the region.  These are taken in order of in-
creasing shell number of the atoms.ShellResolved = Yesis only allowed, if all the selected
atoms are of the same type.
OrbitalResolvedProject onto separate atomic orbitals of the region.  These are taken in order of
increasing shell number of the atoms.  As withShellResolved, this only allowed, if all the
selected atoms are of the same type.
AtomsSpecification of the atoms over which to make the projection.  The atoms can be specified
via index selection expressions, as described in appendix B.7.
LabelPrefix of the label for the resulting file of data for this region.  The default is “regioni.out”
whereiis the number of the region in the input. In the case thatShellResolved=Yes, the shell
index is appended, so that files with names “Label.j.out” are written.  ForOrbitalResolved
= Yes, the shell and thenm-value is appended, so that files with names “Label.j.m.out” are
written.
## Example:
ProjectStates = {
Region = {# first region
Atoms = 23:25 27    # atoms 23, 24, 25 and 27
## }
## Region = {
Atoms = N# All nitrogen atoms
ShellResolved = Yes  # s and p shells separated instead of atomic PDOS
Label = "N"# files N.1.out and N.2.out for s and p states
## }
## }
## 2.6.2    Localise / Localize
Convert the single particle states of the calculation to localised orbitals via a unitary transforma-
tion. Localised orbitals span the same states as the occupied orbitals, so are equivalent to the usual
valence band states,  but are more localised in space.  Currently onlyPipekMezeylocalisation is
supported (but not for non-collinear or spin-orbit calculations).

## 92CHAPTER 2. INPUT FORDFTB+
Pipek-Mezey [78] localisation transforms the occupied orbitals such that the square of the Mulliken
charges for each orbital is maximised. The resulting localised states are output aslocalOrbs.outand
localOrbs.binfollowing the format given in appendix 3.6 foreigenvec.outandeigenvec.bin.
Tolerancer1E-4
MaxIterationsi100
ToleranceCut off for rotations in the localisation process.
MaxIterationsMaximum number of total sweeps to perform.
For systems with non-gamma-pointk-points, no further options are available.
## Analysis = {
## Localise = {
PipekMezey = {
# These are the default options, which are also set if the bracket is left empty.
Tolerance = 1.0E-4
MaxIterations = 100
## }
## }
## }
For  molecular  and  gamma  point  periodic  calculations  there  are  two  implementations  available,
Dense=Yeswill use theO(n
## 4
)scaling conventional algorithm, whileDense=No, uses the de-
fault sparse method whichmayhave better scaling properties.
DenselNo
SparseTolerancesr+Dense = No1E-1 1E-2 1E-6 1E-12
DenseSelects the conventional method (Yes) using Jacobi sweeps over all orbital pairs or (No)
uses the default sparse method.
SparseTolerancesThe sparse method introduces support regions during evaluation to increase
performance, and these requires a set of tolerances to determine the regions to be used (these
are listed in decreasing order, i.e., with tighter tolerances as the localisation proceeds).
2.6.3    ElectrostaticPotential
Evaluates the electrostatic potential at specified points in space for SCC calculations.  This data is
accumulated in a specified text file.
OutputFiles"ESP.dat"
AppendFilelMD or geometry optimisationNo
Softeningr1E-6
Points(3r)+Grid not set{}
GridmPoints not set{}
OutputFileText file to store the potential.   If external electric fields are present,  an additional
column gives their values. See p. 115 for a description of the file.
AppendFileIf running calculations with multiple geometries, should theOutputFilebe appended
or only contain the last potential information?

## 2.6. ANALYSIS93
Softening[length]Modifies the plotted potential to remove ther=0 divergence of
## 1
/r, by settingε
and instead plotting
## 1
## /
## √
r
## 2
## +ε
## 2
. Internal potential calculations are unaffected, only the exported
data.
Points[length]List  of  cartesian  points  at  which  to  evaluate  the  electrostatic  field.   In  the  case
Periodic = Yes, the modifier "F" may instead be used to specify the points as fractions of the
lattice vectors.
Grid[length]Specification of a regular 1, 2 or 3 dimensional grid of points.  In the case Periodic
= Yes, the modifier "F" may instead be used to specify the points as fractions of the lattice
vectors.
GridPoints3i
## Origin3r
## Spacing3r
Directions9rModifier not F1 0 0 0 1 0 0 0 1
SpacingSeparation between points in each direction. This inherits the modifier forGrid.
OriginLocation of first point in the grid. This inherits the modifier forGrid.
GridPointsNumber of points in each of the three direction of the grid (a value of 1 places
all points at theOriginof that direction).
DirectionsSet of 3 cartesian vectors along which the grid will become aligned.  This can
rotate, skew,etc.the grid.  The vectors are internally normalised, but must be indepen-
dent.
2.6.4    Response properties by perturbation
For cases where the ground state eigenvalues are available, the output of the eigenvalue derivatives
are described in are section 3.1.1.
There are common options for the perturbations, which appear outside their respective blocks in the
## Analysisenvironment:
ConvergedPerturblSCC = YesYes
MaxPerturbIteriSCC = Yes100
PerturbDegenTolr1.0E-9
PerturbEtarDynamic Polarisation1E-8
PerturbSccTolrSCC = Yes1e-5
ConvergedPerturbIf true, requires that the perturbation self-consistently converges. If false, the
code can continue with a warning, but will return NaN for properties evaluated at that stage.
MaxPerturbIterMaximal number of self-consistent cycles to reach convergence for perturbation
evaluation of properties.  If convergence is not reached after the specified number of steps,
the program stops. This behaviour can be overridden usingConvergedPerturb, but will then
produce Not a Number (NaN) for non-convergent properties.Note:For calculations using
k-points, the default number of self-consistent iterations will default to 1 in cases where a
band structure is being plotted (seeKLines{}in section 2.4.12).
PerturbDegenTol[energy]In the case of degenerate systems, determines the energy separation
for which eigenvalues are considered non-degenerate.

## 94CHAPTER 2. INPUT FORDFTB+
PerturbEtaIn the case of finite frequency perturbations, a small imaginary constant, of magnitude
PerturbEtais used in the expression to avoid divergences at resonant conditions.
PerturbSccTolStopping criteria for the perturbation self-consistency. Specifies the tolerance for
the maximum difference in any charge derivatives between two cycles.
## Polarisability
Evaluates electric polarisability using coupled-perturbed linear response (hence can only be used
with cases initially evaluating unperturbed eigenvalues/band structure).  Currently only the DFTB
hamiltonian is supported (see section 2.4.1, REKS and Delta-DFTB (nonAufbau{}) calculations
are also not currently supported).
In the case of degenerate single particle levels, the reported level derivatives (see p. 111) for those
states are ordered in increasing value.
StaticlYes
## Frequenciesr+–
FrequencyRange3r–
StaticEvaluates polarisability with respect to cartesian directions of a static uniform electric field.
Frequencies[Frequency]Evaluates polarisability at a list of finite frequencies ({ω}).
FrequencyRange[Frequency]Specifies equispaced driving frequencies for polarisabilities, listed
asstarting ending step-sizefrequencies (for example if calculating a spectrum).
ExamplesStatic polarisability, with an adjusted degeneracy tolerance:
## Analysis {
Polarisability = {} # static enabled by default
## }
Dynamic polarisability at specified frequencies
## Analysis {
## Polarisability = {
Static = No # static field response turned off
FrequencyRange [eV] = 1.0 4.0 0.1 # 1 to 4 eV with steps of 0.1
## }
## }
ResponseKernel
Evaluates responses to potentials added at individual atomic sites, using coupled-perturbed linear
response (hence can only be used with cases initially evaluating unperturbed eigenvalues/band struc-
ture). Currently only the DFTB hamiltonian is supported (see section 2.4.1, REKS and Delta-DFTB
(nonAufbau{}) calculations are also not currently supported).
The same options asPolarisabilityare supported, but in addition:
RPAlSCC = YesNo

## 2.7. EXCITEDSTATE95
RPAFor self-consistent calculations, enables RPA evaluation, instead of self-consistent calculation
of the response. This is equivalent to evaluating response without relaxation of the system.
ExamplesStatic polarisability for anScc=Yescalculation.
## Analysis {
ResponseKernel = {
# static enabled by default
RPA = Yes # non-self consistent perturbation
## }
## }
Dynamic polarisability at a specified frequency
## Analysis {
## Polarisability = {
Static = No # static field response turned off
Frequencies [eV] = 1.0 4.0 # evaluate at 1 and 4 eV
## }
## }
2.7    ExcitedState
This block collects some options to calculate excited states.
CasidapSCC = Yes{}
PP-RPApSCC = Yes{}
## 2.7.1    Casida
This tag contains the specifications for a time-dependent DFTB calculation,  based on linear re-
sponse theory [69].
Note:the DFTB+ binary must be compiled with linear response calculations enabled to make use
of these features (the ARPACK [57] library or ARPACK-ng [1] is required).
The calculation of vertical excitation energies and the corresponding oscillator strengths as well as
excited state geometry optimisation can be performed with these options, details of the resulting
output files are given in appendix 3.10.  Linear response theory is currently implemented only for
the SCC-DFTB level of theory and molecular systems.
## 7
Excitations can be calculated for fractional
occupations and collinear spin-polarisation.  Forces (and hence geometry optimisation or MD) are
available for collinear spin-polarised systems but not for fractional occupations. The specifications
for this block have the following properties:
Note:Excited state calculations with theRangeSeparatedfunctionals (Section 2.4.22) can be per-
formed for molecular (non-periodic) systems that do not have fractional fillings.  The various win-
dow options (see below) are not yet available for range separated calculations.
## 7
Excitation energies can also be calculated for gamma point periodic systems, but will be incorrect for delocalised
excitations or for charge transfer-type excited states.

## 96CHAPTER 2. INPUT FORDFTB+
NrOfExcitationsi-
StateOfInteresti0
SymmetrysSpinPolarisation={}-
## Diagonaliserm-97
EnergyWindowrFORTRAN HUGE()
OscillatorWindowr-1
WriteTransitionslNo
WriteTransitionChargeslStateOfInterest non-zeroNo
WriteSPTransitionslNo
WriteMullikenlNo
WriteCoefficientslNo
WriteEigenvectorslNo
WriteDensityMatrixlNo
TotalStateCoeffslWriteCoefficients = YesNo
WriteXplusYlNo
WriteTransitionDipolelNo
ExcitedStateForceslPrintforces = YesYes
CacheChargeslYes
StateCouplings2i-
OptimiserCImStateCouplings non-zero{}98
NrOfExcitationsSpecifies the number of vertical excitation energies to be computed for every
symmetry (singlet or triplet).  It is recommended that a value slightly greater than the actual
number of the states of interest is specified (the eigenvalue solver may not converge to the
right roots otherwise).
StateOfInterestSpecifies the target excited state or states that should be calculated.  These are
numbered from the first (lowest) excited state as 1, and so on.  If the absorption spectrum at
a given geometry is required (i.e., a single-point calculation), this parameter should be set to
zero (default) and theDriversection (2.3) should be left empty (forces will not be available).
A value less than 0 requests that the state with the largest dipole transition moment be found
(again a single-point calculation). In the outputTotal EnergyandTotal Mermin free energy
refer toStateOfInterest, while the extrapolated energy and force related energy refer to the
ground state.
SymmetrySpecifies the spin symmetry of the excited states being computed: “singlet”, “triplet”
or “both”.  This tag is only applicable for spin restricted calculation.  For calculations in the
“triplet” or “both” cases,SpinConstantsmust be supplied (see p. 46).
EnergyWindow[energy]Energy range above the last transition atNrOfExcitationsto be included
in excited state spectrum calculation.
OscillatorWindow[Dipole moment]Screening cut-off below which single particle transitions are
neglected in excitation spectra calculations.   This selects from states above the top of the
EnergyWindow(if present).  This keyword should not be used if calculating forces or other
excited state properties.
WriteTransitionsIf set toYes, the file TRA.DAT is created.  This file contains a description of
each requested excited state in terms of its single-particle transitions.
WriteSPTransitionsIf set toYes, the file SPX.DAT is created, which contains the spectrum at
the uncoupled DFTB level (i.e. the single-particle excitations).

## 2.7. EXCITEDSTATE97
WriteTransitionChargesFor singlet or spin-polarized calculations setting this toYesgenerates
the file ATQ.DAT containing the Mulliken charges for a specific excited state (chosen by
StateOfInterest) according to [79].
WriteMullikenIf set toYes, the files XCH.DAT and XREST.DAT are created. The former contains
atom-resolved Mulliken (gross) charges for the excited state of interest, the latter the excited-
state dipole moment of the state.  Warning:  These quantities are computed from the relaxed
transition density added to the ground state density and possibly do not faithfully represent
the charges for a given excited many-body state.
WriteCoefficientsIf set toYes,  the file COEF.DAT is created.   This file contains the complex
eigenvectors (molecular orbital coefficient) for the excited state of interest. They are derived
from the relaxed excited state density matrix.
WriteEigenvectorsIf set toYes, the file excitedOrbs.bin is created (and excitedOrbs.out depend-
ing on whetherEigenvectorsAsTextis true).  This file contains the natural orbitals for the
specified excited state.
WriteDensityMatrixIf set toYes, the file(s) DM?.bin are created.  These hold the excited state
density matrices, in the atomic orbital basis, for the evaluated states.
TotalStateCoeffsOption to control data fromWriteCoefficientsorWriteEigenvectors.  If set to
Nothe total charge density of the output orbitals corresponds to the change in charge from
the ground to excited state.  If set toYesinstead it corresponds to the total charge density in
the excited state.
WriteXplusYIf  set toYes,  the  file XplusY.DAT  is  created.   This  file contains  the  RPA  vector
## (X+Y)
## IΣ
ia
for all excited states (c.f., Eqn. (18) in Ref. [38]).
WriteTransitionDipoleIf set toYes, the file TDP.DAT is created. This file contains the Mulliken
transition dipole for each excited state.
ExcitedStateForcesIf set toYes, evaluated forces include the contributions from an excited state
of interest.  By default, it is set toYesif forces are being calculated (for example in geom-
etry optimisation) and toNootherwise.  By setting it explicitly toNo, you can calculate the
excitations during a molecular dynamics simulation that is being driven by the ground state
forces only.
CacheChargesIf set toNo, transition charges are calculated on the fly during the excited states
calculation, instead of being cached. This makes the calculation considerably slower, but can
help to decrease memory use substantially, if you are short on memory.
StateCouplingsEvaluates non-adiabatic coupling vectors between specified many-body states of
your  system.   This  keyword  requires  two  values,mandn,  withm<nand  state  0  being
defined as the ground state.  The couplings are computed according to the method described
in [70, 71].
Example:Couplings = {0 2}would generate the the couplings between states 0→1, 0→2
and 1→2. The results are written to the file NACV.DAT (See p. 118). Couplings are usually
calculated for single point geometries, as the file NACV.DAT is overwritten along a trajectory.
## Diagonaliser / Diagonalizer
Specifies which iterative diagonaliser should be used to solve the Casida equations. The keyword is
required and expects either anArpack{}orStratmann{}block.

## 98CHAPTER 2. INPUT FORDFTB+
ArpackpRangeSeparated = No
## Stratmannp
Arpack{}refers to the Implicitly Restarted Arnoldi Method [57] and is available only for the con-
ventional TD-DFTB method with local functionals (RangeSeparated=None). It has two options:
WriteStatusArnoldilNo
TestArnoldilNo
WriteStatusArnoldiIf  set  toYes,  the  file  ARPACK.DAT  is  created,  which  allows  the  user  to
follow the progress of the Arnoldi diagonalisation.
TestArnoldiIf set toYes, the file TEST_ARPACK.DAT is created, which gives data on the quality
of the resulting eigenstates.
TheStratmann{}diagonaliser [93] (see also [51, 20]) is available for local and range separated
functionals and is the recommended choice for small systems and/or a small number of excited
states to solve for. It has one option:
SubSpaceFactori20
SubSpaceFactorThe initial subspace for the diagonalisation is given bySubSpaceFactortimes
the  number  of  excited  states  to  solve  for.   Small  values  ofSubSpaceFactorspeed  up  the
calculation, but might lead to convergence problems. In this case the calculation needs to be
restarted with an increased value ofSubSpaceFactor.
OptimiserCI / OptimizerCI
Invokes search for conical intersections (CI) between the two states indicated by theStateCouplings
keyword.  Note that the two states must be direct neighbours (i.e.,n=m+1).  There is currently
one optimiser available.
TheBearpark{}optimiser (see [10]) minimises a gradient that is based on the non-adiabatic cou-
pling vector and the difference gradient of the two potential energy surfaces in question.  The pa-
rameters given in theGeometryOptimisationblock control the optimization as usual. Since the CI
optimization is numerically challenging, we recommend theSteepestDescentdriver.  The energy
gap between the two states in question is written as entryEnergy gap CIto the output.
Bearpark{}has one option, which is relevant for the CI between the ground and first excited state:
EnergyShiftr0.0
EnergyShiftShift of the excited state PES during optimization.   Should be brought to zero on
restarting with a better optimised structure.
As discussed by Harabuchi et al. [36],EnergyShifthelps to avoid SCC convergence issues close to a
ground-to-excited CI. It is recommended to first approach the CI with a larger value ofEnergyShift,
stop the optimization before the loss of self-consistency occurs, and then restart the optimization
with successively smaller values ofEnergyShift. Note that specifyingStateOfInterestleads only to
computation of the corresponding energy, but not the force.

## 2.8. ELECTRONDYNAMICS99
## 2.7.2    PP-RPA
This  tag  contains  the  specifications  for  the  calculation  of  excitation  energies  using  the  particle-
particle random phase approximation (pp-RPA) [100]. This approach, unlike time-dependent DFTB,
allows the computation of double and charge-transfer transitions. However it has the limitation that
the computed excitations have to involve, at least partially, the highest occupied molecular orbital
(HOMO) of the system.
For the computation of the excitation energies of a neutralN-electron system, one needs to set up
a ground state calculation for the two-electron deficient (N−2) system, i.e. a netCharge= +2.0
calculation.   Please  note  that  ifChargeis  set  to  0.0  (the  default  value),  the  obtained  transition
energies will correspond to a net negative−2 charged system (i.e.N+2 electrons). The system of
interest must be closed-shell, therefore the calculation must also be spin-restricted and performed
for an even number of electrons.
The pp-RPA method is currently implemented only for SCC-DFTB level excitations, but can be
performed on top of both SCC-DFTB or range-separated reference ground state calculations.  The
SCC-DFTB calculations can be performed for molecular or gamma point periodic systems, but the
range-separated calculations can only use molecular boundary conditions.
The specifications for this block have the following properties:
NrOfExcitationsi-
## Symmetrys-
NrOfVirtualStatesi0
TammDancofflNo
HHubbardp-
NrOfExcitationsSpecifies the number of vertical excitation energies to be computed for each
symmetry (singlet or triplet).
SymmetrySpecifies the spin symmetry of the excited states being computed:singlet,tripletor
both.   Please note that,tripletandbothare effectively similar,  as both singlet and triplet
excitation energies will be printed out if either of these keywords are used.
NrOfVirtualStatesOptional orbital constraint to speed up the calculation. It specifies the number
of virtual states entering the pp-RPA equation. If set to zero or greater than the total number
of virtual states of the system no constraint will be applied.
TammDancoffIf set toYes, the Tamm-Dancoff approximation will be employed. This will speed
up the calculation.
HHubbardHubbard-like parameters for each atom type including only the Hartree kernel. Values
of some of these parameters are given in appendix K.
The output of the pp-RPA calculation are described in section 3.12.
2.8    ElectronDynamics
Calculate the real-time propagation of both the electronic state of the system and the nuclei within
the Ehfenfest approximation in the presence of an optional external time-dependent perturbation, as

## 100CHAPTER 2. INPUT FORDFTB+
described in Ref. [13]. The real-time propagation is available with DFTB as well as xTB Hamilto-
nians.
## Stepsi-
TimeStepr-
FieldStrengthr-
PerturbationmNone102
EnvelopeShapemPerturbation = Laser{}Constant104
PopulationslNo
RestartlNo
RestartFromAsciilRestart = YesNo
WriteRestartlYes
WriteAsciiRestartlWriteRestart = YesNo
WriteFrequencyi50
WriteEnergyAndChargesl104
RestartFrequencyiSteps/10
ForceslNo
IonDynamicslNo
InitialTemperaturerIonDynamics = Yes-
MovedAtoms(i|s)+IonDynamics = Yes1:-1
Velocities(3r)*IonDynamics = Yes-
PumplNo
PumpProbeFramesiPump = Yes-
ProbeProbeRange2rPump = Yes0 Steps*TimeStep
ProbelNo
EulerFrequencyi0
WriteBondEnergylNo
WriteBondPopulationlNo
WriteAtomicEnergieslNo
FillingsFromFilelNo
VerboseDynamicslYes
StepsNumber of propagation steps to perform.
TimeStep[time]Time interval between two electronic propagation steps.
FieldStrength[Electric field strength]Peak intensity of the applied time-dependent electric field.
PopulationsIf time-dependent (ground state) molecular orbital populations should be calculated.
This is done by projecting the electronic state onto the ground state molecular orbitals.  If
Yes, they are saved everyWriteFrequencysteps tomolpopul1.dat(andmolpopul2.datis the
calculation is collinearly spin polarised).
RestartIf  calculation  should  be  restarted.   A  restart  filetddump.bin(ortddump.dat)  must  be
available in the working directory.
RestartFromAsciiIf  this  is  a  restart  calculation  (Restart=Yes),  readtddump.datinstead  of
tddump.binin the working directory.
WriteRestartIf a restart tddump file should be written.   Details of the contents of the file are
discussed in appendix L.0.3.

## 2.8. ELECTRONDYNAMICS101
WriteAsciiRestartIf a restart file is being written, select between producingtddump.bin(No) or
if set toYes,tddump.dat.
RestartFrequencyNumber of steps every which the system’s state should be written to restart
file.
WriteFrequencyNumber of steps every which the atomic charges and molecular orbital popula-
tions (ifPopulations= Yes) are written to file.
ForcesIf forces on all atoms should be calculated and written toforcesvst.dat.
IonDynamicsIf nuclei should be propagated in the dynamics using the Velocity Verlet algorithm.
If set to Yes, then either theInitialTemperaturekeyworkd or theVelocitieskeyword must be
set. The positions and velocities everyWriteFrequencysteps will be saved in XYZ format to
tdcoords.xyz.
MovedAtomsList of atoms that will be moved during the dynamics. The atoms can be specified
via index selection expressions, as described in appendix B.7.
InitialTemperature[energy]Create  starting  velocities  for  the  Ehrenfest  MD  according  to  the
Maxwell-Boltzmann  distribution  at  the  specified  temperature.   This  keyword  is  redundant
in the case of specified initial velocities or for a restarted trajectory, so is omitted in those
cases.
Velocities[velocity]Specified atomic velocities for all the atoms of the given structure (including
“velocities” for any stationary atoms, which are silently ignored).  (Note:if the velocities
from a previous (MD or Ehrenfest) run are used, the velocities printed in the XYZ files are
specified in Å/ps, so this should be set in the input). See section 2.3.8.
PumpIf this trajectory corresponds to the dynamics under a pump pulse,  with the intention to
probe the system afterwards at different delay times, to simulate a pump-probe transient ab-
sorption  experiment.   The  effect  of  the  keyword  is  to  write  dump  filesippdump.bin(i=
0, . . . ,PumpProbeFrames) inside thepump_framesdirectory, containing the state of the sys-
tem (density matrix, coordinates, velocities) every a given number of steps.
PumpProbeFramesNumber  of  total  snapshots  of  the  system  in  the  pump  trajectory  that  will
be saved for future probe simulations.  These are spaced uniformly in time over thePump-
ProbeRange.
PumpProbeRange[time]The time range (initial time and final time, separated by a space) be-
tween which the snapshots will be dumped to file.
ProbeIf this is the simulation of a probe. If set to yes, then automaticallyRestart= Yes,WriteR-
estart= No, and only the dipole moment output files will be written, since this keyword is
used together with aKickperturbation to probe the system.  Notice that the dump file that
contains the state of the system that you want to be probed must be present and renamed to
tddump.bin(ortddump.datif using the ascii version of this data).
EulerFrequencyNumber of steps every which an Euler integration step is done in the electronic
propagation (that normally uses the Leapfrog algorithm). The default value ensures no Euler
steps are done during the dynamics. If used, must be set to something larger than 50.

## 102CHAPTER 2. INPUT FORDFTB+
WriteBondEnergyIf the pairwise non-self-consistent part of the bond energy,BE(t), should be
written to thebondenergy.binfile everyWriteFrequencysteps. The populations are evaluated
as
## BE
## AB
## (t) =
## ∑
μ∈A
## ∑
ν∈B
ρ
μν
(t)H
## 0
μν
## (t),
whereAandBare the atoms in the central cell andSis the overlap matrix.  They are stored
in binary format (see 3.11.9).
WriteBondPopulationIf  the  pairwise  time-dependent  bond  Mulliken-like  population,BP(t),
should be written to thebondpop.binfile everyWriteFrequencysteps.  The populations are
evaluated as
## BP
## AB
## (t) =
## ∑
μ∈A
## ∑
ν∈B
ρ
μν
(t)S
μν
## (t),
whereAandBare the atoms in the central cell andSis the overlap matrix.  They are stored
in binary format (see 3.11.10).
WriteAtomicEnergiesIf the atom-resolved contributions to the total energy shpuld be written to
theatomenergies.datfile.
FillingsFromFileWhether  to  read  the  initial  molecular  orbital  occupations  from  a  file.   When
set  toYes,  please  place  a  file  named  “fillings.in”  in  the  working  directory.   This  file  will
override the default ground state fillings when constructing the initial density matrix. The file
should list the occupation for each orbital, one per line, for each spin channel (starting with
all of the orbitals for the first spin channel).  For spin-polarized calculations with collinear
spin, the occupations for the second spin channel should follow sequentially, while for non-
collinear/spin-orbit calculations all orbitals should be listed in ascending energy.
VerboseDynamicsIf outputs are printed for Ehrenfest or electron dynamics.
2.8.1Perturbation{}
Determines the type of perturbation that is applied.
None{}No time-dependent perturbation is included, free dynamics are calculated.
Kick{}Perform Dirac-delta perturbation (or akick) to the density matrix.
PolarisationDirections-
SpinTypesSpinPolarisation = Colinear {}Singlet
PolarisationDirection/PolarizationDirectionThe cartesian axis for the kick:"x","y"or"z".
If set to"all", calculates the three directionsx,y,zconsecutively.  For polarisation direction
x,y,zthe dipole moment output file will be namedmux.dat,muy.dat,muz.dat, respectively.
SpinTypeMust be either “Singlet” or “Triplet” for singlet or triplet spectra, respectively.  Only
implemented for collinear spin polarisation.

## 2.8. ELECTRONDYNAMICS103
Laser{}Apply time-dependent sinusoidal perturbation to the system.
PolarisationDirection3r-
ImagPolarisationDirection3r0 0 0
LaserEnergyr
## Phaser0
ExcitedAtoms(i|s)+1:-1
PolarisationDirection/PolarizationDirectionVector along which the electric field is polarised.
ImagPolarisationDirection/ImagPolarizationDirectionImaginary part of the polarisation vec-
tor. Useful for circularly polarised fields.
LaserEnergy[energy]Energy
## ̄
hωof the laser.
Phase[Angular units]Optional initial phase of laser field (inradians by default), such that sinu-
soidal component of the field is described by sin(ωt+φ).
ExcitedAtomsList of atoms that will be excited by the laser. The atoms can be specified via index
selection expressions, as described in appendix B.7.
Note:when working with periodic systems,the polarisation direction must be orthogonal to the
periodic directionsof the system.  Therefore, the code does not work with 3D periodic systems
with laser perturbations.
KickAndLaser{}Apply aKickplus aLaserto the system.  Useful for probing the excited state
on the system while being driven by a laser.  The keywords are a combination of the ones for kick
and laser.
KickPolDiri-
LaserPolDir3r-
LaserImagPolDir3r0 0 0
LaserEnergyr-
LaserStrengthr-
## Phaser0
ExcitedAtoms(i|s)+1:-1
KickPolDirSame as PolarisationDirection inKick.
SpinTypeSame asKick.
LaserPolDirSame as PolarisationDirection inLaser.
LaserImagPolDirSame as ImagPolarisationDirection inLaser.
LaserEnergy[energy]Same as inLaser.
LaserStrengthPeak intensity of the applied laser (in this mode,FieldStrengthis the kick inten-
sity).
PhaseSame as inLaser.
ExcitedAtomsSame as inLaser.

## 104CHAPTER 2. INPUT FORDFTB+
2.8.2    WriteEnergyAndCharges
This enables the write out of additional data during the propagation.  By default, excitations using
KickorKickAndLaserexcitations sets this to false, whileLaserorNonegenerates the extra files.
This option controls write out of Mulliken charges during the calculation (qvst.dat) and energy com-
ponents (energyvst.dat). If forces are evaluated this keyword also enables writing of (forcesvst.dat)
or if ion dynamics are allowed the atom coordinates during the calculation (tdcoords.xyz).
2.8.3EnvelopeShape{}
Determines the envelopef(t)of the laser, such that the laser field isE(t) =E
## 0
f(t)sin(ωt+φ)
Constant{}Constant envelope and equal tof(t) =1. Produces continuous wave laser.
Gaussian{}Applies a Gaussian envelope functionf(t) =exp
##  
## −(t−t
m
## )
## 2
## /β
## 2
## 
, wheret
m
is the
time at which the pulse is centered andβ=τ/2
## √
π,τbeing the duration of the pulse.
## Time0r0
## Time1r-
Time0Time at which the pulse starts.
Time1Time at which the pulse ends. Is equal to Time0 +τ.
Sin2{}Applies a sin
## 2
envelope function:
f(t) =
## (
sin
## 2
## (π(t−t
## 0
## )/τ)t
## 0
## ≤t≤t
## 0
## +τ
## 0t<t
## 0
ort>t
## 0
## +τ.
The properties of this method are the same as for the Gaussian (Time0,Time1) and have the same
meaning.
## Example:
ElectronDynamics = {
## Steps = 40000
TimeStep = 0.1
# Total time will be then 4000 a.u. = 96.8 fs
FieldStrength [v/a] = 0.01
## Perturbation = Laser {
PolarisationDirection = 0.5 0.5 0
LaserEnergy [ev] = 2.55
## }
EnvelopeShape = Sin2 {
## Time1 [fs] = 30.0
## }
## Populations = Yes
IonDynamics = Yes

## 2.9. REKS105
InitialTemperature [k] = 0.0
## Pump = Yes
PumpProbeFrames = 1000
PumpProbeRange [fs] = 0.0 50.0
EulerFrequency = 200
## }
## 2.9    REKS
This block collects some options to calculate REKS in the context of DFTB. TheRekskeyword
expects eitherNone(default – no use of REKS calculation) or theSSR22{} block as value.
SSR22pSCC = Yes, SpinPolarisation={}, SpinConstants̸={}None
## 2.9.1    SSR22
This tag contains the specifications for a DFTB/SSR(2,2) calculation [56], based on ensemble DFT
theory.
Note:the DFTB+ binary can be compiled with OpenMP (not MPI) parallelisation and DFTB/SSR
calculation is not compatible with time-dependent DFTB calculation. In addition, it is not compat-
ible with spin-polarisation, but it requires spin constants to treat open-shell microstates.
In general, REKS calculation can be classified as single-state REKS, SA-REKS and SI-SA-REKS.
In single-state REKS, only ground state is calculated and it can treat the state with multireference
character. SA-REKS and SI-SA-REKS can calculate the vertical excitation energies. The difference
is that the state-interaction term is considered in SI-SA-REKS so that more accurate states can be
generated.  The corresponding oscillator strengths as well as excited state geometry optimisation
can be performed with these options, details of the resulting output files are given in appendix 3.13.
In the context of DFTB, current REKS calculation is compatible with following functionalities. The
range-separated functional, external point charges and dispersion corrections can be calculated with
single-state REKS, SA-REKS or SI-SA-REKS. For the periodic system, only gamma point sam-
pling is supported with REKS. Especially, the stress evaluation and lattice optimisation is possible
with only single-state REKS. The specifications for this block have the following properties:
## Energym{}
TargetStatei1
TargetMicrostatei
Functional̸={ "PPS" },
StateInteractions = No
## 0
ReadEigenvectorslNo
FonMaxIteri20
## Shiftr0.3
SpinTuning(r)
## ∗
## {}
TransitionDipolel
Functional̸={ "PPS" },
TargetMicrostate = 0
## No
GradientmConjugateGradient {}
RelaxedDensitylNo
NonAdiabaticCouplingl
Functional̸={ "PPS" },
StateInteractions = Yes
## No
VerbosityLeveli1

## 106CHAPTER 2. INPUT FORDFTB+
EnergyChoice of energy evaluation in REKS method. ThisEnergyblock has following options:
## Functional(s)
## ∗
IncludeAllStateslNo
StateInteractionslNo
FunctionalSpecifies the minimised energy functional in DFTB/SSR. This keyword reads a
block consisted of the energy functionals that you want to include in the calculation. In
DFTB/SSR(2,2), there are two possible choices for the minimzied energy functionals.
One is PPS and the other is (PPS+OSS)/2. The former represents single-state REKS and
the latter shows SA-REKS or SI-SA-REKS. The detailed form of the block is shown in
below examples.  The inclusion of state-interaction terms is determined byStateInter-
actions.
IncludeAllStatesIf set toYes, all computable energy states from current energy functionals
are included for SA-REKS or SI-SA-REKS calculations.  When you calculate single-
state REKS, this option does not affect the result of calculation.   The PPS and OSS
states are calculated when this option sets toNo, while the additional DES state can be
included if this sets toYes. If you want to the doubly-excited configuration, please set to
Yes. The detailed explanation about PPS, OSS and DES states is given in the Ref. [56]
StateInteractionsIf set toYes, the state-interaction terms between SA-REKS states is in-
cluded, thus it generates SI-SA-REKS states. In general, SI-SA-REKS state can provide
more reliable state when you want to compute the excited states.
TargetStateSpecifies the target state that should be calculated.  These are numbered from the
ground state as 1, and so on. Note that the ordering of this option is different with the option
StateOfInterestin time-dependent DFTB calculation.
TargetMicrostateSpecifies the target microstate that should be calculated. The electronic config-
uration is given in the Ref. [56] or the source code of DFTB+. In SSR(2,2), fifth microstate
is triplet configuration, thus this microstate can be roughly considered as triplet state.
ReadEigenvectorsIf set toYes, the initial molecular orbitals are read from the eigenvec.bin file.
If not, the initial orbitals are obtained from the diagonalisation of non-SCC Hamiltonian.
FonMaxIterSpecifies the maximum number of iterations used in the optimisation of fractional oc-
cupation numbers. In general, the value of 20 is enough to converge the fractional occupation
numbers in SCC cycle.
ShiftSpecifies the level shift value used in SCC cycle.   The shift value should be increased to
converge the  SCC cycle when  the orbital  energies of  the  active orbitals  are close to  each
other.
SpinTuningSpecifies  the  scaling  constants  for  atomic  spin  constants.   DFTB/SSR  sometimes
shows wrong spin contribution for triplet microstate,  thus the scaling of atomic spin con-
stants are needed to generate correct spin contribution for each microstate.  The standard to
determine  the  scaling  constants  is  provided  in  the  Ref.  [56].   The  number  of  elements  of
SpinTuningblock becomes the number of atomic species, and the ordering of the elements is
same as the ordering of atomic species in input geometry file.

## 2.9. REKS107
TransitionDipoleIf set toYes, the file tdp.dat is created.  This file contains a description of tran-
sition dipole moment between the electronic states in SA-REKS or SI-SA-REKS.
GradientChoice  of  gradient  solver  used  in  CP-REKS  equations.   ThisGradientblock  has  the
following choices:
ConjugateGradientUses a congugate-gradient based algorithm. This algorithm is usually
recommended since it is considerably faster than other algorithms.
CGmaxIteri20
## Tolerancer1e-8
PreconditionerlNo
SaveMemorylNo
CGmaxIterSpecifies the maximum number of iterations used in the conjugate-gradient
based algorithm. In general, the value of 20 is enough to solve the CP-REKS equa-
tions.
ToleranceSpecifies the tolerance used in the conjugate-gradient based algorithm.
PreconditionerIf set toYes, it uses a preconditiner in the conjugate-gradient based
algorithm.  In general, the convergence speed is increased when this option sets to
Yes, thus this option is recommended.
SaveMemoryIf set toYes,  some variables (an orbital hessian matrix and the H-xc
kernel)  which  need  large  memory  allocation  are  saved  in  the  memory.   If  these
variables are saved, then the computational speed also increases but it shows large
memory allocation, increasing asO(N
## 4
basis
).  If set toNo, the CP-REKS equations
are solved without saving these variables, thus it is relatively slower than the case
that you set toYes. In general,Nooption is recommended for large systems.
DirectUses a direct matrix-inversion multiplication algorithm.  This algorithm is usually
considerably slow.
RelaxedDensityIf set toYes, the file relaxed_charge.dat is created. This file contains a description
of relaxed charges forTargetStateorTargetMicrostate.  The relaxed charges can be used
with external point charges in QM/MM calculations.
NonAdiabaticCouplingIf set toYes, the nonadiabatic couplings between SI-SA-REKS states are
calculated. This option cannot be used in single-state REKS or SA-REKS state.
VerbosityLevelSpecifies the printing level in standard output. This option determines the output
up to energy information (VerbosityLevel= 0),  gradient information (VerbosityLevel= 1),
detailed information about SCC cycle and timing in gradient calculation (VerbosityLevel=
## 2).
Example for 3state SI-SA-REKS calculation with nonadiabatic couplings and modified spin con-
stants:
Reks = SSR22 {
## Energy = {
Functional = { "PPS" "OSS" }
IncludeAllStates = Yes
StateInteractions = Yes
## }

## 108CHAPTER 2. INPUT FORDFTB+
TargetState = 2
TargetMicrostate = 0
ReadEigenvectors = No
FonMaxIter = 30
## Shift = 0.3
SpinTuning = { 3.0 3.0 }
Gradient = ConjugateGradient {
CGmaxIter = 100
Tolerance = 1.0E-8
## Preconditioner = Yes
SaveMemory = Yes
## }
RelaxedDensity = Yes
NonAdiabaticCoupling = Yes
VerbosityLevel = 1
## }
2.10    ParserOptions
This block contains the options, which are effecting only the behaviour of the HSD parser and are
not passed to the main program.
ParserVersionicurrent input version
WriteHSDInputlYes
IgnoreUnprocessedNodeslNo
StopAfterParsinglNo
ParserVersionVersion number of the input parser, which the input file was written for. If you are
using an input file, which was created for an older version of DFTB+, you should set it to
the parser version number of that code version.  (The parser version number is printed at the
beginning of the program run to the standard output.)  DFTB+ internally converts the input
to its current format.  The processed input (written todftb_pin.hsd) is always in the current
format, and theParserVersionproperty in it is always set to be the current parser version.
The parser version will be inferred in caseInputVersionis set in the level above, in this case
ParserVersioncannot be specified.
WriteHSDInputSpecifies,  if  the  processed  input  should  be  written  out  in  HSD  format.   (You
shouldn’t turn it off without really good reasons.)
IgnoreUnprocessedNodesBy default the code stops if it detects unused or erroneous keywords
in the input, which probably indicates error(s) in the input.  Thisdangerousflag suspends
these checks. Use only for debugging purposes.
StopAfterParsingIf set toYes,  the parser stops after processing the input and written out the
processed input to the disc. It can be used to make sanity checks on the input without starting
an actual calculation.

## 2.11. PARALLEL109
## 2.11    Parallel
This block contains the options, which are effecting the parallel behaviour of the code.  They only
take effect, if the code was compiled with MPI-support.
## Groupsi1
UseOmpThreadsl.false.
## Blacsp{}
GroupsNumber of process groups.  Specifying more than one process group enables parallelisa-
tion over k-points and spin, as processes in different process groups are working on different
k-points and spins at the same time.  The number of process groups must be a divisor of the
total number of MPI-processes.  Default:  1 (all processes work at the same k-point and spin
at a given time). Note that transport calculations between contacts are currently incompatible
with multiple process groups (see section 4).
UseOmpThreadsEnables the usage of OpenMP-threads (hybrid MPI/OpenMP-parallelisation).
In order to prevent you from accidentally running more processes and threads than appro-
priate for your hardware, this feature is turned off by default.  Consequently in this case the
MPI-parallelised binary will stop if the maximal number of OpenMP-threads is greater than
one when DFTB+ is started. (You can usually set the number of maximally allowed OpenMP-
threads by setting theOMP_NUM_THREADSenvironment variable in your shell.)
You can enable this option if you wish to run DFTB+ with hybrid parallelisation. You would
then typically start fewer MPI-processes than physical cores on each node and also set the
number of threads accordingly.  This is currently an experimental feature in DFTB+ and is
recommended for experienced users only.
BlacsContain BLACS specific settings.  Currently only supportsBlockSize, which specifies the
row and column block size for the block-cyclic distributions (with default size of 32).
## Example:
## Parallel {
## Groups = 2
## Blacs {
BlockSize = 64
## }
## }

## 110CHAPTER 2. INPUT FORDFTB+

## Chapter 3
Output of DFTB+
This chapter contains the description of some of the output files of DFTB+ where the output format
is not self documenting. Unless indicated otherwise, numbers in the output files are given in atomic
units (with Hartree as the energy unit).
3.1    band.out
This contains the band energies and occupation of levels in electron volts and electron charge units
as columns one and two.  The file is printed ifWriteBandOut=Yes(see section 2.6).  Blocks of
numerical results start with a line which labels the k-point and spin channel for the energies.
See theDP_TOOLSpackage for utilities for converting the data in this file into band-structures and
density of states information suitable for plotting.
3.1.1    dE_band.out
If perturbation calculations of electric field polarizability (p. 94) is enabled andWriteBandOut=
Yes,  this  file  contains  the  derivatives  of  the  band  energies  in  electron  volts  /  a.u.  for  each  field
direction, k-point and spin channel.
3.2    detailed.out
This file contains details of the total energy and its components, as well as optional information on
forces, atomic charges and other properties. It is intended for quick viewing, while values given to
more significant figures are available in results.tag.
Some of the information available in the file will also depend on the method being used in the
calculation. For example, not all electronic solvers make the ground state electronic entropy avail-
able, hence only the internal energy would be quoted. Similarly, while the free energy of the system
which when differentiated by atomic coordinates or boundary conditions gives the forces or stresses
(printed asForce related energy) this is not currently available for some types of non-equilibrium
transport calculations.
Some of the common energy results printed in this file are:
## 111

## 112CHAPTER 3. OUTPUT OFDFTB+
TSProduct of the electron entropy and
temperature
Total Electronic energyThe   non-SCC   energy   plus   other
contributions  to  the  electronic  en-
ergy (SCC, spin,. . .)
Repulsive energyThe pairwise contribution to the to-
tal energy
Total energySum of electronic energy
Extrapolated to 0Estimated zero temperature energy
if at finite temperatures
Total Mermin free energyU−T S,  relevant free energy at fi-
nite temperatures
Force related energyFree energy relevant to forces in the
system
Gibbs free energyEnergy corrected by−pV, i.e.  the
pressure and volume
MD Kinetic EnergyKinetic energy of atoms in molecu-
lar dynamics
Total MD EnergySum   of   finite   temperature   elec-
tronic, repulsive and atomic kinetic
energies
Where available the Fermi levelμ(i.e. the chemical potential of the electrons in the system) is also
printed.  For systems with an externally fixed Fermi level (i.e.  where the total charge can change),
this contribution is included in the Force related energy:
∆E= +q
total
μ,
but for calculations with fixed numbers of electrons it is not included in this energy.Note:The total
energy reference may not match your required case in some situations, for example a shift with
respect to the average electrostatic potential (in periodic cases) or whether the chemical potential
should be with respect to the valence band maximum may be needed (see for example the discussion
in Ref. [54]).
3.3    results.tag
This contains machine readable results labeled with the type and size of the data blocks. The results
are given in atomic units and are formatted as:
label:type:shape:
The variable type is real, complex, integer or logical. The shape information is
:ndim: size
## 1
## ,size
## 2
## ,. . .,size
ndim
## :
where ndim is the number of dimensions, organised with the Fortran convention and of size size
## 1
## ×size
## 2
## ×size
## 2
## ×. . ..
In the special case of scalar variables the shape is :0:.
A typical example of mixed scalar and both one and two dimensional results would be similar to:

## 3.4. HAMSQRN.DAT, OVERSQR.DAT113
mermin_energy:real:0:
## -0.672967201447815E+000
total_energy:real:0:
## -0.672879398682698E+000
forces:real:2:3,3
## -0.243590222274811E+000 -0.199780753617099E-001 -0.000000000000000E+000
## 0.465478448963764E+000 -0.228550455811745E+000 -0.000000000000000E+000
## -0.221888226688953E+000 0.248528531173455E+000 -0.000000000000000E+000
gross_atomic_charges:real:1:3
## 0.171448741143825E+000 -0.254714832621691E+000 0.832660914778645E-001
3.4    hamsqrN.dat, oversqr.dat
The fileshamsqrN.datandoversqr.datcontain the square (folded) Hamiltonian and overlap matri-
ces.  The numberNin the filenamehamrealN.datindicates the spin channel.  For spin unpolarised
calculation it is 1, for spin polarised calculation it is 1 and 2 for spin-up and spin-down, respectively
while for non-collinear spin it is charge,x,yandzfor 1, 2, 3 and 4.  Spin orbit is not currently
supported for this option.
Only non-comment lines (lines not starting with "#") are documented:
-  Flag for signalling if matrix is real (REAL), number of orbitals in the system (NALLORB),
number of kpoints (NKPOINT). For non-periodic (cluster) calculations, the number of kpoints
is set to 1.
-  For everyk-point:
–Number  of  thek-point.   For  molecular  (non-periodic)  calculations  only  1k-point  is
printed.
–The folded matrix for the givenk-point.  It consists ofNALLORBlines×NALLORB
columns. If the matrix is not complex (REALisF), every column contains two numbers
(real and imaginary part).
Each column / row of a square dense matrix belongs to an (atom, orbital) index pair, with the orbital
index running faster. The order of the atoms follows their order in the input geometry. The orbitals
are ordered by increasing magnetic quantum number (m) of each atomic angular shell (l), using
real tesserals functions. The angular shells are ordered according to the input to the calculation. In
most cases this leads to orbitals ordered by increasing (l,m), but for non-minimal or reordered basis
functions the shell order (l) may not necessarily be in an increasing order.  For the usual minimal
basis, the standard orbital order runs as
s,p
y
## ,p
z
## ,p
x
## ,d
xy
## ,d
yz
## ,d
z
## 2
## ,d
xz
## ,d
x
## 2
## −y
## 2
## ,f
y(3x
## 2
## −y
## 2
## )
## ,f
xyz
## ,f
yz
## 2
## ,f
z
## 3
## ,f
xz
## 2
## ,f
z(x
## 2
## −y
## 2
## )
## ,f
x(x
## 2
## −3y
## 2
## )
## ,
for an atom, where only the orbitals present in the selected basis of the atom are considered. In other
more general cases, whilemis always in increasing order for a given shell,lmay be reordered, have
multiple shells, or be lacking particularlvalues.
The files are produced if requested byWriteHS=Yes(see section 2.5).

## 114CHAPTER 3. OUTPUT OFDFTB+
3.5    hamrealN.dat, overreal.dat
The fileshamrealN.datandoverreal.datcontain the real space Hamiltonian and overlap matrices.
The numberNin the filenamehamrealN.datindicates the spin channel.  For spin unpolarised cal-
culation it is 1, for spin polarised calculation it is 1 and 2 for spin-up and spin-down, respectively,
while for non-collinear spin it is charge,x,yandzfor 1, 2, 3 and 4.  Spin orbit is not currently
supported for this option.
Note: The sparse format contains only the "lower triangle" of the real space matrix. For more details
about the format and how to obtain the upper triangle elements, see reference [5].  Also note, that
for periodic systems the sparse format is based on thefoldedcoordinates of the atoms, resulting in
translation vectors (ICELL) which look surprising at first glance.
Only non-comment lines (lines not starting with "#") are documented:
-  Number of atoms in the system (NATOM)
-  For every atom:
–Atom number (IATOM), number of neighbours including the atom itself (NNEIGH),
number of orbitals on the atom (NORB)
-  For every neighbour of every atom:
–Atom number (IATOM1), neighbour number (INEIGH), corresponding image atom to
the neighbour in the central cell (IATOM2F), coefficients of the translation vector be-
tween  the  neighbour  and  its  corresponding  image  (ICELL(1),ICELL(2),ICELL(3)).
Between the coordinates of the neighbourr
## INEIGH
and the image atomr
## IATOM2F
the
relation
r
## INEIGH
## =r
## IATOM2F
## +
## 3
## ∑
i=1
ICELL(i)a
i
holds, wherea
i
are the lattice vectors of the supercell.
–The corresponding part of the sparse matrix.  The data block consists ofNORB(IAT1)
lines andNORB(IAT2F)columns.
The files are produced if requested byWriteRealHS=Yes(see section 2.5).
3.6    eigenvec.out, eigenvec.bin
These files contain the eigenvectors from the Hamiltonian, stored either as plain text (eigenvec.out)
or in the native binary format of your system (eigenvec.bin).
The  plain  text  format  fileeigenvec.outcontains  a  list  of  the  values  of  the  components  of  each
eigenvector for the basis functions of each atom.  The atom number in the geometry, its chemical
type and the particular basis function are listed, followed by the relevant value from the current
eigenvector and then the Mulliken population for that basis function for that level.  The particular
eigenvector,k-point and spin channel are listed at the start of each set of eigenvector data.  In the
case of non-collinear spin, the format is generalised for spinor wavefunctions. Complex coefficients
for both the up and down parts of the spinors are given (instead of single eigenvector coefficient)
followed by four values – total charge, then(x,y,z)magnetisation.

## 3.7. CHARGES.BIN / CHARGES.DAT115
The binary format fileeigenvec.bincontains the (unique) runId of the DFTB+ simulation which
produced the output followed by the values of the eigenvectors. The eigenvector data is ordered so
that the individual components of the current eigenvector are stored, with subsequent eigenvectors
for thatk-point following sequentially.  Allk-points for the current spin channel are printed in this
order, followed by the data for a second channel if spin polarised.
The files are produced if requested by settingWriteEigenvectors=Yes, withEigenvectorsAsText
being also required to produce the plain text file (see section 2.6 for details).
3.7    charges.bin / charges.dat
The  filecharges.bincontains  the  orbitally-resolved  charges  for  each  atom.   In  later  versions  of
DFTB+  this  format  includes  a  check  sum  for  the  total  charge  and  magnetisation.   In  the  case
of orbital potentials (p. 57) the file also contains extra population information for the occupation
matrices.
This file is produced as part of the mechanism to restart ground state SCC calculations, see sec-
tions 2.5 and 2.3.8.
Equivalent data can also be present in the filecharges.dat, but stored as plain text.  The options
WriteChargesAsTextandReadChargesAsTextcontrol which cases are generated and read respec-
tively.
Appendix L contains details of the contents of the file.
3.8    md.out
This file is only produced forVelocityVerlet{}calculations (See p. 24).  It contains a log of infor-
mation generated during MD calculations, and appended everyMDRestartFrequencysteps. In the
case of small numbers of atoms and long MD simulations it may be useful to setWriteDetailedOut
toNoand examine the information stored in this file instead.
3.9    Electrostatic potential data
The output from evaluating the electrostatic potential (see page 92).   The first line consists of a
comment mark followed by a logical variable as to whether there is an external electric field (or
not), followed by 3 values for any regular grid pattern present in the system and the total number of
points. If the data is gridded, the next four lines contain the origin and vectors for the separation of
grid points in Ångstroms. For gridded data, the 3 values in the header give the number of sampling
points along each of the directions of the grid and the grid is written in order of the last vector most
rapidly cycling, then the middle vector and finally the first vector.
The next line is a comment, then the locations and the potential experience for a positive charge due
to the internal field plus optionally the external field (from point charges or homogeneous electric
fields). Values are given in Volts. In the case of gridded data, the location field is omitted.
For an example with a regular grid
## # T   1   1   1 1

## 116CHAPTER 3. OUTPUT OFDFTB+
## # 0.000000000000E+00 -0.200000000000E+01 -0.200000000000E+01
## # 0.200000000000E+01 0.000000000000E+00 0.000000000000E+00
## # 0.000000000000E+00 0.200000000000E+01 0.000000000000E+00
## # 0.000000000000E+00 0.000000000000E+00 0.200000000000E+01
# Internal (V)External (V)
## 0.173386318927E-10 0.314737193575E+00
In the case where there is no regular grid:
## # T   0   0   0 1
#Location (AA)Internal (V)External (V)
## 0.0000E+00 -0.2000E+01 -0.2000E+01 0.173386318927E-10 0.314737193575E+00
In the case where data is generated for multiple geometry steps, this is also shown in the label:
## # F   1   5   5 25
## # 0.000000000000E+00 -0.200000000000E+01 -0.200000000000E+01
## # 0.100000000000E+01 0.000000000000E+00 0.000000000000E+00
## # 0.000000000000E+00 0.100000000000E+01 0.000000000000E+00
## # 0.000000000000E+00 0.000000000000E+00 0.100000000000E+01
# Internal (V) Geo 0
## 0.215249473376E-01
## .
## .
# Internal (V) Geo 10
## 0.215815549672E-01
## .
## .
The grid is 25 points for each iteration, with the first few of the points are located at
## 0 -2 -2
## 0 -2 -1
## 0 -2 0
## 0 -2 1
## 0 -2 2
## 0 -1 -2
## 0 -1 -1
## .
## .
3.10    Excited state results files
Several files are produced during excited state calculations depending on the particular settings from
section 2.7.
Note:in the case of degeneracies, the oscillator strengths depend on arbitrary phase choices made
by the ground state eigensolver.  Only the sum over the degenerate contributions is well defined
for most single particle transition properties, and label ordering of states may change if changing

## 3.10. EXCITED STATE RESULTS FILES117
eigensolver or platform.  For the excited state, properties like the intensities for individual excita-
tions in degenerate manifolds again depend on phase choices made by both the ground and excited
eigensolvers.
## 3.10.1    ARPACK.DAT
Internal details of the ARPACK solution vectors, see the ARPACK documentation [57] for details.
## 3.10.2    COEF.DAT
Data on the projection of this specific excited state onto the ground state orbitals.  For the specific
exited state, the (complex) decomposition of its single particle states onto the ground state single
particle levels, together with its fractional contribution to the full excited state are given.
General format:
T FLegacy flags
1 1.9999926523 2.0000000000level 1, fraction of total WF, 2.0
-0.1944475716 0.0000000000 -0.1196876988 0.0000000000 ....real  then  imaginary  projection  of
level 1
onto  ground  state  1,  then  ground
state 2, etc.
## -0.1196876988 0.0000000000 -0.1944475703 0.0000000000 ....
## .
## .
## .
## 2 1.9999866161 2.0000000000level 2
-0.2400145188 0.0000000000 -0.1767827333 0.0000000000 ....real  then  imaginary  projection  of
state 2
## .
## .
## .
## 3.10.3    EXC.DAT
Excitations data including the energies, oscillator strength, dominant Kohn-Sham transitions and
the symmetry.
Example first few transitions for C
## 4
## H
## 4
## :
w [eV]Osc.Str.TransitionWeight    KS [eV]   Sym.
## =========================================
## 5.5510.514388211  ->   121.0004.207S
## 5.5920.000000010  ->   121.0005.592S
Two examples of singlet transitions with energies of 5.551 and 5.592 eV. The first is dipole allowed,
the second not. In both cases they are transitions primarily (weight of 1.000) to single particle state
12, and are of singlet character (“S”).

## 118CHAPTER 3. OUTPUT OFDFTB+
In the case of spin-polarised calculations, an additional column of values are given instead of the
symmetry, showing the level of spin contamination in the state (labelled asD<S*S>), with typically
states where a magnitude of less than 0.5 is usually considered reliable [28].
## 3.10.4    SPX.DAT
Single particle excitations (SPX) for transitions between filled and empty single particle states of the
ground state.  These are given in increasing single particle energy and show the oscillator strength
and index of the Kohn-Sham-like states that are involved.
#    w [eV]Osc.Str.Transition
## ============================
## 1    5.4030.233768915  ->   16
## 2    5.4030.233768914  ->   16
## 3    5.4030.233768915  ->   17
## 4    5.4030.233768914  ->   17
## 5    6.5310.000000013  ->   16
## 6    6.5310.000000012  ->   16
## 3.10.5    TDP.DAT
Detail of the magnitude and direction of the transition dipole from the ground to excited states.
## 3.10.6    TRA.DAT
Decomposition of the transition from the ground state to the excited states.  The energy and spin
symmetry are given together with the contributions from each of the single particle transitions.
## 3.10.7    NACV.DAT
Contains the TD-(LC)-DFTB non-adiabatic coupling vectors between many-body states,
d
ξ
mn
## =
## ⟨
## Ψ
m
## |
d
dξ
## |
## Ψ
n
## ⟩
## .
The file is written as blocks, one for each requested electronic transition combination.
Each block starts with the indices of the two states being coupled,mandn(counting from 0 for the
ground state), then the coupling vector in atomic units. Each line contains the coupling contribution
associated with the three Cartesian displacements an atom in the geometry (combined indexξ),
with one atom per line and ordered as in the geometry.
## 3.10.8    TEST_ARPACK.DAT
Tests on the quality of the eigenvalues and vectors returned by ARPACK. For thei
th
eigen-pair, the
eigenvalue deviation corresponds to the deviation from(⟨x
i
|H|x
i
## ⟩−ε
i
), The eigen-vector deviation

## 3.11. ELECTRON DYNAMICS RESULTS FILES119
is a measure of rotation of the vector under the action of the matrix:
## |
(H|x
i
## ⟩−ε
i
## |x
i
## ⟩)
## |
## 2
, the nor-
malisation deviation is⟨x
i
## |x
i
⟩−1 and finally largest failure in orthogonality to other eigenvectors is
given.
## Example:
State  Ei deviationEvec deviation    Norm deviation   Max non-orthog
## 1-0.19428903E-15  0.80601119E-15  0.19984014E-14  0.95562226E-15
## 20.27755576E-16   0.85748374E-15  0.48849813E-14  0.36924443E-15
## 3-0.12490009E-15  0.88607302E-15  0.88817842E-15  0.60384195E-15
## 3.10.9    XCH.DAT
Charges on atoms in the specified excited state.  The top line contains the symmetry (Singlet or
Triplet) and the number of the excited state.  The next line is the number of atoms in the structure
followed by some header text.  Then on subsequent lines the number of each atom in the structure
and its charge are printed.
3.10.10    XplusY.DAT
Expert file with the RPA(X+Y)
## IΣ
ia
data for all the calculated excited states.
Line 1: number of single particle excitations and the number of calculated excited states
Line 2: Level number 1, nature of the state (S, T, U or D) then excitation energy (in Hartree)
Line 3: expansion in the KS single particle transitions
## .
## .
## .
Line 2: Level number 2, nature of the state (S, T, U or D) then excitation energy (in Hartree)
## 3.10.11    XREST.DAT
Dipole moment of the specified excited state in units of Debye.
3.11    Electron dynamics results files
Real-time dynamics simulations produce the following output files:
3.11.1    energyvst.dat
Time-dependent energy components in Hartree. The column order is the following:
time (in fs), total energy, non-SCC energy, SCC energy, spin energy, external field energy, repulsive
energy, nuclear kinetic energy, dispersion energy

## 120CHAPTER 3. OUTPUT OFDFTB+
3.11.2    qsvst.dat
Net atomic charges in electrons (negative atomic populations) as a function of time, written every
WriteFrequencysteps, with the following column order:
time (in fs), net total charge, charge (atom 1), charge (atom 2), ..., charge (atom N)
where N is the number of atoms, and the net total charge should always be zero (up to numerical
presicion) for a neutral system.
3.11.3    atomenergies.dat
Atom-wise contribution to total energy (without nuclear kinetic energy) as a function of time, writ-
ten everyWriteFrequencysteps, with the following column order:
time (in fs), total energy, energy (atom 1), energy (atom 2), ..., energy (atom N)
3.11.4    mu.dat/mux.dat/muy.dat/muz.dat
Dipole moment cartesian componentsμ
i
as a function of time. The units of the quantities are given
at the top of the file.   The name depends on the type or perturbation:  for kicks the polarisation
direction of the Dirac-delta field is indicated in the name of the file; for lasers and pulses, the name
is always mu.dat. The column order for a spin unpolarised calculation is the following:
time (in fs),μ
x
## ,μ
y
## ,μ
z
For (collinear) spin polarised calculations, the dipole components are also spin-dependent:
Time (in fs),μ
x
## (up),μ
y
## (up),μ
z
## (up),μ
x
## (down),μ
y
## (down),μ
z
## (down).
3.11.5    laser.dat
Created ifPerturbation=Laser{}(see 2.8.1). Laser field componentsE
i
(given in V/Å) as a func-
tion of time, with data in the following order:
time (in fs),E
x
## ,E
y
## ,E
z
3.11.6    molpopul1.dat/molpopul2.dat
Created ifPopulations= Yes. The numberiin molpopuli.dat indicates the spin channel for spin po-
larised calculations (if spin unpolarised, only molpopul1.dat is written). It contains the populations
projected onto the ground state molecular orbitals (GSMO), written everyWriteFrequencysteps.
The projection is done by calculating first the change of basis matrixΛfrom the coefficients matrix
of the GSMO,Λ=C
## −1
, and then projecting the time-dependent density matrix of the system in the
atomic orbital basis:
ρ
## GSMO
(t) =Λρ
## AO
(t)Λ
## †
The diagonal elements ofρ
## GSMO
are the sought populations.  The first column is the time (in fs),
and from the second one the populations starting from the lowest lying orbital.

## 3.12. PPRPA_ENER.DAT121
3.11.7    forcesvst.dat
Time-dependent forces, calculated within the Ehrenfest approach and ignoring velocity-dependent
terms, printed everyWriteFrequencysteps, ifForces= Yes.  The file has 3N+1 columns whereN
is the number of atoms, in the following order:
time (in fs),F
x
## 1
## ,F
y
## 1
## ,F
z
## 1
## ,F
x
## 2
## ,. . .,F
x
## N
## ,F
y
## N
## ,F
z
## N
3.11.8    tdcoords.xyz
Coordinates and velocities of the atoms saved everyWriteFrequencysteps in XYZ format, ifIon-
## Dynamics= Yes.
3.11.9    bondenergy.bin
Atom pair-wise non-self-consistent bond energy, written ifWriteBondEnergy=Yes, everyWrite-
Frequencysteps. All numbers are stored in the following order (using the Fortran real precision that
the code is compiled with):
time (in fs),BE
## 1,1
## ,BE
## 2,1
## ,BE
## 3,1
## ,. . .,BE
## N,1
## ,BE
## 1,2
## ,BE
## 2,2
## ,. . .,BE
## N,2
## ,. . .,BE
## N,N
3.11.10    bondpop.bin
Atom pair-wise bond populations, written ifWriteBondOrder=Yes, everyWriteFrequencysteps.
(using the Fortran real precision that the code is compiled with):
time (in fs),BP
## 1,1
## ,BP
## 2,1
## ,BP
## 3,1
## ,. . .,BP
## N,1
## ,BP
## 1,2
## ,BP
## 2,2
## ,. . .,BP
## N,2
## ,. . .,BP
## N,N
3.12    ppRPA_ener.DAT
Excitation energies obtained within the pp-RPA formalism (see section 2.7.2). This output file also
includes the most dominant Kohn-Sham transition, its weight and energy difference as well as the
spin multiplicity of the excited state.
Here are, for instance, the first three singlet-singlet transitions for furan:
w [eV]TransitionsWeightKS [eV]Symm.
## =================================================
## 6.411HOMO -> LUMO + 00.9985.162S
## 6.904HOMO -> LUMO + 10.9736.755S
## 11.339HOMO -> LUMO + 0, 00.9595.162, 5.162S
The first two excitations are single, whereas the third one is a double transition with predominant
HOMO-to-LUMO character.

## 122CHAPTER 3. OUTPUT OFDFTB+
3.13    REKS results files
Several  files  are  produced  during  REKS  calculations  depending  on  the  particular  settings  from
section 2.9.
3.13.1    tdp.dat
Detail of the magnitude and direction of the transition dipole between all electronic states.
3.13.2    relaxed_charge.dat
Charges on atoms in the specified state. The top line contains the total charge of the system.
3.14    Halting DFTB+
In addition to stopping on successful completion, if there errors in the input, or if the limits for the it-
erative stages of a calculation are exceeded (for example exceedingMaxSccIterationsorMaxSteps),
DFTB+ can be externally halted manually.
During operation if files calledstop_sccorstop_driverare present in the directory, DFTB+ will
halt  at  the  next  SCC  or  geometry  step  respectively.   If  these  files  are  present  at  the  start  of  the
calculation, DFTB+ will halt immediately (hence these files should be removed manually if used
to halt the code).

## Chapter 4
Transport calculations
Non-equilibrium Green’s function (NEGF) calculations are now available with DFTB+.  Within
this formalism it is possible to treat quantum mechanical systems with open boundary conditions,
i.e. systems connected to external reservoirs and therefore quantum transport. A new specificTrans-
port{}block has been added to specify the geometry of such transport problems. Additional solvers
have been added to theSolversection to either fully solve the open boundary problem (using the
keywordGreensFunction{}) or the transmission through the system (TransportOnly).   Finally a
real-space Poisson solver is available for self consistent charge calculations and electrostatic gates
(within a new section,Electrostatics, using the keywordPoisson{}).
4.1    Definition of the geometry
The input geometry for transport calculations can be a little tricky.  In comparison to cluster or su-
percell boundary conditions, the geometry for transport calculation must also contain information
about the contacts (external reservoirs). The contacting leads (or surfaces) are actually semi-infinite
structures, supporting travelling waves. Unlike finite structures, where mo stationary current is pos-
sible, travelling waves can only exist in such open systems. The simulation is therefore partitioned
into a device region and one or more contact regions.
note:
A single contact can be used to model semi-infinite surfaces or the ends of nanowires/tubes. A min-
imum of two contacts is required to simulate devices and to evaluate properties such as current flow.
ForSCCcalculations, the potential shifts within contacts are stored in files. See appendix L.0.2 for
the internal format of these files.
4.1.1    Rules to build a valid input geometry
-  All device atoms must come first in the structure.
-  Each contact must comprise of two subsequent unit cells, called principal layers (PLs).  The
two PLs together give all information about the contact structure and in the following are
referred generally as a “contact”.
-  A PL is a unit cell of the contacting lead that has interactions only with its nearest neighbour
PLs in tight-binding terms (i.e. the Slater-Koster interactions only extend into immediately
neighbouring PLs).
## 123

## 124CHAPTER 4. TRANSPORT CALCULATIONS
-  The ordering of the atoms within the two PLs of a contact must be consistent, in the sense
that the two PLs must be exact periodic replicas of each other: If each PL compriseNatoms,
thei
th
atom in the first PL must have a corresponding identical atom,i+N, in the second PL
which is related by translation to the position of atomi.
-  The first PL in a contact should be always the one which is closer to the device region.
-  All blocks should be contiguous in the structure and each atom must belong to one and only
one region.
-  The geometry can be defined as a cluster or a supercell. In the first case is it understood that
the contacts are one-dimensional wire leads.
-  If a structure is defined as being asupercell, only the lattice vectors that are transverse to the
transport direction are meaningful.  The periodicity specified along the transport direction is
treated as a dummy vector (but must be present).
-  For each contact the periodicity along the transport direction is actually deduced from the
separation between the two PLs (using the coordinate differencer(i+N)−r(i)). We refer to
this vector as aligned along thecontact direction.
-  All lattice vectors (including the contact direction vector) must be aligned parallel to one
of the Cartesian axesx,yorz.   In practice only rectangular cells are allowed in transport
calculations at present.
An example of a non-periodic device with contacts attached is shown in Figure 4.1.
## Contact
## 1
st
## PL
## Contact
## 2
nd
## PL
## Contact
## 1
st
## PL
## Contact
## 2
nd
## PL
## Device
## 1
st
## PL
## Device
## 2
nd
## PL
## Device
## 3
rd
## PL
## Contact
vector v
## Contact
## 1
st
## PL
## Contact
## 2
nd
## PL
## Contact
vector v
Figure 4.1:  Example of a valid 3 contact device with principal layers marked.
## Note:
The codedoes notcurrently check: if the device regions are consistently defined (rules 1 and 6); if
the PL defined are really PLs (rule 3); or if the first PL defined is really the one closest to the device
## (rule 5).
The codedoescheck rules 4, 8, 9 and 10.  The check for rules 4 and 9 is performed on the atomic
coordinates, such that
## R
## 2
i+N
## =R
## 1
i
+v∀i∈PL(4.1)

## 4.2.TRANSPORT125
whereR
## 2
i
are atomic coordinates of atoms in the second PL of the contact,R
## 1
i
are atomic coordinates
of atoms in the first PL andvis the contact lattice vector. The equality is verified within an accuracy
that can be set by the user (see below forPLShiftTolerance).
Please take care when building structures and to cross-check them.  Also consider looking at the
examples distributed with the code.  The input structure is often the first suspect when there are
problems in transport calculations.
4.2Transport
The Transport section collects together the information needed whenever open boundary conditions
are used.  It contains the description of the partitioning of the system into adeviceand thecontact
regions and additional information needed to calculate the required self-energies associated with
the contacts. The transport block contains the following properties:
## Devicep-125
## Contactp-126
TaskmUploadContacts127
An example transport geometry specification looks like:
## Transport {
## Device {
AtomRange = 1 8
## }
## Contact {
## Id = "source"
AtomRange = 9 24
## }
## Contact {
## Id = "drain"
AtomRange = 25 40
## }
## }
Where the associated atomic geometries follow the rules of Section 4.1.  In this specific example,
there is only one principal layer in the device, but each contact contains two principle layers (atoms
9–16 and 17–24 in the “source” contact, atoms 25–32 and 33–40 in the “drain” contact).
4.2.1Device{}
The Device blocks contains the following properties:
AtomRange2i-125
FirstLayerAtomsi+1
AtomRangedefines the first and last atom of the device region.

## 126CHAPTER 4. TRANSPORT CALCULATIONS
FirstLayerAtomsdefines the first atom of PLs in the device region.  By default there is only one
layer (the entire device region).  Alternatively the user can manually reorder and group the
atoms in the structure into distinct layers for more efficient Green’s function calculations.
The device layers, unlike the contact PLs, do not need to represent unit cell repetitions.  If
the device geometry has specified principal layers, these must be ordered in such a way that
all the atoms within each of the layer are contiguous in space and adjacent layers must be
placed next to each other in the structure.  This ensures that the constructed hamiltonian and
overlap are block tri-diagonal. Refer to [76] for a description of the efficient iterative Green’s
function algorithm that can then be applied.
4.2.2Contact{}
The contact block contains the following properties:
## Ids
AtomRange2i
PLShiftTolerancer1E-5
## Temperaturer0.0
FermiLevelr
## Potentialr0.0
WideBandlNo
LevelSpacingrWideBand = Yes0.735
The sectionsDeviceandContactare used to define the atomic range of each region.  The user can
also assign a label (Id) to each contact that can be used later for cross referencing.  In the section
Contactthe user can add a keyword that specifies the accuracy for the internal check of the PLs
(tolerance for rule 4 of structures, i.e. that accuracy to which (4.1) must be satisfied).
IdAssign a text label to the contact (must be 50 or fewer characters).
AtomRangeDefines the first and last atom of the device region.Notethe contacts should be
defined such that the atoms included in the range are in continuous increasing order in the
structure.
PLShiftTolerance[length]Used to set the absolute accuracy used to check principal layer (PL)
consistency (see above). The default is 10
## −5
atomic units. Please be aware that using a large
values may hide errors due to an inconsistent definition of the contacts, therefore it should
not be modified.
Temperature[energy]Specifies the  electronic temperature of  the contact  (see a more  detailed
discussion after the section Änalysis
## ̈
## ).
FermiLevel[energy]Optional overriding of the Fermi energy that is specified in the appropriate
contact shift file.
Potential[energy]Specifies any additional electrostatic potential applied to the contact. The nat-
ural units of this quantity are a (potential) energy.
WideBandUse the wide band approximation for the contact.  If set toYes, the surface Green’s
function  of  the  contact  is  not  explicitly  calculated  but  is  instead  assumed  to  be  local  and
constant according to a specified density of states.

## 4.2.TRANSPORT127
LevelSpacing[energy]Specifies the inverse of the density of states (DOS) per atom to be used
for the Wide Band approximation.  As an example,  the DOS of gold at the Fermi level is
0.05 eV
## −1
atom
## −1
, which corresponds to an energy spacing of 20 eV≈0.735 Hartree (the
default value).
4.2.3Task = ContactHamiltonian{}
TheTaskoption is used to define which type of calculation should be performed. Before performing
a transport calculation it is necessary to compute some equilibrium properties of the contacts by
running a periodic boundary condition DFTB calculation.  This necessary step must be carried out
separately for each contact and can be done by specifying aTask=ContactHamiltonianblock, as in
the following example to calculate the source case.
Task = ContactHamiltonian {
ContactId = source
ContactSeparation [Angstrom] = 50.0
## }
WhenTask=ContactHamiltonianthe following options can be defined
ContactIds
ContactSeparationr1e3
WriteBinaryContactlYes
ContactIdId label of the contact to be calculated.
ContactSeparation[length]Dummy separation in transverse direction (see the following expla-
nation).
WriteBinaryContactControls whether the contact shift file is written as a text file (file extension
.dat) or a binary file (.bin).
The contact calculation computes thebulkHamiltonian, self-consistent charges (if SCC) and Fermi
level for each contact.  This is a usual DFTB+calculation for which appropriate parameters must
be included in the input file.  Forsupercellstructures the calculation of the contact is performed
using corresponding supercells in which the transverse lattice vectors are those specified in theGe-
ometrytag and the lattice vector along thecontact directionis deduced from the PL separations
(rule 9).  If the structure is defined as acluster, the contact calculation is performed for asupercell
in which the contact is treated as one-dimensional periodic wire with a surrounding vacuum region.
However, since DFTB+does not support pure one- and two-dimensional calculations, dummy lat-
tice vectors are defined for the two remaining directions. The default value for these lattice vectors
is 1000 a.u. (527 Å), which should guarantee sufficient wire to wire distances to avoid Coulomb
interactions. The user can specify an alternative contact separation using the keywordContactSep-
arationplaced in theContactHamiltonianblock.  Each contact computation produces one output
file calledshiftcont_ContactId.datwhich storing energy shifts and Mulliken charges that must be
present in the working folder in all subsequent transport calculations.
Notethat during the contact calculation you will need to perform a k-point integration in the contact
direction (as the contacts are semi-infinite).  Whenever the system is defined as a cluster, DFTB+
will automatically extract the periodicity vectors from the geometry such that the first reciprocal

## 128CHAPTER 4. TRANSPORT CALCULATIONS
vector will correspond to the contact direction. Therefore you must specify a k-point sampling for
the periodic calculation by sampling along the first reciprocal lattice vector.  As an example, if the
structure is defined as a cluster (i.e., 1-dimensional wire leads), the source contact calculation will
have an input file similar to:
## ...
Task = ContactHamiltonian {
ContactId = source
## }
## ...
Hamiltonian = DFTB {
## ...
KpointsAndWeights = SupercellFolding {
8 0 0  # sampling points here regardless of the transport direction
## 0 1 0
## 0 0 1
## 0.5 0.0 0.0
## }
## }
On the other hand, if your structure is defined as a supercell (as an example, a molecule with bulk
contacts) and the transport direction is along theydirection, your the source contact calculation will
have an input file similar to:
## ...
Task = ContactHamiltonian {
ContactId = source
## }
## ...
Hamiltonian = DFTB {
## ...
KpointsAndWeights = SupercellFolding {
4 0 0  # points in periodic direction
0 8 0  # points in transport direction
0 0 4  # points in periodic direction
## 0.5 0.5 0.5
## }
## }
This could seem confusing, but the underlining reasons is that in the cluster calculation the recip-
rocal lattice is set up by the code itself, while in the periodic calculation is set up by the user, who
can chose any arbitrary direction.  Refer to the transport cookbook and to the distributed examples
for further clarification.
4.2.4Task = UploadContacts{}
After the contact calculations are completed, it is now possible to perform actual transport calcu-
lations.  This is activated simply specifyingTask = UploadContacts, without additional options

## 4.3.GREENSFUNCTION129
(Noteif no task is specified, DFTB+ assumesUploadContactsis the required task in the transport
block). If you require potential shifts of the contacts, these should also be set for each contact.
## Transport {
## Device {
AtomRange = 1 8
## }
## Contact {
## Id = "source"
AtomRange = 9 24
# No specified shift in contact, effectively:
## # Potential = 0.0
## }
## Contact {
## Id = "drain"
AtomRange = 25 40
## Potential = 1.0
## }
Task = UploadContacts
## }
Note:During the transport calculation you will not need to set up the k-point integration when the
structure is defined as a cluster, just as in a regular DFTB+ calculation. For supercell calculations,
integration perpendicular to the transport direction will need to be accurate, but the sampling grid
can in the transport direction itself can have only a single value.  In the special case where your
device is a supercell but also wire-like, with a vacuum region lateral to its transport direction, the
Gamma-point can be chosen:
KPointsAndWeights = {
## 0 0 0 1.0
## }
WhenTask=UploadHamiltonianthe following options can be defined
ReadBinaryContactlYes
ReadBinaryContactControls whether the contact shift file should be read as a text file (file ex-
tension.dat) or a binary file (.bin).
4.3GreensFunction
For calculations in open systems, instead of calculating the eigenstates of the system, a Green’s
function method is used to obtain the density matrix of the system.   The Green’s function (GF)
solver can also be used for conventional supercell/cluster boundary conditions if required.
In order to activate Green’s function calculations the user must define the keywordSolver = Greens-
Functionin theHamiltoniansection.  The GF solver, either under equilibrium (no bias applied) or
under non-equilibrium conditions, builds the density-matrix of the device region such that it is con-
sistent with any contacts that are present. Strictly speaking the GF does not solve for the eigenstates

## 130CHAPTER 4. TRANSPORT CALCULATIONS
of  the  system,  however  it  logically  substitutes  the  traditional  construction  of  the  density  matrix
from the eigenstates of the system, as would be obtained after the diagonalisation step.  The usual
DFTB+ self-consistent calculations can be driven using the GF solver.
The following table gives the important parameters of the solver:
NameTypeConditionDefaultPage
Deltar1E-5
ContourPoints2i20 20
LowestEnergyr-2.0
FermiCutoffi10
EnclosedPolesi3
RealAxisSteprRealAxisPoints=undefined6.65E-4
RealAxisPointsrRealAxisStep=undefined
SaveSurfaceGFslYes
ReadSurfaceGFslNo
FirstLayerAtomsi+Transport = undefined1
FermiLevelrTransport = undefined
LocalCurrentslNo
Note:  For efficient GF calculation the device region must be partitioned into layers whose funda-
mental property is to interact with nearest-neighbour layers only (see section 4.1).
Delta[energy]A small positive imaginary delta used in the GF definition and required for the x
contour integration.
ContourPointsThe number of points along the complex contour integration of the GF along the
segmentsCandL(see contour integration in section 4.5).
LowestEnergy[energy]The  initial  energy  from  which  the  integration  starts.   It  should  be  low
enough to ensure that all the electronic states are correctly included in the integration.  The
default is -2.0 Hartree (see contour integration).
FermiCutoffInteger number setting the Fermi distribution cutoff in units ofkT. It is read only if
the Fermi distribution temperature is greater than 0 (see contour integration).
EnclosedPolesThe number of Poles enclosed in the contour.  It is meaningful only in finite tem-
perature calculations (see contour integration).
RealAxisStep[energy]The energy step along the real axis integration for non-equilibrium calcu-
lations. Note:RealAxisStepandRealAxisPointscannot both be defined at the same time.
RealAxisPointsThe number of points along the real axis integration needed in non-equilibrium
calculations. The default depends on the electronic temperature and bias. Note:RealAxisStep
andRealAxisPointscannot both be defined at the same time.
SaveSurfaceGFsAs the SCC cycle usually needs to repeat the calculation of the Green’s function
at given energy points and as the surface Green functions do not change during the SCC cycle,
this flag allows for saving the surface Green functions to disk and so save computational time
on every SCC cycle after the first.
ReadSurfaceGFsLoads the surface Green’s function from a file at the the first SCC cycle.  Note
that this operation only makes sense if the energy integration points are identical to the calcu-
lation used to generate the surface Green’s function files.  The code does not verify whether

## 4.4. SOLVER = TRANSPORTONLY131
this condition is fulfilled.  In general there is no need to modify the defaults forReadSur-
faceGFsandSaveSurfaceGFs.
FirstLayerAtomsAs  described  in  Device  block.   Can  be  specified  only  if  noTransportblock
exists.Note:the Green solver can be used also to calculate the density matrix when there are
no open boundary conditions, for example to take advantage of the iterative scheme in quasi-
1d systems.  In this case, aTransportblock is not defined and thereforeFirstlayerAtoms{}
should be given in theGreensFunctionblock.  Also, the Fermi level of the system must be
known and provided to fill up the electronic states.
FermiLevel[energy]Required to set the Fermi level that is used by the Green’s solver to fill up
the electronic states.  This should be set unless the Fermi level is already specified by the
presence of contacts to the (device region) system.
LocalCurrentsif set to Yes, local bond-currents are computed using the non-equilibrium density
matrix. This task is currently limited tonon-periodicsystems. The output is placed in a file
lcurrent_u.dat(orlcurrent_d.datdepending on spin).  The files are arranged in a table in
order of increasing neighbour distance,
Atom(i)xyznNeighboursj1I
i,j1
j2I
i,j2
j3I
i,j3
## ...
This file can be processed using the small codefluxprovided in tools/transport that helps in
building plots for jmol.
GreensFunction section example:
Solver = GreensFunction {
FirstLayerAtoms = 1 61 92 145
Delta [eV] = 1E-4
ContourPoints = 20 20
RealAxisPoints = 55
LowestEnergy [eV] = -60.0
FermiCutoff = 10
EnclosedPoles = 3
## }
4.4    Solver = TransportOnly
TheGreensFunctionblock is used to solve the full self-consistent NEGF transport problem. How-
ever, the blockTunnelingAndDos{}within theAnalysisblock (see below), can be used to calculate
the transmission function according to the Landauer formula, without solving for the full density
matrix. This can be applied even for calculations where the density matrix and charge densities are
not computed. Similarly, in these cases the electrostatics block should be omitted (i.e. theElectro-
statics = Poisson). The keywordSolver = TransportOnlyis used to jump straight to the post-SCC
analysis.Note:This option cannot be used together with calculations which require forces, includ-
ing geometry relaxations or md calculations.

## 132CHAPTER 4. TRANSPORT CALCULATIONS
4.5    Contour integration
Much  of  the  computational  work  for  transport  is  in  the  integration  of  the  energy  resolved  den-
sity matrix, as represented via the NEGF matrix.  The integration is efficiently performed with a
complex contour integration and a real axis integration, as shown in Figure 4.2 and discussed in
references [19, 75, 76].  All integrations are performed with Gaussian quadratures and the num-
Figure  4.2:Contour  integration  in  the  complex  plane  for  the  Green’s  functions.   The  crosses
represent poles of eitherG
r
or the Fermi function.
ber of points must be specified manually.  The complex contour integration is subdivided into two
sections:  the first section is the arc of a circle,C,  that can be computed with a few integration
points (default 20); the second section is a line that intersects the contour and runs parallel to the
real axis at a distance that depends on the number of poles of the Fermi function that are enclosed
within the contour.  Usually a good choice for the number of poles is between 3 and 5 (the de-
fault is 3).  The poles are placed at the complex pointsz
m
## =E
## F
## +i(2m+1)πk
## B
Tand therefore
are separated from each other by 2πk
## B
T, wherek
## B
is Boltzmann’s constant.  AtT=300 K this
corresponds to a separation of 156 meV. It should be noted that, as the temperature decreases, the
separation between poles reduces.  This makes the contour integration harder as it needs to walk
across two singularities.  At very low temperatures,T=10 K, the separation is 5.2 meV. Below
this temperature, the contour integration is treated asT=0 in order to avoid numerical inaccura-
cies. The integration along the segmentLextends up toRe[z] =E
## F
## +nk
## B
T, wherenis an integer
number specified by the keywordFermiCutoffand has a default value of 10.  In the limitT=0 K
the poles collapse into a non-analytic branch cut and the contour needs to be changed such that
the second section of the complex contour becomes the arc of circle closing on the real axis.  Fi-
nally,  the real axis integration extends between the lowest and highest chemical potentials.  The
number of quadrature points should depend on the bias itself and can be set usingRealAxisPoints
orRealAxisStep.  The default value is 1 pt/0.018 eV (actually 1500 pt/1 Hartree).  In finite tem-
perature calculations the segment is extended to include the Fermi cutoff bynk
## B
Ton both sides
## (μ
## 1
## −nk
## B
## T,μ
## 2
## +nk
## B
T). In this case the number of quadrature points are increased by assuming the
same point density defined in the range (μ
## 1
## ,μ
## 2
).  Example: for a bias of 0.2 V, the default number
of points is 0.2·1500/27.21139=11.  AtT=300 K the interval is increased by 0.26 eV on both
sides, therefore 0.26·1500/27.21139=14.33 which is truncated to 14 points, leading to a total
of 38 points along the real axis.  The use of the keywordRealAxisStepis usually more convenient
because it ensures a consistent real axis integrations during, for example, a bias sweep.
Note:  The GF solver can be used also for calculations other than the transport context.  In cases
where the position of the Fermi Energy is known with good accuracy,  the density matrix solver
based on the GF can be used to compute the electronic properties of clusters and supercells.  The
recursive algorithm may be an efficient solution to large problems having an elongated one dimen-

## 4.6. SPIN-POLARISED TRANSPORT133
sional shape.
4.6    Spin-polarised transport
Spin-polarised transport is available for collinear transport. Any contacts that are present should be
calculated spin-polarized, even if their net spin is zero.
4.7    Poisson solver
The Poisson solver is a fundamental part of charge self-consistent non-equilibrium transport calcu-
lations and must be declared whenever an SCC NEGF calculation is performed usingElectrostatics
= Poisson.   Under  non-equilibrium  conditions  the  self-consistent  potential  of  the  KS  equations
cannot be solved using the efficientγ-functional, but instead requires the definition of appropriate
boundary conditions for the potentials imposed by the contacts. However, since theγ-functional is
functionally related to a pure Hartree potential, it can be obtained in real space by solving a Poisson
solver.  The Poisson equation is solved in aboxwith hexahedral prism shape.  This restriction is
imposed by the Poisson solver being employed. This restricts calculations of supercell structures to
orthorhombic super-lattices. An additional restriction is that the box sides must be aligned with the
Cartesian axes,x,y,z.
NameTypeConditionDefaultPage
## Verbosityi51
PoissonBox3r
BoxExtensionr0.0
MinimalGrid3r0.5 0.5 0.5
PoissonAccuracyr1E-7
AtomDensityTolerancer1E-6
AtomDensityCutoffr14.0
CutoffChecklYes
NumericalNormlNo
SavePotentiallNo
PoissonAccuracyr1E-6
MaxPoissonIterationsi60
BuildBulkPotentiallYes135
ReadOldBulkPotentiallYes135
OverrideDefaultBCmnone{}135
OverrideBulkBCmnone{}135
BoundaryRegionmglobal{}135
## Gatemnone{}137
MaxParallelNodesmnone{}138
RecomputeAfterDensitylNo
PoissonThicknessrcontacts = 1
VerbosityThis parameter controls the level and amount of output messages and takes values rang-
ing from 1 to 100.
PoissonBox[length]Dimension of the Poisson box along the directionsx,yandz.

## 134CHAPTER 4. TRANSPORT CALCULATIONS
BoxExtension[length]With this value it is possible to tune the position of the box interface be-
tween the device and contacts.  By default (BoxExtension=0.0) the boundary is placed at the
midpoint between the last device atom and the first contact atom.
MinimalGrid[length]The minimal requested grid spacing alongx,yandz. The actual grid spacing
chosen by the multigrid solver will be lower than this.
AtomDensityToleranceIn order to calculate the potential, the Mulliken charges are projected on
the real space grid.  This parameter defines the cutoff after which the charge is considered
to vanish (i.e., the spatial extension of the projected charge).  The default is 1E-6 e.  Note
that the contacts must be at least twice the length over which a projected Mulliken charge
extends.  If this conditions is not fulfilled andCutoffCheckis set toYes, the code will exit
with an error message.  Setting this parameter to a lower value could allow shorter contacts
to be defined in some cases.  However this could lead to error in the potential and hence to
spurious reflections, therefore it should be left at its default value (or changed very carefully).
AtomDensityCutoff[length]Defines the atomic radius cutoff. This is an alternative toAtomDen-
sityToleranceand directly specifies the distance over which charge density associated with an
atom is considered to vanish.
CutoffCheckIf set toNo, consistency between contact length and charge extension is not veri-
fied (seeAtomDensityToleranceand/orAtomDensityCutoff).  The default isYes.  As with
AtomDensityTolerance, this parameter should not be changed unless you know exactly what
you’re doing.
SavePotentialSave the electrostatic potential to the filepotential.datand the charge density to
charge_density.dat.  Additional filesXvector.dat,Yvector.dat,Zvector.datandbox.datare
also created.  These files can be converted to a cube file that can be visualised in jmol.  See
section 4.13 about transport tools.
PoissonAccuracyDefines the accuracy for the approximate solution of the Poisson equation (de-
fault value 10
## −6
## ).
MaxPoissonIterationsDefines the maximum number of iterations allowed for the solver.
RecomputeAfterDensityWhen set toYes, Poisson’s equation is solved again after the density
matrix is created in order to make the electrostatic energy consistent with the newly updated
charges.  In transport calculations it is set toNoby default in order to avoid the extra time
spent on the Poisson step. This does not affect the SCC loop or other calculations apart from
the electronic energy and forces.
PoissonThicknessIn the special case of a single contact (cases like the end of semi-infinite wires
or surfaces of crystals), the thickness of the Poisson box normal to the surface of the contact
can be set with this command.
Note: The Poisson box can be specified using the keywordPoissonBox. In calculations where two
contacts face each other along the same axis, setting the box-size along this axis will has no effect
(the code adjusts to the correct size internally). ThePoissonBoxkeyword is redundant (and should
not be specified) when the system is periodic, since in this case the box geometry is taken from the
supercell lattice vectors.
Numerical error in the potential will results in spurious discontinuities at the contact-device inter-
faces. The default tolerances should be sufficient to avoid this in most cases.

## 4.7. POISSON SOLVER135
Below is a a typical example of the whole Poisson block specification.  Some of the keywords are
described in the next subsections.
## Electrostatics = Poisson {
PoissonBox [Angstrom] = 20.0 20.0 20.0
MinimalGrid [Angstrom] = 0.3 0.3 0.3
SavePotential = No
BuildBulkPotential = Yes
ReadOldBulkPotential = No
BoundaryRegion = Global {}
PoissonAccuracy = 1E-7
## Gate = Planar{
GateLength_l [Angstrom] = 10.0
GateLength_t [Angstrom] = 20.0
GateDistance [Angstrom] = 7.0
GatePotential [eV] = 1.0
## }
## }
4.7.1Boundary Conditions
The Poisson equation is solved imposing boundary conditions (BC) on the potential at the six faces
of the Poisson Box. In transport calculations for non-supercell geometries comprising two contacts
placed along the same axis, the BCs are chosen as follows:
Dirichlet  fixed potentials on the two contact faces with values defined by the applied potentials (see
UploadContacts).
Neumann  zero normal field on the remaining 4 lateral box faces
In periodic supercells the BCs are:Dirichlet(fixed potentials) on the two contact faces with values
defined by the applied potentials (seeUploadContacts) andPeriodicon the remaining 4 lateral box
faces.
In some specific cases Neumann BCs can be set on one contact. In order to do so it is necessary to
useOverrideDefaultBC(see below).
The device and contact potentials should smoothly join at the interface.  In order to achieve this
the code computes the bulk potential of each contact and uses the result as a BC on the contact
face of the Poisson box.  This is useful when the contact potential is not uniform due to charge
rearrangements. Any externally applied contact potential (Potential) is added to the bulk potential.
The user can deactivate this calculation by setting the keywordBuildBulkPotentialtoNo.
Note: The bulk potential is computed on a special box that has “lateral” sizes copied from the device
box, and has the size of one PL along the contact direction.  The BCs are—so to speak—inherited
from the device region. In particular:
-  Along the contact direction periodic BCs are imposed on both faces.
-  On the other four faces the BCs are copied from the device region (supercell or cluster).
-  The user can override this setting usingOverrideBulkBC(see below).

## 136CHAPTER 4. TRANSPORT CALCULATIONS
-  When all four faces inherit Neumann BC (default for the device region), these areALLinter-
nally changed to Dirichlet, because the solver cannot handle this situation as it gives rise to a
singular matrix.
BuildBulkPotential(default:Yes) is used to calculate the electrostatic potential of the contacts
and the result is used as a Dirichlet boundary condition on the contact face (superimposed to
the contact potential).
ReadOldBulkPotentialRead a previously computed bulk potential from hard-disk.
BoundaryRegionSpecifies  how  the  Dirichlet  boundary  conditions  are  treated  on  each  contact
face of the Poisson box.  It can beGlobal,SquareorCircle.Globalmeans that the BC is
applied to the entire face of the box, whereas the other keywords imply that the Dirichlet BC
are applied on a cross-section projected on the contact face. This is useful for instance when
handling nanowire contacts, for which it is not really correct to impose a constant potential
on the whole face of the Poisson box.
BufferLength[length]can be used to set the size of the boundary region beyond the atomistic
size which is determined as the minimal circle or square containing all atoms of the contact
cross-section.
NameTypeConditionDefaultPage
BufferLengthr9.0
## Example:
BoundaryRegion = Circle {
BufferLength [Angstrom] = 3.0
## }
In some special cases it might be necessary to override the default BCs applied by the code to
the  Poisson  equation.   Currently  this  can  be  done  using  the  keywords:OverrideDefaultBCand
OverrideBulkBC.
In the special case of a single contact, the boundary condition on the other side of the box to that
contact is automatically over-ridden to be of Neumann type (but can still then be over-ridden with
OverrideDefaultBC).
OverrideDefaultBCblock is used to override the BCs described above.  It can be used to force
Dirichlet or Neumann BCs along some specified directions or on one of the four lateral faces
of the Poisson box.
Boundariesis used to specify on which face different BCs must be imposed.  Assuming contacts
are aligned alongz, the keyword can be set to be any ofxmin,xmax,x,ymin,ymaxory.
OverrideDefaultBC = Dirichlet {
Boundaries = xmin
## }
For instance, setting a Dirichlet BC onBoundaries = xminimposesφ(x,y,z) =0 on the face placed
atx=x
min
, whileboundaries = xmaxwould imposeφ(x,y,z) =0 on the face placed atx=x
max
## .

## 4.7. POISSON SOLVER137
When Dirichlet needs to be forced on both faces it is possible to use eitherboundaries = xmin,xmax
or simplyboundaries = x. The same syntax can be used to impose conditions on more faces, using
boundaries = x,yorboundaries = x,ymin.
A similar strategy can be used to impose different boundary conditions on the contacts. For instance,
a Neumann BC can be set on one contact face by using
OverrideDefaultBC = Neumann {
Boundaries = zmin
## }
Notethat the user should know which face of the Poisson Box corresponds to the desired contact.
Furthermore, if the user sets Neumann at all contacts the Poisson solver will not converge (singular
matrix) unless the Dirichlet condition is imposed somewhere else (e.g., a gate potential is present).
It is also possible to override the default BCs when computing the bulk potential.
OverrideBulkBCblock is used to override bulk BC usually copied from the device region.
Boundarieshas the same meaning and syntax as inOverrideDefaultBC.
For example by choosing
OverrideBulkBC = Neumann {
Boundaries = x, y
## }
4.7.2Electrostatic Gates
The optionGatecan be used to specify an electrostatic gate.  Currently the available gate types
arePlanarandCylindrical.   There  are  some  restrictions  as  the  planar  gate  must  be  placed  with
its face parallel to the x-z plane,  i.e.,  the gate direction must be along y.   At the same time the
transport  direction  should  be  along  the  z-axis  (i.e.  perpendicular  to  the  gate).   The  latter  is  not
really a restriction but it gives meaning to “longitudinal” (l) and “transverse” (t) in the geometrical
definitions of the gate lengths. Example:
## Gate = Planar {
GateLength_l [Angstrom] = 20.0
GateLength_t [Angstrom] = 20.0
GateDistance [Angstrom] = 7.0
GatePotential [eV] = 1.0
## }
## Gate = Cylindrical {
GateLength [Angstrom] = 10.0
GateRadius [Angstrom] = 7.0
GatePotential [eV] = 1.0
## }
The various options for the gates have the following meanings:

## 138CHAPTER 4. TRANSPORT CALCULATIONS
GateLength_l[length]Sets the gate length along the transport direction (always assumed to be
z). The gate is centred in the middle of the device region.
GateLength_t[length]Sets the gate extent transverse to the transport direction (assumed to be
x). The gate is centred in the middle of the device region.
GateDistance[length]Sets the distance of the gate from the centre axis of the device region.
GatePotential[energy]Sets the potential applied to the gate.
GateRadius[length]For a cylindrical gate, sets the distance of the gate from the centre axis or
gate radius.
NameTypeConditionDefaultPage
GateLenth_lr0.0
GateLenth_tr0.0
GateDistancer0.0
GatePotentialr0.0
GateRadiusr0.0
Note that the gate option has not be tested thoroughly and may still contain bugs. Please report any
problems you encounter to the developers.
4.8Parallelisations
The  code  has  been  parallelised  in  two  main  parts.   The  Non-equilibrium  Green’s  functions  are
computed by distributing the energy points along the contour and real axis calculations.  Contour
and real axis integrations are independent and separately distributed. Load balancing has to be taken
care of by the user. For instance if ContourPoints = {20 20} (i.e. 40 in total) and RealAxisPoints =
60, by setting 10 MPI nodes, each node will handle 4 points along the contour and 6 points along
the real axis.
Mixed  OpenMP/MPI  calculations  are  possible.   When  compiling  DFTB+  the  user  should  link
against threaded BLAS/MKL, rather than sequential. Numerical experiments show that best perfor-
mance on multicore CPUs is generally obtained by running independent MPI processes on physical
sockets and exploiting OpenMP multithreading within each socket. For instance NEGF can exploit
threaded matrix-matrix products. The user can experiment by setting the environment variable
## OMP_NUM_THREADS.
The Poisson solver itself has not been parallelised yet. Currently the assembly of the charge density
on the real-space grid and the projection of the potential onto the atoms has been parallelised. Since
the gathering of the charge density on each node can easily hit communication bottlenecks, the user
can use the parameterMaxParallelNodesto control distributions of these calculations.  The default
isMaxParallelNodes=1, this can be increased until speedups are observed.
MaxParallelNodesi1
## 4.9    Analysis
TheAnalysisblock is used to specify post-scf calculations such as tunnelling or projected DOS.

## 4.10.TUNNELINGANDDOS139
## Analysis{
TunnelingAndDOS{
EnergyRange [eV] = {-5.0 -3.0}
EnergyStep [eV] = 0.02
## }
## }
4.10TunnelingAndDos
This method block can be specified inAnalysis89 and it is used to calculate the transmission by
means of the Caroli formula, the current by means of the Landauer formula and the density of states
from the spectral function. This block can only be specified if an open boundary conditions system
has been defined inTransport(see p.125).
EnergyRange2r
EnergyStepr
TerminalCurrentsp
ContactTemperatureNrT
elec
## Regionp139
computeLDOSlYes
WriteTunnlYes
WriteLDOSlYes
EnergyRange[energy]Contains the energy range over which the transmission function and local
density of states are computed.
EnergyStep[energy]Is the energy sampling step for evaluating properties.
TerminalCurrents{}in multi-terminal configurations is used to define the terminal across which
current must be computed. The terminal pairs are defined by using the keywordEmitterCol-
lector, for example:
TerminalCurrents{
EmitterCollector = {"source" "drain"}
EmitterCollector = {"source" "gate"}
## }
The blockTerminalCurrentsmay be omitted since the code automatically sets all possible
independent combinations for the terminal currents. For example in a 4-contact calculations
the currents are 1–2, 1–3, 1–4, 2–3, 2–4 and 3–4.
ContactTemperature[energy]Specifies the electronic temperature for the contacts used in the
calculation of currents.  It expects an array of real values, one per contact, which following
the order the contacts are listed inTransport.
Region{}This  block  defines  atomic  ranges  or  orbitals  on  to  which  the  local  density  of  states
is projected.   The definition in the block follow the same syntax as a  DFTB+  calculation
without transport (see section 2.6.1). IfRegionis absent the default behaviour is to compute
the projected DOS on the whole central region.

## 140CHAPTER 4. TRANSPORT CALCULATIONS
ComputeLDOSChange the default bahaviour of projected DOS calculation.  When set to No,
PDOS  is  not  computed.   In  the  case  of  two  contacts  the  code  can  exploit  a  fast  and  less
memory consuming algorithm for transmission.
WriteTunnThe transmission coefficients are written also to a separate file for quick reference. If
set toNo, the transmission coefficient are only written to DFTB+ output files (detailed.out
and detailed.xml, autotest.tag).
WriteLDOSsame as above, but for the density of states.
4.11    Setting electronic temperature
In  the  current  state  of  the  code  the  electronic  temperature  of  the  system  can  be  set  in  different
places. One place is within the Hamiltonian block in theFillingsection. The Temperature specified
here is effective for the whole device and applies to all contact calculations as well. Note that during
contact calculations the temperature is read from theFillingsection andnotfrom the contact section.
During contact calculations only Fermi filling can be used.
When a temperature is specified in theContactsection of theTransportblock,  it overrides the
system temperature specified infilling.
Notethat the present electronic behaviour for transport is going to be changed soon.
It is also possible to specify a (different) temperature in the sectionTunnelingAndDOS, within the
blockAnalysis. The latter applies only in the calculation of currents (integration of the transmission
function).
Although slightly inconsistent, in some cases it is useful to be able to set a somewhat larger tem-
perature in the calculation of the density than used for property calculations (e.g. currents), as this
helps the convergence of the self-consistent loop.
4.12    Troubleshooting transport
The DFTB+ transport machinery is designed to calculate transport in structures with a large num-
ber of atoms.  To take full advantage of the iterative algorithm, be sure that the system is correctly
partitioned into Principal Layers, as described in section 2.6.1. Be aware that an incorrect partition-
ing will lead to wrong results.  If you are not completely confident, you can run a calculation on a
test system with and without principal layer partitioning in the device region and the resultsshould
be the same.
On some systems, aSegmentation Faulterror could occur while running relatively large structures.
This  can  happen  because  the  stack  memory  limit  on  your  system  has  been  exceeded  (the  Intel
compiler for example can show this behaviour). You can troubleshoot this by setting a higher limit
for the stack memory. In bash you can remove the stack memory limitation with the command line
ulimit -s unlimited.
## 4.13    Transport Tools
Some tools useful for transport calculations can be found in tools/misc/transport.

## 4.13. TRANSPORT TOOLS141
buildwire
This tool can be used to create a one-dimensional nanowire, ready for transport calculations.  A
Principal Layer must be defined as a gen file, complete with supercell information. The code needs
as input  the number of PLs  in the device region  and the direction of  the device.   The resulting
geometry will include 2 PLs for each contact and the specified number of PL repeats in the device
region.
flux
This can be used to visualise the local bond currents in a junctions.   The code reads the output
files lcurrents.dat and writes out a script for jmol with arrows of different length/thickness for the
currents.
makecube
This program can be used to convert the real-spacepotential.datorcharge_density.datfiles com-
puted on the Poisson box to a cube file that can be plotted using jmol.
makecube potential.dat [-r refpot] [-b boxfile xfile yfile zfile]
## Options:
-r refpot provides a reference potential that is subtracted from potential.dat For instance it is possible
to subtract the equilibrium potential from the bias cases.
-b The code reads by default the files box.dat, X,Y,Zvector.dat, but different filenames can be given
with this flag
Once the cube file has been created it can be read into jmol and visualised using the following script,
script colormap128.jmol
load "structure.xyz"
isosurface pl1 fullplane plane {-1.2 0.8 0 0} color range all colorscheme ’user’ ’potential.cube’
Notice that a 128 palette colour map is provided in the tool folder.  Also note that the structure
should be converted to xyz to be read into jmol.

## 142CHAPTER 4. TRANSPORT CALCULATIONS

## Chapter 5
MODESprogram
TheMODESprogram calculates vibrational modes using data created by DFTB+.
5.1    Input forMODES
The input file forMODESmust be namedmodes_in.hsdand should be a Human-friendly Structured
Data (HSD) formatted file (see Appendix B) and must be present in the working directory.
The table below contains the list of the properties, which must occur in the input filemodes_in.hsd:
NameTypeConditionDefaultPage
## Geometryp|m-12
## Hessianp{}145
Additionally optional definitions may be present:
NameTypeConditionDefaultPage
DisplayModesp-146
## Atomsi+|m1:-1
WriteHSDInputlNo
RemoveTranslationlNo
RemoveRotationlNo
SlaterKosterFilesp|m-
## Massesp146
BornChargesp{}145
BornDerivsp{}145
EigenSolversQR
GeometrySpecifies the geometry for the system to be calculated. See p. 12.
HessianContains the second derivatives matrix of the system energy with respect to atomic posi-
tions. See p. 145.
There are two different ways to specify the Hessian matrix elements, explicit specification
and using theDirectRead{}from a file.
## 143

## 144CHAPTER 5.MODESPROGRAM
Explicit specification
Every matrix element is listed explicitly in the order defined on p. 145.
Example (using file inclusion):
## Hessian {
## <<< "./hessian.out"
## }
DirectRead{}
For large systems explicit specification of the matrix elements might overwhelm the parser
and the parsing time to process this data could be unreasonably long.  This can be avoided
by including the matrix elements directly from an external file via theDirectRead{}method
(see the example below). You have to specify the filename:
## Files""
FilePath and filename of the Hessian to read.
## Example:
Hessian = DirectRead {
## File = "./hessian.out"
## }
SlaterKosterFilesName  of  the  Slater-Koster  files  for  every  atom  type  pair  combination.   See
p. 53. This is used to obtain the masses, so if these are explicitly set usingMasses{}, it is not
required.
DisplayModesOptional settings to plot the eigenmodes of the vibrations. See p. 146.
AtomsOptional list of atoms, ranges of atoms and/or the species of atoms for which the Hessian
has been supplied.This must be equivalent to the setting you used forMovedAtomsin your
DFTB+input when generating the Hessian.
WriteHSDInputSpecifies,  if  the  processed  input  should  be  written  out  in  HSD  format.   (You
shouldn’t turn it off without good reason.)
RemoveTranslationExplicitly set the 3 translational modes of the system to be at 0 frequency.
RemoveRotationExplicitly set the rotation modes of the system to be at 0 frequency.  Note, for
periodic systems, this is usually incorrect (if used for a molecule full inside the central cell,
it may be harmless).
MassesIf present, replace the atomic masses from the Slater-Koster files. See p. 146.
EigenSolverChoice of solver for the dynamical matrix, current choices areQR,DivideAndCon-
querorRelativelyRobust.   If the modes code is compiled with the MAGMA [95, 96, 22]
library included, then theMAGMAsolver is also available.

## 5.1. INPUT FORMODES145
## 5.1.1    Hessian{}
Contains the second derivatives of the total energy, see p. 23 for details of the DFTB+ options to
generate this data.  The derivatives matrix must be stored as the following order: For thei,jandk
directions of atoms 1. . .nas
## ∂
## 2
## E
## ∂x
i1
## ∂x
i1
## ∂
## 2
## E
## ∂x
j1
## ∂x
i1
## ∂
## 2
## E
## ∂x
k1
## ∂x
i1
## ∂
## 2
## E
## ∂x
i2
## ∂x
i1
## ∂
## 2
## E
## ∂x
j2
## ∂x
i1
## ∂
## 2
## E
## ∂x
k2
## ∂x
i1
## . . .
## ∂
## 2
## E
## ∂x
kn
## ∂x
kn
Note: for supercell calculations, the modes are currently obtained at theq=0 point, irrespective of
the k-point sampling used.
5.1.2    BornCharges{}
If the mixed second derivatives of the energy with respect to electric field and position are available
## (Z
## ⋆
values), these can be used to gain an estimate of the infrared activitiy of the vibrational modes.
The  resulting  transition  strengths  (in  arbitrary  units)  are  then  printed.   The  derivatives  are  also
equivalent  to  the  first  derivatives  of  the  dipole  moment  with  respect  to  atomic  positions,  or  the
derivatives of forces with respect to external electric field.
The  Born  charges  can  be  generated  by  DFTB+  by  evaluating  finite  difference  derivatives  (see
sec.  2.3.7),  at  the  same  time  that  the  hessian  matrix  is  calculated.   The  resulting  Born  charges
are stored in the fileborn.out.
The Born charge data is ordered in the same way as the hessian information:
∂ μ
x
## ∂x
i1
∂ μ
y
## ∂x
i1
∂ μ
z
## ∂x
i1
∂ μ
x
## ∂x
j1
∂ μ
y
## ∂x
j1
∂ μ
z
## ∂x
j1
∂ μ
x
## ∂x
k1
∂ μ
y
## ∂x
k1
∂ μ
z
## ∂x
k1
## .
## .
## .
∂ μ
x
## ∂x
kn
∂ μ
y
## ∂x
kn
∂ μ
z
## ∂x
kn
The input to read the Born charges is:
BornCharges = {
<<< born.out
## }
5.1.3    BornDerivs{}
If the mixed third derivatives of the energy with respect to electric field and position are available
## (Z
## ⋆
values differentiated with respect to applied field), these can be used to gain an estimate of the

## 146CHAPTER 5.MODESPROGRAM
Raman activity of the vibrational modes.  As implemented, this is the change in the polarisability
magnitude along the vibrational modes’ directions, not the Raman intensity (see for example [85]
for a full discussion of calculating Raman intensities).
The resulting transition strengths (in atomic units) are then printed.
The input to read the Born charge derivatives is:
BornDerivs = {
<<< bornderiv.out
## }
These derivatives can be evaluated with DFTB+ by calculating the second derivatives of the en-
ergy (see 2.3.7) while also requesting either the static or dynamic electric polarisability (see sec-
tion 2.6.4). The resulting Born charges derivatives are stored in the filebornderiv.out.
5.1.4    DisplayModes{}
Allows the eigenvectors of the system to be plotted out if present
PlotModesi+|m1:-1
AnimatelYes
PlotModesSpecifies list of which eigenmodes should be plotted as xyz files.   Remember that
there are 3Nmodes for the system (including translation and rotation).
AnimateProduce separate animation files for each mode or a single file multiple modes where the
mode vectors are marked for each atom.
## Masses
Provides values of atomic masses for specified atoms, ranges of atoms or chemical species. This is
useful for example to set isotopes for specific atoms in the system.
## Massp
Any atoms not given specified masses will use the default values from the appropriate homonuclear
Slater-Koster file. An example is given below:
## Masses {
## Mass {
## Atoms = H
MassPerAtom [amu] = 1.007825
## }
## Mass {
## Atoms = C
MassPerAtom [amu] = 13.003355
## }
## Mass {
## Atoms = 1:2
MassPerAtom [amu] = 2.014102

## 5.1. INPUT FORMODES147
## }
## }
whereAtomsspecifies the atom or atoms which each have a mass ofMassPerAtomassigned.

## 148CHAPTER 5.MODESPROGRAM

## Chapter 6
## PHONONS
The tool PHONONS allows to perform quantum thermal transport calculations [86]. The quantities
that can be computed are phonon transmission function and, hence, the thermal conductance.  The
non-equilibrium Green’s function formalism for phonon transport is used. Currently only coherent
transport  is  possible  based  on  a  dynamical  matrix.   Support  for  Dynamical  Matrices  other  than
DFTB+are possible.  Phonon dispersion of materials can also be computed using this tool, based
on a supercell geometry.
The input file must be namedphonons_in.hsdand should be a Human-friendly Structured Data
(HSD) formatted file (see Appendix B).
6.1    Phonon transport calculation
The input file has a similar structure to that defined for electron transport calculations and for the
calculation of phonon modes (see Chapters 4 and 5).
The table below contains the relevant blocks in the input file,
NameTypeConditionDefaultPage
## Geometryp|m-12
## Transportp|m-150
## Massesp|m-
## Hessianp{}151
## Analysisp|m-151
GeometrySpecifies the geometry for the system to be calculated.  Follow the steps described in
Section 4.1 for a proper generation of the geometry file to compute transport properties. Also
use the tool SETUPGEOM to help building a valid structure for transport (See Chapter 8).
TransportContains  the  description  of  the  partitioning  of  the  system  into  adeviceandcontact
regions and additional information needed to calculate the required self-energies associated
with the contacts. See Section 4.2 and p. 150.
MassesSpecifies the mass of atoms in the geometry file.  Default values are the standard atomic
weights of the chemical elements. Alternatively it is possible to insert them manually or read
thenm from the Slater-Koster files.
## 149

## 150CHAPTER 6. PHONONS
HessianContains information about the second derivatives matrix of the system energy with re-
spect to atomic positions. See p. 151.
AnalysisThis block is used to introduce the parameters for the calculation of phonon transport
properties: phonon transmission, (total and projected) density of states, and thermal conduc-
tance. See p. 151.
## 6.1.1    Transport{}
The blockTransportis used to specify the partitioning of the structure into contacts and extended
central region. The temperature of the contacts is added in the contact sections. An example of the
transport geometry specification looks like:
transport {
device {
AtomRange = 1 50
## }
contact {
Id = "Drain"
atomrange = 51 100
temperature [K] = 300.0
## }
contact {
Id = "Source"
atomrange = 101 150
temperature [K] = 300.0
## }
## }
## Device{}
The device block contains the following properties
AtomRange2i-150
AtomRangedefines the first and last atom of the device region.
## Contact{}
The contact block contains the following properties:
## Ids
AtomRange2i
PLShiftTolerancer1E-5
## Temperaturer0.0
IdAssign a text label to the contact (must be 50 or fewer characters).

## 6.1. PHONON TRANSPORT CALCULATION151
AtomRangeDefines the first and last atom of the device region.Notethe contacts should be
defined such that the atoms included in the range are in continuous increasing order in the
structure.
PLShiftTolerance[length]Used to set the absolute accuracy used to check principal layer (PL)
consistency (see above). The default is 10
## −5
atomic units. Please be aware that using a large
values may hide errors due to an inconsistent definition of the contacts, therefore it should
not be modified.
Temperature[temperature]Specifies the temperature of the contact. For two contact calculations,
if temperature of the contacts are different then a heat flux will be computed.
## 6.1.2    Hessian{}
The Hessian matrix is at the core of the calculation. It contains the second derivatives of the energy
## ,
## ∂
## 2
## E
## ∂x
i1
## ∂x
i1
## ∂
## 2
## E
## ∂x
j1
## ∂x
i1
## ∂
## 2
## E
## ∂x
k1
## ∂x
i1
## ∂
## 2
## E
## ∂x
i2
## ∂x
i1
## ∂
## 2
## E
## ∂x
j2
## ∂x
i1
## ∂
## 2
## E
## ∂x
k2
## ∂x
i1
## . . .
## ∂
## 2
## E
## ∂x
kn
## ∂x
kn
The Hessian matrix can be supplied by DFTB+, see p. 23 The derivatives matrix must be stored
as the following order:  For thei,jandkdirections of atoms 1. . .n.   The tool PHONONS can
also read other formats of Hessians computed with other codes. Currently Gaussian and CP2K are
implemented.
The table below contains the list of properties which may be present in this block:
## Cutoffr0.0
## Matrixp{}
An example of the Hessian specification looks like:
## Hessian {
## Cutoff = 50.0
Matrix = dftb{}
## }
CutoffSpecifies the range of interacting atoms in atomic units.
Matrix{}Contains the second derivatives of the energy.  SettingdftbMatrix type reads the file
’hessian.out’. Currently the code can also support CP2K file format.
Note:  for  supercell  calculations,  the  phonon  transmission  is  obtained  at  theq=0  point,
irrespective of the k-point sampling used to compute the Hessian.
## 6.1.3    Analysis{}
The analysis block looks like:
## Analysis {
TunnelingAndDOS{

## 152CHAPTER 6. PHONONS
FreqRange = 1e-6 1e-2
FreqStep = 4e-5
DeltaModel = deltaOmega{
## Delta = 1e-4
## }
## Region = {
## Atoms = 1:50
## }
## }
ModeType = longitudinal
## Conductance{
TempRange [K] = 1.0 802.0
TempStep [K] = 1.0
## }
## }
TunnelingAndDOS{}
This method block is used to calculate the transmission by means of the Caroli formula in terms
of the phonon Green’s functions of the device and the self-energies of the contacts.  The density
of states is also computed from the spectral function.  This block can only be specified if an open
boundary conditions system has been defined inTransport(see p.125).
FreqRange2r
FreqStepr
DeltaModelr
## Regionp{}152
FreqRange[energy]Contains the frequency range over which the transmission function and local
density of states are computed.
FreqStep[energy]Is the frequency sampling step for evaluating properties.
DeltaModelDefines the frequency dependent model forδin the Green’s function. Possible values
are ’deltaSquared’, ’deltaOmega’ and ’Mingo’ model. The case ’deltaSquared’ sets a constant
value equal toDelta*Deltafor dimensional reasons. The case ’deltaOmega’ setsδ=Delta∗
ω.  The Mingo model setsδ=f(ω)∗ω
## 2
, wheref(ω) =Delta(1−ω/ω
max
).  In principles
this model, as suggested in [104], should be good in the limitω→0, however in some case
it produces an extremely low value ofδthat result in numerical problems. The ’deltaOmega’
model is recommended.
Delta[energy]Defines the imaginary frequency value for the phonon Green’s function. Note that
in the Mingo modelDeltais just a dimensionless scaling factor.
Wmax[energy]Defines the cutoff frequency typically set as the maximal phonon frequency of the
problem.
Region{}This block defines atomic ranges on to which the density of states is projected.  The
definition in the block follow the same syntax as a DFTB+ calculation without transport (see
section 2.6.1).

## 6.2. PHONON DISPERSION153
ModeType{}Defines the type of modes for which the transmission is restricted to.  It is basic
implementation that allows to project on mode components along cartesian axes.  Currently
available options are
-  x-axis Projects on x-axis
-  y-axis Projects on y-axis
-  z-axis Projects on z-axis
-  longitudinal Projects on z, assuming transport direction is along z.
-  transverse Projects on x-y.
-  inplane Projects on x-z, assuming a 2D planar structure on this plane.
-  outofplane Projects on y, assuming a 2D planar structure on the xz plane.
-  all Computes transmission for all modes.
## Conductance{}
This method block is used to calculate the thermal conductance by means of the Landauer formula.
TempRange2r
TempStepr
TempRange[temperature]Contains the temperature range over which the thermal conductance is
computed.
TempStep[temperature]Is the temperature sampling step for evaluating the thermal conductance.
6.2    Phonon dispersion
In order to compute phonon dispersions the following steps must be followed.   1.   Start from a
bulk cell and accurately relax setting a large number of k-points and tightMaximalForceCompo-
nent=1e−5.  AllowLatticeOpt=Yes.  2.  Generate a suitable supercell usingrepeatgenin dptools.
This supercell must have the central cell at the beginning and then the repeated cells must follow.
Only odd repetitions are possible such as 3x3x3 or 5x5x5. 4. Check the forces of this supercell are
still very small.  5.  Compute the Hessian for all atoms of this supercell.  6.  Run PHONONS for
bandstructure calculations using the settings below.
The relevant sections in the input file are:
NameTypeConditionDefaultPage
## Geometryp|m-12
PhononDispersionp|m-150
## Massesp|m-
## Hessianp{}151
6.2.1    PhononDispersion{}
The PhononDispersion block looks like:

## 154CHAPTER 6. PHONONS
PhononDispersion{
SuperCell = 3 3 3
OutputUnits = cm
KPointsAndWeights= Klines{
## 1 0.5 0.5 0.5  # L
## 10 0.0 0.0 0.0 # Gamma
## 10 0.5 0.0 0.5 # X
## }
## }
SupercellSpecifies the number of repetitions of the unit cell along the lattice vectors.  This must
be the same as those set in repeatgen to generate the supercell used for phonon calculations.
Usually 3x3x3 supercells or in case of low-dimensional structures can be for instance 3x3x1
## (2-dimension).
KPointsAndWeights{}Defines the k-point path for the phonon dispersion.  The syntax is the
same as that defined in the DFTB+ input.
OutputUnitsSpecifies the output units of the phonon bandstructure.  These can be one of ’H’,
’eV’, ’meV’, ’cm’ or ’THz’.

## Chapter 7
## WAVEPLOT
The WAVEPLOTprogram is a tool for the visualisation of molecular orbitals. Based on the files cre-
ated by a calculation performed by DFTB+ it is capable of producing three dimensional information
about the charge distribution. The information is stored as cube files, which can be visualised with
many common graphical tools (e.g.VMDor JMOL).
The user controls WAVEPLOTthrough an input file, choosing which orbitals and charge distributions
should  be  plotted  for  which  spatial  region.   Since  the  information  about  the  shape  of  the  basis
functions is usually not contained in the Slater-Koster files, the coefficients and exponents for the
Slater type orbitals must be entered by the user as part of the input file.
The WAVEPLOTtool offers the following plotting capabilities:
-  Total charge density.
-  Total spin polarisation.
-  Difference between the total charge density and the density obtained by the superposition of
the neutral atomic densities (visualisation of the charge shift).
-  Electron density for individual levels.
-  Real and imaginary part of the wavefunctions for individual levels.
7.1    Input for WAVEPLOT
The input file for WAVEPLOTmust be namedwaveplot_in.hsdand should be a Human-friendly
Structured Data (HSD) formatted file (see Appendix B) and must be present in the working direc-
tory.
The table below contains the list of the properties, which must occur in the input filewaveplot_in.hsd:
NameTypeConditionDefaultPage
## Optionsp-156
DetailedXMLs-
EigenvecBins-
GroundStatelYes
## Basisp-159
## 155

## 156CHAPTER 7.WAVEPLOT
OptionsContains the options for WAVEPLOT. See p. 156.
DetailedXMLSpecifies  the  name  of  the  file,  which  contains  the  detailed  XML  output  of  the
DFTB+ calculation (presumablydetailed.xml).
EigenvecBinSpecifies the name of the file, which contains the eigenvectors in binary format (pre-
sumablyeigenvec.bin).
GroundStateRead ground or excited state occupation data from the detailed XML output.
BasisContains the definition of the Slater-type orbitals which were used as basis in the DFTB+
calculation.  At the moment, due to technical reasons this information has to be entered by
the user per hand. In a later stage, it will be presumably read in by WAVEPLOTautomatically.
See p. 159.
Additionally optional definitions may also be present:
NameTypeConditionDefaultPage
ParserOptionsp{}161
## 7.1.1    Options
This  property  contains  the  options  (as  a  list  of  properties),  which  the  user  can  set,  in  order  to
influence the behaviour of WAVEPLOT. The following properties can be specified:
PlottedRegionp|m-158
NrOfPoints3i-
PlottedKPointsi+|mperiodic system-
PlottedLevelsi+|m-
PlottedSpinsi+|m-
TotalChargeDensitylNo
TotalSpinPolarisationlNo
TotalChargeDifferencelNo
TotalAtomicDensitylNo
ChargeDensitylNo
RealComponentlNo
ImagComponentlcomplex wavefunctionNo
FoldAtomsToUnitCelllperiodic systemNo
FillBoxWithAtomslNo
NrOfCachedGridsi-1
VerboselNo
RepeatBox3i{1 1 1}
ShiftGridlYes
BinaryAccessTypes2s"stream" "stream"
PlottedRegionRegulates the region which should be plotted. See p. 158.
NrOfPointsSpecifies the resolution of the equidistant grid on which the various quantities should
be calculated. The three integers represent the number of points along the three vectors of the
parallelepiped specifying the plotted region.  The number of all calculated grid points is the
product of the three integers.
## Example:

## 7.1. INPUT FORWAVEPLOT157
NrOfPoints = { 50 50 50 }   # 125 000 grid points
PlottedKPointsThe list of integers specified here represent the k-points, at which the molecular
orbitals should be plotted. The first k-point in the original DFTB+ calculation is represented
by "1".  The order of the specified k-points does not matter.  (You can also use index specifi-
cation expressions as described in appendix B.7.) The actual list of molecular orbitals to plot
is obtained by intersecting the specifications forPlottedKPoints,PlottedLevelsandPlotted-
Spins. The option is ignored if the original calculation was not periodic.
## Example:
PlottedKPoints = 1 3 5# The 1st, 3rd and 5th k-point is plotted
PlottedLevelsThe list of integers specified here represent the states which should be plotted. The
first (lowest lying) state in the original DFTB+ calculation is represented by "1".  The order
of the specified states does not matter.   (You can also use index specification expressions
as described in appendix B.7.)  The actual list of molecular orbitals to plot is obtained by
intersecting the specifications forPlottedKPoints,PlottedLevelsandPlottedSpins.
## Example:
PlottedLevels = 1:-1   # All levels plotted
PlottedSpinsThe list of integers specified here represent the spins, for which the molecular or-
bitals should be plotted.  The first spin in the original DFTB+ calculation is represented by
"1".  The order of the specified spins does not matter.  (You can also use index specification
expressions as described in appendix B.7.) The actual list of molecular orbitals to plot is ob-
tained by intersecting the specifications forPlottedKPoints,PlottedLevelsandPlottedSpins.
## Example:
PlottedSpins = 1 2    # Both spin-up and spin-down plotted
ChargeDensityIf true, the absolute square of the wavefunction is plotted for the selected molec-
ular orbitals.
RealComponentIf true, the real component of the wavefunction is plotted for the selected molec-
ular orbitals.
ImagComponentIf true, the imaginary component of the wavefunction is plotted for the selected
molecular orbitals. This option is only parsed, if the wavefunctions in the DFTB+ calculation
were complex.
TotalChargeDensityIf true, the total charge density of the system is plotted.
TotalSpinPolarisation/TotalSpinPolarizationIf true, the total spin polarisation of the system
(difference of the spin up and spin down densities) is plotted. This option is only interpreted
if the processed DFTB+ calculation was spin polarised.
TotalChargeDifferenceIf true,  the difference between the total charge density and the charge
density obtained by superposing the neutral atomic densities is plotted.
TotalAtomicDensityIf true, the superposed neutral atomic densities are plotted.
FoldAtomsToUnitCellIf true, the atoms are folded into the parallelepiped unit cell of the crystal.

## 158CHAPTER 7.WAVEPLOT
FillBoxWithAtomsIf  true,  the  geometry  is  extended  by  those  periodic  images  of  the  original
atoms, which falls in the plotted region or on its borders. It setsFoldAtomsToUnitCellto Yes.
NrOfCachedGridsSpecifies how many grids should be cached at the same time.  The value-1
stands for as many as necessary to be as fast as possible. Since the plotted grids could even-
tually become quite big, you should set it to some positive non-zero value if you experience
memory problems.
## Example:
NrOfCachedGrids = 5   # Maximal 5 cached grids
RepeatBoxThe three integers specify how often the plotted region should be repeated in the gen-
erated cube files.  Since repeating the grid is not connected with any extra calculations, this
is a cheap way to visualise a big portion of a solid.  You want probably set theFillBoxWith-
Atomsoption to Yes to have the atoms also repeated (otherwise only the plotted function is
repeated).  In order to obtain the correct picture, you should set the plotted region to be an
integer multiple of the unit cell of the crystal. Please note, that the phase of the wavefunctions
in the repeated cells will be incorrect, except in theΓ-point.
## Example:
RepeatBox = { 2 2 2 }   # Visualising a 2x2x2 supercell
ShiftGridWhether the grid should be shifted, so that the specified origin lies in the middle of a
cell and the grid fills out the specified plotted region symmetrically. The default isYes. If set
toNo, the specified grid origin will be at the edge of a cell.
VerboseIf true, some extra messages are printed out during the calculation.
BinaryAccessTypesSets the file access type for binary I/O. See the keyword description in Sec. 2.5
on page 88.
PlottedRegion
Specifies the region, which should be included in the plot. You can specify it explicitly (as property
list), or let WAVEPLOTspecify it automatically using either theUnitCell{}or theOptimalCuboid{}
methods.
Explicit specificationSpecifies origin and box size explicitly.
## Origin3r-
## Box9r-
Origin[length]Specifies the xyz coordinates of the origin as three real values.
Box[length]Specifies the three vectors which span the parallelepiped of the plotted region.  The
vectors are specified sequentially (a
## 1x
a
## 1y
a
## 1z
a
## 2x
a
## 2y
a
## 2z
a
## 3x
a
## 3y
a
## 3z
).  You are allowed to
specify  an  arbitrary  parallelepiped  with  nonzero  volume  here.   Please  note,  however,  that
some visualisation tools only handles cube files with cuboid boxes correctly.
## Example:

## 7.1. INPUT FORWAVEPLOT159
PlottedRegion = {
## Origin = { 0.0 0.0 0.0 }
Box [Angstrom] = {
## 12.5  12.5 -12.5
## 12.5 -12.5  12.5
## -12.5  12.5  12.5
## }
## }
UnitCell{}For the periodic geometries, this method specifies the plotted region to be spanned
by the three lattice vectors of the crystal.  The origin is set to (0 0 0).  For cluster geometries, the
smallest cuboid containing all atoms is constructed.  For a cluster geometry theUnitCell{}object
may have the following property:
MinEdgeLengthr1.0
MinEdgeLength[length]Minimal side length of the cuboid, representing the plotted region. This
helps  to  avoid  cuboids  with  vanishing  edge  lengths  (as  it  would  be  the  case  for  a  linear
molecule).
## Example:
PlottedRegion = UnitCell {
MinEdgeLength [Bohr] = 2.0
## }
OptimalCuboid{}Specifies  the  plotted  region  as  a  cuboid,  which  contains  all  the  atoms  and
enough space around them, that no wavefunctions are leaking out of the cuboid.  This object does
not have any parameters.
## Example:
PlottedRegion = OptimalCuboid {}
## 7.1.2    Basis
The basis definition is done by specifying the following properties:
## Resolutionr-
ElementName1p-161
ElementName2p-161
## .
## .
## .
ResolutionSpecifies the grid distance used for discretising the radial wavefunctions.  Setting it
too small, causes a long initialisation time for WAVEPLOT.  Setting it too high causes a very
coarse grid with bad mapping and inaccurate charges. Values around 0.01 seem to work fine.
(Units must be in Bohr.)
ElementName1Basis for the first atom type.  The name of this property is the name of that atom
type.

## 160CHAPTER 7.WAVEPLOT
ElementName2Basis for the second atom type. The name of this property is the name of that atom
type.
Before describing the properties (and their sub-properties) in detail,  the full basis definition for
carbon (sp) and hydrogen (s) should be presented as example:
## Basis = {
## Resolution = 0.01
C = {# Basis of the C atom
AtomicNumber = 6
Orbital = {# 2s orbital
AngularMomentum = 0
## Occupation = 2
## Cutoff = 4.9
## Exponents = { 6.00000   3.00000   1.50000 }
## Coefficients = {
## 1.050334389886e+01  2.215522018905e+01  9.629635264776e+00
## -4.827678012828e+01 -5.196013014531e+00 -2.748085126682e+01
## 3.072783267234e+01 -1.007000163584e+01  8.295975876552e-01
## }
## }
Orbital = {# 2p orbital
AngularMomentum = 1
## Occupation = 2
## Cutoff = 5.0
## Exponents = { 6.00000   3.00000   1.50000 }
## Coefficients = {
## -2.659093036065e+00 -6.650979229497e+00 -1.092292307510e+01
## 2.190230021657e+00 -9.376762008640e+00 -5.865448605778e-01
## 8.208019468802e+00 -2.735743196612e+00  2.279582669709e-01
## }
## }
## }
H = {# Basis for the H atom
AtomicNumber = 1
Orbital = {# 1s orbital
AngularMomentum = 0
## Occupation = 1
## Cutoff = 4.2
## Exponents = { 2.00000   1.00000 }
## Coefficients = {
## 1.374518455977e+01  1.151435212242e+01  2.072671588012e+00
## -1.059020844305e+01  3.160957468828e+00 -2.382382105798e-01
## }
## }
## }
## }

## 7.1. INPUT FORWAVEPLOT161
Basis for an atom type
The actual basis for every atom type is specified as a property with the name of that type:
AtomicNumberi-
## Orbitalp-161
## .
## .
## .
AtomicNumberThe atomic number of the species. This is not needed in the actual calculations,
but for creating proper cube-files.
OrbitalContains the parameters of the orbitals. For every orbital a separateOrbitalblock must be
created. See below.
OrbitalFor every orbital there is an orbital block which specifies the radial wavefunction. Thereby
the following properties must be used:
AngularMomentumi-
## Occupationr-
## Cutoffr-
## Exponentsr+-
## Coefficientsr+-
AngularMomentumAngular momentum of the current orbital. (s– 0,p– 1,d– 2,f– 3)
OccupationOccupation of the orbital in the neutral ground state.   (Needed to obtain the right
superposed atomic densities.)
CutoffCutoff for the wave function.  You should choose a value, where the value of 4πr
## 2
## |
## R(r)
## |
## 2
drops below 10
## −4
or 10
## −5
.R(r)is the radial part of the wave function.  If you do not have
the possibility to visualise the radial wave function, take the half of the longest distance, for
which an overlap interaction exists in the appropriate homonuclear Slater-Koster file. (Value
must be entered in Bohr.)
ExponentsThe radial wave function with angular momentumlhas the form:
## R
l
## (r) =
n
exp
## ∑
i=1
n
pow
## ∑
j=1
c
i j
r
l+j−1
e
## −α
i
r
## (7.1)
This property defines the multiplication factors in the exponent (α
i
## ).
CoefficientsThis property contains the coefficientsc
i j
as defined in equation (7.1). The sequence
of the coefficients must be as follows:
c
## 11
c
## 12
## . . .c
## 1n
pow
c
## 21
c
## 22
## . . .c
## 2n
pow
## . . .
7.1.3    ParserOptions
This block contains the options, which are effecting only the behaviour of the HSD parser and are
not passed to the main program.
IgnoreUnprocessedNodeslNo
StopAfterParsinglNo

## 162CHAPTER 7.WAVEPLOT
IgnoreUnprocessedNodesBy default the code stops if it detects unused or erroneous keywords
in the input. Thisdangerousflag suspends these checks. Use only for debugging purposes.
StopAfterParsingIf set toYes,  the parser stops after processing the input and written out the
processed input to the disc. It can be used to make sanity checks on the input without starting
an actual calculation.

## Chapter 8
## SETUPGEOM
The program utilitySETUPGEOMcan help in preparing the input geometry for transport calcula-
tions, following the rules specified in the Transport section.  Starting from a geometry that can be
the output of a previous relaxation step or any other building step,SETUPGEOMcan be used to
specify the system partitioning intocontactsanddeviceregions and reorder the atom numbers such
that thedeviceis placed before thecontacts.  Additionally the tool reorders the atoms of the two
PLs of each contact or can create the second PL if only one is specified.  Finally, thedeviceregion
is reordered and partitioned into PLs for more efficient Green’s function calculations.  A practical
example is discussed in DFTB+ recipes.
8.1    Input forSETUPGEOM
The input of the code must be namedsetup_in.hsdand should be a Human-friendly Structured
Data (HSD) formatted file (see Appendix B).
The file is similar to the DFTB+ input, where just 2 sections are needed. The table below contains
the list of the properties, that must occur in the input file:
NameTypeConditionDefaultPage
## Geometryp|m-12
## Transportp{}
GeometrySpecifies the geometry for the system to be calculated. See p. 12.
## 8.1.1    Transport{}
The transport block must specify the atoms in each contact. An example of theTransportsection is
reported below:
## Transport {
## Contact {
## Id = "source"
Atoms [zeroBased] = {9:24 56:78}
ContactVector = 0.0 0.0 3.78
PLsDefined = 2
## 163

## 164CHAPTER 8.SETUPGEOM
## }
## Contact {
## Id = "drain"
Atoms [zeroBased] = {81:100}
ContactVector = 0.0 0.0 3.78
PLsDefined = 2
## }
Task = SetupGeometry{
SlaterKosterFiles = type2names{
## ...
## }
TruncateSKRange = {
SKMaxDistance [AA] = 5.0
HardCutOff = Yes
## }
## }
## }
## Ids
Atomsl i-
PLsDefinedi1 or 22
ContactVector3r-
TruncateSKRangep
SlaterKosterFilesp
IdSpecifies a unique contact name.
AtomsSets the list of atoms belonging to the named contact. This list can be easily obtained using
some external atomic manipulation tool like for instance Jmol.
NOTE the modifier[zeroBased]specifying that the defined atom numbers starts from 0 rather
than 1.  Use[oneBased]or no modifier for normal numbering starting from 1.  (You can also
use index specification expressions as described in appendix B.7.)
PLsDefinedSpecifies the number of PLs given for the named contact.  If this value is 2 (default)
the total number of atoms in the contact are divided by 2 and the 2nd PL is reordered accord-
ing to the 1st with the help ofContactVector.  If this value is 1, the correct numbers of PLs
are created according to the interaction cutoff distance.
ContactVectorSets  the  translation  vector  connecting  the  2  PLs  along  the  transport  direction.
Since contact must be aligned to a cartesian axis, so must be this vector.  Different contact
can be in different directions. Also notice that the vector must be specified along the positive
axis direction.
TruncateSKRangeThis section is the same as that described in section 2.4.
SlaterKosterFilesThis section is the same as that described in section 2.4. The SK files are used
to compute the cutoff distance.

## 8.1. INPUT FORSETUPGEOM165
8.1.2    Code output
The code writes two files,processed.genandtransport.hsd.  The first file is the processed geome-
try, reordered according to the needs of transport calculations.  NOTE that coordinates are folded
to the unit cell such that all fractional coordinates are in the range 0 to 1.  The structure is first
translated such that all absolute coordinates have posive values.  This step is important in order to
take properly into account the periodic images.  The filetransport.hsdcontains the details of the
geometry partitioning for transport, as described in the Transport section and that can be included in
the input file. For convenience this file also contains the blockTruncateSKRangein order to make
the Hamiltonian consistent with theMaxSKCutoffset in there.

## 166CHAPTER 8.SETUPGEOM

## Chapter 9
## DFTB+ API
You can compile DFTB+ into a library and access some of its functionality via an API. Currently
the API offers high level access only:  you can set the current geometry and extract energy and
forces for that geometry.
9.1    Building the library
In order to compile the DFTB+ library with the public API, set theWITH_APIoption toTRUEin
theconfig.cmakeconfiguration file.  Then (from a separate build folder) build and install the code
as ususal
cmake /PATH/TO/DFTBPLUS/SOURCE/FOLDER
make -j
After compilation, you can test the api functionality specifically with
ctest -R ’api_’
Finally, you can install the library with the usual install command
make install
After the installation, the library (libdftbplus.a) can be found in thelib/folder of the installation
directory.  Depending on the build options this folder may contain several other libraries as well,
which must be linked additional tolibdftbplus.ato your binary.
9.2    General guidelines
Although the DFTB+ library contains nearly all internal routines of the DFTB+ code, you should
access the code functionality only via the provided API and not by calling internal routines di-
rectly.  We aim to keep the API stable over time, but the internal routines themselves can change
without notice between releases.  The API version can be found in theAPI_VERSIONfile in the
src/dftbp/api/mmfolder.  We use semantic versioning, a change in the major (first) version num-
ber indicates backwards incompatible changes, while changes in the minor (second) version number
indicate backwards compatible extensions of the API.
## 167

## 168CHAPTER 9.DFTB+API
When using the API, we suggest thatParserVersionshould be set in order to ensure that you can
maintain backwards compatibility with later versions of DFTB+.
The Fortran interface is documented in the source code filesrc/dftbp/api/mm/mmapi.F90, while
src/dftbp/api/mm/capi.F90gives the bindings for calling from C. DFTB+ uses atomic units in-
ternally, hence exchanged values should be in this unit system (however HSD formatted data can
carry unit modifiers, see examples of input parsing for details).

## Appendix A
DFTB+ Releases
The recent input and parser versions along with the relevant code release date is listed below:
InputVersion/ ReleaseParserVersionDate available
25.114December 18, 2025
24.114February 12, 2024
23.113June 23, 2023
22.212December 20, 2022
22.111May 25, 2022
21.210December 13, 2021
21.19May 12, 2021
20.29November 17, 2020
20.18July 22, 2020
19.17July 1, 2019
18.26August 19, 2018
18.15March 2, 2018
17.15June 16, 2017
## 169

## 170APPENDIX A.DFTB+RELEASES

## Appendix B
The HSD format
The Human-friendly Structured Data (HSD) format is a structured input format, which can be bi-
jectively mapped onto a subset of the XML-language.  Its simplified structure and notation should
make it a more convenient user interface than reading and writing XML tags. This section contains
a brief overview of the most important aspects of this format.
An input file in the HSD format consists basically of property assignments of the form
Property = value
where the valuevaluewas assigned to the propertyProperty. The value must be one of the following
types (detailed description of each follows later on):
-  Scalar, such as
## –integer
## –real
## –complex
## –logical
## –string
-  list of scalars
-  method
-  list of further property assignments
An unquoted hash mark (#) is interpreted as the start of a comment, everything after it, up to the
end of the current line, is ignored by the parser (hash marks inside of quotes are taken as literals not
comments):
# Entire line with comment
Prop1 = "hell#oo" # Note, that the first hashmark is quoted!
The name of the properties, the methods and the logical values are case insensitive, so the assign-
ments
## 171

## 172APPENDIX B. THE HSD FORMAT
## Prop1 = 12
prOP1 = 12
## Prop2 = Yes
Prop2 = YES
are pairwise identical.  Quoted strings (specified either as a value for a property or as a file name),
however, are case sensitive.
If a property, which should only appear once, is defined more than once, the parser uses thefirstdef-
inition and ignores all the other occurrences.Thus specifying a property in the input a second time,
does not override the first definition.(For advanced use the HSD syntax also offers the possibility
of conditional overriding/extending of previous definitions. For more details see B.6.)
B.1    Scalars and list of scalars
The following examples demonstrate the assignments with scalar types:
SomeInt = 1
SomeInt2 = -3
SomeRealFixedForm = 3.453
SomeRealExpForm = 2.12e-45
ComplexList = 4+9i 0.32-0.45i 3.2e-1+4.5e-1i -1i 8.0
## Logical1 = Yes
Logical2 = no
SomeString = "this is a string value"
As shown above, real numbers can be entered in either fixed or exponential form. Complex values
are  entered  as  two  consecutive  real  valued  numbers,  one  for  the  real  part  and  the  other  for  the
imaginary component. The imaginary part must have a suffix of the letteri. No spaces are allowed
inside the complex number, and the sign of the imaginary part must be explicitly written out (if the
real part is present). If one of the two components is zero, it can be omitted.
The value for logical properties can be eitherYesorNo(and are case insensitive).  Strings should
always be enclosed in quotation marks, to make sure that they are treated as one string and that they
are not interpreted by the parser:
String1 = "quoted string"
String2 = this value is actually a list of 9 strings # list of strings!
String3 = "Method { ;"   # This is a string assignment
String4 = Method {# This is syntactically incorrect, since
# it tries to assign a method to String4
A list of scalars is created by sequentially writing the scalars separated by one or more spaces:
PlottedLevels = 1 2 3
## Origin = 0.0 0.0 0.0
ConfirmItTwice = Yes Yes
SpeciesNames = "Ga" "As"

## B.2. METHODS AND PROPERTY LISTS173
The assignments statements are usually terminated by the end of the line. If the list of the assigned
values  goes  over  several  lines,  it  must  be  entered  between  curly  (brace)  brackets.   In  that  case,
instead of the line end, the closing bracket will signal the end of the assignment. It is allowed to put
a list of scalars in curly brackets, even if it is only one line long.
PlottedLevels = {
## 1 2 3
## }
## Origin = { 0.0
## 0.0 0.0 }
## Short = { 1 2 3 }
If you want to put more than one assignment in a line, you have to separate them with a semi-colon:
## Variable = 12; Variable2 = 3.0
If a property should be defined as empty, either the empty list must be assigned to it or it must be
defined as an empty assignment terminated by a semi-colon:
EmptyProperty = {}
EmptyProperty2 = ;
Please note, that explicitly specifying a property to be empty is not the same as not having specified
it at all.  In the latter case, the parser substitutes the default value for that property (if there is a
default for it), while in the first case it interprets the property to be empty.  If a property without
default value is not specified, the parser stops with an appropriate error message.
B.2    Methods and property lists
Besides the scalar values and the list of scalars, the right hand side of an assignment may also con-
tain a method, which itself may contain one or more scalar values or further property assignments
as parameters:
Diagonaliser = LapackDAC {}   # Method without further params
PlottedLevels = Range { 1 3 }  # Range needs two scalar params
PlottedRegion = UnitCell {    # UnitCell needs a property list
MinEdgeLength = 1.0# as parameter
SomeOtherProperty = Yes
## }
The first assignment above is an example, where the method on the right hand side does not need
any parameters specified.   Please note,  that even if no parameters are required,  the opening and
closing brackets after the method are mandatory.  If the brackets are missing, the parser interprets
the value as a string.
In  the  second  assignment,  the  methodRangeneeds  only  two  integers  as  parameters,  while  for
the methodUnitCellseveral properties must be specified.  A method may contain either nothing
or scalars or property assignments,  but never scalars and property assignments together.   So the
following assignment would be invalid:

## 174APPENDIX B. THE HSD FORMAT
InvalidSpecif = SomeMethod {
## 1 2 3
## Property1 = 12
"Some strings here"
## }
Very often a value for the property is represented by a list of further property assignments (as above,
but without naming an explicit method beforehand). In that case, the property assignments must be
put between curly brackets (property list):
## Options = {
SubOption1 = 12
## Suboption2 = "string"
## }
## B.3    Modifiers
Each property may carry a modifier, which changes the interpretation of the assigned value:
LatticeConstant [Angstrom] = 12.23
Here, the propertyLatticeConstantpossesses theAngstrommodifier, so the specified value will be
interpreted to be in Ångström instead of the default length unit. Specifying a modifier for a property
which is not allowed to carry one leads to parsing error.
The syntax of the HSD format also allows methods (used as values on the right hand side of an
assignment) to carry modifiers, but this is usually not used in the current input structures.
Sometimes, the assigned value to a property contains several values with different units, so that more
than one modifiers can be specified. In that case, the modifiers must be separated by a comma.
VolumeAndChargePerElement [Angstrom^3,au] = {
1.2  0.3  # first element
4.2  0.1  # second element
## }
You have to specify either no modifier or all modifiers.  If you want specify the default units for
some of the quantities, you can omit the name of the appropriate modifier, but you must include the
separating comma:
# Specifying the default unit for the charge. Note the separating comma!
VolumeAndChargePerElement [Angstrom^3,] = {
1.2  0.3  # first element
4.2  0.1  # second element
## }
Specifying not enough or too many modifiers leads to parser error.

## B.4. FILE INCLUSION175
B.4    File inclusion
It is possible to include files in an HSD-formatted input by using the<<<and<<+operators.
The former includes the specified file as raw text without parsing it, while latter parses the included
text:
Geometry = GenFormat {
## <<< "geo_start.gen"
## }
## Basis = {
<<+ "File_containing_the_property_definitons_for_the_basis"
## }
The file included with the<<+operator must be a valid HSD document in itself.
## B.5    Processing
After  having  parsed  and  processed  the  input  file,  the  parser  writes  out  the  processed  input  to  a
separate file in HSD format.  This file contains the internal representation for all properties, which
can be specified by the user.  In particular,  all default values are explicitly set and all automatic
definitions (e.g. ranges) are converted to their internal representations.
Assuming the following example as input
# Lattice contant specified in Angstrom.
# Internal representation uses Bohr, so it will be converted.
LatticeConstant [Angstrom] = 12.0
# This property is not set, as its commented out, so the
# default value will be set for this (let’s assume, it’s Yes)
#DoAProperJob = No
# Plotted levels specified as a range with parameter 1:3.
# This will be replaced by an explicit listing of the levels
PlottedLevels = { 1:3 }
the parsed and processed input (written to a special file) should look something like
LatticeConstant = 22.676713499923075
DoAProperJob = Yes
PlottedLevels = {
## 1 2 3
## }
If you want to reproduce your calculation later, you should use this processed input. It should give
you identical results, even if the default setting for some properties had been changed in the code.

## 176APPENDIX B. THE HSD FORMAT
B.6    Extended format
As stated earlier, if a property, which should be defined only once, occurs more than once in the
input, the parser uses per default the first definition and ignores all the others. Sometimes this is not
the desired behaviour, therefore, the HSD format also offers the possibility to override properties
that were set earlier. This feature can be very useful for scripts which are generate HSD input based
on some user provided template. By just appending a few lines to the end of the user provided input
the scripts can make sure that certain properties are set correctly.  Thus, the script can modify the
user input, without having to parse it at all.
The parser builds internally an XML DOM-tree from the HSD input. For every property or method
name an XML tag with the same name (but lowercased) is created, which will contain the value of
the property or the method. If the value contains further properties or methods, new XML tags are
created inside the original one. Shortly, the HSD input is mapped on a tree, whereas the assignment
and the containment (equal sign and curly brace) are turned into a parent-child relationships.
## 1
## As
an example an HSD input and the corresponding XML-representation is given below:
Level0Elem1 = 1
Level0Elem2 = { 1 2 3 }
Level0Elem3 = {
Level1Elem1 = 12
Level1Elem2 = Level2Elem1 {
Level3Elem1 = "abcd"
Level3Elem2 = {
Level4Elem1 = 12
## }
## }
## }
## <level0elem1>1</level0elem1>
## <level0elem2>1 2 3</level0elem2>
## <level0elem3>
## <level1elem1>12</level1elem1>
## <level1elem2>
## <level2elem1>
## <level3elem1>"abcd"</level3elem1>
## <level3elem2>
## <level4elem1>12</level4elem1>
## </level3elem2>
## </level2elem1>
## </level1elem2>
## </level0elem3>
By prefixing property and method names, the default behaviour of the parser can be overridden.
Instead of creating a new tag (on the current encapsulation level) with the appropriate name, it will
look for thefirst occurrenceof the given tag and will process that one.  Depending of the prefix
character, the tag is processed in the following ways:
+:If the tag exists already, it’s value is modified, otherwise the parser stops.
?:If the tag exists already, it’s value is modified, otherwise the parser ignores the prefixed HSD
construct.
*:If the tag exists already,  it’s value is modified,  otherwise it is created (and then it’s value is
modified).
/:If the tag does not exist yet, it is created and modified, otherwise the prefixed HSD construct is
ignored.
!:The tag is newly created and modified. If it exists already, the old occurrence is deleted first.
The way the value of the tag is going to be modified, is ruled by the constructs inside the prefixed
property or method name.  If the parser finds non prefixed constructs here, the appropriate tags are
## 1
In the internal tree representation of the HSD input there is no difference between properties and methods, both are
just elements capable to contain some value or further elements.  The differentiation in the HSD input is artificial and is
only for human readability (equal sign after property names, curly brace after method names),

## B.6. EXTENDED FORMAT177
just added, otherwise the behaviour is determined by the rules above, just acting one level deeper in
the tree. The following examples should make this a little bit more clear.
-  Changing the value ofLevel0Elem1to3.  If the element does not exist, it should be created
with the value3.
!Level0Elem1 = 3
-  Changing the value ofLevel0Elem3/Level1Elem1to21(the slash indicates the parent-child
relationship). If the element does not exist, stop with an error message:
# Make sure the containing element exists. If yes, go inside, otherwise die.
+Level0Elem3 = {
# Set the value of Level1Elem1 or die, if it does not exist.
+Level1Elem1 = 21
## }
Please note, that each tag in the path must be prefixed. Using the following construct instead
of the original one
# Not prefixed, so it creates a new tag with empty value
Level0Elem3 = {
# The new tag doesn’t contain anything, so the parser stops here
+Level1Elem1 = 21
## }
would end with an error message. SinceLevel0Elem1is not prefixed here, a tag is created for
it with an empty value (no children). It does not matter, whether the tag already existed before
or not, a new tag is created and appended as the last element (last child) to the current block.
Then the parser is processing its value. Due to the+Level1Elem1directive it is looking for a
child tag<level1elem1>.  Since the tag was newly created, it does not contain any children,
so the parser stops with an error message.
-  Create a new tagLevel1Elem3insideLevel0Elem3with some special value. If the tag already
exists, replace it.
# Modifying the children of Level0Elem3 or dying if not present
+Level0Elem3 = {
# Replacing or if not existent creating Level1Elem3
!Level1Elem3 = NewBlock {
NewValue1 = 12
## }
This example also shows, that the value for the new property can be any arbitrary complex
HSD construct.
-  Provide a default value"string"forLevel0Elem3/Level1Elem2/Level2Elem1/Level3Elem1.
If the tag is already present do not change its value.

## 178APPENDIX B. THE HSD FORMAT
# Modify Level0Elem3 or create it if non-existent
*Level0Elem3 = {
# Modify Level1Elem2 and Level2Elem1 or create them if non-existent
*Level1Elem2 = *Level2Elem1 {
# Create Level3Elem1 if non-existent with special value.
/Level3Elem1 = "string"
## }
## }
-  IfLevel0Elem3/Level1Elem2has the valueLevel2Elem1, make sure thatLevel3Elem1in it
exists, and has""as value. IfLevel1Elem2has a different value, do not change anything.
# If Level0Elem3 is present, process it, otherwise skip this block
?Level0Elem3 = {
# The same for the next two containers
?Level1Elem2 = ?Level2Elem1 {
# Create or replace Level3Elem1
!Level3Elem1 = ""
## }
## }
B.7    Index selection expressions
When specific elements should be selected from a list, the HSD parser allows for the usage
of special index selection expressions. Typical examples are the selection of atoms (as in the
MovedAtomsorAtomskeywords) or the selection of energy levels, k-points and spins (as in
the WAVEPLOTkeywordsPlottedKPoints,PlottedSpins,PlottedLevels).
The expressions might contain the logical operators “not” (“!”), “and” (“&”) and “or” (“ ”, i.e.
white space). The “not” operator has the highest and the “or” operator the lowest precedence.
Parentheses can be used for grouping together operations.  If atoms are being selected, atom
type names can be used to select all atoms of a given type.  The first element of the list has
the index one. Negative indices are counted backwards from the last element of the list, with
-1 corresponding to the last element. Index ranges can be specified asstart:end(i.e. without
white space as one word!), which inclusively selects all elements betweenstartandend.
Below you find a few examples for selection expressions:
## # Atoms 1, 2, 3, 4
MovedAtoms = 1 2 3 4 5
# Atoms within the range [1, 4] -> 1, 2, 3, 4
MovedAtoms = 1:4
# All atoms (from first to last)
MovedAtoms = 1:-1
# All atoms up to (and including) the fourth from the end
# (= all atoms apart the last 3)
MovedAtoms = 1:-4

## B.7. INDEX SELECTION EXPRESSIONS179
# All Si atoms and atoms 2 and 4.
MovedAtoms = Si 2 4
# Any atoms from 2 to 6 which are Si atoms
MovedAtoms = 2:6 & Si
# All atoms, apart from atoms 2, 3, 4, 5, 6
MovedAtoms = !2:6
# All atoms from 2 to 6 which are not Si atoms
MovedAtoms = 2:6 & !Si
# All atoms apart from 1:3 and 5:7
MovedAtoms = !(1:3 5:7)
# All non-Si atoms in the ranges 1 to 10, 21 to 30 and 41 to 50.
MovedAtoms = !Si & (1:10 21:30 41:50)
The syntax of the index selection can be described by following formal grammar:
expr := addTerm { addTerm }
addTerm := mulTerm { "&" mulTerm }
mulTerm := term | "!"term
term := selector | "("expr")"
selector := index{":"index} | speciesName
index := {-}[0-9]+
speciesName := [a-zA-Z][0-9a-zA-Z_]*

## 180APPENDIX B. THE HSD FORMAT

## Appendix C
Unit modifiers
The DFTB+ code uses internally atomic units (with Hartree as the energy unit). The value of every
numerical property in the input is interpreted to be in atomic units (au), unless the property carries
a modifier.
The allowed modifiers and the corresponding conversion factors are given below.
## 1
(The modifiers
are case insensitive). The symbol
## 
x
## −1
## 
indicates conversions, where not the value, but the recipro-
cal of the quantity is used in the conversion.
Ångströms may be listed as any of “a”, “aa” or “angstrom” in the unit modifiers.
## Length:
Angstrom,AA,A(for Ångström)0.188972598857892E+01
Meter,m0.188972598857892E+11
pm0.188972598857892E-01
Bohr,au1.000000000000000E+00
## Mass:
amu0.182288848492937E+04
au1.000000000000000E+00
da0.182288848492937E+04
dalton0.182288848492937E+04
## Volume:
## Angstrom
## ∧
## 3,AA
## ∧
## 3,A
## ∧
## 30.674833303710415E+01
meter
## ∧
## 3,m
## ∧
## 30.674833303710415E+31
pm
## ∧
## 30.674833303710415E-05
bohr
## ∧
3,au1.000000000000000E+00
## 1
The conversion factors listed here were calculated with double precision on i686-linux architecture.  Depending on
your architecture, the values used there may deviate slightly.
## 181

## 182APPENDIX C. UNIT MODIFIERS
## Energy:
Rydberg,Ry0.500000000000000E+00
Electronvolt,eV0.367493245336341E-01
kcal/mol0.159466838598749E-02
Kelvin,K0.316681534524639E-05
cmˆ-10.455633507361033E-05
Joule,J0.229371256497309E+18
Hartree,Ha,au1.000000000000000E+00
nm
## 
x
## −1
## 
## 0.45563355817434E+02
## Force:
eV/Angstrom,eV/AA,eV/A0.194469064593167E-01
Joule/meter,J/m0.121378050512919E+08
Hartree/Bohr,Ha/Bohr,au1.000000000000000E+00
## Time:
femtosecond,fs0.413413733365614E+02
picosecond,ps0.413413733365614E+05
second,s0.413413733365614E+17
au1.000000000000000E+00
## Charge:
Coulomb,C0.624150947960772E+19
au,e1.000000000000000E+00
## Velocity:
au1.000000000000000E+00
m/s0.457102857516272E-06
pm/fs0.457102857516272E-03
a/ps0.457102857516272E-04
aa/ps0.457102857516272E-04
angstrom/ps0.457102857516272E-04
## Pressure:
Pa0.339893208050290E-13
au1.000000000000000E+00
## Frequency:
Hz0.241888432650500E-16
THz0.241888432650500E-04
cmˆ-10.725163330219952E-06
au1.000000000000000E+00
Electric field strength:
v/m0.194469063788953E-11
au1.000000000000000E+00
Dipole moment:
CoulombMeter,Cm0.117947426715764E+30
Debye0.393430238326893E+00
au1.000000000000000E+00

## 183
Angular units:
degrees,deg1.745329251994330E-02
turns6.283185307179586
gradians1.570796326794897E-002
radians,rad1.000000000000000E+00

## 184APPENDIX C. UNIT MODIFIERS

## Appendix D
Description of the gen format
The general (gen) format can be used to describe clusters,  supercells and more exotic boundary
conditions.   It  is  based  on  the  xyz  format  introduced  with  xmol,  and  extended  to  periodic  and
helical structures.  Unlike some earlier implementations of gen, the format should not include any
neighbour mapping information.
The first line of the file contains the number of atoms,n, followed by the type of geometry.Cfor
cluster (non-periodic),Sfor supercell in Cartesian coordinates orFfor supercell in fractions of the
lattice vectors andHfor one-dimensional periodic helical cells.  The supercells are periodic in 3
dimensions, while helical cells repeat along thezdirection (eventually) in addition to an optional
rotational symmetry around that axis.
The second line contains the chemical symbols of the elements present separated by one or more
spaces. The followingnlines contain a list of the atoms. The first number is the atom number in the
structure (this is currently ignored by the program). The second number is the chemical type from
the list of symbols on line 2.  Then follow the coordinates.  ForSandCformat, these arex,y,zin
Å, but forFthey are fractions of the three lattice vectors.
If the structure is a supercell, the next line after the atomic coordinates contains a coordinate origin
in Å. The last three lines are the supercell vectors in Å. For helical cells, there is a an origin line, and
then an extra line containing three numbers (the repeat length of the cell alongzin Å, the helical
angle in degrees and the order of theC
n
rotational symmetry around that axis).  The symmetry of
the resulting structure is the tensor product of the helical translation/twist axis and theC
n
rotation
operation. It is assumed that the screw axis is aligned parallel toz. These boundary condition lines
are not present for cluster geometries.
Example: Geometry of GaAs with 2 atoms in the fractional supercell format
## 2 F
# This is a comment
## Ga As
## 1 1   0.0 0.0 0.0
## 2 2   0.25 0.25 0.25
## 0.000000   0.000000   0.000000
## 2.713546   2.713546   0.
## 0.2.713546   2.713546
## 2.713546   0.2.713546
A  single  CH
## 2
chain  deformed  into  a  helix  with  a  1.25  Å  cell  height,  twisting  by  30
## ◦
for  each
## 185

## 186APPENDIX D. DESCRIPTION OF THE GEN FORMAT
translation alongzby this ammount.
## 3 H
## C H
## 1 1   1.016566615   1.777924612   0.000000000
## 2 2   1.960988580   2.020972633   0.5133666820
## 3 2   0.751006714   2.717254122  -0.5117698570
## 0 0 0
## 1.250 30.0 1
NoteThe DFTB+ input parser as well as the dptools utilities will ignore any lines starting with a #
comment mark.

## Appendix E
Atomic spin constants
These are suggested values for some atomic spin constants (Wvalues) as given in reference [48],
only the first two decimal places of the finite spin constants are numerically significant.   These
constants may eventually be included in the Slater-Koster files directly.  Check the documentation
of the Slater-Koster files required for a calculation to decide whether to use the LDA or PBE-GGA
spin constants. Spin constants for range-separated functionals are given together with the respective
Slater-Koster files atwww.dftb.org.
## WLDAPBE
spdspd
## Hs-0.064-0.072
## Cs-0.028-0.024-0.031-0.025
p-0.024-0.022-0.025-0.023
## Ns-0.030-0.026-0.033-0.027
p-0.026-0.025-0.027-0.026
## Os-0.032-0.028-0.035-0.030
p-0.028-0.027-0.030-0.028
## Sis-0.018-0.0130.000-0.020-0.0150.000
p-0.013-0.0120.000-0.015-0.0140.000
d0.0000.000-0.0190.0020.002-0.032
## Ss-0.019-0.0160.000-0.021-0.0170.000
p-0.016-0.0140.000-0.017-0.0160.000
d0.0000.000-0.0100.0000.000-0.080
## Fes-0.013-0.009-0.003-0.016-0.012-0.003
## (3d
## 7
## 4s
## 1
## )p-0.009-0.011-0.001-0.012-0.029-0.001
d-0.003-0.001-0.015-0.003-0.001-0.015
## Nis-0.009-0.009-0.003-0.016-0.012-0.003
p-0.009-0.010-0.001-0.012-0.022-0.001
d-0.003-0.001-0.017-0.003-0.001-0.018
## 187

## 188APPENDIX E. ATOMIC SPIN CONSTANTS

## Appendix F
Slater-Kirkwood dispersion constants
The following table contains recommended dispersion constants for some elements with the Slater-
Kirkwood dispersion model (see p. 62).  The values have been tested for biological systems, C, N,
O and H predominantly for DNA [24].  If you would like to calculate different systems or you’re
looking for other elements, check references [65] and [44]. The values of the atomic polarisabilities
and cutoffs are given for zero, one, two, three, four and more than four neighbours.
ElementPolarisability [Å
## 3
]Cutoff [Å]ChrgNote
## O0.560 0.560 0.000 0.000 0.000 0.0003.8 3.8 3.8 3.8 3.8 3.83.15
## N1.030 1.030 1.090 1.090 1.090 1.0903.8 3.8 3.8 3.8 3.8 3.82.82
## C1.382 1.382 1.382 1.064 1.064 1.0643.8 3.8 3.8 3.8 3.8 3.82.50
## H0.386 0.386 0.000 0.000 0.000 0.0003.5 3.5 3.5 3.5 3.5 3.50.80
## P1.600 1.600 1.600 1.600 1.600 1.6004.7 4.7 4.7 4.7 4.7 4.74.50PO
## 4
only
S3.000 3.000 3.000 3.000 3.000 3.0004.7 4.7 4.7 4.7 4.7 4.74.80S, not SO
## 2
## 189

## 190APPENDIX F. SLATER-KIRKWOOD DISPERSION CONSTANTS

## Appendix G
DftD3 dispersion constants
These are suggested dispersion values for some of the DFTB parameterizations for use with the
DftD3 model (see p. 63).  The table below gives the old defaults for DFTB3, those for which the
3OB parameters were fitted at the halogen correction stage, along with choices for the various OB2
parameterizations for range separated calculations.
Becke-Johnson dampingold default3OBOB2 (base)OB2 (shift)OB2 (split)
a
## 1
## 0.57190.7460.7170.8160.497
a
## 2
## 3.60174.1912.5652.0573.622
s
## 6
## 1.01.01.01.01.0
s
## 8
## 0.58833.2090.0110.0100.010
Note: for the H5 corrected model, the DftD3 zero-damping parameters given on page 81 should be
used.
## 191

## 192APPENDIX G. DFTD3 DISPERSION CONSTANTS

## Appendix H
DftD4 dispersion constants
These are suggested dispersion values for some of the DFTB parameterizations for use with the
D4  model  (see  p.  66).   The  table  below  gives  parameterizations  with  and  without  non-additive
dispersion included.
Table H.1:  Becke–Johnson damping parameters for various Slater–Koster parametrizations of the
DFTB hamiltonian. Parametrizations are done both with non-additive contributions and without.
parameterss
## 6
s
## 8
s
## 9
a
## 1
a
## 2
## [a
## 0
## ]
## 3ob10.472733700.54675024.4955068
## 10.663501510.55232404.3537076
matsci12.771181900.46817125.2918629
## 13.315761410.48263305.3811976
mio11.194814500.60745674.9336133
## 11.291622510.59653264.8778602
ob2(base)12.761132000.60372495.3900004
## 12.969268910.60689165.4476789
pbc11.730373400.55465484.7973454
## 12.166739410.56463914.9576353
## 193

## 194APPENDIX H. DFTD4 DISPERSION CONSTANTS

## Appendix I
Solvent parameters
Table I.1: Names and associated constants for available solvents.
NameDielectric constantMolar mass [g/mol]Mass density [kg/L]
acetone20.758.080.79
acetonitrile37.541.050.786
toluene7.092.140.867
benzene, c6h67.078.110.867
chloroform, trichloromethane, chcl37.0119.381.49
dichloromethane, ch2cl27.084.931.33
cs22.676.131.266
dmf37.073.10.95
dmso47.278.131.1
ether7.374.120.713
water, h2o78.518.00.998
methanole33.632.040.792
nhexane, n-hexane1.8886.180.66
thf10.072.10610.883
## 195

## 196APPENDIX I. SOLVENT PARAMETERS

## Appendix J
Atomic onsite constants
These are suggested values for some atomic on-site correction constants as given in reference [28],
see p. 85.
## WPBE
spd
## H
## ↑↑
s0.000
## H
## ↑↓
s0.000
## C
## ↑↑
s0.000000.04973
p0.04973-0.01203
## C
## ↑↓
s0.000000.10512
p0.105120.02643
## N
## ↑↑
s0.000000.06816
p0.06816-0.00879
## N
## ↑↓
s0.000000.12770
p0.127700.03246
## O
## ↑↑
s0.000000.08672
p0.08672-0.00523
## O
## ↑↓
s0.000000.14969
p0.149690.03834
## S
## ↑↑
s0.000000.075010.00398
p0.075010.003100.01100
d0.003980.01100-0.01792
## S
## ↑↓
s0.000000.116530.03915
p0.116530.030580.04979
d0.039150.049790.01582
## Ti
## ↑↑
s0.000000.02659-0.00587
p0.02659-0.01297-0.00523
d-0.00587-0.00523-0.00750
## Ti
## ↑↓
s0.000000.068810.01239
p0.068810.016400.01144
d0.012390.011440.02604
## Au
## ↑↑
s0.000000.037520.00073
p0.03752-0.00505-0.00002
d0.00073-0.000020.00531
## Au
## ↑↓
s0.000000.069280.01339
p0.069280.016770.01228
d0.013390.012280.02519
## 197

## 198APPENDIX J. ATOMIC ONSITE CONSTANTS

## Appendix K
Hartree Hubbard constants for pp-RPA
calculations
These are suggested values for some Hubbard-like parameters employed in particle-particle Ran-
dom Phase Approximation calculations (see p. 99):
ElementHHubbard
## O0.59637
## C0.49748
## N0.56235
## H0.68353
## 199

## 200APPENDIX K. HARTREE HUBBARD CONSTANTS FOR PP-RPA CALCULATIONS

## Appendix L
Description of restart files
L.0.1    charges.bin / charges.dat
Initial  charges  and  the  current  orbital  charges  are  stored  in  these  files.   Both  contain  the  same
information, butcharges.binis stored as unformatted binary data, whilecharges.datis a text file.
The first line of the file is:
version tBlockCharges tImaginaryBlock nSpin CheckSum
Where version is currently 3, tBlockCharges and tImaginaryBlock are logical variables as to whether
real and imaginary block charges are present. nSpin is the number of spin channels (1, 2 or 4 for spin
free, collinear and non-collinear) and checksum is the totals for the charges in each spin channel.
The subsequent nAtom×nSpin lines contain the individual orbital occupations for each atom in
spin channel 1 (then 2. . .4, if present).
If tBlockCharges is true, then the on-site block charges for each atom and spin channel are stored,
followed by the imaginary part if tImaginaryBlock is true.
Examples of the contents ofcharges.datare given below for an H
## 2
O molecule in theyzaligned with
its dipole alongy. Using the mio-1-1 Slater-Koster set, this file would contain:
## 3 F F1  8.0000000000000018
## 6.59261516553167670.00000000000000000.00000000000000000.0000000000000000
## 0.70369241723366482
## 0.70369241723466003
WhenOrbitalResolved = No. So, this is version 3 of the format, without block charges and it is spin
free with 8 electrons.  The electronic charges are grouped into the lowest atomic orbitals of each
atom in this case. There is some small numerical noise in some of these these values (<10
## −14
## ).
WithOrbitalResolved = Yes, the oxygen has 1.7 2selectrons and 4.83 2porbitals (electrons listed
in the lowest labelled state in each shell).
## 3 F F1  8.0000000000000018
## 1.73354034526094174.83460733823456850.00000000000000000.0000000000000000
## 0.71592615825295036
## 0.71592615825154060
While for a pseudo-SIC calculation, where the net spin is 0:
## 3 T F2  8.00000000000000180.0000000000000000
## 1.75661939729788251.71472308210393281.20189947326837522.0000000000000013
## 0.66337902366501833
## 0.66337902366479040
## 201

## 202APPENDIX L. DESCRIPTION OF RESTART FILES
## 0.00000000000000000.00000000000000000.00000000000000000.0000000000000000
## 0.0000000000000000
## 0.0000000000000000
1.7566193972978825-0.284554914156321117.9592308124161928E-014 -7.7482799007142168E-027
-0.284554914156321111.71472308210393285.6922736516833719E-014  4.1776281206242259E-026
7.9592308124161928E-014  5.6922736516833719E-014  1.2018994732683752-4.6749196043609904E-016
-7.7482799007142168E-027  4.1776281206242259E-026 -4.6749196043609904E-016  2.0000000000000013
## 0.66337902366501833
## 0.66337902366479040
## 0.00000000000000000.00000000000000000.00000000000000000.0000000000000000
## 0.00000000000000000.00000000000000000.00000000000000000.0000000000000000
## 0.00000000000000000.00000000000000000.00000000000000000.0000000000000000
## 0.00000000000000000.00000000000000000.00000000000000000.0000000000000000
## 0.0000000000000000
## 0.0000000000000000
Note the 0 blocks for the spin polarisation in channel 2,  and also that the diagonal of the block
charges matches the orbital charges for the atoms.
L.0.2    contact.bin / contact.dat
Self-consistent transport calculations require contact potential shifts. The format of theshiftcont_*
files are either ascii (.dat) or binary (.bin). Theshiftcont_*.datfiles have the following format:
The first two lines of the file are:
version
nContactAtoms maxShells spinChannels tBlockCharges
-  version: The file format is currently version 1
-  nContactAtoms: Number of atoms in the contact
-  maxShells: Maximum number of angular shells on the contact atoms
-  spinChannels: Number of spin channels in the system (1 for spin free, 2 for spin polarized)
-  tBlockCharges: a logical flag (T/F) as to whether block charges are present in the file (these
are required for +U calculations).
This is then followed by lines for
-  The number of orbitals on the atoms
-  Shifts for the shells of the atoms
-  Charges for individual orbitals
If tBlockCharges is true, the block shifts and charges are then given for each spin channel and atom.
Finally the Fermi level(s) for the contact are printed (this can be over-ridden in the input at calcula-
tion time, see theFermiLevelkeyword in section 4.2.2).
An earlier format for contacts is also supported.   This lacks the first line containing the version
number, along with the logical flag and sections relating to block charges.

## 203
L.0.3    tddump.bin / tddump.dat
The restart data for a real time propagation calculation is stored in either the native binary format
of your computer (tddump.bin) or as ascii text (tddump.dat) format.
The content of the file given is below (all quantities are in atomic units). In the case of ascii output
this is broken into lines:
-  version: The file format, currently version 1
-  nOrbitals nSpin×nKpoints nAtoms current_simulation_time timestep_size
-  nOrbitals
## 2
×nSpin×nKpoints lines of the (complex) density matrix at current time
-  nOrbitals
## 2
×nSpin×nKpoints lines of the (complex) density matrix at the previous timestep
-  nAtoms lines of cartesian coordinates of the atoms at current time
-  nAtoms lines of atomic velocities at current time

## 204APPENDIX L. DESCRIPTION OF RESTART FILES

## Appendix M
Publications to cite
The following publications should be considered for citation, if you are publishing any results cal-
culated by using DFTB+.
DFTB+ code[40]
non-SCC DFTB[80], [87]
## SCC DFTB[25]
Collinear spin polarisation[47]
Non-collinear spin polarisation[46]
Spin orbit coupling[46]
QM/MM coupling (external charges)[18], [35]
Van der Waals interaction (dispersion)[24]
## DFTB+U[41]
3rd order corrections[101]
Multipole expansion (mDFTB)[98]
∆DFTB excited states[50]
linear-response TD-DFTB[69]
real-time TD-DFTB[13]
REKS calculations[56]
range-separated hybrid DFTB[68], [59]
non-adiabatic coupling vectors[70], [71]
## 205

## 206APPENDIX M. PUBLICATIONS TO CITE

## Bibliography
[1]  https://github.com/opencollab/arpack-ng. 95
[2]  Alberto Ambrosetti, Anthony M. Reilly, Robert A. DiStasio, Jr., and Alexandre Tkatchenko.
Long-range correlation energy calculated from coupled atomic response functions.J. Chem.
Phys., 140:18A508, 2014. 61, 70
[3]  H. C. Andersen.   Molecular dynamics at constant pressure and/or temperature.J. Chem.
## Phys., 72:2384, 1980. 25
[4]  E. Anderson, Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, J. Du Croz, A. Green-
baum, S. Hammarling, A. McKenney, and D. Sorensen.LAPACK Users’ Guide. Society for
Industrial and Applied Mathematics, Philadelphia, PA, third edition, 1999. 47
[5]  B. Aradi, B. Hourahine, and Th. Frauenheim. DFTB+, a sparse matrix-based implementation
of the DFTB method.J. Phys. Chem. A, 111(26):5678, 2007. 114
[6]  B. Aradi, A. M. N. Niklasson, and T. Frauenheim.  Extended lagrangian density functional
tight-binding  molecular  dynamics  for  molecules  and  solids.J.  Chem.  Theory  Comput.,
## 11:3357–3363, 2015. 28, 86
[7]  Vilhjálmur Ásgeirsson, Christoph A Bauer, and Stefan Grimme. Quantum chemical calcula-
tion of electron ionization mass spectra for general organic and inorganic molecules.Chem.
## Sci., 8(7):4879–4895, 2017. 38
[8]  Christoph Bannwarth, Eike Caldeweyher, Sebastian Ehlert, Andreas Hansen, Philipp Pracht,
Jakob Seibert, Spicher Spicher, and Stefan Grimme. Extended tight-binding quantum chem-
istry methods.WIREs Comput. Mol. Sci., 11:e01493, 2020. 38
[9]  Christoph Bannwarth,  Sebastian Ehlert,  and Stefan Grimme.   Gfn2-xtb—an accurate and
broadly parametrized self-consistent tight-binding quantum chemical method with multipole
electrostatics  and  density-dependent  dispersion  contributions.J.  Chem.  Theory  Comput.,
## 15(3):1652–1671, 2019. 38
[10]  Michael J Bearpark, Michael A Robb, and H Bernhard Schlegel.  A direct method for the
location  of  the  lowest  energy  point  on  a  potential  surface  crossing.Chem.  Phys.  Lett.,
## 223(3):269–274, 1994. 98
[11]  H.  J.  C.  Berendsen,  J.  P.  M.  Postma,  W.  F.  Van  Gunsteren,  A.  Dinola,  and  J.  R.  Haak.
Molecular-dynamics with coupling to an external bath.J. Chem. Phys., 81(8):3684–3690,
## 1984. 26, 27, 28
[12]  Erik Bitzek, Pekka Koskinen, Franz Gähler, Michael Moseler, and Peter Gumbsch. Structural
relaxation made simple.Phys. Rev. Lett., 97:170201, Oct 2006. 17, 22
## 207

## 208BIBLIOGRAPHY
[13]  Franco P. Bonafé,  Bálint Aradi,  Ben Hourahine,  Carlos R. Medrano,  Federico J. Hernán-
dez, Thomas Frauenheim, and Cristián G. Sánchez.  A Real-Time Time-Dependent Density
Functional Tight-Binding Implementation for Semiclassical Excited State Electron-Nuclear
Dynamics  and  Pump-Probe  Spectroscopy  Simulations.Journal  of  Chemical  Theory  and
Computation, jun 2020. 100, 205
[14]  C. G. Broyden.   The Convergence of a Class of Double-rank Minimization Algorithms 1.
General Considerations.IMA Journal of Applied Mathematics, 6(1):76–90, 1970. 17
[15]  Eike Caldeweyher, Christoph Bannwarth, and Stefan Grimme.  Extension of the D3 disper-
sion coefficient model.J. Chem. Phys., 147(3):034112, 2017. 61
[16]  Eike  Caldeweyher,   Sebastian  Ehlert,   Andreas  Hansen,   Hagen  Neugebauer,   Sebastian
Spicher, Christoph Bannwarth, and Stefan Grimme.  A generally applicable atomic-charge
dependent London dispersion correction.J. Chem. Phys., 150(15):154122, 2019. 61, 66, 68
[17]  M. Ceriotti, J. More, and D. E. Manolopoulos.  i-pi:  A python interface for ab initio path
integral molecular dynamics simulations.Computer Phys. Comm., 185:1019–1026, 2014.
## 31
[18]  Q. Cui, M. Elstner, T. Frauenheim, E. Kaxiras, and M. Karplus.  Combined self-consistent
charge density functional tight-binding (SCC-DFTB) and CHARMM.J. Phys. Chem. B,
## 105:569, 2001. 205
[19]  A. Di Carlo, A. Pecchia, L. Latessa, Th. Frauenheim, and G. Seifert.Introducing Molecular
Electronics, chapter Tight-Binding DFT for Molecular Electronics (gDFTB), pages 153–184.
Lecture Notes in Physics. Springer, 2005. 132
[20]  A.  Domínguez,  B.  Aradi,  T.  Frauenheim,  V.  Lutsker,  and  T.  A.  Niehaus.   Extensions  of
the time-dependent density functional based tight-binding approach.Journal of Chemical
Theory and Computation, 9(11):4901–4914, 2013. 98
[21]  A.  Domínguez,  T.  A.  Niehaus,  and  T.  Frauenheim.Accurate  hydrogen  bond  energies
within the density functional tight binding method.The Journal of Physical Chemistry A,
## 119(14):3535–3544, 2015. 36, 85
[22]  Jack Dongarra, Mark Gates, Azzam Haidar, Jakub Kurzak, Piotr Luszczek, Stanimire Tomov,
and Ichitaro Yamazaki.  Accelerating numerical dense linear algebra calculations with gpus.
Numerical Computations with GPUs, pages 1–26, 2014. 48, 144
[23]  Frank Eckert, Peter Pulay, and Hans-Joachim Werner.  Ab initio geometry optimization for
large molecules.Journal of Computational Chemistry, 18(12):1473–1483, sep 1997. 17
[24]  M.  Elstner,  P.  Hobza,  T.  Frauenheim,  S.  Suhai,  and  E.  Kaxiras.   Hydrogen  bonding  and
stacking interactions of nucleic acid base pairs: a density-functional-theory based treatment.
## J. Chem. Phys., 114:5149, 2001. 61, 62, 63, 189, 205
[25]  M. Elstner, D. Porezag, G. Jungnickel, J. Elsner, M. Haugk, T. Frauenheim, S. Suhai, and
G. Seifert. Self-consistent-charge density-functional tight-binding method for simulations of
complex materials properties.Phys. Rev. B, 58:7260, 1998. 86, 205
[26]  V. Eyert.  A comparative study on methods for convergence acceleration of iterative vector
sequences.J. Comp. Phys., 124:271, 1996. 42

## BIBLIOGRAPHY209
[27]  T. Frauenheim, G. Seifert, M. Elstner, T. Niehaus, C. Kohler, M. Amkreutz, M. Sternberg,
Z. Hajnal, A. Di Carlo, and S. Suhai.  Atomistic simulations of complex materials: ground-
state and excited-state properties.J. Phys. Condens. Matter, 14(11):3015–3047, Mar 2002.
## 9
[28]  Adriel Dominguez Garcia.Density functional approaches for the interaction of metal ox-
ides  with  small  molecules.    PhD  thesis,  Universität  Bremen,  2014.    http://elib.suub.uni-
bremen.de/edocs/00103868-1.pdf. 85, 118, 197
[29]  M. Gaus, Q. Cui, and M. Elstner. DFTB3: Extension of the Self-Consistent-Charge Density-
Functional  Tight-Binding  Method  (SCC-DFTB).J.  Chem.  Theory  Comput.,  7:931–948,
## 2011. 70, 80
[30]  Nir Goldman, Bálint Aradi, Rebecca K. Lindsey, and Laurence E. Fried.  Development of a
multicenter density functional tight binding model for plutonium surface hydriding.J. Chem.
## Theory Comput., 14:2652–2660, 2018. 35
[31]  S.  Grimme,  J.  Antony,  S.  Ehrlich,  and  H.  Krieg.A  consistent  and  accurate  ab  initio
parametrization of density functional dispersion correction (DFT-D) for the 94 elements H-
Pu.J. Chem. Phys., 132:154104, 2010. 61, 63, 69
[32]  S. Grimme, S. Ehrlich, and L. Goerigk.  Effect of the damping function in dispersion cor-
rected density functional theory.J. Chem. Phys., 32:1456–1465, 2011. 61, 63
[33]  Stefan Grimme, Christoph Bannwarth, and Philip Shushkov.   A robust and accurate tight-
binding quantum chemical method for structures, vibrational frequencies, and noncovalent
interactions of large molecular systems parametrized for all spd-block elements (Z=1–86).J.
## Chem. Theory Comput., 13(5):1989–2009, 2017. 38
[34]  M. J. Han, T. Ozaki, and J. Yu.  O(N) LDA+Uelectronic structure calculation method based
on the nonorthogonal pseudoatomic orbital basis.Phys. Rev. B, 73:045110, 2006. 47
[35]  W.   Han,    M.   Elstner,    K.   J.   Jalkanen,    T.   Frauenheim,    and   S.   Suhai.Hybrid
SCC-DFTB/molecular mechanical studies of H-bonded systems and of N-acetyl-(L-Ala)
n
## -
N’-Methylamide helices in water solution.Int. J. Quant. Chem., 78:459, 2000. 205
[36]  Yu Harabuchi, Miho Hatanaka, and Satoshi Maeda.  Exploring approximate geometries of
minimum energy conical intersections by TDDFT calculations.Chemical Physics Letters:
## X, 2:100007, 2019. 98
[37]  S. C. Harvey, R. K. Z. Tan, and T. E. Cheatham.  The flying ice cube:  Velocity rescaling in
molecular dynamics leads to violation of energy equipartition.J. Comput. Chem., 19(7):726–
## 740, 1998. 26
[38]  D.  Heringer,  T.  A.  Niehaus,  M.  Wanko,  and  T.  Frauenheim.Analytical  excited  state
forces for the time-dependent density-functional tight-binding method.J. Comput. Chem.,
## 28(16):2589, 2007. 97
[39]  B Hourahine, B Aradi, and T Frauenheim.   DFTB+ and lanthanides.J. Phys:  Conf. Ser.,
242(1):012005, jul 2010. 39
[40]  B. Hourahine, M. Berdakin, J. A. Bich, F. P. Bonafé, C. Camacho, Q. Cui, M. Y. Deshaye,
G. Díaz Mirón, S. Ehlert, M. Elstner, T. Frauenheim, N. Goldman, R. A. González León,
T.  van  der  Heide,  S.  Irle,  T.  Kowalczyk,  T.  Kuba
## ˇ
r,  I.  S.  Lee,  C.  R.  Lien-Medrano,

## 210BIBLIOGRAPHY
A. Maryewski, T. Melson, S. K. Min, T. Niehaus, A. M. N. Niklasson, A. Pecchia, K. Reuter,
C. G. Sánchez, C. Scheurer, M. A. Sentef, P. V. Stishenko, V. Q. Vuong, and B. Aradi. Recent
Developments in DFTB+, a Software Package for Efficient Atomistic Quantum Mechanical
Simulations.J. Phys. Chem. A, 129:5373–5390, 2025. 9, 205
[41]  B.  Hourahine,  S.  Sanna,  B.  Aradi,  C.  Köhler,  T.  Niehaus,  and  Th.  Frauenheim.    Self-
interaction and strong correlation in DFTB.J. Phys. Chem. A, 111(26):5671,  2007.   57,
## 205
[42]  Wonpil Im,  Michael S.  Lee,  and Charles  L. Brooks III.   Generalized  Born model  with  a
simple smoothing function.J. Comput. Chem., 24(14):1691–1702, 2003. 78
[43]  D. D. Johnson.  Modified Broyden’s method for accelerating convergence in self consistent
calculations.Phys. Rev. B, 38:12807, 2003. 41
[44]  Y. K. Kang and M. S. Jhon. Additivity of atomic static polarizabilities and dispersion coeffi-
cients.Theoretica Chimica Acta, 61:41, 1982. 189
[45]  Andreas Klamt and G Schüürmann.   COSMO: a new approach to dielectric screening in
solvents with explicit expressions for the screening energy and its gradient.Journal of the
## Chemical Society, Perkin Transactions 2, (5):799–805, 1993. 76
[46]  C. Köhler, T. Frauenheim, B. Hourahine, G. Seifert, and M. Sternberg. Treatment of collinear
and noncollinear electron spin within an approximate density functional based method.J.
## Phys. Chem. A, 111(26):5622, 2007. 205
[47]  C. Köhler, G. Seifert, and T. Frauenheim.  Density-functional based calculations for Fe(n),
(n≤32).Chem. Phys., 309:23, 2005. 205
[48]  Christof Köhler.Berücksichtigung von Spinpolarisationseffekten in einem dichtefunktional-
basierten Ansatz.  PhD thesis, Department Physik der Fakultät fur Naturwissenschaften an
der Universität Paderborn, 2004. http://ubdata.uni-paderborn.de/ediss/06/2004/koehler/. 187
[49]  A. Kovalenko, S. Ten-no, and F. Hirata.  Solution of three-dimensional reference interaction
site model and hypernetted chain equations for simple point charge water by modified method
of direct inversion in iterative subspace.J. Comput. Chem., 20:928–936, 1999. 22
[50]  T.  Kowalczyk,  K.  Le,  and  S.  Irle.    Self-consistent  optimization  of  excited  states  within
density-functional tight-binding.J. Chem. Theory Comput., 12:313–323, 2016. 52, 205
[51]  Julian  J.  Kranz,   Marcus  Elstner,   Bálint  Aradi,   Thomas  Frauenheim,   Vitalij  Lutsker,
Adriel Dominguez Garcia, and Thomas A. Niehaus.  Time-dependent extension of the long-
range corrected density functional based tight-binding method.J. Chem. Theory Comput.,
## 13(4):1737–1747, 2017. 98
## [52]  M. Kubillus, T. Kuba
## ˇ
r, M. Gaus, Jan
## ˇ
## Rezá
## ˇ
c, and M. Elstner. Parameterization of the DFTB3
method for Br, Ca, Cl, F, I, K, and Na in organic and biological systems.J. Chem. Theory
## Comput., 11:332–342, 2014. 79
[53]  Adrian W. Lange and John M. Herbert.  Improving generalized Born models by exploiting
connections to polarizable continuum models. i. an improved effective coulomb operator.J.
Chem. Theory Comput., 8(6):1999–2011, 2012. PMID: 26593834. 73
[54]  Stephan Lany and Alex Zunger. Accurate prediction of defect properties in density functional
supercell  calculations.Modelling  and  Simulation  in  Materials  Science  and  Engineering,
## 17(8):084002, Nov 2009. 112

## BIBLIOGRAPHY211
[55]  V. I. Lebedev and D. N. Laikov.  A quadrature formula for the sphere of the 131st algebraic
order of accuracy.Doklady Mathematics, 59:477–481, 1999. 77, 78
[56]  I. S. Lee, M. Filatov, and S. K. Min.  Formulation and implementation of the spin-restricted
ensemble-referenced kohn-sham method in the context of the density functional tight binding
approach.J. Chem. Theory Comput., 15(5):3021–3032, 2019. 105, 106, 205
[57]  R. B. Lehoucq, D. C. Sorensen, and C. Yang.  Arpack users guide:  Solution of large scale
eigenvalue problems by implicitly restarted arnoldi methods., 1997. 95, 98, 117
[58]  Filippo Lipparini, Benjamin Stamm, Eric Cances, Yvon Maday, and Benedetta Mennucci.
Fast  domain  decomposition  algorithm  for  continuum  solvation  models:   Energy  and  first
derivatives.J. Chem. Theory Comput., 9(8):3637–3648, 2013. 76
[59]  V. Lutsker, B. Aradi, and T. A. Niehaus.   Implementation and benchmark of a long-range
corrected functional in the densityfunctional based tight-binding method.J. Chem. Phys.,
## 143:184107, 2015. 82, 205
[60]  M  Mantina,  R  Valero,  CJ  Cramer,  and  DG  Truhlar.CRC  Handbook  of  Chemistry  and
Physics. CRC Press Boca Raton, FL, 2010. 76
[61]  Manjeera Mantina, Adam C. Chamberlin, Rosendo Valero, Christopher J. Cramer, and Don-
ald G. Truhlar.  Consistent van der waals radii for the whole main group.J. Phys. Chem. A,
## 113(19):5806–5812, 2009. 77
[62]  Aleksandr V. Marenich, Steven V. Jerome, Christopher J. Cramer, and Donald G. Truhlar.
Charge model 5:  An extension of Hirshfeld population analysis for the accurate descrip-
tion of molecular interactions in gaseous and condensed phases.J. Chem. Theory Comput.,
## 8(2):527–541, 2012. 75, 90
[63]  G. J. Martyna, M. E. Tuckerman, D. J. Tobias, and M. L. Klein. Explicit reversible integrators
for extended systems dynamics.Molecular Phys., 87:1117–1157, 1996. 26, 27
[64]  M. Methfessel and A. T. Paxton.  High-precision sampling for Brillouin-zone integration in
metals.Phys. Rev. B, 40:3616, 1989. 51
[65]  K. J. Miller.  Additivity methods in molecular polarizability.J. Am. Chem. Soc., 112:8533,
## 1990. 189
[66]  H. J. Monkhorst and J. D. Pack. Special points for Brillouin-zone integrations.Phys. Rev. B,
## 13:5188, 1976. 55
[67]  H. J. Monkhorst and J. D. Pack.   "special points for Brillouin-zone integrations"–a reply.
## Phys. Rev. B, 16:1748, 1977. 56
[68]  T. A. Niehaus and F. Della Sala.  Range separated functionalsin the density functional based
tight-binding method: Formalism.Phys. Status Solidi B, 249(2):237–244, 2012. 82, 205
[69]  T. A. Niehaus, S. Suhai, F. Della Sala, P Lugli, M. Elstner, G. Seifert, and Th. Frauenheim.
Tight-binding approach to time-dependent density-functional response theory.Phys. Rev. B,
## 63:085108, 2001. 95, 205
[70]  Thomas A Niehaus. Ground-to-excited derivative couplings for the density functional-based
tight-binding method: semi-local and long-range corrected formulations.Theoretical Chem-
istry Accounts, 140(4):34, 2021. 97, 205

## 212BIBLIOGRAPHY
[71]  Thomas A Niehaus.   Exact non-adiabatic coupling vectors for the time-dependent density
functional based tight-binding method.The Journal of Chemical Physics, 158:054103, 2023.
## 97, 205
[72]  Jorge Nocedal and Stephen J. Wright.Numerical Optimization.  Springer, New York, NY,
USA, second edition, 2006. 22
[73]  Alexey  Onufriev,  Donald  Bashford,  and  David  A.  Case.   Exploring  protein  native  states
and large-scale conformational changes with a modified generalized born model.Proteins,
## 55(2):383–394, 2004. 74
[74]  Alexey  V.  Onufriev  and  David  A.  Case.    Generalized  Born  implicit  solvent  models  for
biomolecules.Annu. Rev. Biophys., 48(1):275–296, 2019. 72
[75]  A. Pecchia and A. Di Carlo.  Atomistic theory of transport in organic and inorganic nanos-
tructures.Rep. Prog. Phys., 67:1497, 2004. 132
[76]  A. Pecchia,  G. G Penazzi,  L. Salvucci,  and A. Di Carlo.   Non-equilibrium Green’s func-
tions  in  density  functional  tight  binding:   method  and  applications.New  J.  of  Physics,
## 10(6):065022, 2008. 126, 132
[77]  A. G. Petukhov, I. I. Mazin, L. Chioncel, and A. I. Lichtenstein.  Correlated metals and the
LDA+U method.Phys. Rev. B, 67:153106–4, 2003. 57
[78]  J. Pipek and P. G. Mezey.  A fast intrinsic localization procedure applicable forab initioand
semiempirical linear combination of atomic orbital wave functions.J. Chem. Phys., 90:4916,
## 1989. 92
[79]  Per-Arno Plötz, Thomas Niehaus, and Oliver Kühn.  A new efficient method for calculation
of Frenkel exciton parameters in molecular aggregates.The Journal of Chemical Physics,
## 140(17), 2014. 97
[80]  D. Porezag, T. Frauenheim, T. Köhler, G. Seifert, and R. Kaschner.  Construction of tight-
binding-like potentials on the basis of density-functional theory: Application to carbon.Phys.
## Rev. B, 51:12947, 1995. 205
[81]  A. K. Rappe, C. J. Casewit, K. S. Colwell, W. A. Goddard III, and W. M. Skiff.  UFF, a full
periodic table force field for molecular mechanics and molecular dynamics simulations.J.
## Am. Chem. Soc., 114:10024–10035, 1992. 60, 61
[82]  Anthony K. Rappé and William A. Goddard III. Charge equilibration for molecular dynamics
simulation.J. Chem. Phys., 95:3358–3363, 1991. 68
## [83]  Jan
## ˇ
## Rezá
## ˇ
c.  Empirical Self-Consistent Correction for the Description of Hydrogen Bonds in
DFTB3.J. Chem. Theory Comput., 13(10):4804–4817, 2017. 65, 80, 81
## [84]  Jan
## ˇ
## Rezá
## ˇ
c and Pavel Hobza.  Advanced corrections of hydrogen bonding and dispersion for
semiempirical quantum mechanical methods.J. Chem. Theory Comput., 8:141–151, 2012.
## 65, 80, 81
[85]  Kenneth Ruud and Andreas J. Thorvaldsen.   Theoretical approaches to the calculation of
raman optical activity spectra.Chirality, 21(1E):E54–E67, 2009. 146
[86]  L.  Medrano  Sandonas,  R.  Gutierrez,  A.  Pecchia,  A.  Croy,  and  G.  Cuniberti.    Quantum
phonon transport in nanomaterials: combining atomistic with non-equilibrium green’s func-
tions techniques.Entropy, 21:735, 2019. 149

## BIBLIOGRAPHY213
[87]  G. Seifert, D. Porezag, and T. Frauenheim.  Calculations of molecules, clusters, and solids
with a simplified LCAO-DFT-LDA scheme.Int. J. Quant. Chem., 58:185, 1996. 205
[88]  Grigori   Sigalov,   Andrew   Fenley,   and   Alexey   Onufriev.Analytical   electrostatics
for   biomolecules:Beyond   the   generalized   Born   approximation.J.   Chem.   Phys.,
## 124(12):124902, 2006. 74
[89]  James Spencer and Ali Alavi.  Efficient calculation of the exact exchange energy in periodic
systems using a truncated Coulomb potential.Phys. Rev. B, 77:193110, May 2008. 83
[90]  W. Clark Still, Anna Tempczyk, Ronald C. Hawley, and Thomas Hendrickson.   Semiana-
lytical treatment of solvation for molecular mechanics and dynamics.J. Am. Chem. Soc.,
## 112(16):6127–6129, 1990. 73
[91]  Pavel V. Stishenko, Thomas W. Keal, Scott M. Woodley, Volker Blum, Benjamin Hourahine,
Reinhard J. Maurer, and Andrew J. Logsdail. Atomic Simulation Interface (ASI): application
programming  interface  for  electronic  structure  codes.Journal  of  Open  Source  Software,
## 8(85):5186, 2023. 39
[92]  Martin Stöhr, Georg S. Michelitsch, John C. Tully, Karsten Reuter, and Reinhard J. Maurer.
Communication: Charge-population based dispersion interactions for molecules and materi-
als.J. Chem. Phys., 144:151101, 2016. 61, 69, 70
[93]  R Eric Stratmann, Gustavo E Scuseria, and Michael J Frisch. An efficient implementation of
time-dependent density-functional theory for the calculation of excitation energies of large
molecules.J. Chem. Phys., 109(19):8218–8224, 1998. 98
[94]  Alexandre Tkatchenko and Matthias Scheffler.  Accurate Molecular Van Der Waals Interac-
tions from Ground-State Electron Density and Free-Atom Reference Data.Phys. Rev. Lett.,
## 102:073005, 2009. 61, 69
[95]  Stanimire  Tomov,  Jack  Dongarra,  and  Marc  Baboulin.   Towards  dense  linear  algebra  for
hybrid  GPU  accelerated  manycore  systems.Parallel  Computing,  36(5-6):232–240,  June
## 2010. 48, 144
[96]  Stanimire Tomov, Rajib Nath, Hatem Ltaief, and Jack Dongarra. Dense linear algebra solvers
for multicore with GPU accelerators.  InProc. of the IEEE IPDPS’10, pages 1–8, Atlanta,
GA, April 19-23 2010. IEEE Computer Society. DOI: 10.1109/IPDPSW.2010.5470941. 48,
## 144
[97]  Tammo van der Heide, Bálint Aradi, Ben Hourahine, Thomas Frauenheim, and Thomas A.
Niehaus.   Hybrid  functionals  for  periodic  systems  in  the  density  functional  tight-binding
method.Phys. Rev. Mater., 7:063802, Jun 2023. 82, 83
[98]  Van-Quan  Vuong,  Bálint  Aradi,  Anders  M.  N.  Niklasson,  Qiang  Cui,  and  Stephan  Irle.
Multipole Expansion of Atomic Electron Density Fluctuation Interactions in the Density-
Functional Tight-Binding Method.J. Chem. Theory Comput., 19(21):7592–7605, 2023.  71,
## 205
[99]  Van-Quan Vuong, Caterina Cevallos, Ben Hourahine, Bálint Aradi, Jacek Jakowski, Stephan
Irle, and Cristopher Camacho.  Accelerating the density-functional tight-binding method us-
ing graphical processing units.J. Chem. Phys., 158(8):084802, 2023. 48

## 214BIBLIOGRAPHY
[100]  Y. Yang,  A. Dominguez,  D. Zhang,  V. Lutsker,  Thomas A. Niehaus,  T. Frauenheim,  and
W. Yang.  Charge transfer excitations from particle-particle random phase approximation -
opportunities and challenges arising from two-electron deficient systems.J. Chem. Phys.,
## 146:124104, 2017. 99
[101]  Y. Yang, H. Yu, D. York, Q. Cui, and M. Elstner.   Extension of the self-consistent-charge
density-functional  tight-binding  method:  Third-order  expansion  of  the  density  functional
theory total energy and introduction of a modified effective coulomb interaction.J. Phys.
## Chem. A, 111:10861, 2007. 70, 80, 205
[102]  V. W.-z. Yu, F. Corsetti, A. García, W. P. Huhn, M. Jacquelin, W. Jia, B. Lange, L. Lin, J. Lu,
W. Mi, A. Seifitokaldani, Á Vázquez-Mayagoitia, C. Yang, H. Yang, and V. Blum.  ELSI:
A unified software interface for Kohn-Sham electronic structure solvers.Computer Phys.
## Comm., 222:267–285, 2018. 48
[103]  Victor Wen-zhe Yu,  Carmen Campos,  William Dawson,  Alberto García,  Ville Havu,  Ben
Hourahine, William P Huhn, Mathias Jacquelin, Weile Jia, Murat Keçeli, et al.  ELSI—An
open infrastructure for electronic structure solvers.Computer Phys. Comm.,  256:107459,
## 2020. 48
[104]  W. Zhang, T. S. Fisher, and N. Mingo.The Atomistic Green’s Function Method: An Efficient
Simulation Approach for Nanoscale Phonon Transport, volume 51. Taylor and Francis, 2007.
## 152
[105]  L. Zhechkov, Th. Heine, S. Patchkovskii, G. Seifert, and H. A. Duarte.  An efficient a poste-
riori treatment for dispersion interaction in density-functional-based tight binding.J. Chem.
## Theory Comput., 1:841–847, 2005. 61
[106]  T. Ziegler, A. Rauk, and E. J. Baerends.   Calculation of multiplet energies by the hartree-
fock-slater method.Theoretica Chimica Acta, 43:261–271, 1977. 52, 90

## Index
a1, 65, 67
a2, 65, 67
AdaptFillingTemp, 25, 26
AllAtomCharges, 35
AllAtomSpins, 44, 45
## ALPB, 73
## Alpha, 21, 73
alpha, 65, 67, 75
## Analysis, 12, 138, 149
AngularGrid, 76, 78
AngularMomentum, 161
## Animate, 146
aPar, 18
AppendBandOut, 89
AppendFile, 92
AppendGeometries, 16, 19, 21, 22
## Arpack, 98
## ARPACK.DAT, 117
## ASI, 39
## ASI{}, 39
AtomCharge, 36
AtomDensityCutoff, 133
AtomDensityTolerance, 133
AtomDIntegralScalings, 71
AtomEnergies, 89
atomenergies.dat, 120
AtomicNumber, 161
AtomicNumbers, 65, 67
AtomQIntegralScalings, 71
AtomRange, 125, 126, 150
AtomResolvedEnergies, 90
## Atoms, 23, 30, 40, 44, 45, 60, 91, 143, 147, 164
AtomSitePotential, 32
AtomSpin, 44, 45
## Autotune, 48
band structure calculation, 56
band.out, 111
## Barostat, 24
## Basis, 155
## Beta, 70
BinaryAccessTypes, 87, 156
## Blacs, 109
bond populations, 102
Born charges, 16
born.out, 23
BornCharges, 143
bornderiv.out, 23
BornDerivs, 143
BornOffset, 73
BornScale, 73
## Boundary Conditions, 135
BoundaryRegion, 133
## Box, 158
BoxExtension, 133
Brillouin-zone sampling, 55
BufferLength, 136
BuildBulkPotential, 133, 135
CacheCharges, 96
## Casida, 95
CGmaxIter, 107
ChainLength, 26
## Charge, 32, 38, 99
ChargeDensity, 156
ChargeModel, 67
## Charges, 40, 89
charges.bin, 115
ChargeScale, 67
ChargeSteepness, 67
## Chi, 68
## Chimes, 32
## Choleskii, 49
## Circle, 136
## CM5, 73, 90
## COEF.DAT, 117
## Coefficients, 161
computeLDOS, 139
## Conductance{}, 153
## Constant{}, 104
## Constraints, 19, 21, 22, 39
ConstrTolerance, 39
## Contact, 125
## Contact{}, 126, 150
## 215

## 216INDEX
ContactHamiltonian, 127
ContactId, 127
ContactSeparation, 127
ContactTemperature, 139
ContactVector, 164
ContourPoints, 130
ConvergedPerturb, 93
## Convergence, 16
ConvergentConstrOnly, 39
ConvergentSccOnly, 32, 33, 38
CoordDerivatives, 90
CoordinationNumber, 65, 67–69
CoordsAndCharges, 58
CoulombCutoff, 83
CoulombMatrix, 82
## Coupling, 27
CouplingStrength, 26
CovalentRadius, 62
CustomisedHubbards, 32
CustomisedOccupations, 32, 37
CutCN, 69
## Cutoff, 65, 68, 69, 73, 75, 151, 161
CutoffCheck, 133
CutoffCN, 65
CutoffInter, 65, 67
CutoffReduction, 82, 83
CutoffThree, 67
## Cylindrical, 137
## Damping, 69
dE_band.out, 111
## Delta, 23, 86, 130, 152
DeltaModel, 152
## Dense, 92
## Density, 73, 76
DensityMatrixGPU, 48
## Derivatives, 89
## Descreening, 73
detailed.out, 111
DetailedXML, 155
## Device, 125
## Device{}, 125, 150
dftb, 151
## DFTB+U, 57
## DFTB3, 70
DiagLimit, 17
## Diagonaliser, 96
DiagonalRescaling, 42
## Differentiation, 32
## Direction, 59, 60
## Directions, 93
DirectRead{}, 58, 144
DispElem, 19
## Dispersion, 32
DisplayModes, 143
DispNorm, 19
DivideAndConquer, 144
DomainDecomposition, 76
## Driver, 12
DynMixingParameters, 42
EigenSolver, 143
eigenvec.bin, 114
eigenvec.out, 114
EigenvecBin, 155
EigenvectorsAsText, 90
ElectricField, 32
ElectronDynamics, 12
## Electronegativities, 69
ElectronicConstraints, 32, 38
## Electrostatic Gates, 137
ElectrostaticPotential, 90
## Electrostatics, 123
## ELPA{}, 48
EnclosedPoles, 130
## Energy, 19, 105
EnergyRange, 139
EnergyShift, 98
EnergyStep, 139
energyvst.dat, 119
EnergyWindow, 96
EnvelopeShape, 100
EnvelopeShape{}, 104
## Epsilon, 73, 76
ESP.dat, 115
EulerFrequency, 100
EwaldParameter, 32, 68
EwaldTolerance, 32, 68
## EXC.DAT, 117
ExcitedAtoms, 103
ExcitedState, 12
ExcitedStateForces, 96
## Exponents, 161
## External, 58, 59
fAlpha, 18
fDec, 18
FermiCutoff, 130, 132
FermiLevel, 126, 130
FieldStrength, 100

## INDEX217
## File, 30, 144
FillBoxWithAtoms, 156
## Filling, 32, 38
FillingsFromFile, 100
fInc, 18
## FIRE{}, 22, 40
FirstLayerAtoms, 125, 130
FixAngles, 16, 19, 21, 22
FixedFermiLevel, 51
FixLengths, 16, 19
FoldAtomsToUnitCell, 156
FonMaxIter, 105
ForceEvaluation, 32
## Forces, 100
FreeEnergyShift, 73, 76
FreqRange, 152
FreqStep, 152
## Frequencies, 94
## Frequency, 59, 60
FrequencyRange, 94
## Functional, 106
g{}, 27
## Gam, 68
## Gate, 133, 137
GateDistance, 138
GateLenth_l, 138
GateLenth_t, 138
GatePotential, 138
GateRadius, 138
## Gaussian{}, 104
GaussianBlurWidth, 58
gen geometry input, 13
GeneralisedBorn{}, 72
## Generations, 21, 42, 43
## Geometry, 12, 143, 149, 153, 163
GeometryOptimisation, 16
## Global, 136
## Gpu, 48
GradElem, 19
## Gradient, 105
GradNorm, 19
GreensFunction, 129
GreensFunction{}, 123
## Grid, 92
GridPoints, 93
## Gross, 60
GroundGuess, 53
GroundState, 155
## Groups, 109
GSummationCutoff, 83, 84
H5Scaling, 80
HalogenXCorr, 32, 79
## Hamiltonian, 12
hamreal.dat, 114
hamsqr.dat, 113
HardCutOff, 37
HBondCorr, 73
HBondStrength, 73
HCorrection, 32
HelicalSampled{}, 57
HelicalSymmetryTol, 32
HelicalUniform{}, 57
## Hessian, 16, 23, 145, 151
## Hessian, 143, 149, 153
hessian.out, 23
HHRepulsion, 65
HHubbard, 99
## Host, 30
HubbardDerivs, 32
## Hybrid, 32, 82
HybridDependentPol{}, 62
HybridPolarisations, 62
HybridPolarization, 62
i-PI{}, 30
## Id, 126, 150, 164
IgnoreUnprocessedNodes, 108, 161
ImagComponent, 156
ImagPolarisationDirection, 103
IncludeAllStates, 106
IndependentKFilling, 51
Infrared vibrational intensities, 145
InitialCharges, 32
InitialSpins, 43, 45
InitialTemperature, 25, 100
InitMixingParameter, 42, 43
InputVersion, 12, 108
IntegrationSteps, 28
IntegratorSteps, 26
InverseJacobiWeight, 41
IonDynamics, 100
## Isotropic, 16, 19, 21, 22, 27
## Kcn, 68
KeepStationary, 24
## Kernel, 73
KGrid, 70
KGridShift, 70
## Kick{}, 102

## 218INDEX
KickAndLaser{}, 103
KickPolDir, 103
KPointsAndWeights, 32, 38
## Label, 91
laser.dat, 120
## Laser{}, 103, 120
LaserEnergy, 103
LaserImagPolDir, 103
LaserPolDir, 103
LaserStrength, 103
LatticeOpt, 16, 19, 21, 22, 153
LatticeVectors, 12
## LBFGS{}, 22
LevelSpacing, 126
LineSearch, 22
LocalCurrents, 130
## Localise, 90
localOrbs.bin, 92
localOrbs.out, 92
LowerCaseTypeName, 54
LowestEnergy, 130
## MAGMA, 144
## MAGMA{}, 48
## Mass, 30, 146
## Masses, 24, 143, 149, 153
## Masses{}, 144
MassPerAtom, 30, 147
## Matrix, 151
MaxAngularMomentum, 32, 38
MaxAtomStep, 19, 21, 22
MaxConstrIterations, 39
MaxForceComponent, 19, 21, 22
MaximalForceComponent, 153
MaximalWeight, 41
MaxIterations, 92
MaxLatticeStep, 19, 21, 22
MaxParallelNodes, 133, 138
MaxPerturbIter, 93
MaxPoissonIterations, 133
MaxSCCIterations, 32, 38
MaxSccIterations, 29, 57, 122
MaxSKCutoff, 165
MaxSteps, 16, 19, 21, 22, 30, 122
md.out, 115
## Mdftb, 71
## Mdftb, 32, 71
MDOutput, 87
MDRestartFrequency, 24, 89, 115
## Memory, 17, 22
## Method, 38, 49
MinEdgeLength, 159
MinimalGrid, 133
MinimalWeight, 41
MinimiseMemoryUsage, 87
MinSccIterations, 29
## Mixer, 32
MixingParameter, 41, 42
## Mode, 48
MolecularMass, 73, 76
Monkhorst-Pack scheme, 55
MovedAtoms, 16, 19, 21–24, 100
mu.dat, 120
MullikenAnalysis, 90
MullikenPopulations, 39
muPoints, 49
## NACV.DAT, 118
## Net, 60
nInterationsELPA, 49
nMin, 18
NOmegaGrid, 70
NonAdiabaticCoupling, 105
NonAufbau{}, 32, 52, 53
NPH ensemble, 27
NPT ensemble, 27
NrOfCachedGrids, 156
NrOfExcitations, 96, 99
NrOfPoints, 156
NrOfVirtualStates, 99
NTPoly{}, 48
NumericalNorm, 133
NVE ensemble, 25
NVT ensemble, 25, 26
OBCCorrection, 73
## Occupation, 161
## Offset, 78
OldSKInterpolation, 32, 37
## OMM{}, 48
OneCenterAtomIntegrals, 71
OnSiteCorrection, 32
## Optimiser, 16, 39
OptimiserCI, 96
## Options, 12, 155
## Orbital, 161
OrbitalPotential, 32
OrbitalResolved, 91
## Order, 26, 51

## INDEX219
## Origin, 93, 158
OscillatorWindow, 96
OutputFile, 92
OutputPrefix, 16, 19, 21, 22, 24
overreal.dat, 114
OverrideBulkBC, 133
OverrideDefaultBC, 133
oversqr.dat, 113
## Parallel, 12
## Parallelisations, 138
ParameterFile, 38
ParamFile, 72, 73
ParserOptions, 12, 156
ParserVersion, 108, 168
## Periodic, 12
## Perturbation, 100, 120
## Perturbation{}, 102
PerturbDegenTol, 93
PerturbEta, 93
PerturbSccTol, 93
## PEXSI{}, 48
## Phase, 59, 103
PhononDispersion, 153
PipekMezey, 91
## Planar, 137
PlotModes, 146
PlottedKPoints, 156
PlottedLevels, 156
PlottedRegion, 156
PlottedSpins, 156
PLsDefined, 164
PLShiftTolerance, 126, 150
## Plumed, 24
PointCharges, 58
## Points, 92
## Poisson{}, 123
PoissonAccuracy, 133
PoissonBox, 133
PoissonThickness, 133
## Polarisability, 90
PolarisationDirection, 102, 103
## Poles, 49
PolynomialRepulsive, 32
## Populations, 40, 100, 120
## Port, 30
## Potential, 126, 135
## PP-RPA, 95
ppRPA_ener.DAT, 121
## Preconditioner, 107
## Prefix, 30, 54
## Pressure, 19, 21, 22, 27
PreSteps, 28
## Printforces, 90
## Probe, 100
ProbeProbeRange, 100
ProbeRadius, 78
ProcsPerPole, 49
ProjectStates, 90, 91
## Protocol, 30
## Pump, 100
PumpProbeFrames, 100
PurificationMethod, 50
## QR, 144
qsvst.dat, 120
## Rad, 68
## Radii, 69, 73, 75, 76, 78
RadiiScaling, 76
Raman intensities, 145
RandomSeed, 87
RangeSeparated, 95
RangeSeparated=None, 98
RangeSeparation, 69
ReadBinaryContact, 129
ReadChargesAsText, 87
ReadEigenvectors, 105
ReadInitialCharges, 32
ReadOldBulkPotential, 133
ReadSurfaceGFs, 130, 131
RealAxisPoints, 130, 132
RealAxisStep, 130, 132
RealComponent, 156
RecomputeAfterDensity, 133
ReferenceSet, 69, 70
## Region, 139, 152
## Regions{}, 40
## REKS, 12
## Reks, 105
RelativelyRobust, 144
relaxed_charge.dat, 122
RelaxedDensity, 105
RelaxTotalSpin, 43
RemoveRotation, 143
RemoveTranslation, 143
RepeatBox, 156
repeatgen, 153
RescaleSolvatedFields, 79
ReselectIndividually, 25

## 220INDEX
ReselectProbability, 25
## Resolution, 159
ResponseKernel, 90
## Restart, 26, 100
RestartFrequency, 87, 100
RestartFromAscii, 100
results.tag, 112
## RPA, 94
RScaling, 80
Rules for transport calculation geometries, 123
s10, 65, 67
s6, 65, 67
s8, 65, 67
s9, 67
## SASA, 73, 76
SaveMemory, 107
SavePotential, 133
SaveSurfaceGFs, 130, 131
## Scale, 29
ScalingFactor, 18
## SCC, 25, 32
SCCTolerance, 32, 38
SccTolerance, 29
## Screening, 82
sec:Damp X-H, 80
sec:DFTB3-D3H5, 80
SelectedShells, 33
## Separator, 54
ShellResolved, 91
ShellResolvedSCC, 32
ShellResolvedSpin, 32, 46
## Shift, 105
ShiftGrid, 156
ShowFoldedCoords, 87
## Sin2{}, 104
SkipChargeTest, 87
SKMaxDistance, 37
SlaterKosterFiles, 32, 143, 164
## Smoothing, 78
## Softening, 92
## Solvation, 32, 72, 78
## Solvent, 73
## Solver, 32, 38, 76, 123
## Spacing, 93
## Sparse, 48–50
SparseTolerances, 92
SpectralRadius, 49
SpinConstants, 32, 38, 96
SpinOrbit, 32
SpinPerAtom, 44, 45
SpinPolarisation, 32, 38
SpinPurify, 53
SpinTuning, 105
SpinType, 102
## SPX.DAT, 118
## Square, 136
## SSR22, 105
## State, 73, 76
state resolved Mulliken population, 114
StateCouplings, 96
StateInteractions, 106
StateOfInterest, 96
## Static, 94
SteepestDescent{}, 40
## Steps, 24, 100
StepSize, 18, 19
stop_driver, 122
stop_scc, 122
StopAfterParsing, 108, 161
## Stratmann, 98
## Strength, 59, 60
SubSpaceFactor, 98
## Suffix, 54
SurfaceTension, 78
SymbolicFactorProcs, 49
## Symmetry, 96, 99
TammDancoff, 99
TargetMicrostate, 105
TargetState, 105
## Task, 125, 127, 129
Task = ContactHamiltonian{}, 127
Task = UploadContacts, 128
Task = UploadContacts{}, 128
tdp-reks.dat, 122
## TDP.DAT, 118
## Temperature, 25, 26, 51, 73, 76, 126, 150
TemperatureProfile{}, 24–26
TempRange, 153
TempStep, 153
TerminalCurrents, 139
## TEST_ARPACK.DAT, 118
TestArnoldi, 98
## Thermostat, 24
ThirdOrder, 32
ThirdOrderFull, 32
## Threebody, 65
## Threshold, 49, 50, 82, 83
## Time0, 104

## INDEX221
## Time1, 104
## Timescale, 26, 27
TimeStep, 22, 24, 60, 100
TimingVerbosity, 87
## Tolerance, 49, 50, 78, 92, 107
TotalAtomicDensity, 156
TotalCharge, 40
TotalChargeDensity, 156
TotalChargeDifference, 156
TotalPopulation, 40
TotalSpinPolarisation, 156
TotalSpinPolarization, 157
TotalStateCoeffs, 96
## TRA.DAT, 118
TransientSteps, 29
TransitionDipole, 105
## Transport, 125, 131, 149, 163
## Transport{}, 123
TransportOnly, 123
TruncateSKRange, 32, 164
## Truncation, 50
TunnelingAndDos, 139
TunnelingAndDOS{}, 152
TypeNames, 12
TypesAndCoordinates, 12
UnpairedElectrons, 43
UploadContacts, 128
UseFromStart, 43
UseOmpThreads, 109
v{}, 27
VacuumAxis, 70
vanDerWaalsRadiiD3, 73, 76, 78
vasp geometry input, 14
## Velocities, 24, 100
## Verbose, 156
VerboseDynamics, 100
## Verbosity, 30, 133
VerbosityLevel, 105
## Vext, 60
WeightFactor, 41
WeightingFactor, 65, 67
WideBand, 126
WignerSeitzReduction, 83
WriteAllAtomGeometry, 87
WriteAsciiRestart, 100
WriteAtomicEnergies, 100
WriteAutotestTag, 87
WriteBandOut, 90
WriteBinaryContact, 127
WriteBondEnergy, 100
WriteBondPopulation, 100
WriteCharges, 87
WriteChargesAsText, 87
WriteCoefficients, 96
WriteCosmoFile, 90
WriteDensityMatrix, 96
WriteDetailedOut, 87
WriteDetailedXML, 87
WriteEigenvectors, 90, 96
WriteEnergyAndCharges, 100
WriteFrequency, 100, 120, 121
WriteHS, 87
WriteHSDInput, 108, 143
WriteLDOS, 139
WriteMulliken, 96
WriteNetCharges, 90
WriteRealHS, 87
WriteRestart, 100
WriteResultsTag, 87
WriteSPTransitions, 96
WriteStatusArnoldi, 98
WriteTransitionCharges, 96
WriteTransitionDipole, 96
WriteTransitions, 96
WriteTunn, 139
WriteXplusY, 96
WScaling, 80
x{}, 27
## XCH.DAT, 119
## Xlbomd, 24
XlbomdFast, 24
XplusY.DAT, 119
## XREST.DAT, 119
xyz geometry input, 14