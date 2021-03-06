%Code02_01 %constants, atomic properties
%Code03_01 %uncoupled spin matrices
%Code03_02 %energy basis states, unitary matrices
%Code03_06 %zero-field energies
%Code04_01 %projection operators
%Code05_02 %spherical projections in electronic space
%Code05_03 %matrices in energy basis, low field labels
%Code05_04 %spontaneous emission matrices
%Code05_05 %light characteristics, interaction matrix
Hee=Ee*ones(1,ge)-ones(ge,1)*Ee'; 
Hge=Eg*ones(1,ge)-ones(gg,1)*Ee'; 
Heg=Ee*ones(1,gg)-ones(ge,1)*Eg'; 
Hgg=Eg*ones(1,gg)-ones(gg,1)*Eg'; 