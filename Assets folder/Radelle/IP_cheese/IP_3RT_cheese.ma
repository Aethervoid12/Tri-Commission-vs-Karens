//Maya ASCII 2022 scene
//Name: IP_3RT_cheese.ma
//Last modified: Thu, Aug 11, 2022 08:26:26 PM
//Codeset: 1252
requires maya "2022";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "5DB12BFF-4834-ACAA-87F2-88A8B1EDD441";
createNode transform -s -n "persp";
	rename -uid "DCDFBA99-4C9F-FA84-73B9-0DBB555A7950";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -27.315506147143438 1.292162126151132 9.0593676048288891 ;
	setAttr ".r" -type "double3" -368.13835276903455 -1137.0000000000396 -7.2996849220033243e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F6CF2EAF-4E72-D3A5-A3C6-10B24ACB3818";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.1230966193296954;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.456419716002273 -0.25823184384580111 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F83A6902-4D5D-6E88-D1F6-F1A82A1C9249";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9082728445510067 1000.1 9.5924822697041261 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DCBF97CD-4EC4-E410-20CC-638206F68E18";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 24.099961905785449;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "DBCD2448-4D94-5174-48E2-6885FC63BB6F";
	setAttr ".t" -type "double3" -0.39228321199365102 -0.75194833974779374 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "00DBBE73-43F7-61E7-1897-70A39DC3C907";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 16.378950917226259;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E4CC1809-4A3B-3321-6170-F6919134A51F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.3091125961065 0.16910236605428408 20.380173909653045 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "317B7D7C-41BE-E41B-1B95-E2A7EE2B9731";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.3091125961065;
	setAttr ".ow" 12.670598713638839;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 0 20.45264635224774 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "10E1347D-4760-2211-06A3-1FA237BFB2C5";
	setAttr ".t" -type "double3" -15.43735659788832 -0.25823184384580111 0 ;
	setAttr ".s" -type "double3" 5.7691803349988611 6.0844611591163131 2.0428417229639582 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "E708ED85-4AAF-1F04-E89C-AAB6B1A664AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.74118882 0.37127575
		 0.74473882 0.37127575 0.74473882 0.69952828 0.74118882 0.69952828 0.76793015 0.37127575
		 0.76793015 0.69952828 0.71799749 0.69952828 0.71799749 0.37127575 0.79574043 0.37309155
		 0.79574043 0.69771236 0.69018722 0.69771236 0.69018722 0.37309155 0.89042282 0.38794297
		 0.89042282 0.68286103 0.59550482 0.68286103 0.59550482 0.38794297 0.43667811 0.37127575
		 0.4484657 0.37127575 0.4484657 0.69144207 0.43667811 0.69144207 0.48799068 0.37303075
		 0.48799068 0.68968707 0.39715323 0.68968707 0.39715323 0.37303075 0.59003085 0.3838999
		 0.59003085 0.67881793 0.29511303 0.67881793 0.29511303 0.3838999 0.0017772912 0.3313376
		 0.0017772912 0.0364196 0.29669529 0.0364196 0.29669529 0.3313376 0.096459702 0.018384721
		 0.20201288 0.018384721 0.19465512 0.34887847 0.10381748 0.34887847 0.12426998 0.0095145497
		 0.17420261 0.0095145497 0.15512995 0.36771446 0.14334263 0.36771446 0.1474613 0.0019920322
		 0.15101127 0.0019920322 0.30277315 0.33133784 0.30277315 0.036419854 0.59769094 0.036419854
		 0.59769094 0.33133784 0.3974553 0.018384848 0.50300872 0.018384848 0.49565071 0.34887868
		 0.40481332 0.34887868 0.4252657 0.0095146755 0.47519833 0.0095146755 0.4561258 0.36771458
		 0.44433823 0.36771458 0.44845715 0.0019921579 0.45200688 0.0019921579 0.0017772912
		 0.69500333 0.29669529 0.69500333 0.29669529 0.98992133 0.0017772912 0.98992133 0.30277315
		 0.99800807 0.30277315 0.70308954 0.59769064 0.70308954 0.59769064 0.99800807;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.5 -0.5 0.49999973 0.5 -0.5 0.49999973
		 -0.5 0.49999991 0.49999973 0.5 0.49999991 0.49999973 -0.5 0.49999991 -0.49999973
		 0.5 0.49999991 -0.49999973 -0.5 -0.5 -0.49999973 0.5 -0.5 -0.49999973 0.56115282 -0.55035782 -0.1789538
		 0.56115282 -0.55035782 0.1789538 0.56115282 0.55035776 -0.1789538 0.56115282 0.55035776 0.1789538
		 0.59122926 -0.55651486 -0.084655143 0.59122926 -0.55651486 0.084655143 0.59122926 0.55651486 -0.084655143
		 0.59122926 0.55651486 0.084655143 0.61673665 -0.55651486 -0.0060183695 0.61673665 -0.55651486 0.0060183695
		 0.61673665 0.55651486 -0.0060183695 0.61673665 0.55651486 0.0060183695 -0.55947697 -0.53685474 -0.15400471
		 -0.55947697 -0.53685474 0.15400471 -0.55947697 0.53685468 0.15400471 -0.55947697 0.53685468 -0.15400471
		 -0.62334526 -0.54280567 -0.019984409 -0.62334526 -0.54280567 0.019984409 -0.62334526 0.54280561 0.019984409
		 -0.62334526 0.54280561 -0.019984409;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0 6 20 0 0 21 0 20 21 0 2 22 0 21 22 0 4 23 0
		 22 23 0 23 20 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 26 27 0 27 24 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 56 57 58 59
		f 4 1 7 -3 -7
		mu 0 4 28 29 30 31
		f 4 2 9 -4 -9
		mu 0 4 60 61 62 63
		f 4 3 11 -1 -11
		mu 0 4 42 43 44 45
		f 4 -31 -33 -35 -36
		mu 0 4 0 1 2 3
		f 4 46 48 50 51
		mu 0 4 16 17 18 19
		f 4 -12 12 14 -14
		mu 0 4 44 43 46 47
		f 4 -10 15 16 -13
		mu 0 4 12 13 9 8
		f 4 -8 17 18 -16
		mu 0 4 30 29 32 33
		f 4 -6 13 19 -18
		mu 0 4 14 15 11 10
		f 4 -15 20 22 -22
		mu 0 4 47 46 50 51
		f 4 -17 23 24 -21
		mu 0 4 8 9 5 4
		f 4 -19 25 26 -24
		mu 0 4 33 32 36 37
		f 4 -20 21 27 -26
		mu 0 4 10 11 7 6
		f 4 -23 28 30 -30
		mu 0 4 51 50 54 55
		f 4 -25 31 32 -29
		mu 0 4 4 5 2 1
		f 4 -27 33 34 -32
		mu 0 4 37 36 40 41
		f 4 -28 29 35 -34
		mu 0 4 6 7 0 3
		f 4 10 37 -39 -37
		mu 0 4 42 45 48 49
		f 4 4 39 -41 -38
		mu 0 4 24 25 21 20
		f 4 6 41 -43 -40
		mu 0 4 28 31 34 35
		f 4 8 36 -44 -42
		mu 0 4 26 27 23 22
		f 4 38 45 -47 -45
		mu 0 4 49 48 52 53
		f 4 40 47 -49 -46
		mu 0 4 20 21 18 17
		f 4 42 49 -51 -48
		mu 0 4 35 34 38 39
		f 4 43 44 -52 -50
		mu 0 4 22 23 16 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "imagePlane1";
	rename -uid "93A6F696-48D2-8F9D-9680-25B53601E5AD";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "DE1AA6F0-4666-FA9A-F9FD-04A2E9EA617F";
	setAttr -k off ".v";
	setAttr ".fc" 100;
	setAttr ".imn" -type "string" "C:/Users/Radelle Oh/Documents/3RT//sourceimages/IP_references/wrappercheese.jpg";
	setAttr ".cov" -type "short2" 1600 1600 ;
	setAttr ".dlc" no;
	setAttr ".w" 16;
	setAttr ".h" 16;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube2";
	rename -uid "18078B66-4D66-4BD4-E18D-E291E9773BCF";
	setAttr ".t" -type "double3" -30.249175700525615 -0.25823184384580111 0 ;
	setAttr ".s" -type "double3" 10.892702841519863 6.0844611591163131 2.0428417229639582 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "61999BEF-4E20-D705-F024-18A1F81FF12C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[8:27]" -type "float3"  0 0.027907666 0 0 0.027907666 
		0 0 -0.027907651 0 0 -0.027907651 0 0 0.028219873 0 0 0.028219873 0 0 -0.028219854 
		0 0 -0.028219854 0 0 0.028219873 0 0 0.028219873 0 0 -0.028219854 0 0 -0.028219854 
		0 0 -2.5343616e-05 0 0 -2.5343616e-05 0 0 2.5351066e-05 0 0 2.5351066e-05 0 -0.063868262 
		-0.0063070012 0.1340203 -0.063868262 -0.0063070012 -0.1340203 -0.063868262 0.006307005 
		-0.1340203 -0.063868262 0.006307005 0.1340203;
	setAttr -s 28 ".vt[0:27]"  -0.5 -0.5 0.49999973 0.5 -0.5 0.49999973
		 -0.5 0.49999991 0.49999973 0.5 0.49999991 0.49999973 -0.5 0.49999991 -0.49999973
		 0.5 0.49999991 -0.49999973 -0.5 -0.5 -0.49999973 0.5 -0.5 -0.49999973 0.56115282 -0.61507249 -0.1789538
		 0.56115282 -0.61507249 0.1789538 0.56115282 0.61507243 -0.1789538 0.56115282 0.61507243 0.1789538
		 0.59122926 -0.62195349 -0.084655143 0.59122926 -0.62195349 0.084655143 0.59122926 0.62195349 -0.084655143
		 0.59122926 0.62195349 0.084655143 0.61673665 -0.62195349 -0.0060183695 0.61673665 -0.62195349 0.0060183695
		 0.61673665 0.62195349 -0.0060183695 0.61673665 0.62195349 0.0060183695 -0.55947697 -0.56666666 -0.15400471
		 -0.55947697 -0.56666666 0.15400471 -0.55947697 0.5666666 0.15400471 -0.55947697 0.5666666 -0.15400471
		 -0.55947697 -0.56666666 -0.15400471 -0.55947697 -0.56666666 0.15400471 -0.55947697 0.5666666 0.15400471
		 -0.55947697 0.5666666 -0.15400471;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0 6 20 0 0 21 0 20 21 0 2 22 0 21 22 0 4 23 0
		 22 23 0 23 20 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 26 27 0 27 24 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -31 -33 -35 -36
		mu 0 4 22 23 24 25
		f 4 46 48 50 51
		mu 0 4 30 31 32 33
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 29 35 -34
		mu 0 4 21 18 22 25
		f 4 10 37 -39 -37
		mu 0 4 12 0 27 26
		f 4 4 39 -41 -38
		mu 0 4 0 2 28 27
		f 4 6 41 -43 -40
		mu 0 4 2 13 29 28
		f 4 8 36 -44 -42
		mu 0 4 13 12 26 29
		f 4 38 45 -47 -45
		mu 0 4 26 27 31 30
		f 4 40 47 -49 -46
		mu 0 4 27 28 32 31
		f 4 42 49 -51 -48
		mu 0 4 28 29 33 32
		f 4 43 44 -52 -50
		mu 0 4 29 26 30 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface7";
	rename -uid "FB88FD52-4EEB-03A3-3213-ED89C67B6E5A";
	setAttr ".rp" -type "double3" -0.10019659996032715 0.066412895917892456 9.2422904690465586 ;
	setAttr ".sp" -type "double3" -0.10019659996032715 0.066412895917892456 9.2422904690465586 ;
createNode mesh -n "polySurface7Shape" -p "polySurface7";
	rename -uid "87A9F728-416E-3C5B-8238-23B3B6F6CC50";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:93]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 126 ".uvst[0].uvsp[0:125]" -type "float2" 0.1 0 0.1 0.1 0.69999999
		 0.1 0.90000004 0.1 1 0.1 0.1 0.90000004 0.69999999 0.90000004 0.90000004 0.90000004
		 0.1 1 0.90000004 1 0 0 0 0.1 0.1 0.1 0.1 0 0.69999999 0.1 0.69999999 0 0.90000004
		 0.1 0.90000004 0 1 0.1 1 0 0 0.90000004 0.1 0.90000004 0.69999999 0.90000004 0.90000004
		 0.90000004 1 0.90000004 0 1 0.1 1 0.69999999 1 0.90000004 1 1 1 0 0 0.1 0 0 0.1 0.69999999
		 0 0.90000004 0 1 0 1 0.1 0 0.90000004 1 0.90000004 0.1 1 0 1 0.69999999 1 0.90000004
		 1 1 1 0.625 0 0.64172357 0 0.64172357 0.1919369 0.625 0.1919369 0.3582764 0 0.375
		 0 0.375 0.1919369 0.3582764 0.1919369 0.125 0 0.1418063 0 0.1418063 0.1919369 0.125
		 0.1919369 0.85819376 0.1919369 0.85819376 0 0.875 0 0.875 0.1919369 0.375 0.26672357
		 0.38823146 0.26672357 0.38823146 0.4831937 0.375 0.4831937 0.375 0.25 0.38823146
		 0.25 0.38823146 0 0.38823146 0.1919369 0.375 0.98327643 0.38823146 0.98327643 0.38823146
		 1 0.375 1 0.375 0.7668063 0.38823146 0.7668063 0.375 0.75 0.38823146 0.75 0.375 0.55806309
		 0.38823146 0.55806309 0.38823146 0.5 0.375 0.5 0.38823146 0.26672357 0.61102736 0.26672357
		 0.61102736 0.4831937 0.38823146 0.4831937 0.6110273 0.25 0.61102736 0.26672357 0.6110273
		 0 0.61102736 0.1919369 0.6110273 0.98327643 0.6110273 1 0.6110273 0.7668063 0.6110273
		 0.75 0.6110273 0.55806309 0.61102736 0.4831937 0.6110273 0.5 0.625 0.25 0.625 0.26672357
		 0.625 0.26672357 0.625 0.25 0.625 0.4831937 0.625 0.5 0.625 0.5 0.625 0.4831937 0.375
		 0.4831937 0.375 0.26672357 0.375 0.25 0.38823146 0.25 0.38823146 0.5 0.375 0.5 0.6110273
		 0.25 0.6110273 0.5 0.64172357 0.25 0.3582764 0.25 0.1418063 0.25 0.125 0.25 0.85819376
		 0.25 0.875 0.25 0.625 0.55806309 0.625 0.75 0.625 0.7668063 0.625 0.98327643 0.625
		 1 0.61102736 0.26672357 0.38823146 0.26672357 0.61102736 0.4831937 0.38823146 0.4831937;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 94 ".vt[0:93]"  -6.79992819 0.78156257 14.14179707 -5.44377232 0.74667972 14.68581486
		 2.69316244 0.78156257 14.68581486 5.40547609 0.78156257 14.68581486 6.76163054 0.78156257 14.14179707
		 -7.18544817 0.78156257 13.16120625 -5.44377232 0.74667972 13.16120625 2.69316244 0.74667972 13.16120625
		 5.40547514 0.74667972 13.16120625 6.98505497 0.74667972 13.16120625 -7.18544817 0.78156257 5.31647968
		 -5.44377232 0.74667972 5.31647968 2.69316244 0.74667972 5.31647968 5.40547514 0.74667972 5.31647968
		 6.98505497 0.78156257 5.31647968 -6.79992819 0.78156257 4.33588886 -5.44377232 0.74667972 3.7987659
		 2.69316244 0.78156257 3.7987659 5.40547514 0.74667972 3.7987659 6.76163054 0.78156257 4.33588886
		 -5.44377232 0.78156257 14.68581486 -5.44377232 0.78156257 13.16120625 2.69316244 0.78156257 13.16120625
		 5.40547514 0.78156257 13.16120625 6.98505497 0.78156257 13.16120625 -5.44377232 0.78156257 5.31647968
		 2.69316244 0.78156257 5.31647968 5.40547514 0.78156257 5.31647968 -5.44377232 0.78156257 3.7987659
		 5.40547514 0.78156257 3.7987659 -4.67966938 -0.64873677 12.93478394 4.67966938 -0.64873677 12.93478394
		 -6.35155439 0.64873677 13.98615551 5.80481148 0.64873677 13.63628864 -6.35155439 0.64873677 4.47184086
		 6.36787367 0.64873677 4.47184086 -4.67966938 -0.64873677 5.52966499 4.67966938 -0.64873677 5.52966499
		 -5.37425661 0.34739545 13.30504227 5.37425661 0.34739545 13.30504227 -6.61393642 0.64873677 5.11144257
		 -4.67966938 -0.64873677 6.027476311 4.67966938 -0.64873677 6.027476311 5.37425661 0.34739545 5.70700169
		 6.49906492 0.64873677 5.11144257 -4.67966938 -0.64873677 12.43942547 4.67966938 -0.64873677 12.43942547
		 5.37425661 0.34739545 12.76014614 -5.67836761 0.64873677 14.32725048 -4.18431854 -0.64873677 12.93478394
		 -4.18431854 -0.64873677 6.027476311 -4.18431854 -0.64873677 5.52966499 -4.80538321 0.34739545 5.15940905
		 -5.67836761 0.64873677 4.18263054 5.6569767 0.64873677 14.32725048 4.15656996 -0.64873677 12.93478394
		 4.15656996 -0.64873677 12.43942547 4.15656996 -0.64873677 6.027476311 4.15656996 -0.64873677 5.52966499
		 4.77351522 0.34739545 5.15940905 5.6569767 0.64873677 4.18263054 5.6569767 0.75110972 14.32725048
		 5.80481148 0.75110972 13.63628864 5.6569767 0.75110972 4.18263054 6.49906492 0.75110972 5.11144257
		 6.36787367 0.75110972 4.47184086 -5.67836761 0.75110972 13.34970188 -5.67836761 0.75110972 5.11144257
		 -6.61393642 0.75110972 5.11144257 -6.35155439 0.75110972 13.98615551 -5.67836761 0.75110972 14.32725048
		 -5.67836761 0.75110972 4.18263054 -6.35155439 0.75110972 4.47184086 -4.80538321 0.34739545 13.30504227
		 -5.37425661 0.34739545 5.70700169 -5.37425661 0.34739545 5.15940905 5.37425661 0.34739545 5.15940905
		 6.49906492 0.64873677 13.34970188 6.49906492 0.75110972 13.34970188 -6.61393642 0.75110972 13.34970188
		 -6.61393642 0.64873677 13.34970188 -5.37425661 0.34739545 12.76014614 -4.18431854 -0.64873677 12.43942547
		 5.6569767 0.75110972 13.34970188 5.6569767 0.75110972 5.11144257 4.77351522 0.34739545 13.30504227
		 5.029352188 0.75110972 12.89355946 -5.050743103 0.75110972 12.89355946 5.029352188 0.75110972 5.56758547
		 -5.050743103 0.75110972 5.56758547 5.029352188 -0.11283884 12.89355946 -5.050743103 -0.11283884 12.89355946
		 5.029352188 -0.11283884 5.56758547 -5.050743103 -0.11283884 5.56758547;
	setAttr -s 184 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 5 0 1 6 1 1 2 0 2 7 1 2 3 0 3 8 1 3 4 0 4 9 0
		 5 6 1 5 10 0 6 11 1 6 7 1 7 12 1 7 8 1 8 13 1 8 9 1 9 14 0 10 11 1 10 15 0 11 16 1
		 11 12 1 12 17 1 12 13 1 13 18 1 13 14 1 14 19 0 15 16 0 16 17 0 17 18 0 18 19 0 0 20 0
		 5 21 1 1 20 0 20 21 1 20 2 0 21 22 1 2 22 1 22 23 1 3 23 1 4 24 0 23 24 1 9 24 0
		 10 25 1 21 25 1 25 26 1 22 26 1 26 27 1 23 27 1 24 14 0 27 14 1 16 28 0 15 28 0 25 28 1
		 28 17 0 26 17 1 18 29 0 17 29 0 27 29 1 29 19 0 30 49 0 32 48 0 34 53 0 36 51 0 30 38 0
		 31 39 0 32 80 0 33 77 0 34 75 0 35 76 0 36 41 0 37 42 0 75 36 0 38 81 1 76 37 0 76 43 1
		 39 85 1 40 34 0 40 74 1 74 75 1 41 45 0 74 41 1 42 46 0 41 50 1 43 47 1 42 43 1 44 35 0
		 80 40 0 81 74 1 45 82 1 77 44 0 48 54 0 48 73 1 73 38 1 49 55 0 73 49 1 82 56 1 49 82 1
		 50 57 1 82 50 1 51 58 0 50 51 1 51 52 1 53 60 0 85 73 1 33 62 0 77 78 0 62 78 0 60 63 0
		 63 84 1 44 64 0 64 84 1 35 65 0 64 65 0 78 64 0 67 66 0 40 68 0 67 68 1 79 68 0 32 69 0
		 48 70 0 69 70 0 69 79 0 53 71 0 71 67 1 34 72 0 72 71 0 68 72 0 84 67 0 70 61 0 71 63 0
		 39 33 0 38 32 0 52 53 1 75 52 1 52 59 1 43 44 1 78 83 1 66 70 1 83 66 0 66 79 1 79 80 0
		 80 81 1 45 30 0 81 45 1 46 31 0 47 39 1 46 47 1 47 77 1 54 33 0 61 62 0 54 61 0 61 83 1
		 83 84 0 63 65 0 60 35 0 59 76 1 60 59 1 58 37 0 59 58 1 57 42 1 58 57 1 56 46 1 57 56 1
		 55 31 0 56 55 1;
	setAttr ".ed[166:183]" 55 85 1 85 54 1 83 86 0 66 87 0 86 87 0 84 88 0 88 86 0
		 67 89 0 88 89 0 89 87 0 86 90 0 87 91 0 90 91 0 88 92 0 92 90 0 89 93 0 92 93 0 93 91 0;
	setAttr -s 94 -ch 368 ".fc[0:93]" -type "polyFaces" 
		f 4 31 34 -33 -2
		mu 0 4 30 0 1 32
		f 4 35 37 -37 -35
		mu 0 4 0 33 2 1
		f 4 5 39 -39 -38
		mu 0 4 33 34 3 2
		f 4 7 40 -42 -40
		mu 0 4 34 35 4 3
		f 4 32 44 -44 -11
		mu 0 4 32 1 5 37
		f 4 36 46 -46 -45
		mu 0 4 1 2 6 5
		f 4 38 48 -48 -47
		mu 0 4 2 3 7 6
		f 4 41 49 -51 -49
		mu 0 4 3 4 38 7
		f 4 43 53 -53 -20
		mu 0 4 37 5 8 40
		f 4 45 55 -55 -54
		mu 0 4 5 6 41 8
		f 4 47 58 -58 -56
		mu 0 4 6 7 9 41
		f 4 50 26 -60 -59
		mu 0 4 7 38 43 9
		f 4 1 9 -3 -1
		mu 0 4 10 11 12 13
		f 4 2 12 -5 -4
		mu 0 4 13 12 14 15
		f 4 4 14 -7 -6
		mu 0 4 15 14 16 17
		f 4 6 16 -9 -8
		mu 0 4 17 16 18 19
		f 4 10 18 -12 -10
		mu 0 4 11 20 21 12
		f 4 11 21 -14 -13
		mu 0 4 12 21 22 14
		f 4 13 23 -16 -15
		mu 0 4 14 22 23 16
		f 4 15 25 -18 -17
		mu 0 4 16 23 24 18
		f 4 19 27 -21 -19
		mu 0 4 20 25 26 21
		f 4 20 28 -23 -22
		mu 0 4 21 26 27 22
		f 4 22 29 -25 -24
		mu 0 4 22 27 28 23
		f 4 24 30 -27 -26
		mu 0 4 23 28 29 24
		f 3 0 33 -32
		mu 0 3 30 31 0
		f 3 3 -36 -34
		mu 0 3 31 33 0
		f 3 8 42 -41
		mu 0 3 35 36 4
		f 3 17 -50 -43
		mu 0 3 36 38 4
		f 3 -28 52 -52
		mu 0 3 39 40 8
		f 3 -29 51 54
		mu 0 3 41 39 8
		f 3 -30 57 -57
		mu 0 3 42 41 9
		f 3 -31 56 59
		mu 0 3 43 42 9
		f 4 -146 147 146 -66
		mu 0 4 44 45 46 47
		f 4 143 64 73 144
		mu 0 4 48 49 50 51
		f 4 70 -82 79 72
		mu 0 4 52 53 54 55
		f 4 -86 -72 -75 75
		mu 0 4 56 57 58 59
		f 4 80 -145 88 81
		mu 0 4 53 48 51 54
		f 4 -148 -83 85 84
		mu 0 4 46 45 57 56
		f 4 -141 -116 117 -119
		mu 0 4 60 61 62 63
		f 4 121 -139 140 -123
		mu 0 4 64 65 61 60
		f 4 60 -96 93 -65
		mu 0 4 49 66 67 50
		f 4 89 -98 -61 -144
		mu 0 4 68 69 70 71
		f 4 83 -100 -90 -81
		mu 0 4 72 73 69 68
		f 4 63 -102 -84 -71
		mu 0 4 74 75 73 72
		f 4 134 -103 -64 -73
		mu 0 4 76 77 75 74
		f 4 -118 -125 -127 -128
		mu 0 4 63 62 78 79
		f 4 -179 -181 182 183
		mu 0 4 80 81 82 83
		f 4 129 152 139 138
		mu 0 4 65 84 85 61
		f 4 94 166 104 95
		mu 0 4 66 86 87 67
		f 4 96 165 -95 97
		mu 0 4 69 88 89 70
		f 4 98 163 -97 99
		mu 0 4 73 90 88 69
		f 4 100 161 -99 101
		mu 0 4 75 91 90 73
		f 4 135 159 -101 102
		mu 0 4 77 92 91 75
		f 4 124 -129 -110 -131
		mu 0 4 78 62 93 94
		f 4 67 106 -108 -106
		mu 0 4 95 96 97 98
		f 4 86 112 -114 -111
		mu 0 4 99 100 101 102
		f 4 90 110 -115 -107
		mu 0 4 96 99 102 97
		f 4 -88 -142 118 -117
		mu 0 4 103 104 60 63
		f 4 61 120 -122 -120
		mu 0 4 105 106 65 64
		f 4 -67 119 122 141
		mu 0 4 104 105 64 60
		f 4 -63 125 126 -124
		mu 0 4 107 108 79 78
		f 4 -78 116 127 -126
		mu 0 4 108 103 63 79
		f 4 91 151 -130 -121
		mu 0 4 106 109 84 65
		f 4 -104 123 130 -109
		mu 0 4 110 107 78 94
		f 4 -147 148 -68 -132
		mu 0 4 47 46 111 95
		f 4 -105 167 -92 92
		mu 0 4 67 87 109 106
		f 4 -94 -93 -62 -133
		mu 0 4 50 67 106 105
		f 4 -74 132 66 142
		mu 0 4 51 50 105 112
		f 4 -89 -143 87 78
		mu 0 4 54 51 112 113
		f 4 -80 -79 77 68
		mu 0 4 55 54 113 114
		f 4 62 -134 -135 -69
		mu 0 4 108 107 77 76
		f 4 103 157 -136 133
		mu 0 4 107 110 92 77
		f 4 -137 -76 -70 -87
		mu 0 4 115 56 59 116
		f 4 -149 -85 136 -91
		mu 0 4 111 46 56 115
		f 4 149 105 -151 -152
		mu 0 4 109 95 98 84
		f 4 -153 150 107 137
		mu 0 4 85 84 98 97
		f 4 -154 -138 114 111
		mu 0 4 93 85 97 102
		f 4 109 -112 113 -155
		mu 0 4 94 93 102 101
		f 4 -156 108 154 -113
		mu 0 4 100 110 94 101
		f 4 -158 155 69 -157
		mu 0 4 92 110 100 117
		f 4 -160 156 74 -159
		mu 0 4 91 92 117 118
		f 4 -162 158 71 -161
		mu 0 4 90 91 118 119
		f 4 -164 160 82 -163
		mu 0 4 88 90 119 120
		f 4 -166 162 145 -165
		mu 0 4 89 88 120 121
		f 4 -167 164 65 76
		mu 0 4 87 86 44 47
		f 4 -168 -77 131 -150
		mu 0 4 109 87 47 95
		f 4 -140 168 170 -170
		mu 0 4 61 85 122 123
		f 4 153 171 172 -169
		mu 0 4 85 93 124 122
		f 4 128 173 -175 -172
		mu 0 4 93 62 125 124
		f 4 115 169 -176 -174
		mu 0 4 62 61 123 125
		f 4 -171 176 178 -178
		mu 0 4 123 122 81 80
		f 4 -173 179 180 -177
		mu 0 4 122 124 82 81
		f 4 174 181 -183 -180
		mu 0 4 124 125 83 82
		f 4 175 177 -184 -182
		mu 0 4 125 123 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "34F95FAF-4B42-5C14-6FFC-CC943AF3743E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DFFA5AEF-4F45-4D0C-DA78-16A4C10F7D87";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FFF414D6-435F-79FD-527B-5D92E18F330C";
createNode displayLayerManager -n "layerManager";
	rename -uid "054F8D75-481D-4C16-0DF4-4ABD1F3650C6";
createNode displayLayer -n "defaultLayer";
	rename -uid "5983353A-41E8-0776-929F-F4A5034D5B78";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "195F782E-4D5C-013B-8143-EF9905280765";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7C51C343-416E-5A79-AABC-3DBC5E183F96";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D6D65AB8-4DB2-E109-C707-FEAAE694D27F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1049\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1049\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1049\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 40 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B995B184-4326-9418-2D8E-30915FEA2F64";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "CEE5CC72-4D8A-1590-AC69-179A2269A58B";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr "groupId1.id" "polySurface7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface7Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of IP_3RT_cheese.ma
