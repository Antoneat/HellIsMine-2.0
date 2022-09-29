//Maya ASCII 2022 scene
//Name: Cabeza.ma
//Last modified: Tue, Jun 28, 2022 04:44:15 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.1";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Home Single Language v2009 (Build: 19043)";
fileInfo "UUID" "A1CAC1EE-448E-2FB3-5FF6-BCA08BF617F3";
createNode transform -s -n "persp";
	rename -uid "E0F7B0D5-4D65-AA44-4065-3D8C14EC7067";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.8812334044053767 10.854546444719819 25.729554878307017 ;
	setAttr ".r" -type "double3" -13.538352731546073 376.59999999992237 4.1485961593326098e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BEA440F2-48C3-B9B0-953A-ACA6A25CD2D5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 28.096010336516073;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B652DF94-400A-8328-BD59-CAAF83C9E68E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8C7FAF6C-4AF9-2860-BF7C-159FFE4E5097";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "1D5A12FB-4470-5341-0806-A697E517F57E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "553E76B8-4229-3F08-B2AF-90BA63CF0871";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "36A58604-447E-E43F-A711-4A8C3E8F4B23";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2FB614EE-4F58-019B-B997-BDB7500ADB0F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "polySurface22";
	rename -uid "F9406089-481A-FB30-5BE4-EF9C3768F353";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 -0.0667726602982536 -0.029205227109830593 ;
	setAttr ".sp" -type "double3" 0 -0.0667726602982536 -0.029205227109830593 ;
createNode transform -n "polySurface23" -p "polySurface22";
	rename -uid "A4DD6330-4BDF-DA8B-EF66-75AA61972396";
createNode transform -n "transform11" -p "polySurface23";
	rename -uid "66BAA445-41DC-E794-1A17-CB9410764739";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform11";
	rename -uid "92629886-435B-E13E-9911-B093C3A29E59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24" -p "polySurface22";
	rename -uid "E717EF46-425C-4B8B-ADCB-FFAE8CAF00C2";
createNode transform -n "transform8" -p "polySurface24";
	rename -uid "0A0F5B8E-4C0D-3EA9-83DB-0197EC8A406A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform8";
	rename -uid "DB84078E-4CBC-598B-A8B2-0FB593C9D59B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25" -p "polySurface22";
	rename -uid "8074DED6-4583-A379-B1EA-E18A37F5FC99";
createNode transform -n "transform27" -p "polySurface25";
	rename -uid "013BAF7E-4A4A-C81A-16A2-95AC97898EDE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform27";
	rename -uid "CF7823F1-4D27-C537-62D7-BE9156D456FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26" -p "polySurface22";
	rename -uid "8483BC01-4AA3-F5D0-11ED-468531E9E4A1";
createNode transform -n "transform36" -p "polySurface26";
	rename -uid "1D6BF569-40CB-E7F3-48C0-ABAAE691B50A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform36";
	rename -uid "23688E79-4C05-4E41-AFCC-D5801BA0282A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27" -p "polySurface22";
	rename -uid "25FE9C53-4A33-4C3C-7481-32A1B08F868D";
createNode transform -n "transform14" -p "polySurface27";
	rename -uid "BFCC4EE2-47D5-7BEC-B184-33B2EB3F1951";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform14";
	rename -uid "237177E0-4C8D-577D-78B5-889C4A14AF57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface28" -p "polySurface22";
	rename -uid "24A459FC-4B05-F194-C826-58AB70C20DB3";
createNode transform -n "transform21" -p "polySurface28";
	rename -uid "BD063449-4F36-37E2-E61B-EB8C13FEAB4D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform21";
	rename -uid "7EBBB969-48D3-4C9D-6E2A-98B973DB7BF4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29" -p "polySurface22";
	rename -uid "3D7240B7-49CA-59B5-F732-13A684F0AAC2";
createNode transform -n "transform9" -p "polySurface29";
	rename -uid "6BA98313-4050-823E-484E-C8A509BD885E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform9";
	rename -uid "880833C3-41B8-355D-A02C-81BD1745E553";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30" -p "polySurface22";
	rename -uid "6415E38A-49CD-EA12-776B-DB9804BD8514";
createNode transform -n "transform33" -p "polySurface30";
	rename -uid "320712B6-44FD-11D0-23EA-B1B3C9F3FF13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform33";
	rename -uid "EE579301-49ED-AB02-4270-97887B112880";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31" -p "polySurface22";
	rename -uid "615B5652-4B88-7815-CC02-B0B9B7244DE8";
createNode transform -n "transform24" -p "polySurface31";
	rename -uid "BEA1E98B-4054-F7A0-C6DF-13BBCBA4E33A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform24";
	rename -uid "77F5807D-47EC-37B4-A9CF-7BAF215899A5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32" -p "polySurface22";
	rename -uid "73B7B684-48DC-5BD9-73D5-F78F47887A72";
createNode transform -n "transform18" -p "polySurface32";
	rename -uid "FE15912F-4E65-F43C-D562-E4A69D174ED9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform18";
	rename -uid "92372780-408D-6F9B-B15C-229DD3717C67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface33" -p "polySurface22";
	rename -uid "1503891C-473A-E91B-A8E4-38BEC7BEBD2C";
createNode transform -n "transform38" -p "polySurface33";
	rename -uid "9F685D33-46F3-F71B-ABD5-8E83B17D919D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform38";
	rename -uid "7368F08E-428E-2418-1C3A-59B81A2B78C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface34" -p "polySurface22";
	rename -uid "C8C5FDF2-4FB0-DB47-75C0-DF84BB577913";
createNode transform -n "transform10" -p "polySurface34";
	rename -uid "A217801C-4666-01E8-33F0-85A21CC47302";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform10";
	rename -uid "394B591D-4BA0-50D6-5B41-21A4B0F0B46F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35" -p "polySurface22";
	rename -uid "0F860B1E-46EF-3261-9DDC-E686EDD71B21";
createNode transform -n "transform6" -p "polySurface35";
	rename -uid "F31F6E9D-4D9C-BC66-1A79-8A93577DC1D7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform6";
	rename -uid "6D0EBABF-47ED-1519-3445-359D28D53AFA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface36" -p "polySurface22";
	rename -uid "D7E6F3BA-41CF-2D41-1875-F98BC4E4DE34";
createNode transform -n "transform20" -p "polySurface36";
	rename -uid "D4B4AF57-4E22-1D60-0E53-B4892C4DE423";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform20";
	rename -uid "FCE828CF-4D3B-CE4A-0861-158809A47628";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface37" -p "polySurface22";
	rename -uid "0B07A0E1-4D60-C735-7F89-7C935DBC7D34";
createNode transform -n "transform16" -p "polySurface37";
	rename -uid "60C42F9A-4D9B-725F-4059-E4AFE58A4E9C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform16";
	rename -uid "39EDD60D-483C-2C57-A6CE-DD864D33FE90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38" -p "polySurface22";
	rename -uid "E858A1E1-438E-9915-AF8C-C8BBD7899ADE";
createNode transform -n "transform32" -p "polySurface38";
	rename -uid "4CD45FA6-4B3A-904C-E983-EB9628A3B674";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform32";
	rename -uid "39EE605B-4EE3-8E3B-8023-DFB9B53A6DCD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface39" -p "polySurface22";
	rename -uid "45A1FBBE-4EEC-A523-C21D-0AAC70E5F330";
createNode transform -n "transform19" -p "polySurface39";
	rename -uid "8AC7CBC8-4ACA-C5A6-95C5-B095842A2AA4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform19";
	rename -uid "1301E5F2-414B-DFC9-4684-A8A07F2D9AFB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface40" -p "polySurface22";
	rename -uid "A46BD4E7-4805-D5EB-CBE6-209428F2B2EB";
createNode transform -n "transform3" -p "polySurface40";
	rename -uid "BE048445-418D-FDBC-BA12-6EB3F1AB6F4F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform3";
	rename -uid "4220016B-4400-5438-1015-0D8C6CBD4425";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface41" -p "polySurface22";
	rename -uid "8D50D32E-4541-481B-E41F-D598D658CA83";
createNode transform -n "transform31" -p "polySurface41";
	rename -uid "2868F847-4AA0-F041-5593-C2B7D2D568FA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform31";
	rename -uid "D53A6DE5-4234-07E9-C78F-ABA67AFCAF1B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface42" -p "polySurface22";
	rename -uid "FF630D43-443F-D415-3FF3-0DAD338CEC97";
createNode transform -n "transform4" -p "polySurface42";
	rename -uid "BD19C5A1-4343-AB99-AF40-43B3601DF5FA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform4";
	rename -uid "1F873983-41E8-214E-BCD2-1E930078A3E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface43" -p "polySurface22";
	rename -uid "47006431-461F-45CB-04D8-B69ADE98F6DD";
createNode transform -n "transform23" -p "polySurface43";
	rename -uid "D76E6522-4158-D3B8-1DBA-56B1D1B1E156";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform23";
	rename -uid "142D880E-4E14-BB9E-A157-DB8A454B1497";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.29581864178180695 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 75 ".pt";
	setAttr ".pt[0]" -type "float3" 0.30308175 0.18174949 -0.1869223 ;
	setAttr ".pt[1]" -type "float3" 0 0.38123414 0.076589204 ;
	setAttr ".pt[2]" -type "float3" -0.30308175 0.18174949 -0.1869223 ;
	setAttr ".pt[3]" -type "float3" 0.49564552 0.010313277 0.015891388 ;
	setAttr ".pt[4]" -type "float3" 0 0.052191127 0.17506635 ;
	setAttr ".pt[5]" -type "float3" -0.49564552 0.010313277 0.015891388 ;
	setAttr ".pt[12]" -type "float3" 0.54797536 0.0075763012 0.013279631 ;
	setAttr ".pt[13]" -type "float3" 0 0.1333288 0.46338695 ;
	setAttr ".pt[14]" -type "float3" -0.54797536 0.0075763012 0.013279631 ;
	setAttr ".pt[18]" -type "float3" 0.37877861 0.00019137377 0.02075927 ;
	setAttr ".pt[19]" -type "float3" 0 0.1333288 0.46338695 ;
	setAttr ".pt[20]" -type "float3" -0.37877861 0.00019137377 0.02075927 ;
	setAttr ".pt[32]" -type "float3" 0 0.3080532 -0.14472918 ;
	setAttr ".pt[39]" -type "float3" 0.018967502 0.00082787441 0.0079381969 ;
	setAttr ".pt[40]" -type "float3" 0.0050331587 0.027735032 0.30646145 ;
	setAttr ".pt[41]" -type "float3" 0 0.027515352 0.30646145 ;
	setAttr ".pt[42]" -type "float3" 0 0.3080532 -0.14472918 ;
	setAttr ".pt[49]" -type "float3" -0.018967502 0.00082787441 0.0079381969 ;
	setAttr ".pt[50]" -type "float3" -0.0050331587 0.027735032 0.30646145 ;
	setAttr ".pt[51]" -type "float3" 0 0.027515352 0.30646145 ;
	setAttr ".pt[52]" -type "float3" 0.056622505 0.25255996 -0.27696329 ;
	setAttr ".pt[59]" -type "float3" 0.21612182 0.0077696946 0.022370091 ;
	setAttr ".pt[60]" -type "float3" 0.24529777 0.0041611698 0.13124123 ;
	setAttr ".pt[61]" -type "float3" 0.17233141 0 0.13616176 ;
	setAttr ".pt[62]" -type "float3" -0.056622505 0.25255996 -0.27696329 ;
	setAttr ".pt[69]" -type "float3" -0.21612182 0.0077696946 0.022370091 ;
	setAttr ".pt[70]" -type "float3" -0.24529777 0.0041611698 0.13124123 ;
	setAttr ".pt[71]" -type "float3" -0.17233141 0 0.13616176 ;
	setAttr ".pt[72]" -type "float3" 0.37439403 0.085595787 -0.07875631 ;
	setAttr ".pt[73]" -type "float3" 0.22963771 0.16786359 -0.14242515 ;
	setAttr ".pt[74]" -type "float3" 0.01228792 0.2035058 -0.026141215 ;
	setAttr ".pt[75]" -type "float3" 0 0.27330488 0.17299168 ;
	setAttr ".pt[76]" -type "float3" -0.01228792 0.2035058 -0.026141215 ;
	setAttr ".pt[77]" -type "float3" -0.22963771 0.16786359 -0.14242515 ;
	setAttr ".pt[78]" -type "float3" -0.37439403 0.085595787 -0.07875631 ;
	setAttr ".pt[138]" -type "float3" -0.37439403 0.001117611 0.027680568 ;
	setAttr ".pt[139]" -type "float3" -0.19665176 0.041723479 0.045975868 ;
	setAttr ".pt[140]" -type "float3" -0.0025144354 0.09754318 0.14201854 ;
	setAttr ".pt[141]" -type "float3" 0 0.19664322 0.31179145 ;
	setAttr ".pt[142]" -type "float3" 0.0025144354 0.09754318 0.14201854 ;
	setAttr ".pt[143]" -type "float3" 0.19665176 0.041723479 0.045975868 ;
	setAttr ".pt[144]" -type "float3" 0.37439403 0.001117611 0.027680568 ;
	setAttr ".pt[411]" -type "float3" 0.15124673 0.0066014649 0 ;
	setAttr ".pt[412]" -type "float3" 0.075939059 0.0033145119 0 ;
	setAttr ".pt[416]" -type "float3" -0.075939059 0.0033145119 0 ;
	setAttr ".pt[417]" -type "float3" -0.15124673 0.0066014649 0 ;
	setAttr ".pt[418]" -type "float3" -0.05163515 0.0021645532 0 ;
	setAttr ".pt[419]" -type "float3" -0.0020647752 0 0 ;
	setAttr ".pt[420]" -type "float3" -0.0014281556 0 0 ;
	setAttr ".pt[421]" -type "float3" -0.0020428835 0 0 ;
	setAttr ".pt[429]" -type "float3" 0.0018606766 0 0 ;
	setAttr ".pt[430]" -type "float3" 0.0014281556 0 0 ;
	setAttr ".pt[431]" -type "float3" 0.0020647752 0 0 ;
	setAttr ".pt[432]" -type "float3" 0.051440321 0.0021640025 0 ;
	setAttr ".pt[433]" -type "float3" 0.31126395 0.010313277 0 ;
	setAttr ".pt[434]" -type "float3" 0.13266635 0.0057904869 0 ;
	setAttr ".pt[438]" -type "float3" -0.13266635 0.0057904869 0 ;
	setAttr ".pt[439]" -type "float3" -0.31126395 0.010313277 0 ;
	setAttr ".pt[440]" -type "float3" -0.255795 0.0044159307 0 ;
	setAttr ".pt[441]" -type "float3" -0.16291906 0 0 ;
	setAttr ".pt[442]" -type "float3" -0.16330221 0 -1.7763568e-17 ;
	setAttr ".pt[443]" -type "float3" -0.16243656 0.0016325586 -0.0020984837 ;
	setAttr ".pt[444]" -type "float3" -0.10193339 0.036700446 -0.047174588 ;
	setAttr ".pt[445]" -type "float3" 0 0.072203368 -0.092809916 ;
	setAttr ".pt[446]" -type "float3" 0 0.078635223 0.016739123 ;
	setAttr ".pt[447]" -type "float3" 0 0.075429633 0.11628713 ;
	setAttr ".pt[448]" -type "float3" 0 0.078635223 0.016739123 ;
	setAttr ".pt[449]" -type "float3" 0 0.072203368 -0.092809916 ;
	setAttr ".pt[450]" -type "float3" 0.10193339 0.036700446 -0.047174588 ;
	setAttr ".pt[451]" -type "float3" 0.16243656 0.0016325586 -0.0020984837 ;
	setAttr ".pt[452]" -type "float3" 0.16330221 0 -1.7763568e-17 ;
	setAttr ".pt[453]" -type "float3" 0.16291906 0 0 ;
	setAttr ".pt[454]" -type "float3" 0.255795 0.0044159307 0 ;
	setAttr ".pt[455]" -type "float3" -0.018305866 0 0 ;
	setAttr ".pt[458]" -type "float3" 0.018305866 0 0 ;
createNode transform -n "polySurface44" -p "polySurface22";
	rename -uid "8D6C0096-4C44-5FDF-9AA9-0A95B73AF8D1";
createNode transform -n "transform22" -p "polySurface44";
	rename -uid "52BDAD0B-4DAE-B57C-6AD9-5EA08464AE4C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform22";
	rename -uid "A95F9528-4C7E-4955-E4FD-E399071CD79F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface45" -p "polySurface22";
	rename -uid "8B706E6B-46C1-B5AD-4057-999AC577A149";
createNode transform -n "transform34" -p "polySurface45";
	rename -uid "35CBF10F-432A-B71F-23D5-D382D8C07356";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform34";
	rename -uid "6A3D6D3F-4C21-FFF7-8ACD-D9813DBA5B79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface46" -p "polySurface22";
	rename -uid "43F4286D-4F7E-2153-AAA0-A891685B55CB";
createNode transform -n "transform30" -p "polySurface46";
	rename -uid "E3BDC873-4766-B6F1-3734-0399DFCF83D6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform30";
	rename -uid "00494AB0-4BD2-50B2-B44F-54ABA62CB936";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface47" -p "polySurface22";
	rename -uid "28D3996B-4E37-B42C-22B5-E7A772E4BF00";
createNode transform -n "transform12" -p "polySurface47";
	rename -uid "7A379F50-4404-55D2-1FE9-B599CD0801FA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform12";
	rename -uid "AE206CB8-4F87-71E4-F396-C8BE652565E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface48" -p "polySurface22";
	rename -uid "C1FE5262-40A6-5735-3781-98B5F5FAC7D0";
createNode transform -n "transform35" -p "polySurface48";
	rename -uid "50E37068-47E8-D557-7569-89A775959AC4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform35";
	rename -uid "A090F2D4-497F-FF73-0324-5CADE3DFD166";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface49" -p "polySurface22";
	rename -uid "09DD95BA-411E-1C9D-1001-6DB91B6B0A0F";
createNode transform -n "transform28" -p "polySurface49";
	rename -uid "BC785EED-44E7-B24F-2A0E-518D7833630F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform28";
	rename -uid "FA99F971-436E-4F01-E8E8-13870CE0D263";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface50" -p "polySurface22";
	rename -uid "9FBBED2D-4CC6-F630-6CA4-F693C7E812E2";
createNode transform -n "transform2" -p "polySurface50";
	rename -uid "1584B0D6-4248-65DB-8CED-75979D35B26B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform2";
	rename -uid "BCEC161A-453C-E894-F790-CC9E39D93062";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface51" -p "polySurface22";
	rename -uid "19D0F8E4-4BF6-8A63-B092-50AD58F5C130";
createNode transform -n "transform5" -p "polySurface51";
	rename -uid "D8D1FDBB-422E-E321-11D5-518CB88D8F8D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform5";
	rename -uid "A2D087CA-4BBF-947E-C00C-D8ABE2EA8FD7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface52" -p "polySurface22";
	rename -uid "AA7E85F5-48A9-052D-E8BF-A6BD399BFFD0";
createNode transform -n "transform29" -p "polySurface52";
	rename -uid "431FCCB0-45C5-0BD4-2F64-14AC86FD5D53";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform29";
	rename -uid "EDC6A701-4691-DD43-9698-98A2E537945A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface53" -p "polySurface22";
	rename -uid "70CF75F7-4AB1-8F6F-70BE-79905CD5A54D";
createNode transform -n "transform17" -p "polySurface53";
	rename -uid "3611919D-4442-A79E-04D9-5EAA65FA514A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform17";
	rename -uid "1004B255-44DD-E4B1-D067-A5909C19A6C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface54" -p "polySurface22";
	rename -uid "F69B562F-439E-42E9-0E6C-869897720081";
createNode transform -n "transform25" -p "polySurface54";
	rename -uid "0C903365-46D7-2E0F-4FBC-9E8B16C0D50A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform25";
	rename -uid "9858ADE9-42C7-80D3-DB1A-1A957E59A993";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface55" -p "polySurface22";
	rename -uid "6C5A7AA3-4465-B5DC-7813-FD8B9105770B";
createNode transform -n "transform15" -p "polySurface55";
	rename -uid "93F5C9C2-44C9-6383-439F-7697A94D7DD1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform15";
	rename -uid "DCAD675C-4B65-1026-8979-639E594D6235";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface56" -p "polySurface22";
	rename -uid "2570FE12-41A0-0341-1453-BF914EF61B3B";
createNode transform -n "transform26" -p "polySurface56";
	rename -uid "374F5B55-496F-764D-C6DE-699150B55193";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform26";
	rename -uid "0BF93797-4B9D-82F0-C0A0-459BA2391E0E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface57" -p "polySurface22";
	rename -uid "B8B236B6-4F48-04A7-1E96-8A866E01BD16";
createNode transform -n "transform13" -p "polySurface57";
	rename -uid "905C0BBE-44CD-8049-37C7-B5809D9E1240";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform13";
	rename -uid "662EC38D-44D7-56EA-EB2D-56AA3103228B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface58" -p "polySurface22";
	rename -uid "829DE54E-416D-82DE-F74A-5BBE45E1554D";
createNode transform -n "transform37" -p "|polySurface22|polySurface58";
	rename -uid "1559DAD6-4572-DDA2-B9E5-F7B2510FA70D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform37";
	rename -uid "0AAC7B4C-4050-1DD1-1D85-9B8C07EF0682";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface59" -p "polySurface22";
	rename -uid "84177911-4497-2CCA-C5A7-55894CEAD1F5";
createNode transform -n "transform7" -p "polySurface59";
	rename -uid "4733EDE5-469D-C78B-1C82-298D589523FB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform7";
	rename -uid "43B5738F-43B5-1B66-74EE-3B83D5A52943";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "polySurface22";
	rename -uid "D6827B06-41C8-68A8-8FF9-E091A07F2A7D";
	setAttr ".v" no;
createNode mesh -n "polySurface22Shape" -p "transform1";
	rename -uid "4D9BC89D-4779-B4BE-FFF2-A190735C6C2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3199]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[3200:3667]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[3668:3939]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[3204:3205]" "f[3673:3676]" "f[3690:3693]" "f[3707:3710]" "f[3724:3727]" "f[3741:3744]" "f[3758:3761]" "f[3775:3778]" "f[3792:3795]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[3206:3207]" "f[3677]" "f[3694]" "f[3711]" "f[3728]" "f[3745]" "f[3762]" "f[3779]" "f[3796]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[3200:3201]" "f[3668:3671]" "f[3685:3688]" "f[3702:3705]" "f[3719:3722]" "f[3736:3739]" "f[3753:3756]" "f[3770:3773]" "f[3787:3790]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[3209]" "f[3682:3684]" "f[3699:3701]" "f[3716:3718]" "f[3733:3736]" "f[3750:3752]" "f[3767:3769]" "f[3784:3786]" "f[3801:3803]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[3208]" "f[3678:3681]" "f[3695:3698]" "f[3712:3715]" "f[3729:3732]" "f[3746:3749]" "f[3763:3766]" "f[3780:3783]" "f[3797:3800]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[3202:3203]" "f[3672]" "f[3689]" "f[3706]" "f[3723]" "f[3740]" "f[3757]" "f[3774]" "f[3791]";
	setAttr ".pv" -type "double2" 0.5 0.122317124158144 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4950 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.3125 0.38749999 0.3125
		 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996
		 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125
		 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992
		 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248
		 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986
		 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125
		 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981
		 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248
		 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999
		 0.40648496 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995
		 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999
		 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986
		 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981
		 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976
		 0.40648496 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996
		 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992
		 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987
		 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982
		 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977
		 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998
		 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993
		 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988
		 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983
		 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979
		 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375
		 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994
		 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989
		 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985
		 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998
		 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999
		 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995
		 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999
		 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986
		 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981
		 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976
		 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996
		 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992
		 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987
		 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982
		 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977
		 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998
		 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993
		 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983
		 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125
		 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996
		 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125
		 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992
		 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248
		 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986
		 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125
		 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981
		 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248
		 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999
		 0.40648496 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995
		 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999
		 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986
		 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981
		 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496;
	setAttr ".uvst[0].uvsp[250:499]" 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624
		 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624
		 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624
		 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624
		 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488
		 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488
		 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488
		 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488
		 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488
		 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488
		 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737
		 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737
		 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737
		 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737
		 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737
		 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985
		 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985
		 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977
		 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496
		 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496
		 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496
		 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496
		 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496
		 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624
		 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624
		 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624
		 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624;
	setAttr ".uvst[0].uvsp[500:749]" 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977
		 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998
		 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993
		 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988
		 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983
		 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979
		 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375
		 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994
		 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989
		 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985
		 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998
		 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999
		 0.68843985 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995
		 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999
		 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986
		 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981
		 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976
		 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248
		 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995
		 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125
		 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999
		 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248
		 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985
		 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125
		 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998
		 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248
		 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998
		 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993
		 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988
		 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983
		 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979
		 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375
		 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994
		 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989
		 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985
		 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998
		 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999
		 0.50046992 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995
		 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999
		 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986
		 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981
		 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976
		 0.50046992 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624
		 0.42499995 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624
		 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624
		 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624
		 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624
		 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488
		 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488
		 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488
		 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488
		 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488
		 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737
		 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737
		 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737
		 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737
		 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737
		 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985
		 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985
		 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985
		 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985
		 0.53749985 0.68843985 0.54999983 0.68843985;
	setAttr ".uvst[0].uvsp[750:999]" 0.56249982 0.68843985 0.57499981 0.68843985
		 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985
		 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998
		 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125
		 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993
		 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248
		 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987
		 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125
		 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982
		 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248
		 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976
		 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496
		 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496
		 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496
		 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496
		 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496
		 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744
		 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744
		 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744
		 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744
		 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744
		 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992
		 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992
		 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992
		 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992
		 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992
		 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992
		 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995
		 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999
		 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986
		 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981
		 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976
		 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996
		 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992
		 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987
		 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982
		 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977
		 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998
		 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993
		 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988
		 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983
		 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979
		 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375
		 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125
		 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995
		 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248
		 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989
		 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125
		 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985
		 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248
		 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979
		 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125
		 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496
		 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496
		 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496
		 0.51249987 0.40648496 0.52499986 0.40648496;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.53749985 0.40648496 0.54999983 0.40648496
		 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496
		 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744
		 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744
		 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744
		 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744
		 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744
		 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992
		 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992
		 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992
		 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992
		 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992
		 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992
		 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995
		 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999
		 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986
		 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981
		 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976
		 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996
		 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992
		 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987
		 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982
		 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977
		 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998
		 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993
		 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988
		 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983
		 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979
		 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375
		 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125
		 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995
		 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248
		 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989
		 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125
		 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985
		 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248
		 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979
		 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125
		 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496
		 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496
		 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496
		 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496
		 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496
		 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744
		 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744
		 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744
		 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744
		 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744
		 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992
		 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992
		 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992
		 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992
		 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992
		 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992
		 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995
		 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999
		 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.51249987 0.5474624 0.52499986 0.5474624
		 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624
		 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624
		 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488
		 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488
		 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488
		 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488
		 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488
		 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737
		 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737
		 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737
		 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737
		 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737
		 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985
		 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985
		 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985
		 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985
		 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985
		 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999
		 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248
		 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994
		 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125
		 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989
		 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248
		 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983
		 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125
		 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979
		 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248
		 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496
		 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496
		 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496
		 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496
		 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496
		 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744
		 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744
		 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744
		 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744
		 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744
		 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992
		 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992
		 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992
		 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992
		 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992
		 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624
		 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994
		 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989
		 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985
		 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998
		 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999
		 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995
		 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999
		 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986
		 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981
		 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976
		 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996
		 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992
		 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987
		 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982
		 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977
		 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998
		 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993
		 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977
		 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496
		 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496
		 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496
		 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496
		 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496
		 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624
		 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624
		 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624
		 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624
		 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488
		 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488
		 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488
		 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488
		 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488
		 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488
		 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737
		 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737
		 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737
		 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737
		 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737
		 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985
		 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985
		 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977
		 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496
		 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496
		 0.43749994 0.40648496 0.44999993 0.40648496;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.46249992 0.40648496 0.4749999 0.40648496
		 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496
		 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496
		 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624
		 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624
		 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624
		 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624
		 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488
		 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488
		 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488
		 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488
		 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488
		 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488
		 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737
		 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737
		 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737
		 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737
		 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737
		 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985
		 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985
		 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977
		 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496
		 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496
		 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496
		 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496
		 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496
		 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.43749994 0.5474624 0.44999993 0.5474624
		 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624
		 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624
		 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624
		 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488
		 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488
		 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488
		 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488
		 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488
		 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737
		 0.375 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737
		 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737
		 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737
		 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737
		 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737
		 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985
		 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985
		 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985
		 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985
		 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985
		 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375
		 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248
		 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993
		 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125
		 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988
		 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248
		 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982
		 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125
		 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977
		 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496
		 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496
		 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496
		 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496
		 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496
		 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744
		 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744
		 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744
		 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744
		 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744
		 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744
		 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992
		 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992
		 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992
		 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992
		 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992
		 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996
		 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992
		 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987
		 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982
		 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977
		 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998
		 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993
		 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988
		 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983
		 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979
		 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375
		 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994
		 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989
		 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985
		 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998
		 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999
		 0.68843985 0.375 0.68843985 0.39999998 0.68843985;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.41249996 0.68843985 0.42499995 0.68843985
		 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985
		 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985
		 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985
		 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985
		 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998
		 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125
		 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993
		 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248
		 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987
		 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125
		 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982
		 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248
		 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976
		 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496
		 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496
		 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496
		 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496
		 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496
		 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744
		 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744
		 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744
		 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744
		 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744
		 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992
		 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992
		 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992
		 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992
		 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992
		 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992
		 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995
		 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999
		 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986
		 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981
		 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976
		 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996
		 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992
		 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987
		 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982
		 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977
		 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998
		 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993
		 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988
		 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983
		 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979
		 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375
		 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125
		 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995
		 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248
		 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989
		 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125
		 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985
		 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248
		 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979
		 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125
		 0.62499976 0.35949248 0.38749999 0.40648496;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.375 0.40648496 0.39999998 0.40648496 0.41249996
		 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992
		 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987
		 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982
		 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977
		 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744 0.39999998
		 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993
		 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988
		 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983
		 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979
		 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992 0.375
		 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994
		 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989
		 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985
		 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998
		 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999
		 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624
		 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624
		 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624
		 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624
		 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624
		 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488
		 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488
		 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488
		 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488
		 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488
		 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737
		 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737
		 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737
		 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737
		 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737
		 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985
		 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985
		 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985
		 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985
		 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985
		 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999
		 0.3125 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248
		 0.41249996 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994
		 0.3125 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125
		 0.46249992 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989
		 0.35949248 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248
		 0.52499986 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983
		 0.3125 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125
		 0.57499981 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979
		 0.35949248 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248
		 0.38749999 0.40648496 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496
		 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496
		 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496
		 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496
		 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496
		 0.62499976 0.40648496 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744
		 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744
		 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744
		 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744
		 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744
		 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992
		 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992
		 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992
		 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992
		 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992
		 0.59999979 0.50046992 0.61249977 0.50046992;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.62499976 0.50046992 0.38749999 0.5474624
		 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994
		 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989
		 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985
		 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998
		 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999
		 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995
		 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999
		 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986
		 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981
		 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976
		 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996
		 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992
		 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987
		 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982
		 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977
		 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998
		 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993
		 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983
		 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125
		 0.38749999 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996
		 0.3125 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125
		 0.43749994 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992
		 0.35949248 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248
		 0.49999988 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986
		 0.3125 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125
		 0.54999983 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981
		 0.35949248 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248
		 0.61249977 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999
		 0.40648496 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995
		 0.40648496 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999
		 0.40648496 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986
		 0.40648496 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981
		 0.40648496 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976
		 0.40648496 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996
		 0.45347744 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992
		 0.45347744 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987
		 0.45347744 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982
		 0.45347744 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977
		 0.45347744 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998
		 0.50046992 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993
		 0.50046992 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988
		 0.50046992 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983
		 0.50046992 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979
		 0.50046992 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375
		 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994
		 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989
		 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985
		 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998
		 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999
		 0.59445488 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995
		 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999
		 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986
		 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981
		 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976
		 0.59445488 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996
		 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992
		 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987
		 0.64144737 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982
		 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.59999979 0.64144737 0.61249977 0.64144737
		 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985
		 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985
		 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977
		 0.3125 0.61249977 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496
		 0.375 0.40648496 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496
		 0.43749994 0.40648496 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496
		 0.48749989 0.40648496 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496
		 0.53749985 0.40648496 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496
		 0.5874998 0.40648496 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496
		 0.38749999 0.45347744 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744
		 0.42499995 0.45347744 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744
		 0.4749999 0.45347744 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744
		 0.52499986 0.45347744 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744
		 0.57499981 0.45347744 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744
		 0.62499976 0.45347744 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992
		 0.41249996 0.50046992 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992
		 0.46249992 0.50046992 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992
		 0.51249987 0.50046992 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992
		 0.56249982 0.50046992 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992
		 0.61249977 0.50046992 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624
		 0.39999998 0.5474624 0.41249996 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624
		 0.44999993 0.5474624 0.46249992 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624
		 0.49999988 0.5474624 0.51249987 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624
		 0.54999983 0.5474624 0.56249982 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624
		 0.59999979 0.5474624 0.61249977 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488
		 0.375 0.59445488 0.39999998 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488
		 0.43749994 0.59445488 0.44999993 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488
		 0.48749989 0.59445488 0.49999988 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488
		 0.53749985 0.59445488 0.54999983 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488
		 0.5874998 0.59445488 0.59999979 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488
		 0.38749999 0.64144737 0.375 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737
		 0.42499995 0.64144737 0.43749994 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737
		 0.4749999 0.64144737 0.48749989 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737
		 0.52499986 0.64144737 0.53749985 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737
		 0.57499981 0.64144737 0.5874998 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737
		 0.62499976 0.64144737 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.68843985
		 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985
		 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985
		 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985
		 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985
		 0.61249977 0.68843985 0.62499976 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.35949248 0.375 0.35949248 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125
		 0.41249996 0.35949248 0.42499995 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994
		 0.35949248 0.44999993 0.3125 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248
		 0.4749999 0.3125 0.4749999 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988
		 0.3125 0.49999988 0.35949248 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125
		 0.52499986 0.35949248 0.53749985 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983
		 0.35949248 0.56249982 0.3125 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248
		 0.5874998 0.3125 0.5874998 0.35949248 0.59999979 0.3125;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.59999979 0.35949248 0.61249977 0.3125 0.61249977
		 0.35949248 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496
		 0.39999998 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496
		 0.44999993 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496
		 0.49999988 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496
		 0.54999983 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496
		 0.59999979 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744
		 0.375 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744
		 0.43749994 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744
		 0.48749989 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744
		 0.53749985 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744
		 0.5874998 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744
		 0.38749999 0.50046992 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992
		 0.42499995 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992
		 0.4749999 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992
		 0.52499986 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992
		 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992
		 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996
		 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992
		 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987
		 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982
		 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977
		 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998
		 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993
		 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988
		 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983
		 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979
		 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375
		 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994
		 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989
		 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985
		 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998
		 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999
		 0.68843985 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995
		 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999
		 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986
		 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981
		 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976
		 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248
		 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995
		 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125
		 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999
		 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248
		 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985
		 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125
		 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998
		 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248
		 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998
		 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993
		 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988
		 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983
		 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979
		 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375
		 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994
		 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989
		 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985
		 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998
		 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999
		 0.50046992 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995
		 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999
		 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986
		 0.50046992 0.53749985 0.50046992;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.54999983 0.50046992 0.56249982 0.50046992
		 0.57499981 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992
		 0.62499976 0.50046992 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996
		 0.5474624 0.42499995 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992
		 0.5474624 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987
		 0.5474624 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982
		 0.5474624 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977
		 0.5474624 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998
		 0.59445488 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993
		 0.59445488 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988
		 0.59445488 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983
		 0.59445488 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979
		 0.59445488 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375
		 0.64144737 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994
		 0.64144737 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989
		 0.64144737 0.49999988 0.64144737 0.51249987 0.64144737 0.52499986 0.64144737 0.53749985
		 0.64144737 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998
		 0.64144737 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999
		 0.68843985 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995
		 0.68843985 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999
		 0.68843985 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986
		 0.68843985 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981
		 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976
		 0.68843985 0.375 0.3125 0.38749999 0.3125 0.38749999 0.35949248 0.375 0.35949248
		 0.39999998 0.3125 0.39999998 0.35949248 0.41249996 0.3125 0.41249996 0.35949248 0.42499995
		 0.3125 0.42499995 0.35949248 0.43749994 0.3125 0.43749994 0.35949248 0.44999993 0.3125
		 0.44999993 0.35949248 0.46249992 0.3125 0.46249992 0.35949248 0.4749999 0.3125 0.4749999
		 0.35949248 0.48749989 0.3125 0.48749989 0.35949248 0.49999988 0.3125 0.49999988 0.35949248
		 0.51249987 0.3125 0.51249987 0.35949248 0.52499986 0.3125 0.52499986 0.35949248 0.53749985
		 0.3125 0.53749985 0.35949248 0.54999983 0.3125 0.54999983 0.35949248 0.56249982 0.3125
		 0.56249982 0.35949248 0.57499981 0.3125 0.57499981 0.35949248 0.5874998 0.3125 0.5874998
		 0.35949248 0.59999979 0.3125 0.59999979 0.35949248 0.61249977 0.3125 0.61249977 0.35949248
		 0.62499976 0.3125 0.62499976 0.35949248 0.38749999 0.40648496 0.375 0.40648496 0.39999998
		 0.40648496 0.41249996 0.40648496 0.42499995 0.40648496 0.43749994 0.40648496 0.44999993
		 0.40648496 0.46249992 0.40648496 0.4749999 0.40648496 0.48749989 0.40648496 0.49999988
		 0.40648496 0.51249987 0.40648496 0.52499986 0.40648496 0.53749985 0.40648496 0.54999983
		 0.40648496 0.56249982 0.40648496 0.57499981 0.40648496 0.5874998 0.40648496 0.59999979
		 0.40648496 0.61249977 0.40648496 0.62499976 0.40648496 0.38749999 0.45347744 0.375
		 0.45347744 0.39999998 0.45347744 0.41249996 0.45347744 0.42499995 0.45347744 0.43749994
		 0.45347744 0.44999993 0.45347744 0.46249992 0.45347744 0.4749999 0.45347744 0.48749989
		 0.45347744 0.49999988 0.45347744 0.51249987 0.45347744 0.52499986 0.45347744 0.53749985
		 0.45347744 0.54999983 0.45347744 0.56249982 0.45347744 0.57499981 0.45347744 0.5874998
		 0.45347744 0.59999979 0.45347744 0.61249977 0.45347744 0.62499976 0.45347744 0.38749999
		 0.50046992 0.375 0.50046992 0.39999998 0.50046992 0.41249996 0.50046992 0.42499995
		 0.50046992 0.43749994 0.50046992 0.44999993 0.50046992 0.46249992 0.50046992 0.4749999
		 0.50046992 0.48749989 0.50046992 0.49999988 0.50046992 0.51249987 0.50046992 0.52499986
		 0.50046992 0.53749985 0.50046992 0.54999983 0.50046992 0.56249982 0.50046992 0.57499981
		 0.50046992 0.5874998 0.50046992 0.59999979 0.50046992 0.61249977 0.50046992 0.62499976
		 0.50046992 0.38749999 0.5474624 0.375 0.5474624 0.39999998 0.5474624 0.41249996 0.5474624
		 0.42499995 0.5474624 0.43749994 0.5474624 0.44999993 0.5474624 0.46249992 0.5474624
		 0.4749999 0.5474624 0.48749989 0.5474624 0.49999988 0.5474624 0.51249987 0.5474624
		 0.52499986 0.5474624 0.53749985 0.5474624 0.54999983 0.5474624 0.56249982 0.5474624
		 0.57499981 0.5474624 0.5874998 0.5474624 0.59999979 0.5474624 0.61249977 0.5474624
		 0.62499976 0.5474624 0.38749999 0.59445488 0.375 0.59445488 0.39999998 0.59445488
		 0.41249996 0.59445488 0.42499995 0.59445488 0.43749994 0.59445488 0.44999993 0.59445488
		 0.46249992 0.59445488 0.4749999 0.59445488 0.48749989 0.59445488 0.49999988 0.59445488
		 0.51249987 0.59445488 0.52499986 0.59445488 0.53749985 0.59445488 0.54999983 0.59445488
		 0.56249982 0.59445488 0.57499981 0.59445488 0.5874998 0.59445488 0.59999979 0.59445488
		 0.61249977 0.59445488 0.62499976 0.59445488 0.38749999 0.64144737 0.375 0.64144737
		 0.39999998 0.64144737 0.41249996 0.64144737 0.42499995 0.64144737 0.43749994 0.64144737
		 0.44999993 0.64144737 0.46249992 0.64144737 0.4749999 0.64144737 0.48749989 0.64144737
		 0.49999988 0.64144737 0.51249987 0.64144737;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.52499986 0.64144737 0.53749985 0.64144737
		 0.54999983 0.64144737 0.56249982 0.64144737 0.57499981 0.64144737 0.5874998 0.64144737
		 0.59999979 0.64144737 0.61249977 0.64144737 0.62499976 0.64144737 0.38749999 0.68843985
		 0.375 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985
		 0.43749994 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985
		 0.48749989 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985
		 0.53749985 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985
		 0.5874998 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985
		 0.459813 0.25 0.459813 0.17537674 0.5 0.17537674 0.5 0.25 0.58448946 0.25 0.58448946
		 0.17537674 0.625 0.17537674 0.625 0.25 0.459813 0.5 0.459813 0.46840748 0.5 0.46840751
		 0.5 0.5 0.58448946 0.5 0.58448946 0.46840748 0.625 0.46840751 0.625 0.5 0.46005946
		 0.57146394 0.5 0.57462323 0.58448946 0.57462323 0.62739629 0.58004856 0.5 0.78159249
		 0.459813 0.78159249 0.459813 0.75 0.5 0.75 0.625 0.78159249 0.58448946 0.78159249
		 0.58448946 0.75 0.625 0.75 0.84340751 0.25 0.84340793 0.17412072 0.87500048 0.17393903
		 0.875 0.25 0.12499952 0.17393903 0.15659207 0.17412072 0.1565925 0.25 0.125 0.25
		 0.459813 0.12020972 0.5 0.12020972 0.58448946 0.12020972 0.625 0.12020972 0.84340745
		 0.12020971 0.87499994 0.1202097 0.58448946 0.62979025 0.58448946 0.57462323 0.625
		 0.57462323 0.625 0.62979025 0.45981297 0.62979025 0.459813 0.57462323 0.5 0.57462323
		 0.5 0.62979025 0.125 0.1202097 0.15659249 0.1202097 0.5 0.096015669 0.459813 0.096015669
		 0.459813 0.069257505 0.5 0.069257505 0.625 0.096015669 0.58448946 0.096015669 0.58448946
		 0.069257505 0.625 0.069257505 0.84340739 0.096015655 0.84340739 0.06925749 0.87499988
		 0.06925749 0.87499988 0.096015655 0.625 0.68074244 0.58448946 0.6807425 0.58448946
		 0.65398431 0.625 0.65398425 0.5 0.68074244 0.459813 0.6807425 0.46032763 0.6691035
		 0.49999988 0.6663096 0.125 0.06925749 0.15659249 0.06925749 0.1565925 0.096015655
		 0.125 0.096015655 0.459813 0.57462323 0.5 0.57462323 0.5 0.57462323 0.49999964 0.62297058
		 0.5 0.62979025 0.5 0.57462323 0.46187299 0.63415408 0.45981297 0.62979025 0.37499994
		 0.62979025 0.37424454 0.57769084 0.37499997 0.57462323 0.37499994 0.62979025 0.58448946
		 0.57462323 0.58448946 0.57462323 0.62500966 0.57462323 0.625 0.62979025 0.625 0.62979025
		 0.58448946 0.62979025 0.58448946 0.62979025 0.5 0.57462323 0.5 0.62979025 0.41551059
		 0.78159249 0.41551059 0.75 0.459813 0.6807425 0.41551057 0.6807425 0.41551054 0.65398431
		 0.46089482 0.65627605 0.41551054 0.62979025 0.41551054 0.62979025 0.41551054 0.62979025
		 0.41551059 0.57462323 0.41551059 0.57462323 0.41551057 0.57462323 0.41551059 0.5
		 0.41551059 0.46840748 0.41551059 0.25 0.41551059 0.17537674 0.41551059 0.12020972
		 0.41551059 0.096015669 0.41551059 0.069257505 0.540187 0.75 0.540187 0.78159249 0.53967226
		 0.66910356 0.540187 0.6807425 0.540187 0.62979025 0.53812653 0.63415426 0.5 0.57462323
		 0.540187 0.57462323 0.540187 0.62979025 0.5 0.62979025 -4.9742477e-10 -5.3562221e-10
		 0.540187 0.57462323 0.5 0.57462323 0.540187 0.5 0.540187 0.46840748 0.540187 0.17537674
		 0.540187 0.25 0.540187 0.12020972 0.540187 0.069257505 0.540187 0.096015669 0.375
		 0.75 0.375 0.78159249 0.37499994 0.65398425 0.37499994 0.68074244 0.37499997 0.57462323
		 0.37499994 0.62979025 0.41948485 0.57462323 0.37499997 0.57462323 0.375 0.5 0.375
		 0.46840751 0.375 0.17537674 0.375 0.25 0.375 0.12020972 0.375 0.069257505 0.375 0.096015669
		 0.540187 0.6807425 0.53910494 0.65627611 0.375 0 0.41551059 0 0.459813 0 0.5 0 0.540187
		 0 0.58448946 0 0.625 0 0.84340751 0 0.875 0 0.5 0.68074244 0.125 0 0.15659249 0 0.58448946
		 0.57462323 0.625 0.57462323 0.58448946 0.57462323 0.625 0.62979025 0.58448946 0.62979025
		 0.459813 0.57462323 0.5 0.57462323 0.459813 0.57462323 0.5 0.62979025 0.45981297
		 0.62979025 0.41551059 0.57462323 0.41551054 0.62979025 0.540187 0.57462323 0.5 0.57462323
		 0.5 0.62979025 0.540187 0.62979025 0.37499997 0.57462323 0.37499994 0.62979025 0.625
		 0.57462323 0.58448946 0.57462323 0.625 0.62979025 0.58448946 0.62979025 0.5 0.57462323
		 0.459813 0.57462323 0.5 0.62979025 0.45981297 0.62979025 0.41551059 0.57462323 0.41551054
		 0.62979025 0.540187 0.57462323 0.5 0.57462323 0.5 0.62979025 0.540187 0.62979025
		 0.37499997 0.57462323 0.37499994 0.62979025 0.6332016 0.57462323 0.58448946 0.57462323
		 0.58448946 0.57462323 0.58448946 0.57462323 0.62983811 0.57462323 0.58448946 0.57462323
		 0.088742793 0.086992778 0.5 0.57462323 0.5 0.57462323 0.60726249 0.57462323 0.58448946
		 0.57462323 0.58448946 0.57462323 0.58448946 0.57462323 0.63302088 0.57462323 0.58448946
		 0.57462323 0.068550587 0.069904119 0.5 0.57462323 0.5 0.57462323 0.61813307 0.57462323
		 0.58448946 0.57462323 0.58448946 0.57462323;
	setAttr ".uvst[0].uvsp[4000:4249]" 0.58448946 0.57462323 0.63147998 0.57462323
		 0.58448946 0.57462323 -4.2900869e-10 -4.4737769e-10 0.5 0.57462323 0.5 0.57462323
		 0.625 0.57462323 0.58448946 0.57462323 0.625 0.57462323 0.58448946 0.57462323 0.58448946
		 0.57462323 0.625 0.57462323 0.625 0.57462323 0.58448946 0.57462323 0.540187 0.57462323
		 0.5 0.57462323 0.540187 0.57462323 0.5 0.57462323 0.53353143 0.57462323 0.52787948
		 0.57462323 0.58448952 0.57462323 0.58448946 0.57462323 0.375 0.4328582 0.41551062
		 0.43285817 0.459813 0.43285817 0.5 0.4328582 0.540187 0.43285817 0.58448946 0.43285817
		 0.625 0.4328582 0.80785823 0.25 0.80785853 0.17432515 0.80785817 0.12020971 0.80785811
		 0.096015655 0.80785811 0.069257498 0.80785823 0 0.625 0.81714177 0.58448946 0.81714177
		 0.540187 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.41551059 0.81714177 0.375
		 0.81714177 0.1921418 0 0.1921418 0.069257498 0.19214182 0.096015655 0.1921418 0.1202097
		 0.19214147 0.17432515 0.19214182 0.25 0.375 0.39861891 0.41551059 0.39861888 0.459813
		 0.39861888 0.5 0.39861891 0.540187 0.39861888 0.58448946 0.39861888 0.625 0.39861891
		 0.77361894 0.25 0.77361917 0.17452206 0.77695251 0.12629506 0.77361888 0.12020971
		 0.77361882 0.096015655 0.80785811 0.096015655 0.80785817 0.12020971 0.77361882 0.069257498
		 0.80785811 0.069257498 0.77361894 0 0.80785823 0 0.625 0.85138106 0.58448946 0.85138106
		 0.58448946 0.81714177 0.625 0.81714177 0.540187 0.85138106 0.540187 0.81714177 0.5
		 0.81714177 0.5 0.85138106 0.459813 0.85138106 0.459813 0.81714177 0.41551059 0.85138106
		 0.41551059 0.81714177 0.375 0.81714177 0.37499997 0.85138106 0.1921418 0.069257498
		 0.1921418 0 0.22638109 0 0.22638109 0.069257498 0.19214182 0.096015655 0.22638109
		 0.096015662 0.1921418 0.1202097 0.22638109 0.1202097 0.22304747 0.12629506 0.22638083
		 0.17452206 0.22638109 0.25 0.375 0.37246078 0.41551059 0.37246078 0.459813 0.37246078
		 0.5 0.37246078 0.540187 0.37246078 0.58448946 0.37246078 0.625 0.37246078 0.74746084
		 0.25 0.74746096 0.1746725 0.74746072 0.12020971 0.74746072 0.12020971 0.74746072
		 0.096015662 0.76790702 0.093659282 0.74746072 0.096015662 0.74746072 0.069257498
		 0.77361882 0.069257498 0.74746084 0 0.77361894 0 0.625 0.87753916 0.58448946 0.87753916
		 0.58448946 0.85138106 0.625 0.85138106 0.540187 0.87753916 0.540187 0.85138106 0.5
		 0.85138106 0.5 0.87753916 0.459813 0.87753916 0.459813 0.85138106 0.41551059 0.87753916
		 0.41551059 0.85138106 0.37499997 0.85138106 0.37499997 0.87753916 0.22638109 0.069257498
		 0.22638109 0 0.25253922 0 0.25253922 0.069257498 0.23209287 0.093659282 0.25253922
		 0.096015662 0.25253922 0.096015662 0.25253922 0.12020971 0.25253922 0.12020971 0.25253901
		 0.1746725 0.25253922 0.25 0.58448946 0.81714177 0.625 0.81714177 0.625 0.81714177
		 0.58448946 0.81714177 0.540187 0.81714177 0.540187 0.81714177 0.5 0.81714177 0.5
		 0.81714177 0.459813 0.81714177 0.459813 0.81714177 0.41551059 0.81714177 0.41551059
		 0.81714177 0.375 0.81714177 0.375 0.81714177 0.625 0.81714177 0.58448946 0.81714177
		 0.625 0.81714177 0.58448946 0.81714177 0.540187 0.81714177 0.540187 0.81714177 0.5
		 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.459813 0.81714177 0.41551059 0.81714177
		 0.41551059 0.81714177 0.375 0.81714177 0.375 0.81714177 0.58448946 0.81714177 0.625
		 0.81714177 0.625 0.81714177 0.58448946 0.81714177 0.540187 0.81714177 0.58448946
		 0.81714177 0.58448946 0.81714177 0.540187 0.81714177 0.5 0.81714177 0.540187 0.81714177
		 0.540187 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.5 0.81714177 0.5 0.81714177
		 0.459813 0.81714177 0.41551059 0.81714177 0.459813 0.81714177 0.459813 0.81714177
		 0.41551059 0.81714177 0.375 0.81714177 0.41551059 0.81714177 0.41551059 0.81714177
		 0.375 0.81714177 0.625 0.81714177 0.58448946 0.81714177 0.625 0.81714177 0.58448946
		 0.81714177 0.41551059 0.81714177 0.375 0.81714177 0.41551059 0.81714177 0.375 0.81714177
		 0.58448946 0.81714177 0.625 0.81714177 0.625 0.81714177 0.58448946 0.81714177 0.625
		 0.81714177 0.625 0.81714177 0.58448946 0.81714177 0.58448946 0.81714177 0.41551059
		 0.81714177 0.375 0.81714177 0.41551059 0.81714177 0.375 0.81714177 0.375 0.81714177
		 0.41551059 0.81714177 0.41551059 0.81714177 0.375 0.81714177 0.58448946 0.81714177
		 0.540187 0.81714177 0.58448946 0.81714177 0.540187 0.81714177 0.459813 0.81714177
		 0.41551059 0.81714177 0.459813 0.81714177 0.41551059 0.81714177 0.540187 0.81714177
		 0.5 0.81714177 0.540187 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.459813 0.81714177
		 0.58448946 0.81714177 0.540187 0.81714177 0.58448946 0.81714177 0.540187 0.81714177
		 0.459813 0.81714177 0.41551059 0.81714177 0.459813 0.81714177 0.41551059 0.81714177
		 0.540187 0.81714177 0.5 0.81714177 0.540187 0.81714177 0.5 0.81714177 0.5 0.81714177
		 0.459813 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.540187 0.81714177 0.5 0.81714177
		 0.540187 0.81714177 0.5 0.81714177 0.5 0.81714177 0.459813 0.81714177 0.5 0.81714177
		 0.459813 0.81714177 0.375 0.34163728 0.41551059 0.34163728;
	setAttr ".uvst[0].uvsp[4250:4499]" 0.459813 0.34163728 0.5 0.34163728 0.540187
		 0.34163728 0.58448946 0.34163728 0.625 0.34163728 0.71663731 0.25 0.71663737 0.17484976
		 0.71663719 0.12020971 0.71663719 0.096015662 0.71663719 0.069257498 0.71663731 0
		 0.625 0.90836269 0.58448946 0.90836269 0.540187 0.90836269 0.5 0.90836269 0.459813
		 0.90836269 0.41551059 0.90836269 0.375 0.90836269 0.28336272 0 0.28336272 0.069257498
		 0.28336272 0.096015662 0.28336272 0.12020971 0.28336257 0.17484976 0.28336272 0.25
		 0.58448946 1 0.625 1 0.540187 1 0.5 1 0.459813 1 0.41551059 1 0.375 1 0.375 0 0.625
		 0 0.625 0.0625 0.375 0.0625 0.625 0.125 0.375 0.125 0.625 0.1875 0.375 0.1875 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.5625 0.375 0.5625 0.625 0.625 0.375 0.625
		 0.625 0.6875 0.375 0.6875 0.625 0.75 0.375 0.75 0.875 0 0.875 0.0625 0.875 0.125
		 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25
		 0.375 0 0.625 0 0.625 0.0625 0.375 0.0625 0.625 0.125 0.375 0.125 0.625 0.1875 0.375
		 0.1875 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.5625 0.375 0.5625 0.625
		 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875 0.625 0.75 0.375 0.75 0.875 0 0.875 0.0625
		 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875
		 0.125 0.25 0.375 0 0.625 0 0.625 0.0625 0.375 0.0625 0.625 0.125 0.375 0.125 0.625
		 0.1875 0.375 0.1875 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.5625 0.375
		 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125
		 0.125 0.1875 0.125 0.25 0.375 0 0.625 0 0.625 0.0625 0.375 0.0625 0.625 0.125 0.375
		 0.125 0.625 0.1875 0.375 0.1875 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.5625
		 0.375 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875 0.625 0.75 0.375 0.75
		 0.875 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125
		 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.625 0 0.625 0.0625 0.375 0.0625 0.625 0.125
		 0.375 0.125 0.625 0.1875 0.375 0.1875 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.5625 0.375 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125
		 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.625 0 0.625 0.0625 0.375 0.0625
		 0.625 0.125 0.375 0.125 0.625 0.1875 0.375 0.1875 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.5625 0.375 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875
		 0.625 0.75 0.375 0.75 0.875 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.125
		 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.625 0 0.625 0.0625 0.375
		 0.0625 0.625 0.125 0.375 0.125 0.625 0.1875 0.375 0.1875 0.625 0.25 0.375 0.25 0.625
		 0.5 0.375 0.5 0.625 0.5625 0.375 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375
		 0.6875 0.625 0.75 0.375 0.75 0.875 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875
		 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.625 0 0.625
		 0.0625 0.375 0.0625 0.625 0.125 0.375 0.125 0.625 0.1875 0.375 0.1875 0.625 0.25;
	setAttr ".uvst[0].uvsp[4500:4749]" 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.5625
		 0.375 0.5625 0.625 0.625 0.375 0.625 0.625 0.6875 0.375 0.6875 0.625 0.75 0.375 0.75
		 0.875 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125
		 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625 0.625 0 0.375 0.125
		 0.625 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375
		 0.5625 0.625 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875 0.375 0.75
		 0.625 0.75 0.875 0.0625 0.875 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125
		 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625 0.625
		 0 0.375 0.125 0.625 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375 0.5
		 0.625 0.5 0.375 0.5625 0.625 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875
		 0.375 0.75 0.625 0.75 0.875 0.0625 0.875 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.125
		 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625
		 0.625 0 0.375 0.125 0.625 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375
		 0.5 0.625 0.5 0.375 0.5625 0.625 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625
		 0.6875 0.375 0.75 0.625 0.75 0.875 0.0625 0.875 0 0.875 0.125 0.875 0.1875 0.875
		 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625
		 0.625 0.0625 0.625 0 0.375 0.125 0.625 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.5625 0.625 0.5625 0.375 0.625 0.625 0.625
		 0.375 0.6875 0.625 0.6875 0.375 0.75 0.625 0.75 0.875 0.0625 0.875 0 0.875 0.125
		 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25
		 0.375 0 0.375 0.0625 0.625 0.0625 0.625 0 0.375 0.125 0.625 0.125 0.375 0.1875 0.625
		 0.1875 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.5625 0.625 0.5625 0.375
		 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875 0.375 0.75 0.625 0.75 0.875 0.0625 0.875
		 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875
		 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625 0.625 0 0.375 0.125 0.625 0.125 0.375
		 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.5625 0.625
		 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875 0.375 0.75 0.625 0.75 0.875
		 0.0625 0.875 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125
		 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625 0.625 0 0.375 0.125 0.625
		 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.5625
		 0.625 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875 0.375 0.75 0.625 0.75
		 0.875 0.0625 0.875 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125
		 0.125 0.125 0.1875 0.125 0.25 0.375 0 0.375 0.0625 0.625 0.0625 0.625 0 0.375 0.125
		 0.625 0.125 0.375 0.1875 0.625 0.1875 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375
		 0.5625 0.625 0.5625 0.375 0.625 0.625 0.625 0.375 0.6875 0.625 0.6875 0.375 0.75;
	setAttr ".uvst[0].uvsp[4750:4949]" 0.625 0.75 0.875 0.0625 0.875 0 0.875 0.125
		 0.875 0.1875 0.875 0.25 0.125 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25
		 0.62500966 0.57462323 0.41551057 0.57462323 0.5 0.57462323 0.41551057 0.57462323
		 0.62500966 0.57462323 0.62500966 0.57462323 0.5 0.57462323 0.5 0.57462323 0.5 0.62979025
		 0.5 0.57462323 0.5 0.62979025 0.45981297 0.62979025 0.41551059 0.57462323 0.459813
		 0.57462323 0.459813 0.57462323 0.45981297 0.62979025 0.41551054 0.62979025 0.45981297
		 0.62979025 0.5 0.57462323 0.540187 0.57462323 0.540187 0.62979025 0.5 0.62979025
		 0.5 0.62979025 0.5 0.57462323 0.5 0.57462323 0.37499997 0.57462323 0.41551059 0.57462323
		 0.41551059 0.57462323 0.41551054 0.62979025 0.37499994 0.62979025 0.41551054 0.62979025
		 0.37499994 0.62979025 0.37499997 0.57462323 0.37499994 0.62979025 0.540187 0.57462323
		 0.58448946 0.57462323 0.58448946 0.57462323 0.540187 0.57462323 0.58448946 0.62979025
		 0.540187 0.62979025 0.540187 0.62979025 0.58448946 0.62979025 0.5 0.57462323 0.5
		 0.57462323 0.459813 0.57462323 0.459813 0.57462323 0.45981297 0.62979025 0.45981297
		 0.62979025 0.5 0.57462323 0.5 0.57462323 0.41551059 0.57462323 0.41551059 0.57462323
		 0.41551054 0.62979025 0.41551054 0.62979025 0.37499994 0.62979025 0.37499994 0.62979025
		 0.540187 0.57462323 0.58448946 0.57462323 0.58448946 0.57462323 0.540187 0.57462323
		 0.58448946 0.62979025 0.540187 0.62979025 0.540187 0.62979025 0.58448946 0.62979025
		 0.5 0.57462323 0.459813 0.57462323 0.5 0.57462323 0.5 0.62979025 0.5 0.57462323 0.45981297
		 0.62979025 0.5 0.62979025 0.459813 0.57462323 0.459813 0.57462323 0.41551059 0.57462323
		 0.45981297 0.62979025 0.41551054 0.62979025 0.45981297 0.62979025 0.540187 0.57462323
		 0.5 0.57462323 0.5 0.62979025 0.540187 0.62979025 0.5 0.57462323 0.5 0.57462323 0.5
		 0.62979025 0.41551059 0.57462323 0.41551059 0.57462323 0.37499997 0.57462323 0.41551054
		 0.62979025 0.37499994 0.62979025 0.41551054 0.62979025 0.37499994 0.62979025 0.37499997
		 0.57462323 0.37499994 0.62979025 0.540187 0.57462323 0.58448946 0.57462323 0.58448946
		 0.57462323 0.540187 0.57462323 0.58448946 0.62979025 0.540187 0.62979025 0.540187
		 0.62979025 0.58448946 0.62979025 0.459813 0.57462323 0.62739629 0.58004856 0.62500966
		 0.57462323 0.62500966 0.57462323 0.62739629 0.58004856 0.41551057 0.57462323 0.46005946
		 0.57146394 0.46005946 0.57146394 0.41551057 0.57462323 0.459813 0.57462323 0.41551059
		 0.57462323 0.459813 0.57462323 0.540187 0.57462323 0.5 0.57462323 0.5 0.57462323
		 0.5 0.57462323 0.5 0.57462323 0.5 0.57462323 0.5 0.57462323 0.37424454 0.57769084
		 0.41551057 0.57462323 0.41948485 0.57462323 0.41551059 0.57462323 0.37499997 0.57462323
		 0.37499997 0.57462323 0.41551059 0.57462323 0.37499997 0.57462323 0.37424454 0.57769084
		 0.41948485 0.57462323 0.37499997 0.57462323 0.540187 0.57462323 0.58448946 0.57462323
		 0.62739629 0.58004856 0.62739629 0.58004856 0.58448946 0.57462323 0.62500966 0.57462323
		 0.58448946 0.57462323 0.58448946 0.57462323 0.62500966 0.57462323 0.5 0.57462323
		 -4.9742477e-10 -5.3562221e-10 -4.9742477e-10 -5.3562221e-10 0.5 0.57462323 0.58448946
		 0.57462323 0.088742793 0.086992778 0.088742793 0.086992778 0.58448946 0.57462323
		 0.088742793 0.086992778 0.58448946 0.57462323 0.58448946 0.57462323 0.068550587 0.069904119
		 0.58448946 0.57462323 0.088742793 0.086992778 0.068550587 0.069904119 0.58448946
		 0.57462323 0.068550587 0.069904119 0.58448946 0.57462323 0.58448946 0.57462323 -4.2900869e-10
		 -4.4737769e-10 0.58448946 0.57462323 0.068550587 0.069904119 -4.2900869e-10 -4.4737769e-10
		 0.58448946 0.57462323 -4.2900869e-10 -4.4737769e-10 0.58448946 0.57462323 0.58448946
		 0.57462323 0.540187 0.57462323 0.58448946 0.57462323 -4.2900869e-10 -4.4737769e-10
		 0.540187 0.57462323 0.58448946 0.57462323 -4.2900869e-10 -4.4737769e-10 0.540187
		 0.57462323 0.540187 0.57462323 0.53353143 0.57462323 0.52787948 0.57462323 0.53353143
		 0.57462323 0.52787948 0.57462323 0.540187 0.57462323 0.58448946 0.57462323 0.53353143
		 0.57462323 0.58448946 0.57462323 0.540187 0.57462323 0.52787948 0.57462323 0.540187
		 0.57462323 0.540187 0.57462323 0.53353143 0.57462323 0.52787948 0.57462323;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt";
	setAttr ".pt[2115]" -type "float3" 2.9802322e-10 0 0 ;
	setAttr ".pt[2116]" -type "float3" -1.1920929e-09 0 0 ;
	setAttr ".pt[3115]" -type "float3" -2.9802322e-10 0 0 ;
	setAttr ".pt[3612]" -type "float3" 1.9073486e-08 0 0 ;
	setAttr ".pt[3614]" -type "float3" -1.9073486e-08 0 0 ;
	setAttr ".pt[3618]" -type "float3" 1.9073486e-08 0 0 ;
	setAttr ".pt[3620]" -type "float3" -1.9073486e-08 0 0 ;
	setAttr ".pt[3661]" -type "float3" -2.3841857e-09 0 0 ;
	setAttr ".pt[3671]" -type "float3" 2.3841857e-09 0 0 ;
	setAttr ".pt[3672]" -type "float3" 1.9073486e-08 0 0 ;
	setAttr ".pt[3673]" -type "float3" -9.536743e-09 0 0 ;
	setAttr ".pt[3677]" -type "float3" 9.536743e-09 0 0 ;
	setAttr ".pt[3678]" -type "float3" -1.9073486e-08 0 0 ;
	setAttr ".pt[3686]" -type "float3" 0 0 -0.28868741 ;
	setAttr ".pt[3687]" -type "float3" 0 0 -0.28868741 ;
	setAttr ".pt[3688]" -type "float3" 0 0 -0.28868741 ;
	setAttr ".pt[3738]" -type "float3" -1.9073486e-08 0 0 ;
	setAttr ".pt[3739]" -type "float3" -4.7683715e-09 0 0 ;
	setAttr ".pt[3743]" -type "float3" 4.7683715e-09 0 0 ;
	setAttr ".pt[3744]" -type "float3" 1.9073486e-08 0 0 ;
	setAttr ".pt[4040]" -type "float3" 2.3841857e-09 0 0 ;
	setAttr ".pt[4044]" -type "float3" -3.7252902e-11 0 0 ;
	setAttr ".pt[4054]" -type "float3" -2.3841857e-09 0 0 ;
	setAttr -s 4379 ".vt";
	setAttr ".vt[0:165]"  -10.30474091 5.19717836 -0.15022022 -10.24287701 5.16650772 -0.28573585
		 -10.14652252 5.11874008 -0.3932817 -10.025108337 5.05854845 -0.4623301 -9.89051914 4.99182558 -0.48612279
		 -9.75592995 4.92510176 -0.46233001 -9.63451672 4.86491013 -0.39328152 -9.53816128 4.81714153 -0.28573579
		 -9.47629738 4.7864728 -0.15022017 -9.4549818 4.77590513 -6.4398193e-09 -9.47629738 4.7864728 0.15022007
		 -9.53816128 4.81714249 0.28573564 -9.63451576 4.86490965 0.39328128 -9.75592995 4.92510176 0.4623301
		 -9.89051914 4.99182558 0.48612255 -10.025108337 5.058549404 0.46232995 -10.14652252 5.11874008 0.39328125
		 -10.24287701 5.16650867 0.28573549 -10.30474091 5.19717836 0.15022011 -10.32605553 5.20774603 -2.6705397e-08
		 -10.43973923 5.035487652 -0.16677442 -10.37046528 5.0026612282 -0.31722391 -10.26256847 4.95153236 -0.4366211
		 -10.12661171 4.88710737 -0.5132789 -9.97590065 4.81569338 -0.53969336 -9.82519245 4.74427652 -0.5132789
		 -9.68923569 4.67985153 -0.43662107 -9.58133793 4.62872458 -0.31722385 -9.51206398 4.5958972 -0.16677439
		 -9.48819351 4.58458614 -8.9944372e-09 -9.51206398 4.59589767 0.16677432 -9.58133793 4.62872362 0.31722376
		 -9.68923569 4.67985249 0.43662086 -9.82519245 4.74427748 0.51327878 -9.9759016 4.81569195 0.53969306
		 -10.12661171 4.88710737 0.51327878 -10.26256943 4.95153236 0.43662068 -10.37046528 5.0026607513 0.31722361
		 -10.43973923 5.035487652 0.16677441 -10.4636097 5.046798706 -8.9944372e-09 -10.58870697 4.82214832 -0.18175358
		 -10.51243782 4.78805256 -0.34571594 -10.3936491 4.73494625 -0.47583699 -10.24396324 4.66802931 -0.55937999
		 -10.078036308 4.59385061 -0.58816677 -9.91210747 4.51967144 -0.55938005 -9.76242352 4.45275497 -0.47583693
		 -9.64363194 4.39964914 -0.3457157 -9.56736374 4.36555338 -0.18175356 -9.54108238 4.35380363 -4.0586998e-10
		 -9.56736374 4.36555338 0.18175356 -9.64363194 4.39964867 0.3457157 -9.76242256 4.45275307 0.47583678
		 -9.91210747 4.51967144 0.55937976 -10.078036308 4.59385061 0.58816665 -10.24396324 4.66802931 0.55937999
		 -10.39364719 4.73494768 0.47583702 -10.51243782 4.78805256 0.34571561 -10.58870602 4.82214785 0.18175352
		 -10.61498737 4.83389664 9.1308729e-09 -10.64834118 4.56887245 -0.16677442 -10.5776844 4.53914165 -0.31722391
		 -10.46763229 4.49283504 -0.4366211 -10.32895756 4.43448496 -0.5132789 -10.17523766 4.36980391 -0.53969336
		 -10.021517754 4.30512333 -0.5132789 -9.88284492 4.24677229 -0.43662101 -9.77279282 4.20046616 -0.31722385
		 -9.70213604 4.17073631 -0.16677436 -9.67778683 4.16049051 1.7343996e-09 -9.70213413 4.17073536 0.16677433
		 -9.77279282 4.20046568 0.31722373 -9.88284397 4.24677372 0.43662086 -10.021517754 4.30512333 0.51327878
		 -10.17523766 4.36980391 0.53969324 -10.32895756 4.43448544 0.51327872 -10.46763229 4.49283504 0.43662095
		 -10.57768345 4.5391407 0.31722349 -10.64834118 4.56887388 0.16677432 -10.67268944 4.57911682 5.3106781e-09
		 -10.63779926 4.34404182 -0.13587004 -10.57981491 4.32084513 -0.2584402 -10.48950195 4.28471375 -0.35571232
		 -10.37570095 4.23918629 -0.41816497 -10.24955082 4.18871927 -0.43968463 -10.12340069 4.13825274 -0.41816503
		 -10.009598732 4.092725277 -0.35571229 -9.91928768 4.056593418 -0.25844014 -9.86130142 4.033397198 -0.13586999
		 -9.8413229 4.025405884 3.8330345e-08 -9.86130333 4.033396721 0.13586992 -9.91928768 4.056594849 0.25844002
		 -10.0095996857 4.092725277 0.35571229 -10.12340164 4.13825178 0.41816479 -10.24955082 4.18871927 0.43968436
		 -10.37570095 4.23918724 0.41816497 -10.48950195 4.28471327 0.35571209 -10.57981586 4.3208437 0.25843999
		 -10.63779926 4.34404182 0.13586989 -10.65778065 4.35203362 3.8330345e-08 -10.80050564 4.18851805 -0.16677442
		 -10.72883987 4.16131115 -0.31722391 -10.6172142 4.1189332 -0.4366211 -10.47655964 4.065536022 -0.5132789
		 -10.32064342 4.0063438416 -0.53969336 -10.16472816 3.94715214 -0.5132789 -10.024072647 3.89375544 -0.43662107
		 -9.91244793 3.85137701 -0.31722385 -9.84078121 3.82417107 -0.16677436 -9.81608677 3.8147943 4.1185855e-09
		 -9.84078026 3.82417107 0.16677432 -9.91244793 3.8513782 0.31722373 -10.024072647 3.89375544 0.43662086
		 -10.16472816 3.94715333 0.51327878 -10.32064342 4.0063433647 0.53969324 -10.47655964 4.065536022 0.51327878
		 -10.6172142 4.1189332 0.43662071 -10.72883797 4.16131115 0.31722361 -10.80050564 4.18851805 0.16677441
		 -10.82520103 4.19789362 1.7343996e-09 -10.93201637 3.96400142 -0.18175359 -10.85327625 3.93608642 -0.34571594
		 -10.73063564 3.89260435 -0.47583699 -10.57609844 3.83781505 -0.55937999 -10.40479279 3.77708197 -0.58816677
		 -10.23348618 3.71634459 -0.55938005 -10.078948021 3.66155767 -0.47583693 -9.95630646 3.61807442 -0.3457157
		 -9.87756729 3.59015751 -0.18175356 -9.8504343 3.58053899 1.2332577e-09 -9.87756729 3.59015989 0.18175352
		 -9.95630741 3.61807561 0.34571576 -10.078948021 3.66155815 0.47583675 -10.23348713 3.7163465 0.55937976
		 -10.40479279 3.77708006 0.58816659 -10.57609844 3.83781505 0.55937952 -10.73063469 3.89260435 0.47583675
		 -10.85327625 3.93608522 0.34571579 -10.93201542 3.96400213 0.18175335 -10.95915031 3.97362113 -7.0389317e-10
		 -10.97130013 3.70678234 -0.16677442 -10.89849854 3.68277049 -0.31722391 -10.78510952 3.64537287 -0.43662107
		 -10.64223099 3.59824777 -0.5132789 -10.48385143 3.54600644 -0.53969336 -10.32547092 3.49377012 -0.5132789
		 -10.18259144 3.44664431 -0.43662101 -10.069203377 3.40924382 -0.31722385 -9.99640179 3.38523078 -0.16677436
		 -9.97131729 3.3769598 2.1814333e-09 -9.99640179 3.38523245 0.16677432 -10.069202423 3.40924263 0.31722373
		 -10.18259239 3.44664359 0.43662086 -10.32546997 3.49376822 0.51327878 -10.48385143 3.54600763 0.53969312
		 -10.64223099 3.59824586 0.5132786 -10.78510952 3.64537287 0.43662095 -10.89849854 3.68276978 0.31722379
		 -10.97130013 3.70678401 0.16677432 -10.99638557 3.71505737 1.8834101e-09 -10.98507595 3.49659181 -0.15022022
		 -10.91912842 3.47612667 -0.28573585 -10.81641483 3.44425845 -0.3932817 -10.68698597 3.40409541 -0.4623301
		 -10.5435133 3.35958004 -0.48612282 -10.40004063 3.31506109 -0.46233001;
	setAttr ".vt[166:331]" -10.27061272 3.27490354 -0.39328155 -10.16789818 3.24303102 -0.28573576
		 -10.1019516 3.22256899 -0.15022017 -10.079229355 3.21551871 -4.4624045e-08 -10.1019516 3.22256947 0.15022014
		 -10.16789818 3.24303102 0.2857357 -10.27061272 3.27490234 0.39328122 -10.40004063 3.31506157 0.46233004
		 -10.5435133 3.35957956 0.4861224 -10.68698597 3.40409732 0.46233013 -10.81641483 3.44425774 0.39328152
		 -10.91912842 3.47612906 0.28573564 -10.98507595 3.49658942 0.15022007 -11.0077981949 3.50364137 -2.5587811e-08
		 -11.38413048 1.72889173 -0.15022022 -11.31578827 1.71903884 -0.28573585 -11.20934486 1.7036922 -0.39328158
		 -11.075216293 1.68435502 -0.46233022 -10.92653179 1.66291881 -0.4861227 -10.7778492 1.64148271 -0.46233016
		 -10.64372063 1.62214518 -0.39328152 -10.53727531 1.60679889 -0.28573576 -10.46893311 1.596946 -0.15022017
		 -10.44538593 1.59355092 -6.4398193e-09 -10.46893311 1.596946 0.15022011 -10.53727531 1.60679889 0.28573567
		 -10.64372063 1.62214518 0.3932814 -10.7778492 1.64148271 0.46233001 -10.92653179 1.66291881 0.48612255
		 -11.075216293 1.68435502 0.46233001 -11.20934486 1.70369244 0.39328137 -11.31578827 1.71903884 0.28573564
		 -11.38413048 1.72889173 0.1502201 -11.40767956 1.73228681 -1.1208191e-08 -11.4619894 1.53316879 -0.16677445
		 -11.38593483 1.5235765 -0.31722382 -11.26747513 1.50863636 -0.4366211 -11.11820793 1.48981059 -0.51327884
		 -10.95274544 1.4689424 -0.5396933 -10.78728294 1.44807386 -0.51327884 -10.63801479 1.42924821 -0.43662101
		 -10.51955605 1.41430807 -0.31722373 -10.44350052 1.40471601 -0.16677436 -10.41729355 1.4014107 1.7343984e-09
		 -10.44350052 1.40471601 0.16677435 -10.51955605 1.41430807 0.3172237 -10.63801479 1.42924821 0.43662086
		 -10.78728294 1.44807386 0.51327872 -10.95274544 1.4689424 0.53969312 -11.11820793 1.48981059 0.51327872
		 -11.26747513 1.50863636 0.43662086 -11.38593388 1.5235765 0.31722364 -11.4619894 1.53316879 0.16677435
		 -11.48819733 1.53647411 -2.687583e-08 -11.53701878 1.28401911 -0.18175358 -11.45392132 1.275401 -0.34571582
		 -11.32449627 1.26197827 -0.47583702 -11.16140842 1.24506438 -0.55937999 -10.9806242 1.22631514 -0.58816683
		 -10.79983902 1.2075659 -0.55937994 -10.63675213 1.19065213 -0.47583693 -10.50732422 1.17722917 -0.3457157
		 -10.42422867 1.16861129 -0.18175356 -10.39559364 1.16564167 -4.0586998e-10 -10.42422867 1.16861129 0.18175352
		 -10.50732422 1.17722917 0.34571567 -10.63675213 1.19065213 0.47583684 -10.79983902 1.2075659 0.55937982
		 -10.9806242 1.22631514 0.58816671 -11.16140842 1.24506438 0.5593797 -11.32449436 1.26197815 0.47583678
		 -11.45392132 1.275401 0.3457157 -11.53701782 1.28401899 0.18175349 -11.56565189 1.28698874 9.1308729e-09
		 -11.51471519 1.024780154 -0.16677445 -11.43831062 1.018560648 -0.31722382 -11.31930542 1.0088733435 -0.4366211
		 -11.16935349 0.99666673 -0.51327884 -11.0031290054 0.9831357 -0.5396933 -10.83690453 0.96960467 -0.51327884
		 -10.68695164 0.95739806 -0.43662101 -10.56794643 0.94771075 -0.31722376 -10.49154186 0.94149125 -0.16677439
		 -10.46521473 0.93934798 -4.5949317e-08 -10.49154186 0.94149125 0.16677432 -10.56794643 0.94771075 0.31722367
		 -10.68695164 0.95739806 0.43662089 -10.83690453 0.96960467 0.51327872 -11.0031290054 0.9831357 0.53969312
		 -11.16935349 0.99666673 0.51327872 -11.31930542 1.0088733435 0.43662089 -11.43830967 1.018560529 0.31722367
		 -11.51471519 1.024780154 0.16677433 -11.54104233 1.02692318 -7.8023437e-09 -11.43460369 0.81444001 -0.13587007
		 -11.37227535 0.81047714 -0.2584402 -11.27519894 0.80430484 -0.35571235 -11.15287685 0.79652727 -0.41816503
		 -11.017280579 0.78790575 -0.43968463 -10.88168335 0.77928436 -0.41816503 -10.75936031 0.77150667 -0.35571232
		 -10.66228485 0.76533449 -0.25844014 -10.59995747 0.76137161 -0.13586999 -10.57848263 0.76000625 -3.9889549e-09
		 -10.59995747 0.76137161 0.13586996 -10.66228485 0.76533449 0.25844011 -10.75936031 0.77150667 0.35571212
		 -10.88168335 0.77928436 0.41816482 -11.017280579 0.78790575 0.43968448 -11.15287685 0.79652727 0.41816476
		 -11.27519894 0.80430484 0.35571212 -11.37227535 0.81047714 0.25843999 -11.43460369 0.81444001 0.13586995
		 -11.45607758 0.81580538 -4.2135927e-08 -11.54071045 0.61594009 -0.16677441 -11.46413231 0.61243272 -0.31722385
		 -11.34486008 0.60696989 -0.4366211 -11.19456768 0.60008621 -0.51327884 -11.027968407 0.59245574 -0.5396933
		 -10.86137009 0.58482528 -0.51327884 -10.71107769 0.57794172 -0.43662101 -10.59180546 0.57247877 -0.31722373
		 -10.51522732 0.5689714 -0.16677436 -10.4888401 0.56776291 -1.7339087e-08 -10.51522732 0.5689714 0.16677441
		 -10.59180546 0.57247877 0.31722367 -10.71107769 0.57794172 0.43662086 -10.86137009 0.58482528 0.51327872
		 -11.027968407 0.59245574 0.53969312 -11.19456768 0.60008621 0.51327872 -11.34486008 0.60696989 0.43662086
		 -11.4641304 0.61243272 0.31722367 -11.54071045 0.61594009 0.16677433 -11.56709671 0.61714858 -4.5949317e-08
		 -11.59566784 0.36161101 -0.18175358 -11.51214695 0.35963517 -0.34571582 -11.38206387 0.35655794 -0.47583702
		 -11.21814728 0.35268021 -0.55937999 -11.03644371 0.34838182 -0.58816683 -10.8547411 0.3440834 -0.55937994
		 -10.69082355 0.3402057 -0.47583693 -10.56073952 0.33712828 -0.3457157 -10.47722054 0.3351526 -0.1817535
		 -10.44844151 0.33447173 -4.0586998e-10 -10.47722054 0.3351526 0.18175346 -10.56073952 0.33712828 0.3457157
		 -10.69082355 0.3402057 0.47583684 -10.8547411 0.3440834 0.55937982 -11.03644371 0.34838182 0.58816665
		 -11.21814728 0.35268021 0.55937964 -11.38206291 0.35655776 0.47583678 -11.51214695 0.35963517 0.34571564
		 -11.59566689 0.36161086 0.18175346 -11.62444592 0.36229172 -4.0586998e-10 -11.55279827 0.10496506 -0.16677441
		 -11.47614002 0.10484741 -0.31722385 -11.35674191 0.10466415 -0.4366211 -11.20629311 0.10443344 -0.51327884
		 -11.03951931 0.10417762 -0.5396933 -10.87274647 0.10392174 -0.51327884 -10.72229767 0.10369095 -0.43662101
		 -10.60289955 0.10350776 -0.31722373 -10.5262413 0.10339012 -0.16677435 -10.49982643 0.10334961 -7.8023445e-09
		 -10.5262413 0.10339012 0.16677439 -10.60289955 0.10350776 0.31722373;
	setAttr ".vt[332:497]" -10.72229767 0.10369095 0.43662095 -10.87274647 0.10392174 0.51327866
		 -11.03951931 0.10417762 0.53969312 -11.20629311 0.10443344 0.51327872 -11.35674191 0.10466423 0.43662089
		 -11.47613907 0.10484741 0.31722367 -11.55279827 0.10496506 0.16677435 -11.57921219 0.10500557 -7.8023445e-09
		 -11.50035477 -0.0990403 -0.15022023 -11.43131447 -0.097922213 -0.28573582 -11.32378387 -0.096180879 -0.39328158
		 -11.18828583 -0.093986742 -0.46233022 -11.038084984 -0.091554336 -0.4861227 -10.88788319 -0.089122012 -0.46233016
		 -10.75238609 -0.086927794 -0.39328152 -10.6448555 -0.085186385 -0.28573573 -10.5758152 -0.084068447 -0.15022013
		 -10.55202675 -0.083683163 -1.5976562e-08 -10.5758152 -0.084068447 0.15022013 -10.6448555 -0.085186459 0.2857357
		 -10.75238609 -0.086927794 0.3932814 -10.88788319 -0.089122012 0.46233001 -11.038084984 -0.091554336 0.48612252
		 -11.18828583 -0.09398666 0.46233001 -11.32378387 -0.096180879 0.39328137 -11.43131447 -0.097922213 0.28573567
		 -11.50035477 -0.0990403 0.1502201 -11.52414322 -0.09942551 3.0969238e-09 -8.18534088 8.1687336 -0.15022022
		 -8.13619804 8.12022877 -0.28573585 -8.05965519 8.044681549 -0.3932817 -7.96320629 7.94948769 -0.4623301
		 -7.85629129 7.84396315 -0.48612279 -7.7493763 7.73843813 -0.46233001 -7.6529274 7.64324379 -0.39328152
		 -7.5763855 7.56769705 -0.28573579 -7.52724171 7.51919317 -0.15022017 -7.51030874 7.50248051 -1.478447e-08
		 -7.52724171 7.51919317 0.15022004 -7.5763855 7.56769705 0.28573573 -7.6529274 7.64324379 0.39328134
		 -7.7493763 7.73843813 0.46233004 -7.85629129 7.84396315 0.48612282 -7.96320677 7.94948769 0.46233013
		 -8.05965519 8.044681549 0.39328125 -8.13619709 8.12022877 0.28573567 -8.18534088 8.1687336 0.15022005
		 -8.20227337 8.18544579 -1.478447e-08 -8.36419582 8.057466507 -0.16677442 -8.30869102 8.0045919418 -0.31722391
		 -8.22223949 7.92223883 -0.43662107 -8.11330509 7.81846809 -0.5132789 -7.99255133 7.70343828 -0.53969336
		 -7.87179708 7.58840799 -0.5132789 -7.76286268 7.48463726 -0.43662101 -7.67641115 7.40228415 -0.31722385
		 -7.62090635 7.34941053 -0.16677436 -7.60178089 7.33119154 -8.9944372e-09 -7.62090635 7.34941053 0.16677429
		 -7.67641115 7.40228415 0.31722367 -7.76286268 7.48463726 0.43662107 -7.87179708 7.58840799 0.51327872
		 -7.99255133 7.70343828 0.539693 -8.11330509 7.81846809 0.51327878 -8.22223949 7.92223883 0.4366208
		 -8.30869007 8.0045909882 0.31722367 -8.36419582 8.057466507 0.16677442 -8.38332176 8.075684547 -2.2107461e-08
		 -8.57249355 7.90152693 -0.18175359 -8.51074314 7.84525585 -0.34571597 -8.41456795 7.75761271 -0.47583699
		 -8.29337692 7.64717531 -0.55937999 -8.15903568 7.52475357 -0.58816677 -8.024694443 7.40233231 -0.55938005
		 -7.90350342 7.29189444 -0.47583693 -7.80732584 7.20425129 -0.3457157 -7.74557734 7.14798021 -0.18175356
		 -7.72429848 7.12859011 -1.1134706e-08 -7.74557734 7.14798021 0.18175356 -7.80732679 7.20425129 0.34571576
		 -7.90350342 7.29189444 0.47583672 -8.024694443 7.40233231 0.55937982 -8.15903568 7.52475357 0.58816659
		 -8.29337692 7.64717531 0.55937952 -8.41456604 7.75761223 0.47583675 -8.51074314 7.84525585 0.34571582
		 -8.5724926 7.90152597 0.18175337 -8.59377098 7.92091608 -2.1863544e-08 -8.70846272 7.67967939 -0.16677442
		 -8.65067291 7.62931204 -0.31722391 -8.56066418 7.55086231 -0.43662107 -8.44724751 7.45201063 -0.51327884
		 -8.32152557 7.34243298 -0.53969336 -8.19580269 7.23285532 -0.5132789 -8.082386017 7.13400316 -0.43662101
		 -7.99237728 7.055553436 -0.31722385 -7.93458939 7.0051860809 -0.16677439 -7.91467667 6.98783016 1.007905e-08
		 -7.93458939 7.0051860809 0.16677429 -7.99237728 7.055553436 0.31722379 -8.082386017 7.13400316 0.43662086
		 -8.19580269 7.23285532 0.51327872 -8.32152557 7.34243298 0.53969336 -8.44724751 7.45201063 0.51327872
		 -8.56066418 7.55086231 0.4366208 -8.65067291 7.62931156 0.31722358 -8.70846176 7.67967939 0.16677442
		 -8.72837543 7.69703531 -1.7339087e-08 -8.76887894 7.46286011 -0.13587004 -8.72107792 7.42266607 -0.2584402
		 -8.64662933 7.36006403 -0.35571235 -8.55281639 7.28118086 -0.41816503 -8.44882488 7.19373798 -0.4396846
		 -8.34483051 7.10629511 -0.41816497 -8.25101852 7.027410984 -0.35571232 -8.17656898 6.96480942 -0.25844011
		 -8.12876797 6.92461586 -0.13587001 -8.11229706 6.91076708 5.5615693e-08 -8.12876797 6.92461586 0.13586989
		 -8.17656898 6.96480942 0.25844005 -8.25101852 7.027410984 0.35571229 -8.34483051 7.10629511 0.4181647
		 -8.44882393 7.19373798 0.43968436 -8.55281639 7.28118086 0.41816503 -8.64662838 7.36006403 0.35571209
		 -8.72107887 7.42266607 0.25844002 -8.76887989 7.46286011 0.13586989 -8.78534794 7.47670889 4.1310578e-08
		 -8.97211266 7.36613178 -0.16677442 -8.91257381 7.31784439 -0.31722391 -8.81984043 7.24263382 -0.4366211
		 -8.70299244 7.14786434 -0.5132789 -8.57346535 7.042811871 -0.53969336 -8.44393635 6.93775988 -0.5132789
		 -8.3270874 6.84298992 -0.43662101 -8.23435497 6.7677803 -0.31722382 -8.17481709 6.71949291 -0.16677436
		 -8.15430069 6.70285416 1.9615793e-08 -8.17481709 6.71949291 0.16677432 -8.23435497 6.7677803 0.31722373
		 -8.3270874 6.84298992 0.43662086 -8.44393635 6.93775988 0.51327878 -8.57346439 7.042811871 0.53969324
		 -8.70299244 7.14786434 0.51327872 -8.81984138 7.24263382 0.4366208 -8.91257381 7.31784296 0.31722364
		 -8.97211266 7.36613178 0.16677441 -8.99262714 7.38277054 1.6039515e-08 -9.16733551 7.19410563 -0.18175359
		 -9.10130215 7.14292908 -0.34571597 -8.99845409 7.063220024 -0.47583699 -8.86885643 6.96278095 -0.55937999
		 -8.72519684 6.85144186 -0.58816677 -8.58153629 6.74010324 -0.55938005 -8.45193863 6.63966322 -0.47583693
		 -8.34908962 6.55995369 -0.34571576 -8.28305721 6.50877762 -0.18175356 -8.2603035 6.49114275 5.5545946e-09
		 -8.28305721 6.50877762 0.18175352 -8.34908962 6.55995369 0.3457157 -8.45193863 6.63966322 0.47583675
		 -8.58153629 6.74010324 0.55937976 -8.72519684 6.85144186 0.58816659 -8.86885643 6.96278095 0.55937952
		 -8.99845409 7.063219547 0.47583675 -9.10130119 7.14292908 0.34571579;
	setAttr ".vt[498:663]" -9.16733456 7.19410515 0.18175335 -9.19008827 7.21174002 -7.5584277e-09
		 -9.28521252 6.96213913 -0.16677442 -9.22359753 6.91653156 -0.31722391 -9.12762928 6.8454957 -0.43662107
		 -9.0067043304 6.75598621 -0.5132789 -8.87265778 6.65676451 -0.53969336 -8.73861122 6.5575428 -0.5132789
		 -8.61768532 6.46803331 -0.43662101 -8.52171707 6.39699697 -0.31722385 -8.46010208 6.35138988 -0.16677436
		 -8.43887138 6.33567429 2.9264913e-09 -8.46010208 6.35138988 0.16677429 -8.52171707 6.39699697 0.31722373
		 -8.61768532 6.46803331 0.43662083 -8.73861122 6.5575428 0.51327878 -8.87265778 6.65676451 0.53969306
		 -9.0067043304 6.75598621 0.51327878 -9.12762928 6.8454957 0.43662071 -9.22359657 6.91653061 0.31722364
		 -9.28521347 6.96213913 0.16677441 -9.30644321 6.97785473 6.5027699e-09 -9.36413479 6.76684284 -0.15022022
		 -9.30791664 6.72675228 -0.28573585 -9.22035503 6.66431093 -0.3932817 -9.11002064 6.58562946 -0.4623301
		 -8.98771381 6.49841022 -0.48612282 -8.86540604 6.41119099 -0.46233001 -8.75507164 6.33250999 -0.39328152
		 -8.66751003 6.27006721 -0.28573579 -8.61129189 6.22997761 -0.15022017 -8.59192085 6.21616316 -3.1473768e-08
		 -8.61129189 6.22997761 0.15022004 -8.66751003 6.27006769 0.28573567 -8.75507164 6.33250999 0.39328128
		 -8.86540604 6.41119099 0.4623301 -8.98771381 6.49841022 0.48612255 -9.11002064 6.58562946 0.46232989
		 -9.22035503 6.66431093 0.39328128 -9.30791664 6.72675228 0.28573552 -9.36413479 6.76684284 0.15022014
		 -9.38350582 6.78065634 -3.2665863e-08 -9.36396408 6.76708317 -0.15022022 -9.30774689 6.72699118 -0.28573585
		 -9.22018623 6.66454697 -0.3932817 -9.10985374 6.58586311 -0.4623301 -8.98754883 6.49864054 -0.48612282
		 -8.86524391 6.41141796 -0.46233001 -8.75491142 6.33273458 -0.39328152 -8.66735077 6.27029037 -0.28573579
		 -8.61113358 6.23019838 -0.15022017 -8.5917635 6.21638441 -3.1473768e-08 -8.61113358 6.23019838 0.15022004
		 -8.66735268 6.27029037 0.28573567 -8.75491142 6.33273458 0.39328128 -8.86524391 6.41141796 0.4623301
		 -8.98754883 6.49864054 0.48612255 -9.10985374 6.58586311 0.46232989 -9.22018623 6.66454697 0.39328128
		 -9.30774593 6.72699118 0.28573552 -9.36396408 6.76708317 0.15022014 -9.38333416 6.78089666 -3.0281676e-08
		 -9.52289677 6.62884474 -0.16677442 -9.45970535 6.58544779 -0.31722391 -9.36128139 6.5178566 -0.43662107
		 -9.23726082 6.43268633 -0.5132789 -9.099783897 6.33827448 -0.53969336 -8.96230698 6.24386311 -0.5132789
		 -8.8382864 6.15869284 -0.43662101 -8.73986244 6.091100693 -0.31722385 -8.67667103 6.047704697 -0.16677436
		 -8.65489674 6.032751083 -3.0339731e-09 -8.67667103 6.047704697 0.16677429 -8.73986244 6.09110117 0.31722373
		 -8.8382864 6.15869284 0.43662089 -8.96230698 6.24386311 0.51327878 -9.099783897 6.33827448 0.53969306
		 -9.23726177 6.43268633 0.51327878 -9.36128139 6.5178566 0.43662071 -9.45970345 6.58544731 0.31722364
		 -9.52289677 6.62884474 0.16677441 -9.5446701 6.64379835 7.6948625e-09 -9.70380974 6.44183111 -0.18175359
		 -9.63391399 6.39607096 -0.34571594 -9.52504921 6.32480001 -0.47583699 -9.38786888 6.23499203 -0.55937999
		 -9.23580456 6.13543844 -0.58816677 -9.083739281 6.035885811 -0.55938005 -8.94655991 5.94607687 -0.47583693
		 -8.83769417 5.87480545 -0.34571576 -8.76779842 5.82904625 -0.18175356 -8.74371243 5.81327772 -3.9821488e-09
		 -8.76779842 5.82904625 0.18175352 -8.83769417 5.87480545 0.34571576 -8.94655991 5.94607687 0.47583678
		 -9.083739281 6.035884857 0.55937976 -9.23580456 6.13543844 0.58816671 -9.38786888 6.23499203 0.55937999
		 -9.5250473 6.32479906 0.47583702 -9.63391304 6.39607096 0.34571555 -9.70380878 6.44183064 0.18175352
		 -9.72789383 6.45759869 4.3625015e-09 -9.80285549 6.20121717 -0.16677442 -9.73780537 6.16065741 -0.31722391
		 -9.63648891 6.097484112 -0.4366211 -9.50882339 6.017881393 -0.5132789 -9.36730671 5.92964172 -0.53969336
		 -9.22578812 5.84140205 -0.5132789 -9.09812355 5.76179934 -0.43662107 -8.9968071 5.69862604 -0.31722385
		 -8.93175793 5.65806627 -0.16677439 -8.90934372 5.64409065 -7.8023437e-09 -8.93175888 5.65806627 0.16677433
		 -8.9968071 5.69862556 0.31722373 -9.09812355 5.76179934 0.43662086 -9.22578812 5.84140205 0.51327878
		 -9.36730671 5.92964172 0.53969324 -9.50882339 6.017881393 0.51327878 -9.63649082 6.097484112 0.43662098
		 -9.73780441 6.16065693 0.31722349 -9.80285358 6.20121765 0.16677433 -9.82526875 6.21519279 -6.6102506e-09
		 -9.8281002 5.97756004 -0.13587007 -9.77452755 5.94546032 -0.2584402 -9.69108772 5.8954649 -0.35571232
		 -9.58594704 5.83246756 -0.41816497 -9.46939564 5.76263285 -0.43968463 -9.35284519 5.69279957 -0.41816497
		 -9.24770355 5.62980175 -0.35571229 -9.16426468 5.57980633 -0.25844014 -9.11069107 5.54770756 -0.13587001
		 -9.092232704 5.53664732 1.6276624e-08 -9.11069107 5.54770756 0.13586989 -9.16426468 5.57980633 0.25843999
		 -9.24770355 5.62980175 0.35571223 -9.35284519 5.69279957 0.41816479 -9.46939564 5.7626338 0.43968433
		 -9.58594608 5.83246756 0.41816497 -9.69108677 5.8954649 0.35571209 -9.7745266 5.94546032 0.25843999
		 -9.8281002 5.97756004 0.13586986 -9.84655857 5.9886198 1.5084531e-08 -10.013409615 5.84980822 -0.16677442
		 -9.94696426 5.8115797 -0.31722388 -9.84347153 5.75203753 -0.4366211 -9.7130661 5.67701006 -0.5132789
		 -9.5685091 5.59384203 -0.53969336 -9.42395306 5.51067305 -0.5132789 -9.29354572 5.43564558 -0.43662101
		 -9.19005394 5.37610435 -0.31722385 -9.12360859 5.33787584 -0.16677439 -9.10071182 5.32470226 -3.033972e-09
		 -9.12360859 5.33787584 0.16677433 -9.19005394 5.3761034 0.31722373 -9.29354572 5.43564653 0.43662089
		 -9.42395306 5.510674 0.51327878 -9.56850815 5.59384203 0.53969324 -9.71306515 5.67701006 0.51327872
		 -9.84347153 5.75203753 0.43662071 -9.94696331 5.81157875 0.31722361 -10.013409615 5.84980822 0.16677442
		 -10.036305428 5.86298084 2.0807885e-08 -10.17886257 5.64898396 -0.18175362 -10.10554504 5.60893393 -0.34571594
		 -9.99135208 5.54655504 -0.47583699 -9.84745884 5.46795177 -0.55937999;
	setAttr ".vt[664:829]" -9.68795204 5.3808198 -0.58816677 -9.52844524 5.29368734 -0.55938005
		 -9.38455105 5.21508408 -0.47583693 -9.27035809 5.15270424 -0.3457157 -9.19704056 5.11265373 -0.18175356
		 -9.17177677 5.098853111 -9.942613e-09 -9.19704056 5.11265421 0.18175352 -9.27035809 5.15270376 0.3457157
		 -9.38455105 5.2150836 0.47583675 -9.52844524 5.29368734 0.55937976 -9.68795204 5.3808198 0.58816671
		 -9.84745979 5.46795177 0.55937999 -9.99135113 5.54655457 0.47583702 -10.105546 5.60893393 0.34571561
		 -10.17886257 5.64898396 0.18175352 -10.20412636 5.66278458 -4.0586998e-10 -10.25843716 5.40125179 -0.16677445
		 -10.19036674 5.36599922 -0.31722388 -10.084342003 5.31109142 -0.4366211 -9.95074558 5.24190426 -0.5132789
		 -9.80265236 5.16520977 -0.53969336 -9.65456009 5.088514805 -0.5132789 -9.52096462 5.019328594 -0.43662107
		 -9.41493988 4.96442127 -0.31722385 -9.34686852 4.92916822 -0.16677436 -9.3234129 4.9170208 5.4230553e-10
		 -9.34686947 4.92916822 0.16677433 -9.41493988 4.96442032 0.31722379 -9.52096367 5.019328594 0.43662086
		 -9.65456009 5.088515759 0.51327878 -9.80265331 5.16520977 0.53969312 -9.95074558 5.24190426 0.5132786
		 -10.084342957 5.31109142 0.43662083 -10.19036484 5.36599874 0.31722379 -10.25843716 5.40125227 0.16677429
		 -10.28189182 5.4133997 2.0807883e-08 -10.30537128 5.19590616 -0.15022022 -10.24350357 5.1652441 -0.28573585
		 -10.14714241 5.11748886 -0.3932817 -10.025722504 5.057312012 -0.4623301 -9.89112473 4.99060488 -0.48612279
		 -9.75652695 4.92389822 -0.46233001 -9.63510513 4.86372137 -0.39328152 -9.53874588 4.81596518 -0.28573579
		 -9.47687721 4.78530312 -0.15022017 -9.45556068 4.77473927 -6.4398193e-09 -9.47687721 4.78530312 0.15022007
		 -9.53874493 4.81596518 0.28573564 -9.63510513 4.86372137 0.39328128 -9.75652695 4.92389822 0.4623301
		 -9.89112473 4.99060488 0.48612255 -10.025722504 5.057312012 0.46232995 -10.14714336 5.11748838 0.39328128
		 -10.24350357 5.16524458 0.28573549 -10.30537128 5.19590616 0.15022011 -10.32668781 5.20647097 -2.6705397e-08
		 -10.98161125 3.50773549 -0.15022022 -10.91568375 3.48720407 -0.28573585 -10.81300449 3.45523 -0.3932817
		 -10.68361664 3.41493893 -0.4623301 -10.54018879 3.37027454 -0.48612279 -10.39676189 3.32561278 -0.46233001
		 -10.26737404 3.285321 -0.39328155 -10.16469193 3.25334525 -0.28573573 -10.098766327 3.2328167 -0.15022016
		 -10.076048851 3.22574329 -6.4398193e-09 -10.098765373 3.23281932 0.15021999 -10.16469193 3.25334716 0.2857357
		 -10.26737404 3.28532219 0.39328149 -10.39676189 3.32561278 0.46233004 -10.54018879 3.37027597 0.4861224
		 -10.68361664 3.41493964 0.46233013 -10.81300259 3.4552319 0.39328122 -10.9156847 3.48720455 0.28573564
		 -10.98161411 3.50773621 0.15022007 -11.004327774 3.51480889 -2.5662317e-08 -11.089424133 3.32677436 -0.16677442
		 -11.015839577 3.30528259 -0.31722379 -10.90123081 3.27181029 -0.43662113 -10.756814 3.22963023 -0.5132789
		 -10.59672737 3.18287778 -0.53969347 -10.43664169 3.13612247 -0.51327878 -10.29222488 3.093944073 -0.43662107
		 -10.17761517 3.060472965 -0.31722376 -10.10403252 3.038980007 -0.16677436 -10.078676224 3.031575203 4.9418112e-08
		 -10.10403156 3.03897953 0.16677433 -10.17761517 3.060472488 0.31722373 -10.29222488 3.093944788 0.43662083
		 -10.43664169 3.13612294 0.51327872 -10.59672737 3.18287659 0.53969306 -10.756814 3.22963142 0.51327878
		 -10.90122795 3.2718091 0.43662083 -11.015839577 3.30528259 0.31722361 -11.089424133 3.32677245 0.16677432
		 -11.11477757 3.33417726 1.7530247e-09 -11.20288372 3.092612267 -0.18175358 -11.12219238 3.070969343 -0.34571588
		 -10.99651337 3.037261963 -0.47583699 -10.83814812 2.99478698 -0.55938005 -10.66259861 2.94770455 -0.58816677
		 -10.48704815 2.9006207 -0.55937994 -10.3286829 2.85814571 -0.47583693 -10.20300388 2.82443976 -0.3457157
		 -10.1223135 2.80279732 -0.18175352 -10.094508171 2.79533935 2.3435987e-08 -10.1223135 2.80279613 0.18175356
		 -10.20300388 2.82443905 0.34571555 -10.3286829 2.85814691 0.47583684 -10.48704815 2.90062261 0.55937988
		 -10.66259861 2.94770384 0.58816659 -10.83814812 2.99478817 0.5593797 -10.99651337 3.037261963 0.47583684
		 -11.12219143 3.070968628 0.34571567 -11.20288181 3.092611074 0.18175352 -11.23068619 3.10007024 1.8667617e-08
		 -11.22182751 2.83310556 -0.16677442 -11.14736462 2.81488824 -0.31722382 -11.031386375 2.78651857 -0.4366211
		 -10.88524818 2.75076652 -0.51327884 -10.72325039 2.71113706 -0.53969324 -10.56125355 2.67150688 -0.51327884
		 -10.4151144 2.63575673 -0.4366211 -10.29913616 2.60738516 -0.31722373 -10.22467327 2.58916926 -0.16677436
		 -10.19901657 2.58289313 -3.1644202e-08 -10.22467327 2.58916807 0.16677433 -10.29913616 2.60738516 0.31722364
		 -10.41511345 2.63575673 0.43662095 -10.56125355 2.67150688 0.51327872 -10.72325039 2.71113706 0.53969312
		 -10.88524818 2.75076771 0.51327854 -11.031386375 2.78651738 0.43662083 -11.14736462 2.81488895 0.31722358
		 -11.22182846 2.83310366 0.16677426 -11.24748516 2.83938408 1.1271143e-08 -11.17596149 2.61274838 -0.13587004
		 -11.11504269 2.59898496 -0.2584402 -11.020163536 2.57754993 -0.35571229 -10.90060711 2.55053782 -0.41816503
		 -10.76807594 2.52059698 -0.43968463 -10.63554668 2.49065566 -0.41816497 -10.51598835 2.46364546 -0.35571232
		 -10.4211092 2.44220805 -0.25844014 -10.36019135 2.42844772 -0.13587001 -10.33920193 2.42370439 -3.7367556e-08
		 -10.36019135 2.42844748 0.13587002 -10.4211092 2.44220901 0.25844011 -10.51598835 2.4636445 0.35571209
		 -10.63554668 2.49065447 0.41816491 -10.76807594 2.52059674 0.43968448 -10.90060711 2.55053854 0.41816476
		 -11.020163536 2.57754874 0.35571212 -11.11504364 2.59898615 0.25844008 -11.17596149 2.6127491 0.13586998
		 -11.19695091 2.61748958 -3.9889549e-09 -11.31210423 2.43351221 -0.16677442 -11.23704433 2.41794896 -0.31722382
		 -11.1201334 2.39370441 -0.43662113 -10.97281742 2.3631568 -0.5132789 -10.80951786 2.32929397 -0.53969324
		 -10.6462183 2.29543161 -0.5132789 -10.49890232 2.26488352 -0.43662101 -10.38199234 2.24064159 -0.31722373
		 -10.3069315 2.22507644 -0.16677436 -10.28106689 2.21971202 -2.9856061e-08;
	setAttr ".vt[830:995]" -10.3069315 2.22507572 0.16677439 -10.38199234 2.2406404 0.31722367
		 -10.49890232 2.26488352 0.43662095 -10.6462183 2.29543209 0.51327872 -10.80951786 2.32929516 0.53969318
		 -10.97281742 2.3631568 0.51327872 -11.1201334 2.39370441 0.43662086 -11.23704243 2.41794753 0.3172237
		 -11.31210423 2.43351364 0.16677441 -11.33796978 2.43887734 -1.2570715e-08 -11.40656376 2.1910634 -0.18175358
		 -11.32440567 2.17591262 -0.34571582 -11.1964426 2.15231729 -0.47583702 -11.035199165 2.12258315 -0.55937994
		 -10.85645866 2.089624405 -0.58816683 -10.67771816 2.056665421 -0.55937994 -10.51647377 2.026932001 -0.47583699
		 -10.3885107 2.0033357143 -0.3457157 -10.30635262 1.98818707 -0.18175352 -10.27804184 1.98296618 -2.7900557e-09
		 -10.30635262 1.98818624 0.1817535 -10.3885107 2.0033369064 0.3457157 -10.51647377 2.02693224 0.47583684
		 -10.67771816 2.056665182 0.55937982 -10.85645866 2.089624405 0.58816671 -11.035199165 2.12258387 0.55937964
		 -11.19644165 2.15231633 0.47583684 -11.32440567 2.17591166 0.34571564 -11.40656281 2.1910615 0.18175349
		 -11.43487263 2.19628239 1.9783157e-09 -11.40479088 1.93086624 -0.16677442 -11.32911587 1.91863596 -0.31722385
		 -11.21124649 1.89958632 -0.4366211 -11.062725067 1.87558305 -0.51327878 -10.8980875 1.8489747 -0.53969336
		 -10.73344994 1.82236683 -0.51327884 -10.58492756 1.79836321 -0.43662101 -10.46705914 1.77931416 -0.31722376
		 -10.39138317 1.76708329 -0.16677436 -10.36530781 1.76286876 -3.0339731e-09 -10.39138317 1.76708329 0.16677435
		 -10.46705914 1.77931416 0.31722373 -10.58492756 1.79836321 0.43662089 -10.73344994 1.82236683 0.51327872
		 -10.8980875 1.84897506 0.53969312 -11.062725067 1.87558329 0.51327872 -11.21124649 1.89958668 0.43662086
		 -11.32911491 1.91863596 0.31722367 -11.40479088 1.93086624 0.16677433 -11.43086815 1.93508136 -7.8023445e-09
		 -11.38524628 1.72113729 -0.15022023 -11.31689739 1.71133077 -0.28573585 -11.21044159 1.69605732 -0.39328158
		 -11.076301575 1.67681074 -0.46233022 -10.92760277 1.65547621 -0.4861227 -10.77890491 1.63414109 -0.46233016
		 -10.64476299 1.61489487 -0.39328152 -10.53830814 1.59962118 -0.28573573 -10.46995831 1.58981466 -0.15022016
		 -10.44640827 1.58643568 -6.4398193e-09 -10.46995831 1.58981466 0.15022011 -10.53830814 1.59962118 0.28573564
		 -10.64476299 1.61489487 0.3932814 -10.77890491 1.63414109 0.46233001 -10.92760277 1.65547597 0.48612255
		 -11.076301575 1.6768111 0.46233001 -11.21044159 1.69605696 0.39328137 -11.31689739 1.71133077 0.28573564
		 -11.38524628 1.72113729 0.1502201 -11.40879631 1.72451615 -1.5976562e-08 -5.29359293 10.30014801 -0.15022023
		 -5.26180601 10.2388525 -0.28573585 -5.21229601 10.14337921 -0.3932817 -5.1499095 10.023078918 -0.46233004
		 -5.080753803 9.88972282 -0.48612279 -5.011598587 9.75636673 -0.46233001 -4.9492116 9.63606548 -0.39328152
		 -4.89970207 9.5405941 -0.28573579 -4.86791372 9.47929764 -0.15022017 -4.8569622 9.45817757 1.5017854e-08
		 -4.86791468 9.47929764 0.15022004 -4.89970255 9.54059601 0.2857357 -4.94921207 9.63606548 0.39328125
		 -5.01159811 9.75636673 0.46233031 -5.080753803 9.88972282 0.48612243 -5.14991045 10.023078918 0.46232983
		 -5.21229601 10.14337921 0.3932814 -5.26180553 10.23885155 0.28573546 -5.29359293 10.30014801 0.1502202
		 -5.30454636 10.32126808 1.7402039e-08 -5.4980464 10.24946785 -0.16677442 -5.461555 10.18205357 -0.31722391
		 -5.4047184 10.077051163 -0.43662107 -5.33310127 9.94474125 -0.51327878 -5.25371265 9.79807472 -0.53969336
		 -5.17432499 9.65140915 -0.5132789 -5.10270643 9.51909924 -0.43662098 -5.045870781 9.41409683 -0.31722385
		 -5.0093784332 9.34668064 -0.16677436 -4.99680424 9.32345104 6.4915319e-08 -5.0093784332 9.34668064 0.16677433
		 -5.045869827 9.41409683 0.31722385 -5.10270643 9.51909924 0.43662089 -5.17432451 9.65140724 0.51327848
		 -5.25371265 9.79807472 0.53969306 -5.3331008 9.94474125 0.51327872 -5.4047184 10.077051163 0.43662074
		 -5.46155405 10.18205166 0.31722364 -5.4980464 10.24946785 0.16677441 -5.51062012 10.27269936 6.0146952e-08
		 -5.74428368 10.16537857 -0.18175359 -5.70289898 10.092804909 -0.34571597 -5.63844299 9.97977161 -0.47583702
		 -5.55722284 9.83733845 -0.55937999 -5.46718884 9.67945194 -0.58816683 -5.37715721 9.52156353 -0.55937988
		 -5.29593515 9.37913132 -0.47583693 -5.23147964 9.26609707 -0.3457157 -5.19009686 9.19352436 -0.18175356
		 -5.17583561 9.16851711 1.0322966e-08 -5.19009638 9.19352436 0.18175344 -5.23147964 9.26609707 0.34571564
		 -5.29593706 9.37913132 0.47583678 -5.37715626 9.52156353 0.55937982 -5.46718931 9.67945194 0.58816659
		 -5.55722284 9.83733749 0.55937952 -5.63844252 9.97977066 0.47583675 -5.70289898 10.092804909 0.34571576
		 -5.74428225 10.16537762 0.18175329 -5.75854254 10.19038677 3.6549007e-08 -5.94204903 9.99628162 -0.16677442
		 -5.90261221 9.93054676 -0.31722391 -5.84118795 9.82815933 -0.43662107 -5.76378965 9.69914627 -0.5132789
		 -5.6779933 9.55613518 -0.53969342 -5.59219742 9.41312218 -0.5132789 -5.51479816 9.28410912 -0.43662101
		 -5.45337391 9.18172264 -0.31722385 -5.41393757 9.11598778 -0.16677436 -5.40034866 9.093336105 8.8869569e-09
		 -5.41393757 9.11598778 0.16677439 -5.45337391 9.18172264 0.31722382 -5.51479816 9.28410721 0.43662095
		 -5.59219646 9.41312218 0.5132786 -5.6779933 9.55613518 0.53969324 -5.76378965 9.69914627 0.51327872
		 -5.84118795 9.82816029 0.43662074 -5.90261173 9.93054581 0.31722358 -5.94204903 9.99628162 0.16677442
		 -5.95563793 10.01893425 5.423067e-10 -6.066391468 9.80866814 -0.13587007 -6.033318043 9.75569057 -0.2584402
		 -5.98180676 9.67317867 -0.35571235 -5.91689777 9.56920815 -0.41816503 -5.84494448 9.45395279 -0.43968463
		 -5.77299213 9.33869839 -0.41816503 -5.7080822 9.234725 -0.35571229 -5.65657091 9.15221405 -0.25844014
		 -5.62349653 9.099237442 -0.13586999 -5.61210203 9.080984116 5.7999877e-08 -5.62349749 9.099237442 0.13586992
		 -5.65657091 9.15221405 0.25844005 -5.7080822 9.234725 0.35571223 -5.77299213 9.33869839 0.41816485
		 -5.84494448 9.45395279 0.43968442 -5.91689825 9.56920815 0.41816503;
	setAttr ".vt[996:1161]" -5.98180676 9.67317772 0.35571206 -6.03331852 9.75569057 0.25844002
		 -6.066391468 9.80866814 0.13586983 -6.077787399 9.82692242 5.3231506e-08 -6.2895503 9.77933884 -0.16677442
		 -6.24780893 9.71504307 -0.31722391 -6.18279362 9.61489773 -0.43662107 -6.10087109 9.4887085 -0.5132789
		 -6.010059357 9.34882832 -0.53969336 -5.91924763 9.20894814 -0.5132789 -5.83732414 9.08275795 -0.43662098
		 -5.77230978 8.98261261 -0.31722385 -5.73056746 8.91831684 -0.16677436 -5.71618414 8.89616108 8.5180901e-08
		 -5.73056746 8.91831684 0.16677429 -5.77230978 8.98261356 0.31722379 -5.83732414 9.08275795 0.43662086
		 -5.91924763 9.20894623 0.51327878 -6.010059357 9.34882832 0.5396933 -6.10087013 9.4887085 0.51327878
		 -6.18279362 9.61489773 0.43662068 -6.2478075 9.71504116 0.31722358 -6.2895503 9.77933884 0.16677436
		 -6.30393362 9.8014946 6.1339044e-08 -6.52831173 9.67591476 -0.18175359 -6.48128176 9.60686493 -0.34571597
		 -6.40803242 9.49932098 -0.47583699 -6.315732 9.36380577 -0.55937999 -6.21341562 9.21358681 -0.58816677
		 -6.11109924 9.06336689 -0.55938005 -6.018798828 8.92785263 -0.47583693 -5.94554853 8.82030773 -0.3457157
		 -5.89851952 8.7512598 -0.18175356 -5.88231325 8.72746658 3.5356916e-08 -5.89851952 8.7512598 0.18175352
		 -5.94554853 8.82030773 0.34571576 -6.018798828 8.92785263 0.47583684 -6.11109924 9.06336689 0.55937982
		 -6.21341562 9.2135849 0.58816659 -6.315732 9.36380577 0.5593794 -6.40803099 9.49932003 0.47583678
		 -6.48128176 9.60686493 0.34571582 -6.52831125 9.67591286 0.18175325 -6.54451656 9.69970608 2.10518e-08
		 -6.71198893 9.49161148 -0.16677442 -6.66744518 9.42922401 -0.31722391 -6.59806538 9.33205223 -0.4366211
		 -6.51064205 9.20960903 -0.5132789 -6.41373348 9.073880196 -0.53969336 -6.31682491 8.93815231 -0.5132789
		 -6.22940207 8.81571007 -0.43662107 -6.16002178 8.71853733 -0.31722385 -6.11547804 8.65614986 -0.16677436
		 -6.10012865 8.63465309 7.6948625e-09 -6.11547804 8.65614986 0.16677432 -6.16002178 8.71853733 0.3172237
		 -6.22940207 8.81571007 0.43662086 -6.31682491 8.93815231 0.5132786 -6.41373348 9.073880196 0.53969312
		 -6.51064205 9.20960903 0.51327878 -6.59806538 9.33205223 0.43662074 -6.66744375 9.42922211 0.31722361
		 -6.71198893 9.49161148 0.16677439 -6.72733831 9.51310921 3.0344626e-08 -6.84730148 9.3301754 -0.15022023
		 -6.80618858 9.27470112 -0.28573585 -6.74215508 9.18829727 -0.39328176 -6.6614666 9.079421043 -0.4623301
		 -6.57202339 8.95873165 -0.48612279 -6.48257923 8.83804035 -0.46233001 -6.40189219 8.72916603 -0.39328152
		 -6.33785772 8.64276218 -0.28573579 -6.29674482 8.587286 -0.15022017 -6.28257942 8.56817245 7.1273804e-10
		 -6.29674482 8.587286 0.15022013 -6.3378582 8.64276218 0.2857357 -6.40189219 8.72916603 0.3932814
		 -6.48257923 8.83804035 0.4623301 -6.57202339 8.95873165 0.48612258 -6.6614666 9.079421043 0.46232995
		 -6.7421546 9.18829727 0.39328128 -6.80618858 9.27470112 0.28573552 -6.84730101 9.3301754 0.1502201
		 -6.86146688 9.34929085 -1.2400283e-08 -3.61671162 11.0075817108 -0.15022022 -3.59499049 10.94203854 -0.28573588
		 -3.56115651 10.83995438 -0.39328167 -3.51852012 10.71131802 -0.46233004 -3.47126293 10.56872654 -0.48612273
		 -3.42400265 10.42613411 -0.4623301 -3.38136864 10.29749966 -0.39328155 -3.34753609 10.1954155 -0.28573576
		 -3.32581258 10.12987137 -0.15022017 -3.318326 10.10728836 -2.8635407e-09 -3.32581115 10.12987328 0.15022011
		 -3.34753418 10.1954155 0.28573567 -3.3813684 10.29749966 0.3932814 -3.42400169 10.42613411 0.46233001
		 -3.47126198 10.56872654 0.48612258 -3.51852298 10.71131992 0.46232989 -3.56115532 10.83995628 0.39328125
		 -3.59498906 10.94203854 0.28573555 -3.61671162 11.0075817108 0.15022008 -3.62419677 11.030163765 2.3362505e-08
		 -3.82659936 10.98977947 -0.16677442 -3.80119681 10.91745377 -0.31722391 -3.76163054 10.80480003 -0.4366211
		 -3.71177483 10.66285133 -0.5132789 -3.65650868 10.50550079 -0.53969324 -3.6012435 10.34815216 -0.5132789
		 -3.55138922 10.20620346 -0.43662101 -3.51182127 10.093550682 -0.31722385 -3.48641968 10.021224022 -0.16677439
		 -3.47766519 9.9963026 5.1802299e-08 -3.48642063 10.021225929 0.16677439 -3.51182127 10.093550682 0.31722367
		 -3.55138946 10.20620346 0.43662095 -3.6012454 10.34815216 0.51327884 -3.65650964 10.50550175 0.53969306
		 -3.71177435 10.66285324 0.51327872 -3.76163125 10.80480099 0.43662068 -3.8011961 10.91745281 0.31722364
		 -3.82659936 10.98977947 0.16677439 -3.83535242 11.014701843 3.6305092e-08 -4.083019257 10.94557381 -0.18175359
		 -4.053597927 10.86738205 -0.34571597 -4.0077738762 10.74559784 -0.47583699 -3.95003295 10.59213829 -0.55938005
		 -3.88602471 10.42202759 -0.58816671 -3.82201743 10.25191784 -0.55938005 -3.76427555 10.098459244 -0.47583693
		 -3.71845222 9.97667313 -0.3457157 -3.68903041 9.89848423 -0.18175356 -3.67889214 9.87153912 6.7466872e-09
		 -3.68903112 9.89848423 0.18175344 -3.71845222 9.97667313 0.34571582 -3.76427603 10.098459244 0.47583672
		 -3.82201743 10.25191784 0.55937982 -3.88602424 10.42202854 0.58816659 -3.95003152 10.59213734 0.55937964
		 -4.007774353 10.74559689 0.47583678 -4.053596973 10.86738205 0.34571567 -4.083019257 10.94557285 0.18175325
		 -4.093156815 10.97251606 1.9783157e-09 -4.30497694 10.80978012 -0.16677442 -4.27639961 10.73864841 -0.31722391
		 -4.23189068 10.62785625 -0.4366211 -4.17580795 10.48825169 -0.5132789 -4.11363792 10.33349895 -0.53969324
		 -4.051467896 10.17874622 -0.5132789 -3.99538445 10.039140701 -0.43662098 -3.95087457 9.92834949 -0.31722385
		 -3.92229915 9.85721684 -0.16677435 -3.91245127 9.83270645 2.9264924e-09 -3.92229915 9.85721684 0.16677439
		 -3.95087552 9.92835045 0.31722382 -3.99538422 10.039140701 0.43662086 -4.051468372 10.17874622 0.51327884
		 -4.11363697 10.33349895 0.53969324 -4.17580795 10.48825073 0.51327878 -4.23189163 10.62785625 0.43662071
		 -4.27640057 10.73864841 0.31722358 -4.30497694 10.80978012 0.16677439 -4.31482458 10.83429241 5.8954857e-08
		 -4.45735073 10.64412498 -0.13587007 -4.43304539 10.58659267 -0.2584402;
	setAttr ".vt[1162:1327]" -4.39519119 10.4969902 -0.35571235 -4.34749031 10.38408279 -0.41816503
		 -4.29461384 10.25892448 -0.43968463 -4.2417388 10.13376427 -0.41816503 -4.19403791 10.020856857 -0.35571229
		 -4.15618324 9.93125534 -0.25844011 -4.13187885 9.87372398 -0.13587001 -4.12350464 9.85390282 2.7005461e-08
		 -4.13187885 9.87372398 0.13586992 -4.15618324 9.93125534 0.25844005 -4.19403791 10.020856857 0.35571221
		 -4.24173737 10.13376427 0.41816476 -4.29461575 10.25892448 0.43968436 -4.34749079 10.38408279 0.41816506
		 -4.39519072 10.4969902 0.35571209 -4.43304586 10.58659458 0.25844005 -4.45735073 10.64412498 0.13586989
		 -4.46572685 10.66394806 4.6078949e-08 -4.68234444 10.65035439 -0.16677442 -4.65126514 10.5802784 -0.31722391
		 -4.60285711 10.47113419 -0.4366211 -4.5418601 10.33360481 -0.5132789 -4.47424364 10.18115234 -0.5396933
		 -4.40662766 10.028700829 -0.5132789 -4.34563017 9.89117146 -0.43662098 -4.29722214 9.78202724 -0.31722385
		 -4.26614189 9.7119503 -0.16677436 -4.25543308 9.68780613 7.4452061e-08 -4.26614237 9.71195221 0.16677429
		 -4.29722214 9.78202724 0.31722367 -4.34563065 9.89117146 0.43662098 -4.40662861 10.028699875 0.51327878
		 -4.47424316 10.18115234 0.53969318 -4.54185963 10.33360481 0.51327878 -4.60285664 10.47113419 0.4366208
		 -4.65126371 10.58027744 0.31722358 -4.68234444 10.65035439 0.16677433 -4.69305468 10.67449951 1.6039515e-08
		 -4.93442917 10.58587646 -0.18175359 -4.89887667 10.51027489 -0.34571597 -4.84350443 10.39252472 -0.47583702
		 -4.77372885 10.24414921 -0.55937999 -4.69638395 10.079673767 -0.58816677 -4.61903763 9.91519737 -0.55938005
		 -4.54926252 9.76682377 -0.47583693 -4.49388885 9.64907265 -0.3457157 -4.45833778 9.57347298 -0.18175356
		 -4.44608688 9.5474205 4.3701565e-08 -4.45833874 9.57347202 0.18175344 -4.49388933 9.64907074 0.34571579
		 -4.54926348 9.76682377 0.47583684 -4.61903667 9.91519928 0.55937988 -4.69638252 10.079673767 0.58816665
		 -4.77372885 10.24414921 0.55937952 -4.84350395 10.39252472 0.47583675 -4.89887667 10.51027489 0.34571576
		 -4.93442869 10.58587551 0.18175328 -4.94667912 10.61192608 3.0588545e-08 -5.14487076 10.43284702 -0.16677442
		 -5.11072159 10.3642149 -0.31722391 -5.057535172 10.2573185 -0.4366211 -4.99051619 10.12261963 -0.5132789
		 -4.91622448 9.97330856 -0.5396933 -4.8419323 9.82399559 -0.5132789 -4.77491283 9.68929768 -0.43662098
		 -4.72172689 9.58240032 -0.31722385 -4.6875782 9.5137682 -0.16677436 -4.67581129 9.49011993 3.1536718e-08
		 -4.6875782 9.5137682 0.16677445 -4.72172689 9.58240032 0.31722373 -4.77491283 9.68929768 0.43662089
		 -4.84193277 9.82399559 0.51327878 -4.91622448 9.97330856 0.53969312 -4.99051523 10.12261963 0.51327872
		 -5.057535648 10.2573185 0.4366208 -5.11072206 10.36421394 0.31722373 -5.14487076 10.43284702 0.16677448
		 -5.15663719 10.45649433 -4.8333504e-08 -5.30394888 10.29477215 -0.15022023 -5.27209902 10.2335062 -0.28573585
		 -5.22249222 10.13808632 -0.39328167 -5.15998411 10.017848015 -0.4623301 -5.09069252 9.88456154 -0.48612282
		 -5.021401882 9.75127697 -0.46233004 -4.9588933 9.63103867 -0.39328152 -4.90928698 9.53561783 -0.28573579
		 -4.87743807 9.47435284 -0.15022016 -4.86646318 9.45324326 4.3628084e-08 -4.87743759 9.47435284 0.15022004
		 -4.90928793 9.53561783 0.28573564 -4.9588933 9.63103867 0.39328128 -5.021401882 9.75127697 0.46233025
		 -5.090692043 9.88456154 0.48612243 -5.15998411 10.017848015 0.46232983 -5.22249222 10.13808632 0.39328113
		 -5.27209759 10.2335062 0.28573552 -5.30394888 10.29477215 0.15022014 -5.31492233 10.31587982 -2.0744933e-08
		 10.30730724 5.20266056 -0.15022022 10.2454586 5.17195749 -0.28573588 10.14912987 5.12413931 -0.3932817
		 10.027748108 5.063882351 -0.46233004 9.8931942 4.997087 -0.48612282 9.75864029 4.93029165 -0.46233001
		 9.63725948 4.8700366 -0.39328152 9.54092979 4.82221603 -0.28573579 9.47908211 4.79151487 -0.15022017
		 9.4577713 4.78093624 -2.6705397e-08 9.47908115 4.7915144 0.15022022 9.54092979 4.82221603 0.2857357
		 9.63725948 4.8700366 0.3932814 9.75864029 4.93029165 0.46232998 9.89319515 4.99708748 0.48612255
		 10.027748108 5.063881874 0.46232995 10.14912987 5.12413931 0.39328134 10.2454586 5.17195797 0.28573549
		 10.30730724 5.20266056 0.15022014 10.3286171 5.21323967 -2.5513305e-08 10.2602396 5.40797424 -0.16677442
		 10.19219017 5.3726778 -0.31722391 10.086202621 5.31770086 -0.4366211 9.95265102 5.24842596 -0.5132789
		 9.80460835 5.17163467 -0.53969336 9.65656662 5.094842911 -0.5132789 9.52301502 5.025568962 -0.43662107
		 9.41702747 4.97059155 -0.31722385 9.34897995 4.93529415 -0.16677436 9.32553101 4.92313099 2.4384162e-08
		 9.34897995 4.93529415 0.16677442 9.41702747 4.97059155 0.31722379 9.52301502 5.025567532 0.43662089
		 9.65656757 5.094842434 0.51327872 9.8046093 5.17163467 0.53969324 9.95265198 5.24842596 0.51327872
		 10.086202621 5.31770134 0.4366208 10.19219017 5.37267685 0.31722358 10.2602396 5.40797472 0.16677439
		 10.28368664 5.42013788 -8.9944372e-09 10.18050003 5.65565777 -0.18175358 10.10720921 5.61555958 -0.34571597
		 9.9930563 5.55310535 -0.47583699 9.84921551 5.47440815 -0.55938005 9.68976498 5.38717175 -0.58816677
		 9.5303154 5.29993391 -0.55938005 9.38647366 5.22123718 -0.47583693 9.27232075 5.15878248 -0.3457157
		 9.19902992 5.11868525 -0.18175352 9.17377472 5.10486698 -9.942613e-09 9.19902992 5.11868477 0.18175352
		 9.27232075 5.15878296 0.3457157 9.3864727 5.22123718 0.47583672 9.5303154 5.29993391 0.55937982
		 9.68976498 5.38717079 0.58816701 9.84921551 5.47440815 0.55937952 9.99305534 5.55310488 0.47583666
		 10.10720921 5.6155591 0.34571582 10.18050003 5.65565681 0.18175335 10.20575333 5.6694746 -4.0586998e-10
		 10.01491642 5.85637093 -0.16677442 9.94849682 5.81809855 -0.31722391 9.84504318 5.75848818 -0.4366211
		 9.71468544 5.68337584 -0.5132789 9.57018471 5.60011292 -0.5396933 9.42568207 5.51685047 -0.5132789
		 9.29532433 5.44173765 -0.43662107 9.19187164 5.38212729 -0.31722385;
	setAttr ".vt[1328:1493]" 9.12545109 5.34385538 -0.16677439 9.10256386 5.3306675 5.423067e-10
		 9.12545109 5.34385538 0.16677429 9.19187164 5.38212729 0.3172237 9.29532433 5.44173765 0.4366208
		 9.42568207 5.51684999 0.51327872 9.57018375 5.60011292 0.5396933 9.71468544 5.68337536 0.51327872
		 9.84504223 5.75848961 0.4366208 9.94849396 5.81809807 0.31722358 10.01491642 5.85637093 0.16677442
		 10.03780365 5.86955881 5.423067e-10 9.82952309 5.98400211 -0.13587004 9.77597141 5.95186806 -0.2584402
		 9.69256306 5.9018178 -0.35571232 9.58746433 5.83875132 -0.41816497 9.47095966 5.76884079 -0.43968463
		 9.35445595 5.69893026 -0.41816503 9.24935341 5.63586283 -0.35571229 9.16594696 5.58581352 -0.25844014
		 9.11239624 5.55367899 -0.13586999 9.09394455 5.54260731 2.9389646e-08 9.11239624 5.55367899 0.13586989
		 9.16594791 5.585814 0.25844008 9.24935436 5.63586283 0.35571229 9.35445499 5.69893074 0.41816479
		 9.47095966 5.76884174 0.43968442 9.58746433 5.83875132 0.41816497 9.69256306 5.90181684 0.35571209
		 9.77597141 5.95186758 0.25843999 9.82952309 5.98400211 0.13586986 9.84797478 5.9950738 2.7005461e-08
		 9.80412865 6.20764399 -0.16677445 9.73910809 6.16704178 -0.31722391 9.63783169 6.10380173 -0.4366211
		 9.51021957 6.024115562 -0.5132789 9.36876011 5.93578291 -0.53969336 9.22730064 5.84745073 -0.5132789
		 9.099687576 5.76776409 -0.43662107 8.99841309 5.70452452 -0.31722385 8.93339062 5.66392231 -0.16677436
		 8.91098499 5.64993143 -7.8023437e-09 8.93339157 5.66392231 0.16677433 8.99841213 5.70452452 0.31722379
		 9.099686623 5.76776505 0.43662083 9.22730064 5.84745073 0.51327866 9.36876011 5.93578291 0.53969312
		 9.51021957 6.024115562 0.51327872 9.63783264 6.10380173 0.43662098 9.73910713 6.16704082 0.31722367
		 9.80413055 6.20764351 0.16677436 9.82653522 6.22163439 -6.4978622e-10 9.7049284 6.44819212 -0.18175359
		 9.63506126 6.40238571 -0.34571597 9.52624321 6.33104372 -0.47583699 9.38912201 6.24114561 -0.55937999
		 9.23712349 6.14149237 -0.58816677 9.085124016 6.0418396 -0.55938005 8.94800377 5.95194149 -0.47583693
		 8.83918476 5.88059807 -0.34571576 8.76931858 5.83479357 -0.18175356 8.74524307 5.8190093 -5.1742415e-09
		 8.76931858 5.83479357 0.18175335 8.83918476 5.88059807 0.3457157 8.94800282 5.95194149 0.47583672
		 9.085124016 6.0418396 0.55937988 9.23712349 6.14149237 0.58816671 9.38912296 6.24114561 0.55937976
		 9.52624226 6.33104324 0.47583699 9.63506126 6.40238571 0.34571576 9.70492744 6.44819069 0.18175352
		 9.729002 6.46397543 -1.5979629e-09 9.52389145 6.63508797 -0.16677442 9.46072865 6.59165001 -0.31722391
		 9.36234951 6.52399349 -0.4366211 9.2383852 6.43874216 -0.5132789 9.10097027 6.34424019 -0.53969336
		 8.96355438 6.24973869 -0.5132789 8.83959007 6.16448736 -0.43662107 8.74121094 6.096830845 -0.31722385
		 8.67804813 6.053392887 -0.16677436 8.65628338 6.038425446 -6.4978734e-10 8.67804813 6.053392887 0.16677439
		 8.74121189 6.096830845 0.31722379 8.83959007 6.16448736 0.43662089 8.96355438 6.24973869 0.51327872
		 9.10097027 6.34424019 0.53969324 9.2383852 6.43874216 0.51327872 9.36234951 6.52399349 0.43662101
		 9.46072769 6.59164906 0.31722379 9.5238924 6.63508797 0.16677442 9.54565716 6.65005541 -1.7339088e-08
		 9.36486816 6.77322197 -0.15022023 9.30867767 6.73309326 -0.28573588 9.22115803 6.67059183 -0.3932817
		 9.11087799 6.5918355 -0.46233004 8.98862934 6.50453329 -0.48612282 8.86638165 6.41723013 -0.46233001
		 8.75610065 6.33847427 -0.39328152 8.66858196 6.27597332 -0.28573579 8.61239052 6.23584414 -0.15022017
		 8.59302998 6.22201729 -1.3592377e-08 8.61239052 6.23584414 0.15022005 8.66858292 6.27597284 0.28573564
		 8.75610065 6.33847427 0.39328116 8.86638165 6.41723013 0.46233013 8.98862934 6.50453329 0.4861227
		 9.11087799 6.5918355 0.46232995 9.22115803 6.67059183 0.39328134 9.30867577 6.73309326 0.28573549
		 9.36486816 6.77322197 0.15022013 9.38422871 6.78704834 -3.5050046e-08 -6.84100342 9.33483982 -0.15022023
		 -6.79992819 9.27933693 -0.28573585 -6.73595333 9.19288921 -0.3932817 -6.65534019 9.083957672 -0.4623301
		 -6.56597757 8.9632082 -0.48612282 -6.47661686 8.84245682 -0.46233001 -6.39600325 8.73352623 -0.39328152
		 -6.33202839 8.64707851 -0.28573582 -6.29095316 8.59157562 -0.15022017 -6.27680063 8.57245159 7.1273804e-10
		 -6.29095316 8.59157562 0.1502201 -6.33202839 8.64707851 0.2857357 -6.39600325 8.73352718 0.39328134
		 -6.47661686 8.84245682 0.46233016 -6.56597853 8.9632082 0.48612264 -6.65534019 9.083958626 0.46232989
		 -6.73595333 9.19288921 0.39328125 -6.79992819 9.27933693 0.28573549 -6.84100342 9.33483982 0.15022011
		 -6.85515642 9.35396481 -1.7168656e-08 -7.034878731 9.25248814 -0.16677442 -6.98819208 9.19168663 -0.31722391
		 -6.91547585 9.096985817 -0.4366211 -6.82384968 8.97765636 -0.5132789 -6.7222805 8.84537888 -0.53969336
		 -6.6207118 8.71310139 -0.5132789 -6.52908516 8.59377193 -0.43662101 -6.45636892 8.49907207 -0.31722385
		 -6.40968275 8.43827057 -0.16677436 -6.3935957 8.4173193 4.1185841e-09 -6.40968275 8.43827057 0.16677429
		 -6.45636892 8.49907207 0.31722367 -6.52908516 8.59377289 0.43662083 -6.6207118 8.71310139 0.51327872
		 -6.7222805 8.84537888 0.53969312 -6.82384968 8.97765636 0.51327878 -6.91547585 9.096985817 0.43662074
		 -6.9881916 9.19168568 0.31722364 -7.034878731 9.25248814 0.16677439 -7.050965786 9.27343845 6.5027699e-09
		 -7.26473379 9.13053989 -0.18175359 -7.21240091 9.065418243 -0.34571597 -7.13089228 8.96399212 -0.47583702
		 -7.02818346 8.8361845 -0.55938005 -6.91433096 8.69450855 -0.58816677 -6.8004775 8.55283356 -0.55938011
		 -6.69776869 8.42502594 -0.47583699 -6.6162591 8.32359791 -0.34571576 -6.56392717 8.25847721 -0.18175356
		 -6.54589415 8.23603725 -1.5903078e-08 -6.56392717 8.25847721 0.18175356 -6.6162591 8.32359791 0.34571576
		 -6.69776869 8.42502594 0.47583666 -6.8004775 8.55283356 0.5593797;
	setAttr ".vt[1494:1659]" -6.91433048 8.69450855 0.58816665 -7.02818346 8.8361845 0.55937952
		 -7.1308918 8.96399021 0.47583672 -7.21240091 9.065418243 0.34571579 -7.26473331 9.13053989 0.18175335
		 -7.28276634 9.1529789 -9.942613e-09 -7.43329 8.93231678 -0.16677442 -7.38396072 8.87363911 -0.31722391
		 -7.30712748 8.78224564 -0.4366211 -7.21031427 8.66708565 -0.5132789 -7.10299492 8.53942966 -0.5396933
		 -6.99567604 8.41177273 -0.51327884 -6.89886189 8.29661179 -0.43662107 -6.82203007 8.20521927 -0.31722382
		 -6.77270031 8.1465416 -0.16677436 -6.7557025 8.12632275 3.1536722e-08 -6.77270031 8.1465416 0.16677435
		 -6.82202959 8.20521927 0.31722364 -6.89886236 8.29661179 0.43662086 -6.99567604 8.41177273 0.51327872
		 -7.10299492 8.53942966 0.5396933 -7.2103138 8.6670866 0.51327884 -7.30712843 8.78224564 0.43662068
		 -7.38395977 8.87363815 0.31722364 -7.43329 8.93231678 0.16677439 -7.4502883 8.95253563 1.1271143e-08
		 -7.52642155 8.72741127 -0.13587007 -7.48539257 8.68032551 -0.2584402 -7.42148733 8.60699081 -0.35571235
		 -7.34096336 8.51458359 -0.41816497 -7.25170088 8.41214752 -0.43968463 -7.16243887 8.30971241 -0.41816497
		 -7.081913948 8.21730423 -0.35571229 -7.018010139 8.14396954 -0.25844011 -6.97698069 8.096884727 -0.13587001
		 -6.96284342 8.080661774 2.4621274e-08 -6.97698069 8.096884727 0.13586994 -7.018010139 8.14396954 0.25844002
		 -7.081913948 8.21730423 0.35571221 -7.16243887 8.30971241 0.41816482 -7.25170088 8.41214752 0.43968442
		 -7.34096336 8.51458263 0.41816494 -7.42148733 8.60699081 0.35571212 -7.48539162 8.68032551 0.25843993
		 -7.52642155 8.72741127 0.13586989 -7.54055929 8.74363422 4.8463136e-08 -7.74214125 8.66318226 -0.16677442
		 -7.690763 8.60629177 -0.31722391 -7.61073923 8.51767921 -0.43662107 -7.50990343 8.40602207 -0.5132789
		 -7.39812756 8.2822504 -0.53969336 -7.2863512 8.15847874 -0.5132789 -7.18551588 8.046821594 -0.43662107
		 -7.10549212 7.95820999 -0.31722385 -7.054113865 7.9013176 -0.16677436 -7.036409855 7.88171387 -1.6146993e-08
		 -7.054113865 7.9013176 0.16677427 -7.10549212 7.95820999 0.3172237 -7.18551588 8.046821594 0.43662089
		 -7.2863512 8.15847874 0.51327872 -7.39812756 8.2822504 0.53969324 -7.50990343 8.40602207 0.51327878
		 -7.61073923 8.51767921 0.4366208 -7.69076252 8.60628986 0.31722364 -7.74214125 8.66318226 0.16677445
		 -7.75984478 8.68278599 1.7231606e-08 -7.9615593 8.52332497 -0.18175359 -7.90420914 8.46257591 -0.34571597
		 -7.81488466 8.36795902 -0.47583699 -7.70232773 8.24873352 -0.55937999 -7.57755804 8.11657047 -0.58816677
		 -7.45278788 7.9844079 -0.55938005 -7.34023142 7.8651824 -0.47583693 -7.25090647 7.77056456 -0.3457157
		 -7.19355631 7.70981693 -0.18175356 -7.17379475 7.68888378 -2.7824008e-08 -7.19355631 7.70981693 0.18175356
		 -7.25090647 7.77056456 0.34571576 -7.34023142 7.8651824 0.47583675 -7.45278788 7.9844079 0.55937976
		 -7.57755804 8.11657047 0.58816653 -7.70232773 8.24873352 0.55937952 -7.81488419 8.36795807 0.47583672
		 -7.90420914 8.46257591 0.34571582 -7.96155882 8.52332306 0.18175338 -7.98132086 8.54425621 -3.3784474e-08
		 -8.113801 8.31231308 -0.16677442 -8.059957504 8.25774765 -0.31722391 -7.97609329 8.17276096 -0.43662107
		 -7.8704195 8.065672874 -0.5132789 -7.75327873 7.94696474 -0.53969336 -7.63613892 7.82825661 -0.5132789
		 -7.53046465 7.72116804 -0.43662107 -7.44660044 7.63618183 -0.31722385 -7.39275694 7.58161736 -0.16677436
		 -7.37420273 7.56281567 -1.8418802e-09 -7.39275694 7.58161736 0.16677432 -7.44660044 7.63618183 0.31722373
		 -7.53046465 7.72116804 0.43662116 -7.63613892 7.82825661 0.51327872 -7.75327873 7.94696474 0.53969306
		 -7.8704195 8.065672874 0.51327878 -7.97609329 8.17276096 0.43662071 -8.059956551 8.25774765 0.31722355
		 -8.113801 8.31231308 0.16677441 -8.13235474 8.33111477 -3.0339731e-09 -8.22190094 8.13152313 -0.15022023
		 -8.17253876 8.083241463 -0.28573585 -8.095654488 8.0080432892 -0.39328176 -7.99877501 7.91328669 -0.46233004
		 -7.89138222 7.80824757 -0.48612282 -7.78398991 7.7032094 -0.46232998 -7.68711042 7.6084528 -0.39328152
		 -7.61022663 7.53325462 -0.28573579 -7.56086349 7.48497295 -0.15022017 -7.54385519 7.46833754 -1.9552839e-08
		 -7.56086349 7.48497295 0.15022005 -7.61022663 7.53325462 0.28573564 -7.68711042 7.6084528 0.39328122
		 -7.78398991 7.7032094 0.46233022 -7.89138222 7.80824757 0.48612258 -7.99877501 7.91328669 0.46232983
		 -8.095654488 8.0080432892 0.39328134 -8.17253876 8.083241463 0.28573552 -8.22190094 8.13152313 0.15022011
		 -8.23890972 8.14815903 -2.8635407e-09 5.24814987 10.32629681 -0.15022023 5.21666765 10.26484108 -0.28573585
		 5.16763258 10.1691246 -0.39328167 5.10584402 10.048517227 -0.46233004 5.037349701 9.91481972 -0.48612282
		 4.96885633 9.78112221 -0.46233001 4.90706873 9.66051292 -0.39328152 4.85803223 9.5647974 -0.28573579
		 4.82654953 9.50334358 -0.15022017 4.81570196 9.4821682 5.4811098e-09 4.82654953 9.50334263 0.15022007
		 4.8580327 9.5647974 0.28573555 4.90706825 9.66051292 0.3932814 4.96885633 9.78112221 0.46232989
		 5.037349701 9.91481781 0.48612231 5.1058445 10.048517227 0.46232986 5.16763258 10.1691246 0.39328137
		 5.21666765 10.26484299 0.28573561 5.24814987 10.3262949 0.1502202 5.25899792 10.34747028 1.5017854e-08
		 5.088253498 10.46341705 -0.16677442 5.054515839 10.39458084 -0.31722391 5.0019688606 10.28736782 -0.4366211
		 4.93575478 10.15227318 -0.5132789 4.86235666 10.0025196075 -0.53969324 4.7889595 9.85276604 -0.5132789
		 4.72274494 9.71766949 -0.43662101 4.67019796 9.61045647 -0.31722385 4.6364603 9.54162216 -0.16677436
		 4.62483454 9.51790237 4.1073463e-08 4.63646126 9.54162216 0.16677433 4.67019796 9.61045551 0.31722355
		 4.7227459 9.71766949 0.4366208 4.78895855 9.85276604 0.51327872 4.86235762 10.0025205612 0.53969282
		 4.93575525 10.15227318 0.51327842 5.0019683838 10.28736782 0.43662068 5.054516315 10.39457989 0.31722379
		 5.088253975 10.46341705 0.16677427 5.099878788 10.48713493 1.0902276e-07;
	setAttr ".vt[1660:1825]" 4.8769002 10.61518574 -0.18175359 4.84179926 10.5393734 -0.34571597
		 4.78713226 10.42129517 -0.47583693 4.71824455 10.27250576 -0.55937999 4.64188385 10.10757065 -0.58816677
		 4.56552172 9.94263649 -0.55938005 4.49663448 9.79384613 -0.47583693 4.44196606 9.67576885 -0.3457157
		 4.40686512 9.59995651 -0.18175356 4.39477062 9.57383156 4.3701565e-08 4.40686655 9.59995651 0.18175356
		 4.4419651 9.67576885 0.34571555 4.49663401 9.79384899 0.47583672 4.56552076 9.94263649 0.55937982
		 4.64188385 10.10757065 0.58816648 4.71824503 10.27250576 0.55937946 4.78713083 10.42129421 0.47583663
		 4.84180021 10.5393734 0.34571579 4.87689924 10.61518574 0.18175335 4.88899422 10.64130878 4.0125286e-08
		 4.62443352 10.67815685 -0.16677442 4.59377384 10.60789776 -0.31722391 4.54601908 10.49846554 -0.4366211
		 4.4858427 10.36057377 -0.5132789 4.41913939 10.20772076 -0.5396933 4.35243654 10.054867744 -0.5132789
		 4.29226255 9.91697598 -0.43662101 4.24450731 9.80754471 -0.31722385 4.21384621 9.73728561 -0.16677436
		 4.20328093 9.71307468 7.4452061e-08 4.21384573 9.73728561 0.16677441 4.24450636 9.80754662 0.3172237
		 4.29226065 9.91697598 0.43662068 4.35243654 10.054867744 0.5132786 4.41913986 10.20772076 0.53969282
		 4.48584461 10.36057377 0.51327878 4.54601812 10.49846554 0.43662074 4.59377337 10.6078968 0.31722352
		 4.62443352 10.67815685 0.16677448 4.63500023 10.70236683 5.657067e-08 4.3994813 10.67058372 -0.13587007
		 4.37552214 10.61290741 -0.2584402 4.33820343 10.52308273 -0.35571235 4.29117775 10.40989017 -0.41816503
		 4.23905134 10.28441811 -0.4396846 4.18692303 10.15894508 -0.41816503 4.13989639 10.045753479 -0.35571229
		 4.10257912 9.9559269 -0.25844011 4.078619003 9.89825153 -0.13587001 4.070363998 9.87837982 1.7468716e-08
		 4.078619003 9.89825153 0.13586992 4.10258055 9.9559269 0.25844017 4.13989782 10.045753479 0.35571206
		 4.18692303 10.15894508 0.41816494 4.23905134 10.28441811 0.43968433 4.29117775 10.40989017 0.41816476
		 4.33820343 10.52308083 0.35571194 4.37552261 10.61290932 0.25844014 4.3994832 10.67058372 0.13586989
		 4.40773773 10.69045544 4.727104e-08 4.24612093 10.83532619 -0.16677442 4.21797132 10.76402473 -0.31722391
		 4.17412376 10.65296841 -0.4366211 4.11887503 10.51303101 -0.5132789 4.057631969 10.3579092 -0.53969324
		 3.99638796 10.20278835 -0.5132789 3.94113898 10.062849998 -0.43662098 3.89729309 9.95179462 -0.31722385
		 3.86914182 9.88049316 -0.16677435 3.85944152 9.85592365 2.9264924e-09 3.86914206 9.88049412 0.16677436
		 3.8972919 9.95179462 0.31722376 3.94113922 10.062851906 0.43662086 3.99638724 10.20278835 0.51327872
		 4.057631016 10.3579092 0.53969288 4.11887407 10.51303101 0.51327872 4.17412519 10.65296841 0.43662062
		 4.21796942 10.76402378 0.31722373 4.24612236 10.83532715 0.16677433 4.25582123 10.85989475 1.0902276e-07
		 4.023357391 10.96979046 -0.18175359 3.9944036 10.89142323 -0.34571597 3.94930744 10.76936722 -0.47583699
		 3.89248419 10.61556721 -0.55938005 3.82949495 10.4450779 -0.58816671 3.76650643 10.27458763 -0.55938005
		 3.70968175 10.12078571 -0.47583693 3.66458583 9.99872971 -0.3457157 3.63563299 9.92036533 -0.18175356
		 3.62565613 9.89336014 6.7466872e-09 3.63563299 9.92036533 0.18175349 3.66458464 9.99872971 0.34571567
		 3.70968008 10.12078571 0.47583699 3.76650453 10.27458763 0.5593797 3.82949519 10.44507694 0.58816648
		 3.89248443 10.61556721 0.55937952 3.9493084 10.76936626 0.47583666 3.99440408 10.89142418 0.34571579
		 4.023357391 10.96978855 0.18175325 4.033333778 10.99679184 2.10518e-08 3.76667929 11.012462616 -0.16677442
		 3.74170828 10.93998528 -0.31722391 3.70281768 10.8270998 -0.4366211 3.65381074 10.68485641 -0.5132789
		 3.59948802 10.52717781 -0.53969324 3.54516196 10.36949921 -0.5132789 3.49615479 10.22725582 -0.4366211
		 3.45726323 10.11437035 -0.31722385 3.43229318 10.041893005 -0.16677435 3.42368841 10.016919136 -6.4978734e-10
		 3.4322927 10.041893005 0.16677433 3.45726347 10.11437035 0.31722358 3.49615622 10.22725582 0.43662086
		 3.54516172 10.36949921 0.51327866 3.59948707 10.52717781 0.53969312 3.65381002 10.68485641 0.51327878
		 3.70281768 10.8270998 0.43662083 3.74170828 10.93998432 0.31722352 3.76667929 11.012462616 0.16677436
		 3.77528453 11.037435532 7.6836251e-08 3.55668998 11.029010773 -0.15022022 3.53535604 10.96334076 -0.28573585
		 3.50213385 10.86105442 -0.39328167 3.46026921 10.7321682 -0.46233004 3.41386342 10.58929539 -0.48612279
		 3.36745691 10.44642258 -0.4623301 3.32559109 10.3175354 -0.39328164 3.29236698 10.21525002 -0.28573576
		 3.27103782 10.14957905 -0.15022017 3.26368809 10.12695217 1.0249481e-08 3.27103662 10.14958 0.15022023
		 3.29236746 10.21524906 0.28573564 3.32559013 10.3175354 0.3932814 3.36745644 10.44642258 0.46232998
		 3.41386342 10.58929729 0.48612252 3.46027017 10.73216629 0.46232995 3.50213432 10.86105442 0.39328158
		 3.53535795 10.96333981 0.2857357 3.55668855 11.029010773 0.15022001 3.56403828 11.051638603 -4.7935489e-10
		 -0.013832244 11.59173107 -0.15022022 -0.013733323 11.52268219 -0.28573585 -0.013579389 11.41513634 -0.39328158
		 -0.013385325 11.27962303 -0.46233022 -0.013170142 11.12940216 -0.4861227 -0.012954999 10.97918129 -0.46233016
		 -0.012761086 10.84366608 -0.39328152 -0.012606809 10.73612022 -0.28573573 -0.01250808 10.66707134 -0.15022016
		 -0.012474009 10.64328003 1.7402039e-08 -0.012507983 10.66707134 0.15022014 -0.012607133 10.73612022 0.2857357
		 -0.012760819 10.84366608 0.39328134 -0.012955112 10.97918129 0.46233013 -0.013170104 11.12940216 0.48612252
		 -0.013385287 11.27962303 0.46232998 -0.013579255 11.41513634 0.39328134 -0.01373334 11.52268219 0.28573564
		 -0.013832282 11.59173107 0.15022011 -0.013866428 11.61552238 -3.0281676e-08 -0.21873277 11.64057159 -0.16677442
		 -0.217264 11.5639267 -0.31722385 -0.21497658 11.44455051 -0.4366211 -0.21209432 11.29412937 -0.51327878
		 -0.20889948 11.12738609 -0.5396933 -0.20570448 10.96064377 -0.5132789;
	setAttr ".vt[1826:1991]" -0.20282219 10.81022263 -0.43662098 -0.20053478 10.69084549 -0.31722373
		 -0.19906624 10.61420155 -0.16677436 -0.19856016 10.58779144 2.3192069e-08 -0.1990663 10.61420155 0.16677435
		 -0.20053484 10.69084549 0.31722373 -0.20282215 10.81022263 0.43662095 -0.20570442 10.96064377 0.51327872
		 -0.20889935 11.12738609 0.539693 -0.2120944 11.29412937 0.51327866 -0.21497661 11.44455051 0.43662086
		 -0.21726389 11.56392574 0.31722364 -0.21873243 11.64057159 0.16677433 -0.21923868 11.66698074 1.9019746e-08
		 -0.47609422 11.67891121 -0.18175358 -0.47264686 11.595438 -0.34571582 -0.46727768 11.46542931 -0.47583702
		 -0.46051162 11.30160618 -0.55937999 -0.45301148 11.12000751 -0.58816677 -0.44551095 10.9384079 -0.55937994
		 -0.43874493 10.77458477 -0.47583693 -0.43337607 10.64457512 -0.3457157 -0.42992893 10.56110477 -0.18175352
		 -0.42874062 10.532341 2.9396451e-08 -0.42992917 10.56110477 0.18175358 -0.43337604 10.64457512 0.34571567
		 -0.4387455 10.77458477 0.47583684 -0.44551146 10.9384079 0.55937982 -0.45301133 11.12000751 0.58816659
		 -0.4605116 11.30160618 0.55937976 -0.46727699 11.46542835 0.47583678 -0.47264662 11.595438 0.34571567
		 -0.47609413 11.67891026 0.1817535 -0.47728196 11.70767307 -1.9479357e-08 -0.72941637 11.61948013 -0.16677442
		 -0.72455961 11.54297638 -0.31722385 -0.71699578 11.42381668 -0.4366211 -0.70746505 11.2736702 -0.5132789
		 -0.69689918 11.10723114 -0.53969324 -0.68633384 10.94079304 -0.51327884 -0.67680299 10.7906456 -0.43662098
		 -0.66923845 10.67148781 -0.31722373 -0.6643821 10.59498405 -0.16677436 -0.66270882 10.56862164 1.3655328e-08
		 -0.66438234 10.59498405 0.16677442 -0.66923904 10.67148781 0.31722367 -0.67680192 10.7906456 0.43662089
		 -0.68633401 10.94079304 0.5132786 -0.69689924 11.10723114 0.53969318 -0.70746481 11.2736702 0.51327878
		 -0.71699655 11.42381668 0.43662089 -0.72455955 11.54297447 0.31722367 -0.72941649 11.61948013 0.16677435
		 -0.73109007 11.64584064 -7.2062973e-09 -0.92601317 11.50989056 -0.13587004 -0.92095262 11.44764328 -0.2584402
		 -0.91306967 11.35069084 -0.35571235 -0.9031381 11.22852421 -0.41816503 -0.89212918 11.093100548 -0.43968469
		 -0.8811177 10.95767689 -0.41816503 -0.87118584 10.8355093 -0.35571232 -0.86330366 10.73855877 -0.25844014
		 -0.8582437 10.67630959 -0.13587001 -0.85650015 10.6548624 7.7941648e-10 -0.85824293 10.67630959 0.13587004
		 -0.86330366 10.73855877 0.25844002 -0.87118649 10.8355093 0.35571206 -0.8811183 10.95767689 0.41816485
		 -0.89212877 11.093100548 0.43968457 -0.90313804 11.22852421 0.41816479 -0.91307008 11.35069084 0.35571212
		 -0.92095232 11.44764328 0.25843999 -0.92601317 11.50989056 0.13586994 -0.92775708 11.53133774 -6.4189642e-08
		 -1.1377306 11.58628464 -0.16677442 -1.13016629 11.51000023 -0.31722385 -1.11838281 11.39118576 -0.43662107
		 -1.10353577 11.24146938 -0.5132789 -1.087077022 11.075510025 -0.5396933 -1.070619464 10.90955067 -0.5132789
		 -1.055770993 10.7598362 -0.43662098 -1.043988705 10.64102077 -0.31722373 -1.036423683 10.56473732 -0.16677436
		 -1.033816576 10.53845215 -6.4978622e-10 -1.036422849 10.56473732 0.16677441 -1.043987989 10.64102077 0.31722364
		 -1.055771351 10.7598362 0.43662098 -1.070618391 10.90955067 0.51327878 -1.087077737 11.075510025 0.53969306
		 -1.10353589 11.24146938 0.51327872 -1.11838341 11.39118576 0.43662089 -1.1301657 11.50999832 0.31722361
		 -1.1377306 11.58628464 0.16677429 -1.14033747 11.61256981 -2.7471877e-08 -1.39732707 11.60401535 -0.18175358
		 -1.38724577 11.52108192 -0.34571582 -1.37154436 11.39191246 -0.47583711 -1.35175848 11.22914886 -0.55937999
		 -1.32982588 11.048723221 -0.58816677 -1.30789387 10.86829758 -0.55937994 -1.28810811 10.70553207 -0.47583699
		 -1.2724061 10.57636261 -0.3457157 -1.26232588 10.49343014 -0.18175352 -1.25885105 10.46485329 7.8622292e-10
		 -1.26232529 10.49343014 0.18175344 -1.27240658 10.57636261 0.3457157 -1.28810835 10.70553207 0.47583678
		 -1.3078934 10.86829758 0.55937982 -1.329826 11.048723221 0.58816671 -1.35175872 11.22914886 0.55937976
		 -1.37154424 11.39191151 0.47583678 -1.38724554 11.52108192 0.34571567 -1.39732671 11.60401344 0.18175349
		 -1.40080035 11.63259125 -2.1940094e-09 -1.64511454 11.5246067 -0.16677442 -1.63418341 11.44873333 -0.31722382
		 -1.61715794 11.33055401 -0.4366211 -1.59570432 11.18164349 -0.51327884 -1.5719223 11.016573906 -0.5396933
		 -1.5481416 10.85150433 -0.51327884 -1.52668881 10.7025919 -0.43662098 -1.50966251 10.58441448 -0.31722373
		 -1.49873126 10.50854015 -0.16677436 -1.49496555 10.48239517 -6.4978734e-10 -1.49873173 10.50854015 0.16677436
		 -1.50966334 10.58441448 0.31722376 -1.52668798 10.7025919 0.43662089 -1.54814208 10.85150433 0.51327866
		 -1.57192278 11.016573906 0.53969318 -1.5957042 11.18164349 0.51327872 -1.61715746 11.33055401 0.43662086
		 -1.63418305 11.44873142 0.31722361 -1.64511442 11.5246067 0.16677427 -1.64888155 11.55075169 -1.6743041e-08
		 -1.83943391 11.44331074 -0.15022022 -1.82837832 11.37515259 -0.28573585 -1.8111589 11.26899529 -0.39328164
		 -1.78945994 11.13522816 -0.46233016 -1.76540637 10.98694611 -0.4861227 -1.74135435 10.8386631 -0.46233013
		 -1.7196548 10.70489597 -0.39328152 -1.70243609 10.59873867 -0.28573576 -1.69138002 10.53057957 -0.15022017
		 -1.68757033 10.50709629 -5.2477263e-09 -1.69138026 10.53057957 0.1502201 -1.70243633 10.59873867 0.28573564
		 -1.71965611 10.70489597 0.39328143 -1.74135423 10.8386631 0.46232995 -1.76540685 10.98694611 0.4861224
		 -1.78946018 11.13522816 0.46233016 -1.81115794 11.26899529 0.39328134 -1.82837856 11.37515259 0.28573564
		 -1.83943415 11.44331074 0.15022014 -1.84324384 11.46679592 3.2303202e-08 3.56778431 11.025400162 -0.15022022
		 3.54638767 10.95975113 -0.28573585 3.51305962 10.85750008 -0.39328167 3.47106361 10.72865582 -0.46233004
		 3.42451167 10.58582878 -0.48612279 3.37796021 10.44300461 -0.46233025 3.33596492 10.31416035 -0.39328155
		 3.3026371 10.21190929 -0.28573576 3.28124094 10.14626122 -0.15022017 3.27386785 10.12363911 9.0573886e-09
		 3.28124046 10.14625931 0.15022027 3.30263829 10.21190929 0.28573555;
	setAttr ".vt[1992:2157]" 3.33596683 10.31416035 0.39328125 3.37796116 10.44300461 0.46232995
		 3.42451072 10.58582973 0.48612243 3.47106481 10.72865582 0.46232995 3.51305962 10.85750008 0.39328149
		 3.546386 10.95975018 0.28573573 3.56778383 11.025400162 0.1502201 3.57515645 11.048021317 -4.7935489e-10
		 3.38826394 11.13558865 -0.16677442 3.36580253 11.062295914 -0.31722391 3.33081961 10.94813728 -0.4366211
		 3.28674197 10.80429077 -0.5132789 3.23787928 10.64483643 -0.53969336 3.18901491 10.48538113 -0.5132789
		 3.14493585 10.34153461 -0.43662098 3.10995412 10.22737503 -0.31722373 3.087493658 10.1540823 -0.16677436
		 3.07975316 10.1288271 -8.9944372e-09 3.087491751 10.1540823 0.16677436 3.10995173 10.22737694 0.31722382
		 3.14493489 10.34153557 0.43662107 3.18901491 10.48538113 0.51327872 3.23787713 10.64483643 0.53969312
		 3.2867403 10.80429077 0.5132786 3.33082104 10.94813824 0.4366208 3.36580372 11.06229496 0.3172237
		 3.38826132 11.1355896 0.16677426 3.39600134 11.16084576 6.3723228e-08 3.15562153 11.2521286 -0.18175359
		 3.13291502 11.171731 -0.34571597 3.097551584 11.046508789 -0.47583693 3.052992582 10.8887167 -0.55938011
		 3.0035965443 10.71380329 -0.58816659 2.95420051 10.53889084 -0.55937999 2.90964055 10.38110065 -0.47583705
		 2.87427711 10.25587654 -0.3457157 2.85157132 10.17547989 -0.18175352 2.84374666 10.14777374 2.10518e-08
		 2.85157418 10.17547894 0.18175346 2.8742764 10.25587654 0.34571564 2.90963936 10.3810997 0.47583672
		 2.95419979 10.53889084 0.55937982 3.003595829 10.71380329 0.58816653 3.05299139 10.88871574 0.55937964
		 3.097551346 11.046507835 0.47583687 3.13291359 11.171731 0.3457157 3.15561819 11.2521286 0.18175349
		 3.16344523 11.27983379 4.7277844e-08 2.89638042 11.27450085 -0.16677442 2.87718558 11.20028305 -0.31722391
		 2.84728312 11.08468914 -0.43662116 2.80960822 10.93903351 -0.5132789 2.76784444 10.77757454 -0.53969336
		 2.7260797 10.61611557 -0.51327878 2.68840575 10.47045898 -0.43662098 2.65850639 10.35486412 -0.31722373
		 2.63930869 10.28064919 -0.16677436 2.63269377 10.25507736 -6.4978622e-10 2.63930821 10.28064919 0.16677432
		 2.65850639 10.35486412 0.31722373 2.68840551 10.47045898 0.43662098 2.72608113 10.61611462 0.5132786
		 2.76784587 10.77757454 0.539693 2.80960822 10.93903351 0.5132786 2.84728384 11.08468914 0.43662068
		 2.87718439 11.2002821 0.31722346 2.89638281 11.27449799 0.16677436 2.90299582 11.30007076 1.7343996e-09
		 2.67544246 11.23154449 -0.13587007 2.66087461 11.17081261 -0.2584402 2.63819051 11.076223373 -0.35571232
		 2.6096046 10.95703411 -0.41816503 2.57791567 10.82490921 -0.43968457 2.54622722 10.69278717 -0.41816506
		 2.51764226 10.57359505 -0.35571232 2.49495602 10.47900772 -0.25844011 2.48039007 10.41827679 -0.13587001
		 2.47537208 10.39735126 4.3556954e-09 2.4803896 10.41827679 0.13586994 2.49495697 10.47900772 0.25844002
		 2.51764226 10.57359505 0.35571218 2.54622698 10.69278717 0.41816476 2.57791448 10.82490921 0.43968445
		 2.60960293 10.95703411 0.41816494 2.63818979 11.076223373 0.35571209 2.66087437 11.17081165 0.25843993
		 2.67544341 11.23154449 0.13586986 2.68045926 11.25246811 -3.975174e-08 2.49801731 11.37003994 -0.16677442
		 2.48146343 11.29519081 -0.31722385 2.45567894 11.17860985 -0.4366211 2.42319083 11.031710625 -0.5132789
		 2.38717413 10.86887169 -0.53969336 2.35116076 10.70603275 -0.5132789 2.31867194 10.55913448 -0.43662101
		 2.29288769 10.44255257 -0.31722373 2.27633333 10.36770344 -0.16677436 2.27062917 10.34191322 -6.4978622e-10
		 2.27633357 10.36770344 0.16677432 2.29288793 10.44255257 0.31722367 2.31867218 10.55913448 0.43662098
		 2.35116148 10.70603275 0.51327884 2.38717413 10.86887169 0.53969318 2.42319036 11.031708717 0.51327878
		 2.45567894 11.17860985 0.4366208 2.48146248 11.2951889 0.31722352 2.49801755 11.37003994 0.16677433
		 2.50372005 11.39583111 4.5245788e-08 2.25683689 11.46769047 -0.18175358 2.24060273 11.38573837 -0.34571582
		 2.21532011 11.2580986 -0.47583705 2.18346334 11.097260475 -0.55937999 2.14814782 10.91897106 -0.58816689
		 2.11283255 10.74067974 -0.55937994 2.080975294 10.57984257 -0.47583693 2.05569315 10.45220184 -0.3457157
		 2.039460421 10.37025166 -0.18175352 2.033866167 10.34201145 6.7466872e-09 2.039459467 10.37025166 0.18175349
		 2.055691719 10.45220184 0.34571567 2.080975294 10.57984257 0.47583684 2.11283374 10.74067974 0.55937994
		 2.1481483 10.91897106 0.58816659 2.18346357 11.097260475 0.55937976 2.21532202 11.2580986 0.47583678
		 2.24060369 11.38573837 0.34571555 2.25683546 11.46768951 0.18175338 2.26243019 11.49592781 7.8622292e-10
		 1.99663854 11.46935081 -0.16677442 1.9834125 11.39384174 -0.31722385 1.96280897 11.27623558 -0.4366211
		 1.93684554 11.12804317 -0.51327884 1.9080689 10.96377087 -0.5396933 1.87929034 10.79949951 -0.5132789
		 1.85332942 10.65130711 -0.43662098 1.83272564 10.53369999 -0.31722376 1.81949794 10.45819187 -0.16677436
		 1.81493986 10.43217373 -6.4978734e-10 1.81949735 10.45819187 0.16677432 1.83272552 10.53369999 0.31722373
		 1.85332882 10.65130711 0.43662095 1.87929082 10.79949951 0.51327878 1.90806949 10.96377087 0.53969312
		 1.93684709 11.12804317 0.51327872 1.96280897 11.27623558 0.4366208 1.98341215 11.39384174 0.3172237
		 1.99663985 11.46935081 0.16677427 2.0011966228 11.49536896 -3.581653e-08 1.7866689 11.45257568 -0.15022023
		 1.77596068 11.38436127 -0.28573585 1.75928402 11.27811813 -0.39328155 1.73826754 11.14424229 -0.46233016
		 1.71497393 10.99583721 -0.4861227 1.69167817 10.84743404 -0.46233013 1.67066455 10.7135582 -0.39328152
		 1.65398681 10.60731411 -0.28573576 1.64327955 10.53910065 -0.15022017 1.63959002 10.51559734 -7.631912e-09
		 1.64327896 10.53910065 0.15022013 1.65398693 10.60731411 0.2857357 1.67066371 10.7135582 0.39328152
		 1.69167852 10.84743404 0.46233004 1.71497309 10.99583721 0.48612255 1.73826838 11.14424229 0.4623301
		 1.75928295 11.27811813 0.39328149 1.77596009 11.38436127 0.28573567;
	setAttr ".vt[2158:2323]" 1.78666842 11.45257568 0.1502201 1.79035807 11.47607899 -1.4188423e-08
		 11.50564098 -0.0990403 -0.15022023 11.43660069 -0.097922213 -0.28573585 11.32907009 -0.096180879 -0.39328158
		 11.19357204 -0.09398666 -0.46233022 11.043370247 -0.091554262 -0.4861227 10.8931694 -0.089122012 -0.46233016
		 10.75767231 -0.086927794 -0.39328152 10.65014172 -0.085186459 -0.28573573 10.58110142 -0.084068447 -0.1502202
		 10.55731201 -0.083683163 -1.5976562e-08 10.58110142 -0.084068447 0.15022013 10.65014172 -0.085186459 0.28573564
		 10.75767231 -0.086927794 0.3932814 10.8931694 -0.089122012 0.46233001 11.043370247 -0.091554336 0.48612258
		 11.19357204 -0.09398666 0.46233001 11.32907009 -0.096180879 0.39328137 11.43660069 -0.097922213 0.28573564
		 11.50564098 -0.0990403 0.1502201 11.52942848 -0.09942551 3.0969238e-09 11.55808353 0.10496756 -0.16677445
		 11.48142624 0.10484993 -0.31722385 11.36202717 0.10466675 -0.4366211 11.21157837 0.10443596 -0.51327884
		 11.044804573 0.10418007 -0.5396933 10.87803268 0.10392418 -0.51327884 10.72758293 0.10369331 -0.43662101
		 10.60818481 0.10351013 -0.31722373 10.53152752 0.10339249 -0.16677436 10.50511265 0.10335197 -2.687583e-08
		 10.53152752 0.10339249 0.16677436 10.60818481 0.10351013 0.31722373 10.72758293 0.10369331 0.43662086
		 10.87803268 0.10392418 0.51327872 11.044804573 0.10418007 0.53969306 11.21157837 0.10443596 0.51327872
		 11.36202717 0.10466675 0.43662086 11.48142433 0.10484993 0.31722364 11.55808353 0.10496756 0.16677433
		 11.58449841 0.10500809 -7.8023445e-09 11.6009531 0.36161223 -0.18175358 11.51743317 0.3596364 -0.34571582
		 11.38735008 0.35655916 -0.47583702 11.22343254 0.35268143 -0.55937999 11.041729927 0.34838304 -0.58816683
		 10.86002731 0.34408447 -0.55937994 10.69610977 0.34020692 -0.47583693 10.56602573 0.3371295 -0.3457157
		 10.4825058 0.33515382 -0.1817535 10.45372677 0.33447295 -4.0586998e-10 10.4825058 0.33515382 0.18175349
		 10.56602573 0.3371295 0.3457157 10.69610977 0.34020692 0.47583678 10.86002731 0.34408447 0.55937976
		 11.041729927 0.34838304 0.58816665 11.22343254 0.35268143 0.55937976 11.38734818 0.35655916 0.47583678
		 11.51743317 0.3596364 0.34571567 11.60095215 0.36161223 0.18175343 11.62973118 0.36229309 -1.9479357e-08
		 11.54599571 0.61594272 -0.16677441 11.46941757 0.61243528 -0.31722385 11.35014534 0.60697234 -0.4366211
		 11.1998539 0.60008883 -0.51327884 11.033254623 0.59245819 -0.5396933 10.86665535 0.58482772 -0.51327884
		 10.71636391 0.57794404 -0.43662101 10.59709072 0.57248122 -0.31722373 10.52051258 0.56897384 -0.16677436
		 10.49412632 0.56776518 -1.7339087e-08 10.52051258 0.56897384 0.16677433 10.59709072 0.57248122 0.3172237
		 10.71636391 0.57794404 0.43662089 10.86665535 0.58482772 0.51327866 11.033254623 0.59245819 0.53969312
		 11.1998539 0.60008883 0.51327866 11.35014534 0.60697234 0.43662086 11.46941662 0.61243516 0.31722364
		 11.54599571 0.61594272 0.16677433 11.57238293 0.6171512 -7.8023437e-09 11.43988895 0.8144412 -0.13587002
		 11.37756062 0.81047839 -0.25844017 11.2804842 0.80430603 -0.35571235 11.15816307 0.79652846 -0.41816503
		 11.022565842 0.78790694 -0.43968463 10.88696861 0.77928561 -0.41816503 10.76464558 0.77150786 -0.35571232
		 10.66757107 0.76533568 -0.25844014 10.60524273 0.7613728 -0.13587002 10.58376789 0.76000732 -4.2135927e-08
		 10.60524273 0.7613728 0.13586999 10.66757107 0.76533568 0.25844011 10.76464558 0.77150786 0.35571218
		 10.88696861 0.77928561 0.41816494 11.022565842 0.78790694 0.43968445 11.15816307 0.79652846 0.41816482
		 11.2804842 0.80430603 0.35571209 11.37756062 0.81047839 0.25844002 11.43988895 0.8144412 0.13586999
		 11.46136379 0.81580675 -4.2135927e-08 11.52000141 1.024778843 -0.16677445 11.44359589 1.018559217 -0.31722385
		 11.32459068 1.0088720322 -0.4366211 11.17463875 0.99666548 -0.51327884 11.0084142685 0.98313445 -0.5396933
		 10.84218979 0.96960342 -0.51327884 10.69223785 0.95739686 -0.43662101 10.57323265 0.94770968 -0.31722373
		 10.49682713 0.94148999 -0.16677436 10.47050095 0.93934691 -7.8023437e-09 10.49682713 0.94148999 0.16677433
		 10.57323265 0.94770968 0.3172237 10.69223785 0.95739686 0.43662089 10.84218979 0.96960342 0.51327866
		 11.0084142685 0.98313445 0.53969312 11.17463875 0.99666548 0.51327866 11.32459068 1.0088720322 0.43662086
		 11.44359493 1.018559217 0.31722364 11.52000141 1.024778843 0.16677433 11.54632854 1.026921988 -7.8023437e-09
		 11.54230499 1.28402162 -0.18175359 11.45920658 1.27540362 -0.34571582 11.32978153 1.26198077 -0.47583702
		 11.16669273 1.24506688 -0.55937999 10.98590946 1.22631764 -0.58816683 10.80512428 1.20756841 -0.55937994
		 10.64203739 1.1906544 -0.47583693 10.51260948 1.17723155 -0.34571576 10.42951298 1.16861355 -0.18175356
		 10.40087891 1.16564393 -4.0586998e-10 10.42951298 1.16861355 0.18175349 10.51260948 1.17723155 0.3457157
		 10.64203739 1.1906544 0.47583678 10.80512428 1.20756841 0.55937976 10.98590946 1.22631764 0.58816665
		 11.16669273 1.24506688 0.55937976 11.32978058 1.26198053 0.47583678 11.45920658 1.27540362 0.34571567
		 11.54230309 1.28402162 0.1817535 11.57093716 1.28699124 -3.8552844e-08 11.46727562 1.53317118 -0.16677445
		 11.39122105 1.52357924 -0.31722385 11.27276039 1.50863874 -0.4366211 11.12349319 1.48981309 -0.51327884
		 10.9580307 1.46894491 -0.5396933 10.79256821 1.44807637 -0.51327884 10.64330101 1.4292506 -0.43662101
		 10.52484131 1.41431046 -0.31722373 10.44878674 1.40471816 -0.16677441 10.42257977 1.40141284 -2.687583e-08
		 10.44878674 1.40471816 0.16677435 10.52484131 1.41431046 0.31722367 10.64330101 1.4292506 0.43662086
		 10.79256821 1.44807637 0.51327872 10.9580307 1.46894491 0.53969312 11.12349319 1.48981309 0.51327872
		 11.27276039 1.50863874 0.43662086 11.39121914 1.523579 0.31722364 11.46727562 1.53317118 0.16677433
		 11.49348259 1.53647661 1.127114e-08 11.38941669 1.72889447 -0.15022022 11.32107449 1.71904135 -0.28573582
		 11.21462917 1.70369494 -0.39328164 11.080501556 1.6843574 -0.46233022;
	setAttr ".vt[2324:2489]" 10.93181801 1.66292155 -0.4861227 10.78313351 1.6414851 -0.46233016
		 10.64900494 1.62214768 -0.39328152 10.54256058 1.60680127 -0.28573573 10.47421837 1.59694815 -0.15022017
		 10.45067024 1.5935533 -3.5050046e-08 10.47421837 1.59694815 0.15022011 10.54256058 1.60680127 0.28573567
		 10.64900494 1.62214768 0.3932814 10.78313351 1.6414851 0.46233001 10.93181801 1.66292131 0.48612255
		 11.080501556 1.68435776 0.46233001 11.21462917 1.70369494 0.39328134 11.32107449 1.71904135 0.28573567
		 11.38941669 1.72889423 0.1502201 11.41296482 1.73228931 -1.5976562e-08 1.79441035 11.45135784 -0.15022023
		 1.78365505 11.38315105 -0.28573585 1.76690578 11.27691746 -0.39328158 1.74580002 11.14305687 -0.46233016
		 1.7224046 10.99466896 -0.4861227 1.69900894 10.8462801 -0.46233013 1.67790234 10.71241951 -0.39328152
		 1.66115284 10.60618687 -0.28573576 1.65039861 10.53798008 -0.15022017 1.64669347 10.51447868 1.0249481e-08
		 1.65039825 10.53798008 0.15022013 1.66115248 10.60618687 0.2857357 1.67790222 10.71241951 0.39328152
		 1.69900775 10.8462801 0.46233004 1.7224046 10.99466896 0.48612264 1.74580073 11.14305687 0.46233004
		 1.76690567 11.27691746 0.39328134 1.78365529 11.38315105 0.28573567 1.79440963 11.45135784 0.1502201
		 1.79811442 11.47485828 -5.8891906e-08 1.59973145 11.53179169 -0.16677442 1.58913708 11.45587063 -0.31722385
		 1.57263422 11.33761692 -0.4366211 1.55184114 11.18861198 -0.51327878 1.52879012 11.023438454 -0.5396933
		 1.50574005 10.85826683 -0.51327884 1.48494625 10.70925999 -0.43662101 1.46844518 10.59100819 -0.31722373
		 1.45784998 10.51508713 -0.16677436 1.45419836 10.48892593 -6.4978734e-10 1.45784962 10.51508713 0.16677436
		 1.46844471 10.59100819 0.3172237 1.48494649 10.70925999 0.43662089 1.50574064 10.85826683 0.51327872
		 1.52879012 11.023438454 0.53969312 1.55184031 11.18861198 0.51327872 1.5726341 11.33761692 0.43662095
		 1.58913648 11.45586872 0.31722367 1.59973097 11.53179169 0.16677436 1.60338199 11.55795288 -2.4379267e-09
		 1.35159516 11.61010265 -0.18175358 1.34188092 11.52712536 -0.34571582 1.32675076 11.39788818 -0.47583702
		 1.30768597 11.2350378 -0.55938005 1.28655386 11.054516792 -0.58816677 1.26541972 10.87399578 -0.55937994
		 1.24635553 10.7111454 -0.47583693 1.23122537 10.58190632 -0.3457157 1.22151279 10.49893093 -0.18175352
		 1.21816516 10.47033787 7.8622292e-10 1.22151232 10.49893093 0.18175349 1.23122597 10.58190632 0.3457157
		 1.24635625 10.7111454 0.47583684 1.26542079 10.87399578 0.55937976 1.28655362 11.054516792 0.58816683
		 1.30768657 11.2350378 0.55937964 1.32675076 11.39788723 0.47583687 1.34188044 11.52712536 0.34571564
		 1.35159373 11.6101017 0.18175349 1.35494184 11.63869381 1.3822694e-09 1.092078209 11.59122181 -0.16677442
		 1.084851742 11.51490498 -0.31722385 1.073594809 11.39603901 -0.4366211 1.059409976 11.24625969 -0.51327878
		 1.043687463 11.080229759 -0.5396933 1.027964473 10.91419792 -0.51327884 1.013780355 10.7644186 -0.43662098
		 1.0025229454 10.64555264 -0.31722373 0.99529594 10.56923676 -0.16677436 0.99280512 10.54293919 1.84237e-08
		 0.99529558 10.56923676 0.16677436 1.0025223494 10.64555264 0.31722364 1.013780355 10.7644186 0.4366208
		 1.027963877 10.91419792 0.51327866 1.043687105 11.080229759 0.53969306 1.059410691 11.24625969 0.51327872
		 1.073594689 11.39603901 0.43662086 1.084851742 11.51490402 0.3172237 1.092077971 11.59122181 0.16677433
		 1.094569087 11.61751842 7.6948643e-09 0.88070208 11.51389122 -0.13587007 0.87591672 11.45162106 -0.2584402
		 0.86846471 11.35463524 -0.35571235 0.8590731 11.23242664 -0.41816506 0.84866393 11.096955299 -0.43968469
		 0.83825308 10.96148396 -0.41816506 0.82886225 10.83927345 -0.35571232 0.82140976 10.74228859 -0.25844014
		 0.81662536 10.68001938 -0.13587001 0.81497622 10.65856361 4.3694762e-08 0.81662387 10.68001938 0.13586994
		 0.82141036 10.74228859 0.25844002 0.82886213 10.83927345 0.35571221 0.83825421 10.96148396 0.41816479
		 0.84866381 11.096955299 0.43968457 0.85907394 11.23242664 0.41816482 0.86846453 11.35463524 0.35571209
		 0.87591714 11.45162106 0.25843993 0.88070184 11.51389122 0.13586999 0.88235086 11.53534698 4.3556954e-09
		 0.68362117 11.62260818 -0.16677442 0.67910308 11.5460844 -0.31722385 0.67206711 11.42689323 -0.4366211
		 0.66320086 11.27670574 -0.51327878 0.653373 11.11022186 -0.5396933 0.64354461 10.94373798 -0.5132789
		 0.63467848 10.79354954 -0.43662098 0.62764221 10.67435932 -0.31722373 0.6231246 10.59783554 -0.16677436
		 0.62156832 10.57146645 -5.4181579e-09 0.62312472 10.59783554 0.16677435 0.62764186 10.67435932 0.31722358
		 0.63467836 10.79354954 0.43662095 0.64354521 10.94373798 0.51327872 0.6533727 11.11022186 0.53969306
		 0.66320091 11.27670574 0.5132786 0.67206717 11.42689323 0.43662086 0.67910337 11.5460825 0.31722364
		 0.68362123 11.62260818 0.16677435 0.68517756 11.64897728 -2.0915365e-08 0.4300378 11.68091774 -0.18175358
		 0.42696008 11.59743023 -0.34571582 0.42216626 11.46739864 -0.47583705 0.41612622 11.30354881 -0.55937999
		 0.40943077 11.12191772 -0.58816677 0.40273461 10.94028664 -0.55937994 0.39669409 10.77643585 -0.47583693
		 0.39190111 10.64640236 -0.3457157 0.38882378 10.56291771 -0.18175352 0.38776284 10.53414917 1.5091338e-08
		 0.38882339 10.56291771 0.18175362 0.39190093 10.64640236 0.34571579 0.39669463 10.77643585 0.4758369
		 0.40273461 10.94028664 0.55937982 0.40943074 11.12191772 0.58816659 0.41612664 11.30354881 0.55937964
		 0.42216659 11.46739769 0.47583672 0.42696029 11.59743023 0.34571567 0.43003792 11.68091679 0.1817535
		 0.43109837 11.70968533 -1.6499124e-08 0.17284986 11.64143753 -0.16677442 0.17172065 11.56478882 -0.31722385
		 0.16996214 11.4454031 -0.4366211 0.16774605 11.29497051 -0.5132789 0.16528963 11.12821579 -0.53969324
		 0.16283293 10.96145916 -0.51327884 0.16061692 10.81102657 -0.43662101 0.15885836 10.69164085 -0.31722376
		 0.15772921 10.61499119 -0.16677436 0.15734011 10.58858013 4.1185841e-09;
	setAttr ".vt[2490:2655]" 0.15772919 10.61499119 0.16677433 0.15885818 10.69164085 0.31722367
		 0.16061702 10.81102657 0.43662095 0.16283306 10.96145916 0.5132786 0.16528955 11.12821579 0.53969312
		 0.16774611 11.29497051 0.51327872 0.16996191 11.4454031 0.43662083 0.17172077 11.56478786 0.31722364
		 0.17284991 11.64143753 0.16677433 0.17323896 11.66785049 -1.4954901e-08 -0.031832173 11.59169197 -0.15022022
		 -0.031625181 11.52264309 -0.28573582 -0.031303171 11.41509724 -0.39328158 -0.03089687 11.27958393 -0.46233022
		 -0.030446844 11.12936306 -0.48612273 -0.029996568 10.97914314 -0.46233016 -0.029590383 10.84362793 -0.39328152
		 -0.029268164 10.73608398 -0.28573573 -0.029061286 10.6670351 -0.15022017 -0.028990107 10.64324379 1.0249481e-08
		 -0.029061325 10.6670351 0.15022013 -0.029268108 10.73608398 0.2857357 -0.029590555 10.84362793 0.39328137
		 -0.029996645 10.97914314 0.46233001 -0.03044671 11.12936306 0.48612252 -0.030896891 11.27958393 0.46232998
		 -0.031302944 11.41509724 0.39328134 -0.031625237 11.52264309 0.2857357 -0.031832248 11.59169197 0.15022011
		 -0.031903487 11.61548328 4.885063e-09 9.36942101 6.76684284 -0.15022023 9.3132019 6.72675228 -0.28573588
		 9.22563934 6.66431093 -0.3932817 9.11530685 6.58562946 -0.4623301 8.99299908 6.49841022 -0.48612279
		 8.8706913 6.41119099 -0.46233001 8.76035786 6.33250999 -0.39328152 8.67279625 6.27006769 -0.28573579
		 8.61657715 6.22997761 -0.15022017 8.59720612 6.21616316 -2.6705397e-08 8.61657715 6.22997761 0.15022004
		 8.67279625 6.27006769 0.28573558 8.7603569 6.33250999 0.39328128 8.8706913 6.41119099 0.46232998
		 8.99299908 6.49841022 0.48612252 9.11530685 6.58562946 0.46232995 9.22564125 6.66431093 0.39328134
		 9.3132019 6.72675228 0.28573552 9.36942101 6.76684284 0.15022014 9.38879108 6.78065634 -1.9552839e-08
		 9.29049778 6.96214008 -0.16677442 9.22888279 6.91653252 -0.31722391 9.13291454 6.84549665 -0.43662107
		 9.011989594 6.75598764 -0.5132789 8.87794304 6.65676594 -0.53969336 8.74389553 6.55754375 -0.5132789
		 8.62296963 6.46803427 -0.43662107 8.52700233 6.39699841 -0.31722385 8.46538734 6.35139084 -0.16677436
		 8.44415569 6.33567572 5.3106772e-09 8.46538734 6.35139084 0.16677432 8.52700233 6.39699841 0.31722367
		 8.62296963 6.46803427 0.43662089 8.74389648 6.55754375 0.5132789 8.87794209 6.65676594 0.53969306
		 9.011989594 6.75598764 0.51327872 9.13291454 6.84549665 0.43662083 9.22888088 6.91653204 0.31722358
		 9.29049778 6.96214008 0.16677441 9.31172848 6.97785521 6.5027699e-09 9.17261982 7.19410849 -0.18175359
		 9.1065855 7.14293098 -0.34571597 9.0037384033 7.063222885 -0.47583699 8.87414074 6.96278238 -0.55937999
		 8.73048019 6.85144329 -0.58816677 8.58682156 6.74010515 -0.55938005 8.45722294 6.63966513 -0.47583693
		 8.35437393 6.5599556 -0.3457157 8.28834152 6.50878 -0.18175356 8.26558685 6.49114418 5.5545946e-09
		 8.28834152 6.50877953 0.18175352 8.35437393 6.5599556 0.3457157 8.45722294 6.63966513 0.47583699
		 8.5868206 6.74010515 0.55937988 8.73048115 6.85144329 0.58816671 8.87414169 6.96278238 0.55937964
		 9.0037374496 7.063221455 0.4758366 9.1065855 7.14293098 0.34571582 9.17261887 7.19410753 0.1817535
		 9.19537258 7.21174192 -7.5584277e-09 8.97739697 7.36613226 -0.16677442 8.91785908 7.31784487 -0.31722391
		 8.82512665 7.24263477 -0.43662107 8.7082777 7.14786577 -0.5132789 8.57874966 7.042813301 -0.53969336
		 8.44922161 6.93776083 -0.5132789 8.33237267 6.84299135 -0.43662101 8.23964024 6.76778126 -0.31722385
		 8.18010235 6.71949339 -0.16677436 8.15958691 6.70285463 1.2463236e-08 8.18010235 6.71949339 0.16677433
		 8.23964024 6.76778126 0.3172237 8.33237171 6.84299135 0.43662086 8.44922161 6.93776083 0.5132786
		 8.57874966 7.042813301 0.5396933 8.7082777 7.14786577 0.51327872 8.82512665 7.24263477 0.4366208
		 8.91785812 7.31784439 0.31722355 8.97739697 7.36613226 0.16677439 8.99791241 7.38277149 -6.6102506e-09
		 8.7741642 7.46286154 -0.13587004 8.72636318 7.42266798 -0.2584402 8.65191269 7.36006594 -0.35571232
		 8.5581007 7.28118277 -0.41816497 8.45410824 7.19373941 -0.4396846 8.35011578 7.10629654 -0.41816497
		 8.25630188 7.027411938 -0.35571229 8.18185329 6.96481133 -0.25844014 8.13405228 6.92461729 -0.13587001
		 8.11758327 6.91076851 2.2237089e-08 8.13405228 6.92461729 0.13586992 8.18185329 6.96481133 0.25844008
		 8.25630283 7.027411938 0.35571229 8.35011578 7.10629654 0.41816482 8.45410824 7.19373941 0.43968436
		 8.5581007 7.28118277 0.41816494 8.65191364 7.36006594 0.35571212 8.72636223 7.42266798 0.25843999
		 8.7741642 7.46286154 0.13586992 8.7906332 7.47671032 3.8926391e-08 8.71374702 7.67967939 -0.16677442
		 8.65595913 7.62931204 -0.31722391 8.56595039 7.55086231 -0.4366211 8.45253372 7.45201063 -0.5132789
		 8.32681084 7.34243298 -0.53969336 8.20108795 7.23285532 -0.5132789 8.087672234 7.13400316 -0.43662107
		 7.9976635 7.055553436 -0.31722385 7.93987465 7.0051860809 -0.16677436 7.91996288 6.98783016 -2.8067923e-08
		 7.93987465 7.0051860809 0.16677429 7.9976635 7.055553436 0.31722379 8.087672234 7.13400316 0.4366208
		 8.20108795 7.23285532 0.51327866 8.32680988 7.34243298 0.53969336 8.45253372 7.45201063 0.51327872
		 8.56595039 7.55086231 0.43662095 8.65595818 7.62931156 0.31722364 8.71374798 7.67967939 0.16677433
		 8.7336607 7.69703531 5.423067e-10 8.57777882 7.90152788 -0.18175359 8.5160284 7.84525633 -0.34571597
		 8.4198513 7.75761366 -0.47583699 8.29866219 7.64717579 -0.55938005 8.16431999 7.52475452 -0.58816677
		 8.029979706 7.40233278 -0.55938005 7.90878868 7.29189491 -0.4758369 7.8126111 7.20425177 -0.34571576
		 7.75086164 7.14798117 -0.18175356 7.72958374 7.12859058 -1.5903078e-08 7.75086164 7.14798117 0.18175356
		 7.81261158 7.20425177 0.34571567 7.90878868 7.29189491 0.47583702 8.029979706 7.40233278 0.55937982
		 8.16431999 7.52475452 0.58816671 8.29866123 7.64717579 0.55937964;
	setAttr ".vt[2656:2821]" 8.4198513 7.75761271 0.4758366 8.5160284 7.84525633 0.34571588
		 8.57777786 7.90152693 0.18175352 8.59905624 7.92091751 -2.7900557e-09 8.36948109 8.057466507 -0.16677442
		 8.31397629 8.0045919418 -0.31722391 8.22752476 7.92223883 -0.43662107 8.11859035 7.81846809 -0.5132789
		 7.99783707 7.70343828 -0.53969336 7.87708235 7.58840799 -0.5132789 7.76814842 7.48463726 -0.43662101
		 7.68169689 7.40228415 -0.31722385 7.62619209 7.34941053 -0.16677436 7.60706663 7.33119154 5.4230553e-10
		 7.62619209 7.34941053 0.16677426 7.68169689 7.40228415 0.31722376 7.76814747 7.48463726 0.43662086
		 7.87708187 7.58840799 0.51327872 7.99783707 7.70343828 0.53969312 8.11859035 7.81846809 0.51327878
		 8.22752476 7.92223883 0.4366208 8.31397629 8.0045909882 0.31722358 8.36948204 8.057466507 0.16677441
		 8.38860798 8.075684547 6.5027699e-09 8.19062614 8.1687336 -0.15022023 8.14148235 8.12022972 -0.28573585
		 8.064940453 8.044682503 -0.3932817 7.96849203 7.94948864 -0.4623301 7.86157703 7.84396362 -0.48612279
		 7.75466108 7.73843861 -0.46233001 7.65821218 7.64324474 -0.39328152 7.58167076 7.56769753 -0.28573579
		 7.53252697 7.51919317 -0.15022017 7.51559401 7.50248051 -2.4321212e-08 7.53252697 7.51919317 0.15022005
		 7.58167076 7.56769753 0.28573564 7.65821218 7.64324474 0.39328125 7.75466108 7.73843861 0.46233001
		 7.86157656 7.84396362 0.48612231 7.96849251 7.94948864 0.46233001 8.064940453 8.044682503 0.39328134
		 8.14148235 8.12022972 0.28573552 8.19062614 8.1687336 0.15022017 8.20755959 8.18544579 -1.9552839e-08
		 10.9850769 3.51357555 -0.15022022 10.9191618 3.49301028 -0.28573588 10.81649685 3.46098089 -0.3932817
		 10.68713093 3.4206202 -0.46233004 10.54372692 3.3758831 -0.48612282 10.40032387 3.33114314 -0.46233001
		 10.27095795 3.29078007 -0.39328152 10.16829205 3.25875187 -0.28573579 10.10237694 3.2381897 -0.15022017
		 10.079665184 3.23110104 -2.5550557e-08 10.10237694 3.2381866 0.15022005 10.168293 3.25875378 0.28573564
		 10.27095699 3.29078126 0.39328134 10.40032387 3.33114076 0.46232998 10.54372692 3.37588072 0.48612273
		 10.68713093 3.42061949 0.46232998 10.81649685 3.46098018 0.39328128 10.9191618 3.49301219 0.28573564
		 10.9850769 3.51357412 0.15022004 11.0077905655 3.5206604 -2.5587811e-08 10.97097683 3.72374272 -0.16677442
		 10.89821529 3.69961977 -0.31722391 10.78488159 3.66204405 -0.4366211 10.64207745 3.61469913 -0.5132789
		 10.48377705 3.56221366 -0.53969336 10.32547855 3.50972891 -0.5132789 10.1826725 3.46238518 -0.43662101
		 10.069340706 3.42481089 -0.31722385 9.99657631 3.40068603 -0.16677436 9.97150421 3.39237309 1.4363752e-09
		 9.99657726 3.40068674 0.16677432 10.069339752 3.42480898 0.3172237 10.1826725 3.46238518 0.43662083
		 10.3254776 3.50973082 0.51327872 10.48377705 3.56221437 0.53969312 10.64207649 3.61469722 0.5132789
		 10.78488159 3.66204405 0.43662107 10.89821243 3.69961905 0.31722364 10.97097683 3.72374392 0.1667742
		 10.99604988 3.73205757 -1.7041065e-08 10.93129635 3.98090148 -0.18175359 10.85259628 3.95286489 -0.34571594
		 10.7300272 3.90919375 -0.47583699 10.57557297 3.85416389 -0.55937999 10.40436077 3.79316592 -0.58816677
		 10.23314857 3.73216486 -0.55938005 10.078696251 3.67713737 -0.47583693 9.9561224 3.63346791 -0.34571576
		 9.87742519 3.60543036 -0.18175356 9.85030746 3.59576726 -4.0586998e-10 9.87742519 3.60542727 0.18175352
		 9.95612335 3.63346553 0.3457157 10.078696251 3.67713737 0.47583699 10.23314953 3.73216486 0.55937982
		 10.40436077 3.79316473 0.58816671 10.57557297 3.85416436 0.55937964 10.73002529 3.90919256 0.4758366
		 10.85259724 3.95286369 0.34571582 10.93129539 3.98090076 0.18175346 10.95841312 3.99056268 7.8622292e-10
		 10.79943848 4.20521736 -0.16677442 10.72781277 4.17789793 -0.31722391 10.6162529 4.13534975 -0.43662107
		 10.4756813 4.081733227 -0.5132789 10.3198576 4.022301674 -0.53969336 10.16403294 3.96286988 -0.5132789
		 10.023460388 3.90925479 -0.43662101 9.91190147 3.86670589 -0.31722385 9.84027672 3.83938718 -0.16677436
		 9.81559658 3.82997251 1.1383531e-09 9.84027672 3.83938479 0.16677432 9.91190147 3.86670399 0.3172237
		 10.023460388 3.90925407 0.43662083 10.16403198 3.96286917 0.5132786 10.31985569 4.022302151 0.5396933
		 10.4756813 4.081734657 0.51327872 10.6162529 4.13534975 0.4366208 10.72781086 4.17789936 0.31722358
		 10.79943848 4.20521688 0.16677441 10.82411766 4.2146306 1.7343996e-09 10.63649273 4.36048746 -0.13587004
		 10.57854271 4.33719969 -0.2584402 10.48828506 4.30093002 -0.35571235 10.37455559 4.25522709 -0.41816497
		 10.24848366 4.20456553 -0.43968463 10.12241173 4.15390205 -0.41816503 10.0086803436 4.1081996 -0.35571232
		 9.91842461 4.071929932 -0.25844014 9.86047554 4.048642635 -0.13586999 9.84050751 4.04061842 2.9389646e-08
		 9.86047554 4.048641205 0.13586992 9.91842461 4.071929455 0.25844008 10.0086812973 4.10820007 0.35571229
		 10.12241173 4.15390253 0.41816479 10.24848366 4.204566 0.4396843 10.37455559 4.25522709 0.41816452
		 10.48828506 4.30093002 0.35571209 10.57854271 4.33719969 0.25843999 10.63649273 4.36048746 0.13586989
		 10.65645885 4.36851072 3.2965925e-08 10.64668465 4.58533621 -0.16677441 10.5760746 4.55549669 -0.31722391
		 10.46609402 4.50901747 -0.43662107 10.32750988 4.45045424 -0.5132789 10.17389011 4.38553476 -0.53969336
		 10.020271301 4.32061529 -0.5132789 9.88168812 4.26205206 -0.43662101 9.77170658 4.2155757 -0.31722385
		 9.70109463 4.1857357 -0.16677436 9.67676449 4.17545414 5.9067249e-09 9.70109463 4.18573475 0.16677432
		 9.77170658 4.2155757 0.3172237 9.88168716 4.26205254 0.43662083 10.020269394 4.32061625 0.5132786
		 10.17389107 4.38553429 0.53969324 10.32750988 4.45045424 0.51327872 10.46609116 4.50901794 0.43662086
		 10.57607269 4.55549622 0.31722376 10.6466856 4.58533621 0.16677441 10.67101669 4.59561777 -3.033972e-09
		 10.58666039 4.83851814 -0.18175359 10.51044464 4.80430317 -0.34571594;
	setAttr ".vt[2822:2987]" 10.39173698 4.75101423 -0.47583699 10.24215412 4.68386555 -0.55937999
		 10.076341629 4.60942984 -0.58816677 9.91052818 4.5349946 -0.55938005 9.76094723 4.46784592 -0.47583693
		 9.64223862 4.41455746 -0.3457157 9.56602287 4.38034201 -0.18175356 9.53976059 4.36855173 -1.1134706e-08
		 9.56602287 4.38034248 0.1817535 9.64223862 4.41455555 0.34571576 9.76094818 4.46784496 0.47583666
		 9.91052818 4.53499508 0.55937994 10.076341629 4.60942936 0.58816671 10.24215412 4.68386555 0.55937964
		 10.39173603 4.75101376 0.47583666 10.51044464 4.80430317 0.34571564 10.58665848 4.83851814 0.18175335
		 10.61292267 4.85030746 -4.0586998e-10 10.43736362 5.051624775 -0.16677442 10.36813927 5.018692017 -0.31722391
		 10.26032257 4.96739626 -0.4366211 10.12446404 4.90276194 -0.5132789 9.97386551 4.83111191 -0.53969336
		 9.82326698 4.75946474 -0.5132789 9.68741035 4.69482899 -0.43662101 9.5795908 4.64353371 -0.31722385
		 9.51036835 4.61060047 -0.16677436 9.486516 4.5992527 1.7343984e-09 9.5103693 4.61060047 0.16677432
		 9.5795908 4.64353371 0.31722385 9.68741035 4.69482899 0.4366208 9.82326698 4.75946474 0.51327872
		 9.97386551 4.83111286 0.53969336 10.12446308 4.90276146 0.51327866 10.26032257 4.96739626 0.43662095
		 10.36813831 5.018690586 0.31722358 10.43736362 5.051624775 0.16677442 10.46121597 5.062973022 1.127114e-08
		 10.30211258 5.21310806 -0.15022022 10.24029636 5.18234396 -0.28573585 10.14401627 5.13442707 -0.3932817
		 10.022695541 5.074046612 -0.4623301 9.88820934 5.0071163177 -0.48612279 9.7537241 4.94018507 -0.46233001
		 9.63240337 4.87980509 -0.39328152 9.53612137 4.83188772 -0.28573579 9.47430515 4.80112362 -0.15022017
		 9.45300674 4.79052258 -1.5976562e-08 9.47430515 4.80112362 0.1502202 9.53612137 4.83188772 0.28573567
		 9.63240242 4.87980461 0.39328149 9.7537241 4.94018507 0.46232998 9.8882103 5.0071163177 0.48612255
		 10.022695541 5.074047089 0.46232995 10.14401627 5.13442612 0.39328134 10.24029636 5.18234444 0.28573549
		 10.30211258 5.21310806 0.15022011 10.3234129 5.22370958 -2.5513305e-08 8.19147968 8.16786861 -0.15022022
		 8.14233112 8.11936951 -0.28573585 8.065781593 8.043830872 -0.3932817 7.96932173 7.94864702 -0.4623301
		 7.86239576 7.84313345 -0.48612279 7.75546885 7.7376194 -0.46233001 7.65901041 7.64243603 -0.39328152
		 7.5824604 7.56689692 -0.28573579 7.53331184 7.51839781 -0.15022017 7.51637697 7.50168705 -2.4321212e-08
		 7.53331184 7.51839781 0.15022007 7.5824604 7.56689692 0.2857357 7.65901041 7.64243603 0.39328125
		 7.75546932 7.7376194 0.46232995 7.86239576 7.84313345 0.48612231 7.96932173 7.94864702 0.46232989
		 8.065781593 8.043830872 0.39328128 8.14233112 8.11936951 0.28573552 8.19147968 8.16786861 0.15022016
		 8.20841408 8.18457985 -2.4321212e-08 8.08258152 8.348176 -0.16677442 8.028980255 8.29337502 -0.31722391
		 7.94549322 8.20801735 -0.4366211 7.84029341 8.10046101 -0.5132789 7.7236805 7.98123598 -0.53969336
		 7.60706711 7.86201048 -0.5132789 7.50186825 7.75445509 -0.43662107 7.41838121 7.6690979 -0.31722385
		 7.36477947 7.61429548 -0.16677436 7.34630966 7.5954113 -2.568374e-08 7.36477947 7.61429548 0.16677429
		 7.41838121 7.6690979 0.31722379 7.50186825 7.75445509 0.43662086 7.60706711 7.86201048 0.51327866
		 7.7236805 7.98123598 0.539693 7.84029341 8.10046101 0.51327878 7.94549322 8.20801735 0.4366208
		 8.028979301 8.29337311 0.31722352 8.08258152 8.348176 0.16677439 8.10105133 8.36706066 8.8869561e-09
		 7.92940569 8.55851364 -0.18175359 7.87232542 8.49751091 -0.34571597 7.78342056 8.4024992 -0.47583699
		 7.67139292 8.28277683 -0.55938005 7.54720926 8.15006256 -0.58816671 7.42302608 8.017348289 -0.55938005
		 7.31099844 7.89762592 -0.47583693 7.22209358 7.80261374 -0.3457157 7.16501331 7.74161196 -0.18175356
		 7.14534378 7.72059202 -2.7824008e-08 7.16501331 7.74161196 0.18175356 7.22209358 7.80261374 0.3457157
		 7.31099844 7.89762592 0.47583705 7.42302608 8.017348289 0.55937994 7.54720926 8.15006256 0.58816648
		 7.67139292 8.28277683 0.55937946 7.78341913 8.4024992 0.47583672 7.87232494 8.49751091 0.34571579
		 7.92940569 8.55851269 0.18175335 7.94907427 8.57953262 6.7466872e-09 7.70937061 8.69739819 -0.16677442
		 7.65824509 8.64027882 -0.31722391 7.57861471 8.5513134 -0.43662107 7.47827435 8.43921185 -0.5132789
		 7.36704779 8.31494522 -0.53969336 7.25582075 8.19067955 -0.5132789 7.15548038 8.078577042 -0.43662107
		 7.07585001 7.98961163 -0.31722385 7.02472496 7.93249226 -0.16677436 7.0071077347 7.9128108 -3.9988855e-08
		 7.02472496 7.93249273 0.16677427 7.07585001 7.98961163 0.3172237 7.15548086 8.078577042 0.43662074
		 7.25582075 8.19067955 0.51327866 7.36704779 8.31494522 0.53969324 7.47827435 8.43921089 0.51327872
		 7.57861471 8.55131245 0.43662083 7.65824413 8.64027786 0.31722361 7.70937157 8.69739819 0.16677441
		 7.72698784 8.71708012 1.7231606e-08 7.4933691 8.76066971 -0.13587007 7.45254803 8.7134037 -0.2584402
		 7.38896847 8.63978577 -0.35571235 7.30885506 8.54702377 -0.41816497 7.220047 8.44419384 -0.4396846
		 7.13123894 8.34136391 -0.41816497 7.051124096 8.24860001 -0.35571232 6.98754644 8.17498302 -0.25844011
		 6.94672537 8.12771702 -0.13586999 6.93266058 8.11143112 5.547788e-09 6.94672537 8.12771702 0.13586995
		 6.98754644 8.17498207 0.25844005 7.051124096 8.24860001 0.35571229 7.13123894 8.34136391 0.41816476
		 7.220047 8.44419384 0.43968445 7.30885506 8.54702377 0.41816491 7.38896894 8.63978672 0.35571212
		 7.45254755 8.7134037 0.25843999 7.4933691 8.76066971 0.13586989 7.50743389 8.7769556 4.8463136e-08
		 7.39932966 8.96516132 -0.16677442 7.35026121 8.90626621 -0.31722391 7.27383423 8.81453419 -0.43662107
		 7.17753124 8.698946 -0.5132789 7.07077837 8.57081509 -0.53969336 6.96402597 8.44268513 -0.51327884
		 6.86772203 8.32709599 -0.43662107 6.79129601 8.23536396 -0.31722382;
	setAttr ".vt[2988:3153]" 6.74222708 8.17646885 -0.16677436 6.72531843 8.15617466 -8.9944363e-09
		 6.74222708 8.17646885 0.16677427 6.79129601 8.23536491 0.31722373 6.86772299 8.32709694 0.43662086
		 6.96402597 8.44268513 0.5132786 7.07077837 8.57081509 0.5396933 7.17753124 8.698946 0.51327878
		 7.27383423 8.81453419 0.4366208 7.35026121 8.90626526 0.31722358 7.39932919 8.96516132 0.16677441
		 7.41623831 8.98545551 4.9418112e-08 7.22989607 9.16263771 -0.18175359 7.17785215 9.097285271 -0.34571594
		 7.096793652 8.9954977 -0.47583699 6.99465227 8.86723709 -0.55937999 6.88142776 8.72505951 -0.58816683
		 6.7682023 8.58288002 -0.55937999 6.6660614 8.45461941 -0.4758369 6.58500195 8.35283184 -0.3457157
		 6.53295851 8.2874794 -0.18175356 6.51502514 8.26496029 -4.6897494e-08 6.53295851 8.2874794 0.1817535
		 6.58500195 8.35283089 0.3457157 6.6660614 8.45461941 0.47583711 6.7682023 8.58288002 0.55937976
		 6.88142776 8.72505856 0.58816648 6.99465227 8.86723709 0.5593794 7.096792221 8.9954977 0.47583675
		 7.17785215 9.097285271 0.34571579 7.22989559 9.16263676 0.18175328 7.24782896 9.18515587 4.3625015e-09
		 6.99950361 9.28356552 -0.16677442 6.95308781 9.22255898 -0.31722391 6.88079166 9.12753677 -0.4366211
		 6.78969431 9.0078020096 -0.5132789 6.68871212 8.87507629 -0.53969336 6.58772993 8.74235153 -0.5132789
		 6.49663258 8.62261677 -0.43662101 6.42433643 8.52759457 -0.31722385 6.37792015 8.46658707 -0.16677436
		 6.36192608 8.44556522 4.1185841e-09 6.37792015 8.46658707 0.16677426 6.42433643 8.52759361 0.3172237
		 6.49663258 8.62261677 0.43662083 6.58772993 8.74235153 0.5132786 6.68871212 8.87507629 0.539693
		 6.78969431 9.0078020096 0.51327878 6.88079166 9.12753677 0.43662074 6.95308638 9.22255707 0.31722355
		 6.99950361 9.28356552 0.16677439 7.015498161 9.30458736 1.127114e-08 6.80526495 9.36505985 -0.15022023
		 6.76443624 9.30937481 -0.28573585 6.70084476 9.22264481 -0.3932817 6.62071419 9.11335659 -0.4623301
		 6.53188848 8.9922142 -0.48612279 6.44306278 8.87106705 -0.46233004 6.36293268 8.76178074 -0.39328155
		 6.2993412 8.67505074 -0.28573579 6.2585125 8.61936665 -0.15022017 6.24444437 8.60017967 -1.3592377e-08
		 6.25851202 8.61936569 0.15022004 6.2993412 8.67505169 0.28573558 6.36293268 8.76178074 0.3932814
		 6.44306278 8.87106705 0.46233025 6.53188848 8.99221325 0.48612243 6.62071419 9.1133585 0.46232989
		 6.70084476 9.22264481 0.39328122 6.76443624 9.30937481 0.28573549 6.80526495 9.36505985 0.15022011
		 6.81933308 9.38424683 -7.631912e-09 -1.83914256 11.44335842 -0.15022022 -1.8280884 11.37520027 -0.28573585
		 -1.81087112 11.26904202 -0.39328164 -1.78917599 11.13527489 -0.46233016 -1.76512694 10.98699093 -0.4861227
		 -1.74107707 10.83870697 -0.46233013 -1.71938264 10.70493984 -0.39328152 -1.70216548 10.59878159 -0.28573576
		 -1.69111133 10.53062344 -0.15022017 -1.68730175 10.50713825 -5.2477263e-09 -1.69111145 10.53062344 0.1502201
		 -1.70216537 10.59878159 0.28573564 -1.71938169 10.70493984 0.3932814 -1.74107814 10.83870697 0.46232998
		 -1.76512623 10.98699093 0.48612264 -1.78917599 11.13527489 0.46233016 -1.81087077 11.26904202 0.3932814
		 -1.82808805 11.37520027 0.28573567 -1.8391428 11.44335842 0.15022014 -1.84295058 11.46684361 4.1839943e-08
		 -2.049196482 11.45906639 -0.16677442 -2.035584688 11.38362694 -0.31722382 -2.014383793 11.26612473 -0.43662116
		 -1.98766935 11.11806679 -0.51327884 -1.95805538 10.95394325 -0.53969347 -1.92844439 10.78981972 -0.51327884
		 -1.90172851 10.64176178 -0.43662098 -1.88052821 10.52426052 -0.31722376 -1.86691606 10.44882107 -0.16677436
		 -1.86222517 10.42282581 1.7343984e-09 -1.86691558 10.44882107 0.16677435 -1.88052738 10.52426052 0.31722376
		 -1.90172911 10.64176178 0.43662095 -1.92844343 10.78981972 0.51327878 -1.95805585 10.95394325 0.53969312
		 -1.98766935 11.11806679 0.51327872 -2.014383316 11.26612568 0.43662098 -2.035583735 11.38362503 0.31722361
		 -2.049195051 11.45906639 0.16677427 -2.053887367 11.48506069 -1.0782577e-08 -2.30938029 11.45608234 -0.18175358
		 -2.29272914 11.37421513 -0.34571588 -2.26679897 11.24670696 -0.47583705 -2.23412442 11.086030006 -0.55938005
		 -2.19790411 10.90792274 -0.58816683 -2.16168308 10.72981453 -0.55937994 -2.12900686 10.56914043 -0.47583693
		 -2.10307598 10.44162941 -0.3457157 -2.086426735 10.35976315 -0.18175352 -2.080690145 10.33155251 6.7466872e-09
		 -2.086427689 10.35976315 0.18175343 -2.10307598 10.44162941 0.34571567 -2.12900734 10.56914043 0.47583678
		 -2.16168284 10.72981453 0.55937976 -2.19790363 10.90792274 0.58816671 -2.23412466 11.086031914 0.55937976
		 -2.26679897 11.2467041 0.47583678 -2.29273129 11.37421513 0.34571567 -2.30937982 11.45608044 0.18175344
		 -2.31511784 11.48429203 -1.1134706e-08 -2.55006099 11.3572073 -0.16677442 -2.5331285 11.282444 -0.31722385
		 -2.50675154 11.16599369 -0.4366211 -2.4735167 11.01926136 -0.51327884 -2.43667316 10.85660934 -0.53969336
		 -2.39983344 10.69395638 -0.5132789 -2.36659479 10.54722404 -0.43662101 -2.34022069 10.43077469 -0.31722373
		 -2.32328606 10.35601234 -0.16677436 -2.31745124 10.33024883 1.6039515e-08 -2.32328677 10.35601234 0.16677433
		 -2.34022069 10.43077469 0.31722367 -2.36659646 10.54722404 0.43662101 -2.3998313 10.69395638 0.5132786
		 -2.43667531 10.85660934 0.53969312 -2.47351551 11.019262314 0.5132786 -2.50675058 11.16599464 0.43662095
		 -2.53312778 11.28244305 0.31722379 -2.55006075 11.3572073 0.16677435 -2.55589747 11.38296986 -3.1048156e-08
		 -2.72678065 11.21781158 -0.13587004 -2.71190453 11.15715599 -0.2584402 -2.68873739 11.062682152 -0.35571232
		 -2.65954781 10.9436388 -0.41816491 -2.62718749 10.81167889 -0.43968463 -2.59482861 10.67971706 -0.41816509
		 -2.56563687 10.56067371 -0.35571229 -2.54247046 10.46620274 -0.25844017 -2.52759695 10.40554523 -0.13587001
		 -2.52247143 10.38464642 5.547788e-09 -2.52759814 10.40554523 0.13586992 -2.54247069 10.46620274 0.25844005
		 -2.56563854 10.56067371 0.35571223 -2.59483099 10.67971706 0.4181647;
	setAttr ".vt[3154:3319]" -2.62718964 10.81167889 0.43968436 -2.65954804 10.9436388 0.41816485
		 -2.6887393 11.062680244 0.35571232 -2.71190548 11.15715408 0.25843993 -2.72678065 11.21781158 0.13586992
		 -2.73190451 11.23870945 -4.452011e-08 -2.9479363 11.25964069 -0.16677442 -2.92836308 11.18552494 -0.31722385
		 -2.89787412 11.070085526 -0.43662116 -2.85946178 10.92462254 -0.51327872 -2.81687355 10.76337624 -0.53969336
		 -2.77428961 10.60213089 -0.51327878 -2.73587489 10.45666981 -0.43662098 -2.7053864 10.34122944 -0.31722376
		 -2.6858139 10.26711273 -0.16677436 -2.67906928 10.24157333 -4.2260648e-09 -2.68581414 10.26711273 0.16677439
		 -2.70538783 10.34122944 0.31722367 -2.7358768 10.45666981 0.43662095 -2.7742908 10.60213089 0.51327878
		 -2.8168745 10.76337624 0.53969306 -2.85945988 10.92462254 0.5132786 -2.89787579 11.070084572 0.43662095
		 -2.9283607 11.18552399 0.31722382 -2.9479363 11.25964069 0.16677429 -2.95467925 11.28518105 -1.0782576e-08
		 -3.2070539 11.23595619 -0.18175359 -3.1839416 11.15567303 -0.34571597 -3.14794159 11.030631065 -0.47583693
		 -3.10258031 10.87306976 -0.55938005 -3.052298546 10.69841099 -0.58816683 -3.002010107 10.5237484 -0.55937976
		 -2.95664859 10.36618805 -0.47583693 -2.92065001 10.24114609 -0.3457157 -2.89753723 10.16086388 -0.18175352
		 -2.88957238 10.13319969 1.5091338e-08 -2.89753699 10.16086388 0.18175365 -2.92065072 10.24114609 0.34571588
		 -2.95665097 10.36618614 0.47583678 -3.0020134449 10.52375031 0.55937976 -3.05229497 10.69841099 0.58816653
		 -3.10257936 10.87307167 0.55937958 -3.14794445 11.030630112 0.47583675 -3.18394136 11.15567112 0.3457157
		 -3.2070539 11.23595428 0.18175335 -3.21501851 11.26361942 7.2311792e-08 -3.4391036 11.11823463 -0.16677442
		 -3.41627192 11.045056343 -0.31722391 -3.38071084 10.931077 -0.4366211 -3.33589959 10.78745651 -0.5132789
		 -3.2862246 10.62825108 -0.53969347 -3.23655367 10.46904659 -0.5132789 -3.1917429 10.3254261 -0.43662095
		 -3.15617895 10.21144676 -0.31722373 -3.13334775 10.13826942 -0.16677436 -3.12547779 10.11305332 2.9264913e-09
		 -3.13334799 10.13826942 0.16677429 -3.15618062 10.21144676 0.31722364 -3.19174194 10.3254261 0.43662101
		 -3.23655128 10.46904659 0.51327866 -3.28622651 10.62825203 0.53969306 -3.33589816 10.78745651 0.51327884
		 -3.38070989 10.931077 0.4366208 -3.41627216 11.045053482 0.31722358 -3.4391036 11.11823463 0.16677441
		 -3.44697142 11.14345074 4.5841833e-08 -3.61806488 11.0071334839 -0.15022023 -3.59633422 10.94159412 -0.28573588
		 -3.56248713 10.83951283 -0.39328167 -3.51983833 10.71088409 -0.46233004 -3.47256064 10.56829739 -0.48612273
		 -3.42528129 10.42570877 -0.46233016 -3.38263226 10.29708004 -0.39328155 -3.34878874 10.19499969 -0.28573576
		 -3.32705498 10.12946033 -0.15022017 -3.31956577 10.10687733 -2.8635407e-09 -3.32705355 10.12946033 0.15022005
		 -3.34878683 10.19499969 0.28573579 -3.38263345 10.29708004 0.3932814 -3.42528081 10.42570877 0.46233001
		 -3.47256112 10.56829834 0.48612252 -3.51983643 10.71088409 0.46232986 -3.56248617 10.83951283 0.39328125
		 -3.59633231 10.94159317 0.28573555 -3.61806488 11.0071334839 0.15022008 -3.62555218 11.029715538 3.6475527e-08
		 11.38945961 1.72859967 -0.15022023 11.32111549 1.71874833 -0.28573582 11.21467209 1.70340502 -0.39328164
		 11.080541611 1.68407094 -0.46233022 10.93185806 1.66263866 -0.4861227 10.78317356 1.64120626 -0.46233016
		 10.64904499 1.62187207 -0.39328152 10.54259968 1.60652852 -0.28573573 10.47425747 1.59667742 -0.15022017
		 10.45070934 1.59328294 -3.5050046e-08 10.47425747 1.59667742 0.15022011 10.54259968 1.60652852 0.28573567
		 10.64904499 1.62187207 0.3932814 10.78317356 1.64120626 0.46233001 10.93185806 1.66263843 0.48612255
		 11.080541611 1.68407094 0.46233001 11.21467209 1.70340502 0.39328134 11.32111549 1.71874833 0.28573567
		 11.38945961 1.72860003 0.1502201 11.41300678 1.73199415 3.0969238e-09 11.40886593 1.9383446 -0.16677442
		 11.33319855 1.92606401 -0.31722385 11.21534157 1.90693736 -0.43662107 11.066836357 1.88283706 -0.51327884
		 10.90221596 1.85612071 -0.53969336 10.73759651 1.82940447 -0.51327884 10.58908939 1.80530405 -0.43662101
		 10.47123337 1.78617692 -0.31722373 10.39556503 1.77389693 -0.16677435 10.36949253 1.76966536 -7.8023445e-09
		 10.39556503 1.77389693 0.16677435 10.47123337 1.78617692 0.31722367 10.58908939 1.80530405 0.43662095
		 10.73759651 1.82940471 0.51327872 10.90221596 1.85612071 0.53969312 11.066836357 1.88283682 0.51327872
		 11.21534157 1.90693736 0.43662083 11.33319664 1.92606425 0.31722367 11.40886593 1.9383446 0.16677433
		 11.43494034 1.94257581 -7.8023445e-09 11.41046906 2.19854069 -0.18175356 11.32831955 2.18333745 -0.34571582
		 11.2003727 2.15965724 -0.47583705 11.039148331 2.12981892 -0.55938005 10.86042976 2.096742392 -0.58816683
		 10.68171024 2.063666582 -0.55937988 10.52048588 2.033828259 -0.47583693 10.39253807 2.010148048 -0.3457157
		 10.31039047 1.99494517 -0.1817535 10.28208351 1.98970473 9.1308729e-09 10.31039047 1.99494493 0.1817535
		 10.39253807 2.01014781 0.3457157 10.52048588 2.03382802 0.47583687 10.68171024 2.063665867 0.55937982
		 10.86042976 2.09674263 0.58816659 11.039148331 2.12981939 0.55937964 11.20037079 2.15965772 0.47583684
		 11.32831955 2.18333817 0.34571564 11.41046715 2.1985414 0.18175346 11.43877411 2.20378065 -1.4710984e-08
		 11.3158493 2.44092703 -0.16677442 11.2407999 2.42531323 -0.31722385 11.12390423 2.40099263 -0.43662107
		 10.97660923 2.37035084 -0.5132789 10.81333256 2.33637977 -0.5396933 10.65005493 2.30241013 -0.5132789
		 10.50275898 2.27176404 -0.43662098 10.38586426 2.24744558 -0.31722373 10.31081295 2.23183084 -0.16677436
		 10.28495121 2.22645116 1.7343996e-09 10.31081295 2.2318325 0.16677436 10.38586426 2.24744678 0.31722373
		 10.50275898 2.27176595 0.43662095 10.65005493 2.30241036 0.5132786 10.81333256 2.33637905 0.53969312
		 10.97660923 2.37034988 0.51327878 11.12390518 2.40099263 0.43662083 11.240798 2.425313 0.31722367
		 11.31585121 2.44092703 0.16677433 11.34171104 2.44630694 -3.4028389e-08;
	setAttr ".vt[3320:3485]" 11.17959023 2.6200738 -0.13587004 11.11867905 2.60627079 -0.2584402
		 11.023815155 2.58477306 -0.35571235 10.90427589 2.55768514 -0.41816497 10.77176476 2.52765465 -0.43968469
		 10.63925552 2.49762678 -0.41816506 10.51971436 2.47053671 -0.35571232 10.42484951 2.4490416 -0.25844014
		 10.36394024 2.43523788 -0.13587001 10.34295559 2.43048286 -6.7169879e-08 10.36394024 2.43523884 0.13586999
		 10.42484951 2.44904017 0.25844008 10.51971436 2.47053838 0.35571218 10.63925457 2.49762678 0.41816482
		 10.77176476 2.52765632 0.4396846 10.90427589 2.55768347 0.41816491 11.023815155 2.58477354 0.35571212
		 11.11868 2.60627127 0.25843999 11.17958832 2.62007499 0.13587004 11.20057583 2.62483096 -3.2599186e-08
		 11.22531128 2.84045887 -0.16677442 11.15086079 2.8221972 -0.31722385 11.034900665 2.79374576 -0.43662107
		 10.88878536 2.75790167 -0.51327878 10.72681427 2.71816778 -0.53969336 10.56484413 2.67842889 -0.51327884
		 10.41872597 2.64258432 -0.43662095 10.30276775 2.61413455 -0.3172237 10.22831726 2.59586978 -0.16677436
		 10.20266342 2.58957767 1.6039515e-08 10.22831726 2.59587097 0.16677432 10.30276775 2.61413646 0.31722364
		 10.41872692 2.64258361 0.43662095 10.56484413 2.67843008 0.5132789 10.72681427 2.71816587 0.53969306
		 10.88878536 2.75790095 0.5132786 11.034900665 2.79374814 0.43662083 11.15086174 2.82219672 0.31722358
		 11.22531128 2.84045959 0.16677436 11.25096512 2.84675407 -3.6412573e-08 11.20619488 3.099954844 -0.18175358
		 11.12551785 3.078264236 -0.34571579 10.99986362 3.04447031 -0.47583699 10.84152603 3.0018920898 -0.55937999
		 10.66600609 2.95469594 -0.58816677 10.4904871 2.90749884 -0.55937994 10.33214951 2.86492062 -0.4758369
		 10.20649338 2.83112907 -0.3457157 10.12581635 2.80943489 -0.18175352 10.098016739 2.80195928 2.8204358e-08
		 10.12581635 2.80943608 0.18175349 10.20649242 2.8311286 0.3457157 10.33214951 2.86491871 0.47583672
		 10.4904871 2.90749645 0.55937982 10.66600609 2.95469546 0.58816659 10.84152508 3.0018932819 0.55937988
		 10.99986172 3.044471502 0.4758369 11.1255188 3.078261137 0.34571555 11.20619488 3.099955559 0.18175349
		 11.23399448 3.10743284 -4.0586998e-10 11.092582703 3.33404303 -0.16677442 11.019013405 3.31250429 -0.31722391
		 10.90442371 3.27895689 -0.4366211 10.76003647 3.23668528 -0.5132789 10.59998131 3.18982244 -0.53969336
		 10.4399271 3.14296389 -0.51327878 10.29553795 3.10069156 -0.43662089 10.18094826 3.06714654 -0.31722373
		 10.10737991 3.045604229 -0.16677436 10.082029343 3.038184166 -5.549072e-08 10.10737991 3.045606136 0.16677426
		 10.18094921 3.067142963 0.31722379 10.29553795 3.10069275 0.43662089 10.4399271 3.14296579 0.51327872
		 10.59998131 3.18982482 0.53969312 10.76003647 3.23668456 0.51327872 10.90442467 3.27895641 0.43662083
		 11.019012451 3.31250548 0.31722364 11.092582703 3.33404469 0.16677435 11.11793327 3.34146476 1.7343984e-09
		 10.98465347 3.51493168 -0.15022022 10.91874027 3.49436045 -0.28573588 10.81607914 3.46231937 -0.3932817
		 10.68671894 3.42194271 -0.4623301 10.54332066 3.3771832 -0.48612282 10.39992142 3.33242679 -0.46233001
		 10.27056122 3.29205012 -0.39328152 10.16790104 3.26000738 -0.28573579 10.10198689 3.23943472 -0.15022017
		 10.079277039 3.23234868 -2.5438801e-08 10.10198689 3.23943734 0.15022005 10.16790104 3.26000738 0.28573564
		 10.27056122 3.29205132 0.39328134 10.39992142 3.33242726 0.46232998 10.54332066 3.37718391 0.48612273
		 10.68671894 3.4219408 0.46232998 10.81607914 3.46231866 0.39328128 10.91874123 3.49436164 0.28573564
		 10.98465347 3.51493216 0.15022004 11.0073642731 3.52202201 -2.5587811e-08 6.80550575 9.36488247 -0.15022023
		 6.76467609 9.30919933 -0.28573585 6.70108223 9.22247028 -0.3932817 6.62094927 9.11318684 -0.4623301
		 6.53211975 8.9920435 -0.48612279 6.44329119 8.8708992 -0.46233004 6.36315775 8.76161575 -0.39328155
		 6.29956436 8.6748867 -0.28573579 6.25873423 8.61920357 -0.15022017 6.24466562 8.60001755 -1.3592377e-08
		 6.25873423 8.61920357 0.15022004 6.29956436 8.6748867 0.28573558 6.36315775 8.76161575 0.3932814
		 6.44329119 8.8708992 0.46233025 6.53211975 8.9920435 0.48612243 6.62094927 9.11318684 0.46232989
		 6.70108223 9.22247028 0.39328122 6.76467609 9.30919933 0.28573549 6.80550575 9.36488247 0.1502202
		 6.81957436 9.38406944 -7.631912e-09 6.66937685 9.52562618 -0.16677442 6.6251502 9.4630127 -0.31722391
		 6.55626535 9.36548805 -0.43662107 6.46946573 9.2426033 -0.5132789 6.37324905 9.10638523 -0.53969336
		 6.27703142 8.97016525 -0.5132789 6.1902318 8.84727955 -0.43662101 6.12134695 8.74975681 -0.31722385
		 6.077121735 8.68714333 -0.16677436 6.061881065 8.6655674 3.6305092e-08 6.077120781 8.68714333 0.16677429
		 6.12134695 8.74975681 0.31722382 6.19023132 8.84727955 0.43662095 6.27703142 8.97016525 0.51327872
		 6.37324905 9.10638428 0.53969324 6.46946573 9.2426033 0.51327872 6.55626535 9.36548996 0.43662074
		 6.62514973 9.46301174 0.31722355 6.66937685 9.52562618 0.16677447 6.68461657 9.54720116 3.6305092e-08
		 6.48476505 9.70899296 -0.18175359 6.43808651 9.63970566 -0.34571597 6.36538506 9.53179169 -0.47583693
		 6.27377462 9.39580917 -0.55938005 6.17222357 9.2450695 -0.58816683 6.070672035 9.094333649 -0.55938005
		 5.97906113 8.95835114 -0.47583693 5.9063592 8.85043526 -0.3457157 5.85968208 8.78114891 -0.18175356
		 5.84359741 8.75727367 1.0322966e-08 5.85968208 8.78114891 0.18175338 5.9063592 8.85043526 0.34571555
		 5.97906113 8.95835114 0.47583675 6.070672035 9.094333649 0.55937976 6.17222357 9.24507046 0.58816659
		 6.27377462 9.39580917 0.5593794 6.36538458 9.53178978 0.47583666 6.43808651 9.63970566 0.3457157
		 6.48476458 9.708992 0.18175335 6.50084877 9.73286724 5.323831e-08 6.24547958 9.81120396 -0.16677442
		 6.20406532 9.74669552 -0.31722391 6.1395607 9.64622116 -0.43662107 6.058279991 9.51961803 -0.5132789
		 5.96818066 9.37927723 -0.53969342 5.8780818 9.23893547 -0.5132789;
	setAttr ".vt[3486:3651]" 5.79680109 9.11233234 -0.43662101 5.73229599 9.011857033 -0.31722385
		 5.69088173 8.9473505 -0.16677436 5.67661142 8.92512226 6.1339044e-08 5.69088173 8.9473505 0.16677442
		 5.73229599 9.011857033 0.31722373 5.79680109 9.11233234 0.43662098 5.8780818 9.23893547 0.51327872
		 5.96818066 9.37927723 0.5396933 6.058279991 9.51961803 0.51327872 6.1395607 9.64622116 0.4366208
		 6.20406485 9.74669456 0.31722349 6.24547958 9.81120396 0.16677436 6.25975037 9.83343124 4.9418112e-08
		 6.022173882 9.83939934 -0.13587007 5.98937035 9.78625393 -0.2584402 5.9382782 9.70347977 -0.35571235
		 5.87389898 9.59918118 -0.41816503 5.80253315 9.48356247 -0.43968463 5.73116779 9.36794281 -0.41816503
		 5.66678715 9.26364136 -0.35571229 5.615695 9.1808691 -0.25844014 5.58289242 9.12772369 -0.13587001
		 5.57158995 9.10941315 4.3694762e-08 5.58289242 9.12772465 0.13586989 5.61569595 9.1808691 0.25844014
		 5.66678715 9.26364136 0.35571221 5.73116779 9.36794281 0.41816476 5.80253315 9.48356247 0.43968436
		 5.87389898 9.59918118 0.41816506 5.93827868 9.70347977 0.35571209 5.98937035 9.78625393 0.25843999
		 6.022173882 9.83939934 0.1358698 6.033476353 9.85770988 1.5084531e-08 5.89687872 10.026376724 -0.16677442
		 5.85777712 9.96044159 -0.31722391 5.79687357 9.85774517 -0.43662107 5.72013235 9.72834015 -0.5132789
		 5.63506413 9.58489418 -0.53969336 5.5499959 9.4414463 -0.5132789 5.4732542 9.31204224 -0.43662101
		 5.41235113 9.20934486 -0.31722385 5.37324953 9.14340973 -0.16677436 5.35977554 9.12068939 3.2728813e-08
		 5.37324905 9.14341068 0.16677429 5.41235113 9.20934486 0.31722373 5.4732542 9.31204224 0.4366211
		 5.5499959 9.4414463 0.5132786 5.6350646 9.58489418 0.5396933 5.72013235 9.72834015 0.51327872
		 5.79687357 9.85774517 0.43662071 5.85777664 9.96043968 0.3172237 5.89687872 10.026376724 0.16677445
		 5.91035223 10.049098015 1.6039515e-08 5.69825697 10.19446564 -0.18175359 5.6572423 10.12168312 -0.34571597
		 5.59336185 10.0083227158 -0.47583699 5.51286602 9.86547947 -0.55937994 5.42363787 9.70713615 -0.58816683
		 5.33440781 9.54879284 -0.55938005 5.25391245 9.40594959 -0.47583693 5.19003296 9.29259014 -0.3457157
		 5.14901781 9.21980667 -0.18175356 5.13488579 9.19472694 5.323831e-08 5.14901781 9.21980667 0.18175335
		 5.19003153 9.29258919 0.3457157 5.25391293 9.40594959 0.47583678 5.33440781 9.54879284 0.55937964
		 5.42363787 9.70713615 0.58816659 5.51286697 9.86547947 0.55937952 5.59336138 10.0083217621 0.47583663
		 5.65724325 10.12168312 0.3457157 5.69825602 10.19446564 0.18175331 5.71238947 10.21954441 3.6549007e-08
		 5.45159483 10.2773037 -0.16677442 5.41544676 10.20970345 -0.31722391 5.35914469 10.10441303 -0.4366211
		 5.28820086 9.97174072 -0.5132789 5.20955944 9.82467365 -0.5396933 5.13091755 9.67760658 -0.5132789
		 5.059972763 9.54493427 -0.43662101 5.0036711693 9.43964386 -0.31722385 4.96752357 9.37204361 -0.16677435
		 4.95506811 9.34875011 6.4915319e-08 4.96752357 9.37204361 0.16677441 5.0036716461 9.43964386 0.31722376
		 5.05997324 9.54493427 0.43662089 5.13091755 9.67760658 0.5132786 5.20955944 9.8246727 0.53969306
		 5.28820086 9.97174072 0.51327872 5.35914469 10.10441303 0.4366208 5.41544628 10.20970249 0.31722364
		 5.45159531 10.2773037 0.16677433 5.46405029 10.30059719 3.5112997e-08 5.24688482 10.3269434 -0.15022023
		 5.21541023 10.26548576 -0.28573585 5.16638613 10.16976357 -0.39328167 5.10461235 10.049146652 -0.46233004
		 5.036136627 9.91544056 -0.48612282 4.96765852 9.78173542 -0.46233001 4.90588522 9.66111851 -0.39328152
		 4.85686111 9.56539631 -0.28573579 4.82538509 9.50393963 -0.15022017 4.81454134 9.48276329 1.5017854e-08
		 4.82538557 9.50393963 0.15022007 4.85686207 9.56539631 0.28573552 4.90588522 9.66111851 0.39328143
		 4.967659 9.78173542 0.46232986 5.036135674 9.91544056 0.48612231 5.10461283 10.049146652 0.46232986
		 5.16638613 10.16976166 0.39328137 5.21540976 10.26548576 0.2857357 5.2468853 10.32694244 0.15022017
		 5.25773144 10.34811878 1.5017854e-08 -2.056882858 11.4973402 1.26309669 0 10.77810383 1.56364012
		 2.056882858 11.4973402 1.26309669 -2.31141353 14.49124241 0.012049694 0 14.71317482 -0.080688111
		 2.31141353 14.49124241 0.012049694 -2.27569175 12.50158691 -3.85914826 0 12.26738071 -4.20558214
		 2.27569175 12.50158691 -3.85914826 -1.61077321 9.2312212 -2.51946664 0 8.0086450577 -2.50538445
		 1.61077321 9.2312212 -2.51946664 -2.57196021 14.032771111 0.2036286 0 14.19922161 0.60196054
		 2.57196021 14.032771111 0.2036286 2.49816084 11.58672523 -3.74361849 0 11.022438049 -3.78607368
		 -2.49816084 11.58672523 -3.74361849 -2.50387478 13.23137474 0.53850412 0 13.3850956 0.94215494
		 2.50387478 13.23137474 0.53850412 2.1085043 10.50677395 -3.29234409 0 11.045104027 -3.79554439
		 -2.1085043 10.50677395 -3.29234409 -0.64572883 10.97412968 -3.93193579 -1.62447345 11.11395645 -3.99036479
		 -0.58264714 10.69820595 -3.81663632 -1.51331675 10.83776093 -3.87495184 1.62433636 11.11389256 -3.99033785
		 0.64586568 10.97406387 -3.93190789 1.51318014 10.83782959 -3.87498045 0.58279687 10.69821644 -3.81664133
		 -0.8537001 10.95638752 1.4891417 -0.67726243 8.23686123 -2.58018208 -0.32321933 10.63890839 -3.79185843
		 -0.85146713 10.62313938 -3.78526878 -0.86225814 11.0067138672 -3.94555187 -0.71173286 11.49077034 -4.1478219
		 -0.93245018 12.81815338 -4.43573046 -1.049687386 15.13922501 -0.25871974 -1.049687386 14.19922161 0.60196054
		 -1.049687386 13.3850956 0.94215494 0.8537001 10.95638752 1.4891417 0.67726243 8.23686123 -2.58018208
		 0.32321942 10.63890839 -3.79185843 0.85153413 10.62318516 -3.78528786 0.8623175 11.0066566467 -3.94552755
		 0.71173286 11.49077034 -4.1478219 0.93245018 12.81815338 -4.43573046 1.049687386 15.13922501 -0.25871974
		 1.049687386 14.19922161 0.60196054 1.049687386 13.3850956 0.94215494;
	setAttr ".vt[3652:3817]" -1.448753 11.15407085 1.4065367 -1.069055915 8.55889988 -2.61952233
		 -1.5772562 10.3776598 -3.62780476 -1.30976284 10.70487022 -3.81942129 -1.21439087 11.063054085 -3.96909451
		 -1.72696626 11.71288967 -4.2406373 -1.81367004 12.39234638 -4.25780058 -1.73135746 14.80984402 -0.12108248
		 -1.84485209 14.19922161 0.60196054 -1.84485209 13.3850956 0.94215494 1.448753 11.15407085 1.4065367
		 1.069055915 8.55889988 -2.61952233 1.5772562 10.3776598 -3.62780476 1.30971563 10.70493889 -3.81945014
		 1.21435356 11.062978745 -3.96906281 1.72696626 11.71288967 -4.2406373 1.81367004 12.39234638 -4.25780058
		 1.73135746 14.80984402 -0.12108248 1.84485209 14.19922161 0.60196054 1.84485209 13.3850956 0.94215494
		 -2.29473853 11.8292799 1.12439048 -1.84485209 11.85932541 1.57972074 -1.049687386 11.85932541 1.57972074
		 0 11.85932541 1.57972074 1.049687386 11.85932541 1.57972074 1.84485209 11.85932541 1.57972074
		 2.29473853 11.8292799 1.12439048 1.91825938 9.53630352 -2.83637094 1.48253787 9.28480625 -3.053823471
		 0.41810095 9.40211296 -3.27480197 0 9.20418072 -3.19209313 -0.41810095 9.40211296 -3.27480197
		 -1.48253787 9.28480625 -3.053823471 -1.91825938 9.53630352 -2.83637094 0 9.2025795 -3.69034553
		 -0.21089184 9.26267052 -3.5465405 0.21089184 9.26267052 -3.5465405 1.2591536 10.74661827 -3.7893517
		 1.17923117 11.071617126 -3.92515779 1.52283847 11.047746658 -3.91518259 1.4296782 10.85799313 -3.83589149
		 0.88418889 11.024413109 -3.90543246 0.702779 10.87884235 -3.84460378 0.87515068 10.67810154 -3.76072121
		 0.64992142 10.74098587 -3.78699827 -0.87511712 10.67806149 -3.76070428 -0.88416094 11.024460793 -3.90545249
		 -0.70268691 10.87889767 -3.84462667 -0.64981806 10.74097252 -3.78699279 -1.25921679 10.74655914 -3.78932714
		 -1.17928493 11.071681023 -3.92518401 -1.52297735 11.047800064 -3.915205 -1.42981505 10.85793591 -3.8358674
		 1.23870587 10.75460434 -3.81291556 1.16824353 11.041134834 -3.93264699 1.47118008 11.020089149 -3.92385244
		 1.38904643 10.85279655 -3.85394692 0.90812308 10.99951649 -3.91525626 0.74818498 10.87117672 -3.86162758
		 0.90015405 10.69419765 -3.78767419 0.70158327 10.74963474 -3.81083965 -0.90012515 10.69416237 -3.78765941
		 -0.90809822 10.99956036 -3.91527462 -0.7481035 10.87122536 -3.86164761 -0.70149291 10.74962902 -3.81083703
		 -1.23876095 10.75455475 -3.8128953 -1.16829038 11.041190147 -3.93266988 -1.47130156 11.02013588 -3.92387247
		 -1.38916719 10.8527441 -3.85392523 1.21429169 10.74354935 -3.89031649 1.15512371 10.98415279 -3.99085546
		 1.40950251 10.96648026 -3.98347116 1.34053481 10.82600212 -3.92476988 0.93669885 10.94920635 -3.97625303
		 0.80239832 10.84143829 -3.93122029 0.93000746 10.69282436 -3.86911988 0.76326632 10.73938084 -3.88857412
		 -0.92998284 10.69280052 -3.86910939 -0.93667829 10.94924355 -3.97626829 -0.80232966 10.84147835 -3.93123722
		 -0.76319015 10.7393713 -3.88857031 -1.21433818 10.7435112 -3.8902998 -1.15516329 10.98419952 -3.99087501
		 -1.40960407 10.96651936 -3.98348784 -1.34063554 10.82596111 -3.92475271 1.97635376 9.96831989 -3.067343235
		 2.42515969 12.37809181 0.89506143 1.84485209 12.48793983 1.31704497 1.049687386 12.48793983 1.31704497
		 0 12.48793983 1.31704497 -1.049687386 12.48793983 1.31704497 -1.84485209 12.48793983 1.31704497
		 -2.42515969 12.37809181 0.89506143 -1.97635376 9.96831989 -3.067343235 -1.55758727 9.7898674 -3.36007977
		 -0.36827275 10.0070447922 -3.52782464 -0.23895408 10.56807137 -3.89316797 0 10.57860565 -3.92798972
		 0.23895408 10.56807137 -3.89316797 0.36827275 10.0070447922 -3.52782464 1.55758727 9.7898674 -3.36007977
		 -1.0049701929 11.14179802 -4.17646885 0 10.9364748 -4.07539463 -0.78844088 11.10921383 -4.16285324
		 -1.35710299 11.19813919 -4.20001173 -1.72696626 11.59718513 -4.51753044 -1.76718533 11.2490406 -4.22128153
		 1.35706556 11.19806385 -4.19997978 1.72696626 11.59718513 -4.51753044 1.76704836 11.24897671 -4.22125483
		 0 10.90673351 -4.062966824 1.0050295591 11.14174175 -4.17644501 0.78857774 11.10914803 -4.16282511
		 -1.044999361 12.0050010681 -4.36270094 -2.060232162 12.0050020218 -4.36270189 -2.060232162 11.88929939 -4.63959455
		 -3.14916849 12.16305828 -3.98444724 3.14916849 12.16305828 -3.98444724 2.060232162 12.0050020218 -4.36270189
		 2.060232162 11.88929939 -4.63959455 1.044999361 12.0050010681 -4.36270094 -2.083270788 12.68854523 -4.64833021
		 -3.017697334 12.75615883 -4.67658329 -3.017697334 12.64045429 -4.95347643 -3.72751093 12.96557236 -4.31979036
		 3.72751093 12.96557236 -4.31979036 3.017697334 12.75615883 -4.67658329 3.017697334 12.64045429 -4.95347643
		 2.083270788 12.68854523 -4.64833021 -1.6068809 13.47192764 -4.97567797 -2.30409193 13.63188076 -5.042517185
		 -2.30409193 13.51617813 -5.31941032 -2.83371115 13.91143799 -4.71503448 2.83371115 13.91143799 -4.71503448
		 2.30409193 13.63188076 -5.042517185 2.30409193 13.51617813 -5.31941032 1.6068809 13.47192764 -4.97567797
		 -1.21541142 13.96507072 -5.18174553 -1.82824266 13.97041702 -5.18397999 -1.21541142 13.84936619 -5.45863914
		 -1.82824266 13.85471439 -5.4608736 -2.29376292 14.24397087 -4.85398817 -2.29376292 14.12826633 -5.13088131
		 2.29376292 14.24397087 -4.85398817 1.82824266 13.97041702 -5.18397999 2.29376292 14.12826633 -5.13088131
		 1.82824266 13.85471439 -5.4608736 1.21541142 13.96507072 -5.18174553 1.21541142 13.84936619 -5.45863914
		 -1.13681042 14.78649139 -5.52498913 -1.13681042 14.67078876 -5.80188179 1.13681042 14.78649139 -5.52498913
		 1.13681042 14.67078876 -5.80188179 -2.32644033 12.83324718 -3.68551707 -1.81367004 13.018017769 -3.99551392
		 -0.93245018 13.44382286 -4.17344332 0 12.75366211 -3.88504934 0.93245018 13.44382286 -4.17344332
		 1.81367004 13.018017769 -3.99551392 2.32644033 12.83324718 -3.68551707 2.54898548 11.81624508 -3.16066742
		 2.33943701 10.71560669 -2.64129353 2.25130081 10.20419979 -2.42759466 2.19114351 9.75953865 -2.19771361
		 1.88365543 9.36792374 -1.92867553 1.30978346 9.040456772 -1.711169;
	setAttr ".vt[3818:3983]" 0.67909044 8.78490639 -1.60438311 0 8.55443001 -1.50807536
		 -0.67909044 8.78490639 -1.60438311 -1.30978346 9.040456772 -1.711169 -1.88365543 9.36792374 -1.92867553
		 -2.19114351 9.75953865 -2.19771361 -2.25130081 10.20419979 -2.42759466 -2.33943701 10.71560669 -2.64129353
		 -2.54898548 11.81624508 -3.16066742 -2.26980186 13.35700893 -3.14054251 -1.81367004 13.75349617 -3.34945345
		 -0.93245018 14.17930222 -3.52738309 0 13.6285305 -3.29723501 0.93245018 14.17930222 -3.52738309
		 1.81367004 13.75349617 -3.34945345 2.26980186 13.35700893 -3.14054251 2.60617495 12.29094028 -2.49468279
		 2.40108299 11.54483986 -2.054227829 2.31072831 10.72258568 -1.50102413 2.24824548 10.2397213 -1.3463484
		 2.053001642 9.73901653 -1.42932189 1.33233631 9.53829575 -0.91239023 0.67909044 9.28274441 -0.80560422
		 0 9.052270889 -0.70929724 -0.67909044 9.28274441 -0.80560422 -1.33233631 9.53829575 -0.91239023
		 -2.053001642 9.73901653 -1.42932189 -2.24824548 10.2397213 -1.34634817 -2.31072807 10.72258568 -1.50102437
		 -2.40108299 11.54483986 -2.054227591 -2.60617495 12.29094028 -2.49468279 -2.32480097 13.66219711 -2.41019392
		 -1.81367004 14.094762802 -2.53276134 -0.93245018 14.52056885 -2.7106905 0 13.96979713 -2.48054242
		 0.93245018 14.52056885 -2.7106905 1.81367004 14.094762802 -2.53276134 2.32480097 13.66219711 -2.41019392
		 2.66125703 12.60393429 -1.96798289 2.4604547 11.86328602 -1.76865005 2.36796594 11.13202858 -0.81908602
		 2.30324459 10.66092873 -0.62421817 1.99575806 10.23905087 -0.47952554 1.35405588 9.80754662 -0.2605269
		 0.67909044 9.57590961 -0.10867987 0 9.36701298 0.028260173 -0.67909044 9.57590961 -0.10867987
		 -1.35405588 9.80754662 -0.2605269 -1.99575806 10.23905087 -0.47952554 -2.30324459 10.66092873 -0.62421799
		 -2.36796594 11.13202858 -0.81908602 -2.4604547 11.86328602 -1.76865005 -2.66125703 12.60393429 -1.96798277
		 2.56086755 11.68483543 -1.69469845 2.5577035 11.11915016 -1.065701008 2.51872849 10.83515358 -1.46738052
		 2.54458308 11.42910671 -1.89898717 2.45348167 10.54292202 -0.7936914 2.3891027 10.14968395 -1.2067889
		 2.21435976 9.9871273 -0.6423921 2.25684166 9.58375263 -1.29564464 1.50402105 9.50897694 -0.4086943
		 1.60428143 9.098465919 -0.78808647 0.66124898 9.21975803 -0.21909945 0.78863066 8.80924797 -0.59849226
		 -2.750653e-08 8.58465004 -0.45125946 -2.750653e-08 8.9951601 -0.07186716 -0.6612491 9.21975803 -0.21909945
		 -0.78863066 8.80924797 -0.59849226 -1.50402141 9.50897694 -0.4086943 -1.60428143 9.098465919 -0.78808647
		 -2.25684166 9.58375263 -1.29564464 -2.21436 9.9871273 -0.6423921 -2.3891027 10.14968395 -1.20678866
		 -2.45348167 10.54292202 -0.7936914 -2.51872849 10.83515358 -1.46738088 -2.55770302 11.11915016 -1.065701008
		 -2.54458308 11.42910671 -1.89898694 -2.56086755 11.68483543 -1.69469845 1.78827214 8.99103451 -2.68767095
		 1.33233631 8.60822868 -2.55812263 1.8808856 8.7320137 -2.43104959 1.60428143 8.371171 -2.35144353
		 0.67909044 8.32107067 -2.56371021 0.78863066 8.032115936 -2.31178141 0 8.087621689 -2.50767684
		 -2.750653e-08 7.78451395 -2.24341273 -0.67909044 8.32107067 -2.56371021 -0.78863066 8.032115936 -2.31178141
		 -1.33233631 8.60822868 -2.55812263 -1.60428143 8.371171 -2.35144353 -1.78827214 8.99103451 -2.68767095
		 -1.8808856 8.7320137 -2.43104959 1.67637706 8.77172565 -3.018335581 1.30933928 8.45678711 -3.12172127
		 1.72668743 8.47980976 -2.70823097 1.36986542 8.21972752 -2.91504121 0.6314075 8.098058701 -3.097402573
		 0.70667624 7.80910397 -2.84547329 0 7.8646102 -3.041369438 -2.259435e-08 7.56150246 -2.77710533
		 -0.6314075 8.098058701 -3.097402573 -0.7066763 7.80910397 -2.84547329 -1.30933928 8.45678711 -3.12172127
		 -1.36986542 8.21972752 -2.91504121 -1.67637706 8.77172565 -3.018335581 -1.72668743 8.47980976 -2.70823097
		 1.71573627 9.19752693 -2.97519398 1.3460964 9.065818787 -3.027479649 1.58168232 8.98073006 -3.18815613
		 1.35144281 8.89019871 -3.2399888 -1.3460964 9.065818787 -3.027479649 -1.71573627 9.19752693 -2.97519398
		 -1.35144281 8.89019871 -3.2399888 -1.58168232 8.98073006 -3.18815613 1.55743718 9.80305386 -3.36736298
		 1.29168248 9.77617073 -3.43054128 1.44626558 9.67793083 -3.52554989 1.27199936 9.64708996 -3.56162453
		 -1.29168248 9.77617073 -3.43054128 -1.55743718 9.80305386 -3.36736298 -1.27199936 9.64708996 -3.56162453
		 -1.44626558 9.67793083 -3.52554989 1.30406141 10.22402668 -3.63910484 1.22724962 10.19665623 -3.64996862
		 1.27620471 10.17897606 -3.68335819 1.23147392 10.15812969 -3.68848348 -1.22724962 10.19665623 -3.64996862
		 -1.30406141 10.22402668 -3.63910484 -1.23147392 10.15812969 -3.68848348 -1.27620471 10.17897606 -3.68335819
		 1.6430949 9.49942684 -3.16708302 1.5284611 9.31403351 -3.34919167 1.32936752 9.23196125 -3.38532996
		 1.32700396 9.3867979 -3.21179318 -1.6430949 9.49942684 -3.16708302 -1.5284611 9.31403351 -3.34919167
		 -1.32936752 9.23196125 -3.38532996 -1.32700396 9.3867979 -3.21179318 1.11312234 8.73807812 -2.8836031
		 0.74015081 8.57412529 -2.88679385 1.099991798 8.65161037 -3.20539021 0.71292627 8.44679642 -3.19150615
		 -0.74015081 8.57412529 -2.88679385 -1.11312234 8.73807812 -2.8836031 -0.71292627 8.44679642 -3.19150615
		 -1.099991798 8.65161037 -3.20539021 0.58010244 8.44349384 -2.78421044 0 8.43366718 -2.80772042
		 0.54632026 8.29515171 -3.13921165 0 8.2853241 -3.16272092 -0.58010244 8.44349384 -2.78421044
		 -0.54632026 8.29515171 -3.13921165 0.95742273 8.82443237 -3.12153959 0.79822266 8.78495884 -3.13564968
		 0.95181811 8.77851868 -3.2551291 0.78660184 8.73060989 -3.26571441 -0.79822266 8.78495884 -3.13564968
		 -0.95742273 8.82443237 -3.12153959 -0.78660184 8.73060989 -3.26571441 -0.95181811 8.77851868 -3.2551291
		 0.88076431 8.89810753 -3.22480249 0.81810892 8.88257313 -3.23035622 0.8785584 8.88003922 -3.2773788
		 0.81353545 8.86118412 -3.28154445 -0.81810892 8.88257313 -3.23035622;
	setAttr ".vt[3984:4149]" -0.88076431 8.89810753 -3.22480249 -0.81353545 8.86118412 -3.28154445
		 -0.8785584 8.88003922 -3.2773788 0.43481559 8.55317116 -2.91110754 0.13177042 8.53130817 -2.91951728
		 0.41338611 8.45782089 -3.13618994 0.13177042 8.43706131 -3.14506078 -0.12902695 8.53069687 -2.91926146
		 -0.43484393 8.5527029 -2.91091156 -0.12902695 8.43645 -3.14480495 -0.41341451 8.45735168 -3.1359942
		 0.35843498 8.60130215 -3.0024139881 0.208151 8.59045887 -3.0065848827 0.34780785 8.55401516 -3.11403561
		 0.208151 8.5437212 -3.11843467 -0.20679043 8.5901556 -3.0064580441 -0.35844907 8.6010704 -3.0023169518
		 -0.20679043 8.54341698 -3.11830807 -0.34782192 8.55378437 -3.11393881 0.30612314 8.64527035 -3.069547415
		 0.26046285 8.64197636 -3.070815086 0.30289432 8.6309042 -3.10346103 0.26046285 8.62777615 -3.1047976
		 -0.26004952 8.64188385 -3.070775986 -0.3061274 8.64519978 -3.069518089 -0.26004952 8.62768269 -3.10475922
		 -0.30289862 8.63083267 -3.1034317 -2.3668189 14.099725723 -1.36313963 -1.81367016 14.51158905 -1.53524566
		 -0.93245018 14.9373951 -1.71317506 0 14.38662338 -1.48302686 0.93245018 14.9373951 -1.71317506
		 1.81367016 14.51158905 -1.53524566 2.3668189 14.099725723 -1.36313963 2.70333886 13.39292526 -1.067792535
		 2.52238822 12.53555775 -0.70953089 2.42826796 11.60364151 -0.3201139 2.345263 11.11177635 -0.11458008
		 2.03777647 10.68266106 0.064732306 1.37065005 10.23890591 0.25016201 0.67909044 9.9833498 0.35694993
		 0 9.7528801 0.45325524 -0.67909044 9.9833498 0.35694993 -1.37065005 10.23890591 0.25016201
		 -2.03777647 10.68266106 0.064732306 -2.345263 11.11177635 -0.11458008 -2.42826796 11.60364151 -0.3201139
		 -2.52238846 12.53555775 -0.70953089 -2.70333886 13.39292526 -1.067792535 -2.41633153 14.33640957 -0.79672503
		 -1.81367016 14.74827385 -0.96883047 -0.93245018 15.17408085 -1.14675987 0 14.62330914 -0.91661179
		 0.93245018 15.17408085 -1.14675987 1.81367016 14.74827385 -0.96883047 2.41633153 14.33640957 -0.79672503
		 2.75292635 13.61905861 -0.49696913 2.59536719 12.88383198 -0.18974489 2.49932456 12.11673546 0.1307992
		 2.39477563 11.47753811 0.39789796 2.087289333 11.048423767 0.57720995 1.39020383 10.60466766 0.76263952
		 0.67909044 10.34911251 0.86942726 0 10.1186409 0.96573281 -0.67909044 10.34911251 0.86942726
		 -1.39020383 10.60466766 0.76263952 -2.087289333 11.048423767 0.57720995 -2.39477563 11.47753811 0.39789796
		 -2.49932456 12.11673546 0.1307992 -2.59536719 12.88383198 -0.18974489 -2.75292635 13.61905861 -0.49696907
		 3.57136679 13.28431606 -0.17860475 2.78045583 11.60364151 -0.3201139 -2.78045583 11.60364151 -0.3201139
		 -3.57136679 13.28431606 -0.17860475 11.022555351 2.84790063 0.23946041 11.093598366 2.43802762 0.23946041
		 11.24431515 2.82322121 0.10665413 11.29411602 2.53590155 0.10665413 11.46470833 2.80642176 0.036794797
		 11.49599934 2.62589502 0.036794797 11.68225956 2.80602503 0.0064932727 11.70072651 2.69948602 0.0064932727
		 11.89877415 2.81160092 0.029078074 11.90648651 2.76710439 0.029078074 11.89900398 2.81027842 -0.035417654
		 11.90625858 2.7684269 -0.035417654 11.6859169 2.78492093 -0.10299673 11.69706821 2.72058988 -0.10299673
		 11.47138596 2.76790142 -0.16095756 11.48932266 2.6644156 -0.16095756 11.25562763 2.75795126 -0.19572374
		 11.28280258 2.60117149 -0.19572374 11.03386879 2.78263068 -0.19615042 11.082284927 2.50329781 -0.19615042
		 8.61189842 7.61359072 0.23946041 8.8669281 7.28495216 0.23946041 8.81931782 7.69583273 0.10665413
		 8.99809361 7.46545792 0.10665413 9.021834373 7.78439283 0.036794797 9.134161 7.63964558 0.036794797
		 9.21414471 7.88610458 0.0064932727 9.28043461 7.80068111 0.0064932727 9.40273762 7.99260521 0.029078074
		 9.43042374 7.9569273 0.029078074 9.40356064 7.99154472 -0.035417654 9.42960167 7.95798826 -0.035417654
		 9.22727585 7.86918354 -0.10299673 9.26730347 7.81760263 -0.10299673 9.045802116 7.75350666 -0.16095756
		 9.11019325 7.67053175 -0.16095756 8.85993004 7.64349842 -0.19572374 8.95748138 7.51779175 -0.19572374
		 8.65251064 7.56125689 -0.19615042 8.82631683 7.33728647 -0.19615042 9.62755966 6.15509462 0.23946041
		 9.83875751 5.79671144 0.23946041 9.84374809 6.21031046 0.10665413 9.99179745 5.95908499 0.10665413
		 10.055876732 6.27241707 0.036794797 10.14889812 6.11456919 0.036794797 10.25955296 6.34886551 0.0064932727
		 10.31444931 6.2557106 0.0064932727 10.46015167 6.43053579 0.029078074 10.48307991 6.3916297 0.029078074
		 10.46083355 6.42937994 -0.035417654 10.48239899 6.39278603 -0.035417654 10.2704277 6.33041239 -0.10299673
		 10.30357552 6.27416325 -0.10299673 10.075725555 6.23873615 -0.16095756 10.1290493 6.1482501 -0.16095756
		 9.87738037 6.1532402 -0.19572374 9.95816517 6.016156197 -0.19572374 9.66119099 6.098024368 -0.19615042
		 9.80512524 5.85378218 -0.19615042 11.31467438 1.01855123 0.23946041 11.38571739 0.6086781 0.23946041
		 11.53643417 0.99387163 0.10665413 11.58623505 0.70655179 0.10665413 11.75682735 0.97707236 0.036794797
		 11.78811932 0.79654533 0.036794797 11.97437859 0.97667533 0.0064932727 11.99284554 0.87013656 0.0064932727
		 12.19089317 0.98225123 0.029078074 12.19860554 0.93775487 0.029078074 12.19112301 0.98092878 -0.035417654
		 12.19837761 0.93907732 -0.035417654 11.97803593 0.95557141 -0.10299673 11.98918724 0.89124048 -0.10299673
		 11.76350498 0.93855172 -0.16095756 11.78144169 0.83506602 -0.16095756 11.54774666 0.92860162 -0.19572374
		 11.57492161 0.77182192 -0.19572374 11.32598782 0.9532811 -0.19615042 11.37440395 0.67394823 -0.19615042
		 4.16394997 10.73020267 0.23946041 4.54803944 10.57045746 0.23946041 4.30366135 10.90417767 0.10665413
		 4.57290697 10.79219723 0.10665413 4.43598843 11.081223488 0.036794797 4.60515881 11.010864258 0.036794797
		 4.55294466 11.26466179 0.0064932727 4.65278149 11.22313976 0.0064932727 4.66430378 11.45042801 0.029078074
		 4.70600128 11.4330864 0.029078074 4.66554308 11.44991207 -0.035417654;
	setAttr ".vt[4150:4315]" 4.70476198 11.43360138 -0.035417654 4.572721 11.25643635 -0.10299673
		 4.63300514 11.2313652 -0.10299673 4.47208595 11.066209793 -0.16095756 4.56906176 11.025877953 -0.16095756
		 4.36482573 10.87873936 -0.19572374 4.51174307 10.81763554 -0.19572374 4.22511435 10.70476437 -0.19615042
		 4.48687553 10.59589577 -0.19615042 10.52370071 4.57421064 0.23946041 10.66954136 4.18462896 0.23946041
		 10.74619102 4.59109402 0.10665413 10.84842396 4.31799841 0.10665413 10.96587658 4.61546755 0.036794797
		 11.030109406 4.4438777 0.036794797 11.17972565 4.65543127 0.0064932727 11.21763325 4.55416679 0.0064932727
		 11.39144897 4.70107174 0.029078074 11.40728188 4.65877819 0.029078074 11.39191914 4.69981527 -0.035417654
		 11.40681076 4.66003561 -0.035417654 11.18723392 4.63537216 -0.10299673 11.21012497 4.5742259 -0.10299673
		 10.97958279 4.57885361 -0.16095756 11.016404152 4.48049116 -0.16095756 10.7694149 4.5290556 -0.19572374
		 10.82519913 4.38003731 -0.19572374 10.5469265 4.51217222 -0.19615042 10.64631748 4.24666786 -0.19615042
		 5.83011532 9.90428448 0.23946041 6.15976667 9.65056515 0.23946041 6.010097504 10.036166191 0.10665413
		 6.24118233 9.85830975 0.10665413 6.18374157 10.1729269 0.036794797 6.32893562 10.061177254 0.036794797
		 6.34419394 10.31984043 0.0064932727 6.42988014 10.25389004 0.0064932727 6.49984264 10.47045135 0.029078074
		 6.53562975 10.44290733 0.029078074 6.50090599 10.46963215 -0.035417654 6.53456593 10.44372559 -0.035417654
		 6.36116695 10.30677605 -0.10299673 6.41290712 10.26695442 -0.10299673 6.21472311 10.14908218 -0.16095756
		 6.29795408 10.085021973 -0.16095756 6.062592983 9.99576283 -0.19572374 6.18868732 9.89871311 -0.19572374
		 5.88261032 9.86388111 -0.19615042 6.10727167 9.69096851 -0.19615042 7.29094648 8.85782146 0.23946041
		 7.59286118 8.57165623 0.23946041 7.48349571 8.97056484 0.10665413 7.6951375 8.76996422 0.10665413
		 7.6702404 9.088809967 0.036794797 7.80321789 8.96277046 0.036794797 7.84490299 9.21850872 0.0064932727
		 7.9233799 9.14412498 0.0064932727 8.015166283 9.35237503 0.029078074 8.047942162 9.32130909 0.029078074
		 8.016139984 9.35145283 -0.035417654 8.04696846 9.32223225 -0.035417654 7.86044884 9.2037735 -0.10299673
		 7.90783501 9.15885925 -0.10299673 7.69861507 9.061916351 -0.16095756 7.77484322 8.98966503 -0.16095756
		 7.53157425 8.92499447 -0.19572374 7.64705944 8.81553364 -0.19572374 7.33902454 8.81225014 -0.19615042
		 7.54478312 8.61722565 -0.19615042 -11.022555351 2.84790063 0.23946041 -11.093598366 2.43802762 0.23946041
		 -11.24431515 2.82322121 0.10665413 -11.29411602 2.53590155 0.10665413 -11.46470833 2.80642176 0.036794797
		 -11.49599934 2.62589502 0.036794797 -11.68225956 2.80602503 0.0064932727 -11.70072651 2.69948602 0.0064932727
		 -11.89877415 2.81160092 0.029078074 -11.90648651 2.76710439 0.029078074 -11.89900398 2.81027842 -0.035417654
		 -11.90625858 2.7684269 -0.035417654 -11.6859169 2.78492093 -0.10299673 -11.69706821 2.72058988 -0.10299673
		 -11.47138596 2.76790142 -0.16095756 -11.48932266 2.6644156 -0.16095756 -11.25562763 2.75795126 -0.19572374
		 -11.28280258 2.60117149 -0.19572374 -11.03386879 2.78263068 -0.19615042 -11.082284927 2.50329781 -0.19615042
		 -8.61189842 7.61359072 0.23946041 -8.8669281 7.28495216 0.23946041 -8.81931782 7.69583273 0.10665413
		 -8.99809361 7.46545792 0.10665413 -9.021834373 7.78439283 0.036794797 -9.134161 7.63964558 0.036794797
		 -9.21414471 7.88610458 0.0064932727 -9.28043461 7.80068111 0.0064932727 -9.40273762 7.99260521 0.029078074
		 -9.43042374 7.9569273 0.029078074 -9.40356064 7.99154472 -0.035417654 -9.42960167 7.95798826 -0.035417654
		 -9.22727585 7.86918354 -0.10299673 -9.26730347 7.81760263 -0.10299673 -9.045802116 7.75350666 -0.16095756
		 -9.11019325 7.67053175 -0.16095756 -8.85993004 7.64349842 -0.19572374 -8.95748138 7.51779175 -0.19572374
		 -8.65251064 7.56125689 -0.19615042 -8.82631683 7.33728647 -0.19615042 -9.62755966 6.15509462 0.23946041
		 -9.83875751 5.79671144 0.23946041 -9.84374809 6.21031046 0.10665413 -9.99179745 5.95908499 0.10665413
		 -10.055876732 6.27241707 0.036794797 -10.14889812 6.11456919 0.036794797 -10.25955296 6.34886551 0.0064932727
		 -10.31444931 6.2557106 0.0064932727 -10.46015167 6.43053579 0.029078074 -10.48307991 6.3916297 0.029078074
		 -10.46083355 6.42937994 -0.035417654 -10.48239899 6.39278603 -0.035417654 -10.2704277 6.33041239 -0.10299673
		 -10.30357552 6.27416325 -0.10299673 -10.075725555 6.23873615 -0.16095756 -10.1290493 6.1482501 -0.16095756
		 -9.87738037 6.1532402 -0.19572374 -9.95816517 6.016156197 -0.19572374 -9.66119099 6.098024368 -0.19615042
		 -9.80512524 5.85378218 -0.19615042 -11.31467438 1.01855123 0.23946041 -11.38571739 0.6086781 0.23946041
		 -11.53643417 0.99387163 0.10665413 -11.58623505 0.70655179 0.10665413 -11.75682735 0.97707236 0.036794797
		 -11.78811932 0.79654533 0.036794797 -11.97437859 0.97667533 0.0064932727 -11.99284554 0.87013656 0.0064932727
		 -12.19089317 0.98225123 0.029078074 -12.19860554 0.93775487 0.029078074 -12.19112301 0.98092878 -0.035417654
		 -12.19837761 0.93907732 -0.035417654 -11.97803593 0.95557141 -0.10299673 -11.98918724 0.89124048 -0.10299673
		 -11.76350498 0.93855172 -0.16095756 -11.78144169 0.83506602 -0.16095756 -11.54774666 0.92860162 -0.19572374
		 -11.57492161 0.77182192 -0.19572374 -11.32598782 0.9532811 -0.19615042 -11.37440395 0.67394823 -0.19615042
		 -4.16394997 10.73020267 0.23946041 -4.54803944 10.57045746 0.23946041 -4.30366135 10.90417767 0.10665413
		 -4.57290697 10.79219723 0.10665413 -4.43598843 11.081223488 0.036794797 -4.60515881 11.010864258 0.036794797
		 -4.55294466 11.26466179 0.0064932727 -4.65278149 11.22313976 0.0064932727 -4.66430378 11.45042801 0.029078074
		 -4.70600128 11.4330864 0.029078074 -4.66554308 11.44991207 -0.035417654 -4.70476198 11.43360138 -0.035417654
		 -4.572721 11.25643635 -0.10299673 -4.63300514 11.2313652 -0.10299673 -4.47208595 11.066209793 -0.16095756
		 -4.56906176 11.025877953 -0.16095756 -4.36482573 10.87873936 -0.19572374;
	setAttr ".vt[4316:4378]" -4.51174307 10.81763554 -0.19572374 -4.22511435 10.70476437 -0.19615042
		 -4.48687553 10.59589577 -0.19615042 -10.52370071 4.57421064 0.23946041 -10.66954136 4.18462896 0.23946041
		 -10.74619102 4.59109402 0.10665413 -10.84842396 4.31799841 0.10665413 -10.96587658 4.61546755 0.036794797
		 -11.030109406 4.4438777 0.036794797 -11.17972565 4.65543127 0.0064932727 -11.21763325 4.55416679 0.0064932727
		 -11.39144897 4.70107174 0.029078074 -11.40728188 4.65877819 0.029078074 -11.39191914 4.69981527 -0.035417654
		 -11.40681076 4.66003561 -0.035417654 -11.18723392 4.63537216 -0.10299673 -11.21012497 4.5742259 -0.10299673
		 -10.97958279 4.57885361 -0.16095756 -11.016404152 4.48049116 -0.16095756 -10.7694149 4.5290556 -0.19572374
		 -10.82519913 4.38003731 -0.19572374 -10.5469265 4.51217222 -0.19615042 -10.64631748 4.24666786 -0.19615042
		 -5.83011532 9.90428448 0.23946041 -6.15976667 9.65056515 0.23946041 -6.010097504 10.036166191 0.10665413
		 -6.24118233 9.85830975 0.10665413 -6.18374157 10.1729269 0.036794797 -6.32893562 10.061177254 0.036794797
		 -6.34419394 10.31984043 0.0064932727 -6.42988014 10.25389004 0.0064932727 -6.49984264 10.47045135 0.029078074
		 -6.53562975 10.44290733 0.029078074 -6.50090599 10.46963215 -0.035417654 -6.53456593 10.44372559 -0.035417654
		 -6.36116695 10.30677605 -0.10299673 -6.41290712 10.26695442 -0.10299673 -6.21472311 10.14908218 -0.16095756
		 -6.29795408 10.085021973 -0.16095756 -6.062592983 9.99576283 -0.19572374 -6.18868732 9.89871311 -0.19572374
		 -5.88261032 9.86388111 -0.19615042 -6.10727167 9.69096851 -0.19615042 -7.29094648 8.85782146 0.23946041
		 -7.59286118 8.57165623 0.23946041 -7.48349571 8.97056484 0.10665413 -7.6951375 8.76996422 0.10665413
		 -7.6702404 9.088809967 0.036794797 -7.80321789 8.96277046 0.036794797 -7.84490299 9.21850872 0.0064932727
		 -7.9233799 9.14412498 0.0064932727 -8.015166283 9.35237503 0.029078074 -8.047942162 9.32130909 0.029078074
		 -8.016139984 9.35145283 -0.035417654 -8.04696846 9.32223225 -0.035417654 -7.86044884 9.2037735 -0.10299673
		 -7.90783501 9.15885925 -0.10299673 -7.69861507 9.061916351 -0.16095756 -7.77484322 8.98966503 -0.16095756
		 -7.53157425 8.92499447 -0.19572374 -7.64705944 8.81553364 -0.19572374 -7.33902454 8.81225014 -0.19615042
		 -7.54478312 8.61722565 -0.19615042;
	setAttr -s 8301 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 0 161 162 0 162 163 0 163 164 0 164 165 0 165 166 0;
	setAttr ".ed[166:331]" 166 167 0 167 168 0 168 169 0 169 170 0 170 171 0 171 172 0
		 172 173 0 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 178 179 0 179 160 0 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1
		 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1
		 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1
		 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1;
	setAttr ".ed[332:497]" 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 180 181 0 181 182 0 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0
		 187 188 0 188 189 0 189 190 0 190 191 0 191 192 0 192 193 0 193 194 0 194 195 0 195 196 0
		 196 197 0 197 198 0 198 199 0 199 180 0 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1
		 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1
		 223 224 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1
		 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1
		 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1
		 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1
		 259 240 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1
		 277 278 1 278 279 1 279 260 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1
		 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1
		 295 296 1 296 297 1 297 298 1 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1
		 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1
		 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1
		 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1
		 331 332 1 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1;
	setAttr ".ed[498:663]" 338 339 1 339 320 1 340 341 0 341 342 0 342 343 0 343 344 0
		 344 345 0 345 346 0 346 347 0 347 348 0 348 349 0 349 350 0 350 351 0 351 352 0 352 353 0
		 353 354 0 354 355 0 355 356 0 356 357 0 357 358 0 358 359 0 359 340 0 180 200 1 181 201 1
		 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1
		 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1
		 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1
		 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1
		 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1
		 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1
		 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1
		 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1
		 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1
		 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1 270 290 1 271 291 1
		 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1 279 299 1 280 300 1
		 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1;
	setAttr ".ed[664:829]" 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1
		 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1
		 339 359 1 360 361 0 361 362 0 362 363 0 363 364 0 364 365 0 365 366 0 366 367 0 367 368 0
		 368 369 0 369 370 0 370 371 0 371 372 0 372 373 0 373 374 0 374 375 0 375 376 0 376 377 0
		 377 378 0 378 379 0 379 360 0 380 381 1 381 382 1 382 383 1 383 384 1 384 385 1 385 386 1
		 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1
		 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 400 401 1 401 402 1 402 403 1 403 404 1
		 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1
		 413 414 1 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1 419 400 1 420 421 1 421 422 1
		 422 423 1 423 424 1 424 425 1 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1 430 431 1
		 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1 436 437 1 437 438 1 438 439 1 439 420 1
		 440 441 1 441 442 1 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1 448 449 1
		 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1 457 458 1
		 458 459 1 459 440 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 472 473 1 473 474 1 474 475 1 475 476 1
		 476 477 1 477 478 1 478 479 1 479 460 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1
		 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1 490 491 1 491 492 1 492 493 1 493 494 1
		 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1 499 480 1 500 501 1 501 502 1 502 503 1
		 503 504 1 504 505 1 505 506 1 506 507 1 507 508 1 508 509 1 509 510 1;
	setAttr ".ed[830:995]" 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1
		 516 517 1 517 518 1 518 519 1 519 500 1 520 521 0 521 522 0 522 523 0 523 524 0 524 525 0
		 525 526 0 526 527 0 527 528 0 528 529 0 529 530 0 530 531 0 531 532 0 532 533 0 533 534 0
		 534 535 0 535 536 0 536 537 0 537 538 0 538 539 0 539 520 0 360 380 1 361 381 1 362 382 1
		 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1 369 389 1 370 390 1 371 391 1
		 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1 378 398 1 379 399 1 380 400 1
		 381 401 1 382 402 1 383 403 1 384 404 1 385 405 1 386 406 1 387 407 1 388 408 1 389 409 1
		 390 410 1 391 411 1 392 412 1 393 413 1 394 414 1 395 415 1 396 416 1 397 417 1 398 418 1
		 399 419 1 400 420 1 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1 407 427 1
		 408 428 1 409 429 1 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1 416 436 1
		 417 437 1 418 438 1 419 439 1 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1 425 445 1
		 426 446 1 427 447 1 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1 434 454 1
		 435 455 1 436 456 1 437 457 1 438 458 1 439 459 1 440 460 1 441 461 1 442 462 1 443 463 1
		 444 464 1 445 465 1 446 466 1 447 467 1 448 468 1 449 469 1 450 470 1 451 471 1 452 472 1
		 453 473 1 454 474 1 455 475 1 456 476 1 457 477 1 458 478 1 459 479 1 460 480 1 461 481 1
		 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1 468 488 1 469 489 1 470 490 1
		 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1 477 497 1 478 498 1 479 499 1
		 480 500 1 481 501 1 482 502 1 483 503 1 484 504 1 485 505 1 486 506 1 487 507 1 488 508 1
		 489 509 1 490 510 1 491 511 1 492 512 1 493 513 1 494 514 1 495 515 1;
	setAttr ".ed[996:1161]" 496 516 1 497 517 1 498 518 1 499 519 1 500 520 1 501 521 1
		 502 522 1 503 523 1 504 524 1 505 525 1 506 526 1 507 527 1 508 528 1 509 529 1 510 530 1
		 511 531 1 512 532 1 513 533 1 514 534 1 515 535 1 516 536 1 517 537 1 518 538 1 519 539 1
		 540 541 0 541 542 0 542 543 0 543 544 0 544 545 0 545 546 0 546 547 0 547 548 0 548 549 0
		 549 550 0 550 551 0 551 552 0 552 553 0 553 554 0 554 555 0 555 556 0 556 557 0 557 558 0
		 558 559 0 559 540 0 560 561 1 561 562 1 562 563 1 563 564 1 564 565 1 565 566 1 566 567 1
		 567 568 1 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1 574 575 1 575 576 1
		 576 577 1 577 578 1 578 579 1 579 560 1 580 581 1 581 582 1 582 583 1 583 584 1 584 585 1
		 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1 591 592 1 592 593 1 593 594 1
		 594 595 1 595 596 1 596 597 1 597 598 1 598 599 1 599 580 1 600 601 1 601 602 1 602 603 1
		 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1
		 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1 619 600 1 620 621 1
		 621 622 1 622 623 1 623 624 1 624 625 1 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1
		 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1 637 638 1 638 639 1
		 639 620 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1 647 648 1
		 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1 655 656 1 656 657 1
		 657 658 1 658 659 1 659 640 1 660 661 1 661 662 1 662 663 1 663 664 1 664 665 1 665 666 1
		 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1 673 674 1 674 675 1
		 675 676 1 676 677 1 677 678 1 678 679 1 679 660 1 680 681 1 681 682 1;
	setAttr ".ed[1162:1327]" 682 683 1 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1
		 688 689 1 689 690 1 690 691 1 691 692 1 692 693 1 693 694 1 694 695 1 695 696 1 696 697 1
		 697 698 1 698 699 1 699 680 1 700 701 0 701 702 0 702 703 0 703 704 0 704 705 0 705 706 0
		 706 707 0 707 708 0 708 709 0 709 710 0 710 711 0 711 712 0 712 713 0 713 714 0 714 715 0
		 715 716 0 716 717 0 717 718 0 718 719 0 719 700 0 540 560 1 541 561 1 542 562 1 543 563 1
		 544 564 1 545 565 1 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1
		 553 573 1 554 574 1 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1
		 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1
		 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1
		 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1
		 589 609 1 590 610 1 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1
		 598 618 1 599 619 1 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1
		 607 627 1 608 628 1 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1
		 616 636 1 617 637 1 618 638 1 619 639 1 620 640 1 621 641 1 622 642 1 623 643 1 624 644 1
		 625 645 1 626 646 1 627 647 1 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1
		 634 654 1 635 655 1 636 656 1 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1
		 643 663 1 644 664 1 645 665 1 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1
		 652 672 1 653 673 1 654 674 1 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1
		 661 681 1 662 682 1 663 683 1 664 684 1 665 685 1 666 686 1 667 687 1;
	setAttr ".ed[1328:1493]" 668 688 1 669 689 1 670 690 1 671 691 1 672 692 1 673 693 1
		 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1 679 699 1 680 700 1 681 701 1 682 702 1
		 683 703 1 684 704 1 685 705 1 686 706 1 687 707 1 688 708 1 689 709 1 690 710 1 691 711 1
		 692 712 1 693 713 1 694 714 1 695 715 1 696 716 1 697 717 1 698 718 1 699 719 1 720 721 0
		 721 722 0 722 723 0 723 724 0 724 725 0 725 726 0 726 727 0 727 728 0 728 729 0 729 730 0
		 730 731 0 731 732 0 732 733 0 733 734 0 734 735 0 735 736 0 736 737 0 737 738 0 738 739 0
		 739 720 0 740 741 1 741 742 1 742 743 1 743 744 1 744 745 1 745 746 1 746 747 1 747 748 1
		 748 749 1 749 750 1 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1
		 757 758 1 758 759 1 759 740 1 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 766 1
		 766 767 1 767 768 1 768 769 1 769 770 1 770 771 1 771 772 1 772 773 1 773 774 1 774 775 1
		 775 776 1 776 777 1 777 778 1 778 779 1 779 760 1 780 781 1 781 782 1 782 783 1 783 784 1
		 784 785 1 785 786 1 786 787 1 787 788 1 788 789 1 789 790 1 790 791 1 791 792 1 792 793 1
		 793 794 1 794 795 1 795 796 1 796 797 1 797 798 1 798 799 1 799 780 1 800 801 1 801 802 1
		 802 803 1 803 804 1 804 805 1 805 806 1 806 807 1 807 808 1 808 809 1 809 810 1 810 811 1
		 811 812 1 812 813 1 813 814 1 814 815 1 815 816 1 816 817 1 817 818 1 818 819 1 819 800 1
		 820 821 1 821 822 1 822 823 1 823 824 1 824 825 1 825 826 1 826 827 1 827 828 1 828 829 1
		 829 830 1 830 831 1 831 832 1 832 833 1 833 834 1 834 835 1 835 836 1 836 837 1 837 838 1
		 838 839 1 839 820 1 840 841 1 841 842 1 842 843 1 843 844 1 844 845 1 845 846 1 846 847 1
		 847 848 1 848 849 1 849 850 1 850 851 1 851 852 1 852 853 1 853 854 1;
	setAttr ".ed[1494:1659]" 854 855 1 855 856 1 856 857 1 857 858 1 858 859 1 859 840 1
		 860 861 1 861 862 1 862 863 1 863 864 1 864 865 1 865 866 1 866 867 1 867 868 1 868 869 1
		 869 870 1 870 871 1 871 872 1 872 873 1 873 874 1 874 875 1 875 876 1 876 877 1 877 878 1
		 878 879 1 879 860 1 880 881 0 881 882 0 882 883 0 883 884 0 884 885 0 885 886 0 886 887 0
		 887 888 0 888 889 0 889 890 0 890 891 0 891 892 0 892 893 0 893 894 0 894 895 0 895 896 0
		 896 897 0 897 898 0 898 899 0 899 880 0 720 740 1 721 741 1 722 742 1 723 743 1 724 744 1
		 725 745 1 726 746 1 727 747 1 728 748 1 729 749 1 730 750 1 731 751 1 732 752 1 733 753 1
		 734 754 1 735 755 1 736 756 1 737 757 1 738 758 1 739 759 1 740 760 1 741 761 1 742 762 1
		 743 763 1 744 764 1 745 765 1 746 766 1 747 767 1 748 768 1 749 769 1 750 770 1 751 771 1
		 752 772 1 753 773 1 754 774 1 755 775 1 756 776 1 757 777 1 758 778 1 759 779 1 760 780 1
		 761 781 1 762 782 1 763 783 1 764 784 1 765 785 1 766 786 1 767 787 1 768 788 1 769 789 1
		 770 790 1 771 791 1 772 792 1 773 793 1 774 794 1 775 795 1 776 796 1 777 797 1 778 798 1
		 779 799 1 780 800 1 781 801 1 782 802 1 783 803 1 784 804 1 785 805 1 786 806 1 787 807 1
		 788 808 1 789 809 1 790 810 1 791 811 1 792 812 1 793 813 1 794 814 1 795 815 1 796 816 1
		 797 817 1 798 818 1 799 819 1 800 820 1 801 821 1 802 822 1 803 823 1 804 824 1 805 825 1
		 806 826 1 807 827 1 808 828 1 809 829 1 810 830 1 811 831 1 812 832 1 813 833 1 814 834 1
		 815 835 1 816 836 1 817 837 1 818 838 1 819 839 1 820 840 1 821 841 1 822 842 1 823 843 1
		 824 844 1 825 845 1 826 846 1 827 847 1 828 848 1 829 849 1 830 850 1 831 851 1 832 852 1
		 833 853 1 834 854 1 835 855 1 836 856 1 837 857 1 838 858 1 839 859 1;
	setAttr ".ed[1660:1825]" 840 860 1 841 861 1 842 862 1 843 863 1 844 864 1 845 865 1
		 846 866 1 847 867 1 848 868 1 849 869 1 850 870 1 851 871 1 852 872 1 853 873 1 854 874 1
		 855 875 1 856 876 1 857 877 1 858 878 1 859 879 1 860 880 1 861 881 1 862 882 1 863 883 1
		 864 884 1 865 885 1 866 886 1 867 887 1 868 888 1 869 889 1 870 890 1 871 891 1 872 892 1
		 873 893 1 874 894 1 875 895 1 876 896 1 877 897 1 878 898 1 879 899 1 900 901 0 901 902 0
		 902 903 0 903 904 0 904 905 0 905 906 0 906 907 0 907 908 0 908 909 0 909 910 0 910 911 0
		 911 912 0 912 913 0 913 914 0 914 915 0 915 916 0 916 917 0 917 918 0 918 919 0 919 900 0
		 920 921 1 921 922 1 922 923 1 923 924 1 924 925 1 925 926 1 926 927 1 927 928 1 928 929 1
		 929 930 1 930 931 1 931 932 1 932 933 1 933 934 1 934 935 1 935 936 1 936 937 1 937 938 1
		 938 939 1 939 920 1 940 941 1 941 942 1 942 943 1 943 944 1 944 945 1 945 946 1 946 947 1
		 947 948 1 948 949 1 949 950 1 950 951 1 951 952 1 952 953 1 953 954 1 954 955 1 955 956 1
		 956 957 1 957 958 1 958 959 1 959 940 1 960 961 1 961 962 1 962 963 1 963 964 1 964 965 1
		 965 966 1 966 967 1 967 968 1 968 969 1 969 970 1 970 971 1 971 972 1 972 973 1 973 974 1
		 974 975 1 975 976 1 976 977 1 977 978 1 978 979 1 979 960 1 980 981 1 981 982 1 982 983 1
		 983 984 1 984 985 1 985 986 1 986 987 1 987 988 1 988 989 1 989 990 1 990 991 1 991 992 1
		 992 993 1 993 994 1 994 995 1 995 996 1 996 997 1 997 998 1 998 999 1 999 980 1 1000 1001 1
		 1001 1002 1 1002 1003 1 1003 1004 1 1004 1005 1 1005 1006 1 1006 1007 1 1007 1008 1
		 1008 1009 1 1009 1010 1 1010 1011 1 1011 1012 1 1012 1013 1 1013 1014 1 1014 1015 1
		 1015 1016 1 1016 1017 1 1017 1018 1 1018 1019 1 1019 1000 1 1020 1021 1 1021 1022 1
		 1022 1023 1 1023 1024 1 1024 1025 1 1025 1026 1;
	setAttr ".ed[1826:1991]" 1026 1027 1 1027 1028 1 1028 1029 1 1029 1030 1 1030 1031 1
		 1031 1032 1 1032 1033 1 1033 1034 1 1034 1035 1 1035 1036 1 1036 1037 1 1037 1038 1
		 1038 1039 1 1039 1020 1 1040 1041 1 1041 1042 1 1042 1043 1 1043 1044 1 1044 1045 1
		 1045 1046 1 1046 1047 1 1047 1048 1 1048 1049 1 1049 1050 1 1050 1051 1 1051 1052 1
		 1052 1053 1 1053 1054 1 1054 1055 1 1055 1056 1 1056 1057 1 1057 1058 1 1058 1059 1
		 1059 1040 1 1060 1061 0 1061 1062 0 1062 1063 0 1063 1064 0 1064 1065 0 1065 1066 0
		 1066 1067 0 1067 1068 0 1068 1069 0 1069 1070 0 1070 1071 0 1071 1072 0 1072 1073 0
		 1073 1074 0 1074 1075 0 1075 1076 0 1076 1077 0 1077 1078 0 1078 1079 0 1079 1060 0
		 900 920 1 901 921 1 902 922 1 903 923 1 904 924 1 905 925 1 906 926 1 907 927 1 908 928 1
		 909 929 1 910 930 1 911 931 1 912 932 1 913 933 1 914 934 1 915 935 1 916 936 1 917 937 1
		 918 938 1 919 939 1 920 940 1 921 941 1 922 942 1 923 943 1 924 944 1 925 945 1 926 946 1
		 927 947 1 928 948 1 929 949 1 930 950 1 931 951 1 932 952 1 933 953 1 934 954 1 935 955 1
		 936 956 1 937 957 1 938 958 1 939 959 1 940 960 1 941 961 1 942 962 1 943 963 1 944 964 1
		 945 965 1 946 966 1 947 967 1 948 968 1 949 969 1 950 970 1 951 971 1 952 972 1 953 973 1
		 954 974 1 955 975 1 956 976 1 957 977 1 958 978 1 959 979 1 960 980 1 961 981 1 962 982 1
		 963 983 1 964 984 1 965 985 1 966 986 1 967 987 1 968 988 1 969 989 1 970 990 1 971 991 1
		 972 992 1 973 993 1 974 994 1 975 995 1 976 996 1 977 997 1 978 998 1 979 999 1 980 1000 1
		 981 1001 1 982 1002 1 983 1003 1 984 1004 1 985 1005 1 986 1006 1 987 1007 1 988 1008 1
		 989 1009 1 990 1010 1 991 1011 1 992 1012 1 993 1013 1 994 1014 1 995 1015 1 996 1016 1
		 997 1017 1 998 1018 1 999 1019 1 1000 1020 1 1001 1021 1 1002 1022 1 1003 1023 1
		 1004 1024 1 1005 1025 1 1006 1026 1 1007 1027 1 1008 1028 1 1009 1029 1 1010 1030 1
		 1011 1031 1;
	setAttr ".ed[1992:2157]" 1012 1032 1 1013 1033 1 1014 1034 1 1015 1035 1 1016 1036 1
		 1017 1037 1 1018 1038 1 1019 1039 1 1020 1040 1 1021 1041 1 1022 1042 1 1023 1043 1
		 1024 1044 1 1025 1045 1 1026 1046 1 1027 1047 1 1028 1048 1 1029 1049 1 1030 1050 1
		 1031 1051 1 1032 1052 1 1033 1053 1 1034 1054 1 1035 1055 1 1036 1056 1 1037 1057 1
		 1038 1058 1 1039 1059 1 1040 1060 1 1041 1061 1 1042 1062 1 1043 1063 1 1044 1064 1
		 1045 1065 1 1046 1066 1 1047 1067 1 1048 1068 1 1049 1069 1 1050 1070 1 1051 1071 1
		 1052 1072 1 1053 1073 1 1054 1074 1 1055 1075 1 1056 1076 1 1057 1077 1 1058 1078 1
		 1059 1079 1 1080 1081 0 1081 1082 0 1082 1083 0 1083 1084 0 1084 1085 0 1085 1086 0
		 1086 1087 0 1087 1088 0 1088 1089 0 1089 1090 0 1090 1091 0 1091 1092 0 1092 1093 0
		 1093 1094 0 1094 1095 0 1095 1096 0 1096 1097 0 1097 1098 0 1098 1099 0 1099 1080 0
		 1100 1101 1 1101 1102 1 1102 1103 1 1103 1104 1 1104 1105 1 1105 1106 1 1106 1107 1
		 1107 1108 1 1108 1109 1 1109 1110 1 1110 1111 1 1111 1112 1 1112 1113 1 1113 1114 1
		 1114 1115 1 1115 1116 1 1116 1117 1 1117 1118 1 1118 1119 1 1119 1100 1 1120 1121 1
		 1121 1122 1 1122 1123 1 1123 1124 1 1124 1125 1 1125 1126 1 1126 1127 1 1127 1128 1
		 1128 1129 1 1129 1130 1 1130 1131 1 1131 1132 1 1132 1133 1 1133 1134 1 1134 1135 1
		 1135 1136 1 1136 1137 1 1137 1138 1 1138 1139 1 1139 1120 1 1140 1141 1 1141 1142 1
		 1142 1143 1 1143 1144 1 1144 1145 1 1145 1146 1 1146 1147 1 1147 1148 1 1148 1149 1
		 1149 1150 1 1150 1151 1 1151 1152 1 1152 1153 1 1153 1154 1 1154 1155 1 1155 1156 1
		 1156 1157 1 1157 1158 1 1158 1159 1 1159 1140 1 1160 1161 1 1161 1162 1 1162 1163 1
		 1163 1164 1 1164 1165 1 1165 1166 1 1166 1167 1 1167 1168 1 1168 1169 1 1169 1170 1
		 1170 1171 1 1171 1172 1 1172 1173 1 1173 1174 1 1174 1175 1 1175 1176 1 1176 1177 1
		 1177 1178 1 1178 1179 1 1179 1160 1 1180 1181 1 1181 1182 1 1182 1183 1 1183 1184 1
		 1184 1185 1 1185 1186 1 1186 1187 1 1187 1188 1 1188 1189 1 1189 1190 1 1190 1191 1
		 1191 1192 1 1192 1193 1 1193 1194 1 1194 1195 1 1195 1196 1 1196 1197 1 1197 1198 1;
	setAttr ".ed[2158:2323]" 1198 1199 1 1199 1180 1 1200 1201 1 1201 1202 1 1202 1203 1
		 1203 1204 1 1204 1205 1 1205 1206 1 1206 1207 1 1207 1208 1 1208 1209 1 1209 1210 1
		 1210 1211 1 1211 1212 1 1212 1213 1 1213 1214 1 1214 1215 1 1215 1216 1 1216 1217 1
		 1217 1218 1 1218 1219 1 1219 1200 1 1220 1221 1 1221 1222 1 1222 1223 1 1223 1224 1
		 1224 1225 1 1225 1226 1 1226 1227 1 1227 1228 1 1228 1229 1 1229 1230 1 1230 1231 1
		 1231 1232 1 1232 1233 1 1233 1234 1 1234 1235 1 1235 1236 1 1236 1237 1 1237 1238 1
		 1238 1239 1 1239 1220 1 1240 1241 0 1241 1242 0 1242 1243 0 1243 1244 0 1244 1245 0
		 1245 1246 0 1246 1247 0 1247 1248 0 1248 1249 0 1249 1250 0 1250 1251 0 1251 1252 0
		 1252 1253 0 1253 1254 0 1254 1255 0 1255 1256 0 1256 1257 0 1257 1258 0 1258 1259 0
		 1259 1240 0 1080 1100 1 1081 1101 1 1082 1102 1 1083 1103 1 1084 1104 1 1085 1105 1
		 1086 1106 1 1087 1107 1 1088 1108 1 1089 1109 1 1090 1110 1 1091 1111 1 1092 1112 1
		 1093 1113 1 1094 1114 1 1095 1115 1 1096 1116 1 1097 1117 1 1098 1118 1 1099 1119 1
		 1100 1120 1 1101 1121 1 1102 1122 1 1103 1123 1 1104 1124 1 1105 1125 1 1106 1126 1
		 1107 1127 1 1108 1128 1 1109 1129 1 1110 1130 1 1111 1131 1 1112 1132 1 1113 1133 1
		 1114 1134 1 1115 1135 1 1116 1136 1 1117 1137 1 1118 1138 1 1119 1139 1 1120 1140 1
		 1121 1141 1 1122 1142 1 1123 1143 1 1124 1144 1 1125 1145 1 1126 1146 1 1127 1147 1
		 1128 1148 1 1129 1149 1 1130 1150 1 1131 1151 1 1132 1152 1 1133 1153 1 1134 1154 1
		 1135 1155 1 1136 1156 1 1137 1157 1 1138 1158 1 1139 1159 1 1140 1160 1 1141 1161 1
		 1142 1162 1 1143 1163 1 1144 1164 1 1145 1165 1 1146 1166 1 1147 1167 1 1148 1168 1
		 1149 1169 1 1150 1170 1 1151 1171 1 1152 1172 1 1153 1173 1 1154 1174 1 1155 1175 1
		 1156 1176 1 1157 1177 1 1158 1178 1 1159 1179 1 1160 1180 1 1161 1181 1 1162 1182 1
		 1163 1183 1 1164 1184 1 1165 1185 1 1166 1186 1 1167 1187 1 1168 1188 1 1169 1189 1
		 1170 1190 1 1171 1191 1 1172 1192 1 1173 1193 1 1174 1194 1 1175 1195 1 1176 1196 1
		 1177 1197 1 1178 1198 1 1179 1199 1 1180 1200 1 1181 1201 1 1182 1202 1 1183 1203 1;
	setAttr ".ed[2324:2489]" 1184 1204 1 1185 1205 1 1186 1206 1 1187 1207 1 1188 1208 1
		 1189 1209 1 1190 1210 1 1191 1211 1 1192 1212 1 1193 1213 1 1194 1214 1 1195 1215 1
		 1196 1216 1 1197 1217 1 1198 1218 1 1199 1219 1 1200 1220 1 1201 1221 1 1202 1222 1
		 1203 1223 1 1204 1224 1 1205 1225 1 1206 1226 1 1207 1227 1 1208 1228 1 1209 1229 1
		 1210 1230 1 1211 1231 1 1212 1232 1 1213 1233 1 1214 1234 1 1215 1235 1 1216 1236 1
		 1217 1237 1 1218 1238 1 1219 1239 1 1220 1240 1 1221 1241 1 1222 1242 1 1223 1243 1
		 1224 1244 1 1225 1245 1 1226 1246 1 1227 1247 1 1228 1248 1 1229 1249 1 1230 1250 1
		 1231 1251 1 1232 1252 1 1233 1253 1 1234 1254 1 1235 1255 1 1236 1256 1 1237 1257 1
		 1238 1258 1 1239 1259 1 1260 1261 0 1261 1262 0 1262 1263 0 1263 1264 0 1264 1265 0
		 1265 1266 0 1266 1267 0 1267 1268 0 1268 1269 0 1269 1270 0 1270 1271 0 1271 1272 0
		 1272 1273 0 1273 1274 0 1274 1275 0 1275 1276 0 1276 1277 0 1277 1278 0 1278 1279 0
		 1279 1260 0 1280 1281 1 1281 1282 1 1282 1283 1 1283 1284 1 1284 1285 1 1285 1286 1
		 1286 1287 1 1287 1288 1 1288 1289 1 1289 1290 1 1290 1291 1 1291 1292 1 1292 1293 1
		 1293 1294 1 1294 1295 1 1295 1296 1 1296 1297 1 1297 1298 1 1298 1299 1 1299 1280 1
		 1300 1301 1 1301 1302 1 1302 1303 1 1303 1304 1 1304 1305 1 1305 1306 1 1306 1307 1
		 1307 1308 1 1308 1309 1 1309 1310 1 1310 1311 1 1311 1312 1 1312 1313 1 1313 1314 1
		 1314 1315 1 1315 1316 1 1316 1317 1 1317 1318 1 1318 1319 1 1319 1300 1 1320 1321 1
		 1321 1322 1 1322 1323 1 1323 1324 1 1324 1325 1 1325 1326 1 1326 1327 1 1327 1328 1
		 1328 1329 1 1329 1330 1 1330 1331 1 1331 1332 1 1332 1333 1 1333 1334 1 1334 1335 1
		 1335 1336 1 1336 1337 1 1337 1338 1 1338 1339 1 1339 1320 1 1340 1341 1 1341 1342 1
		 1342 1343 1 1343 1344 1 1344 1345 1 1345 1346 1 1346 1347 1 1347 1348 1 1348 1349 1
		 1349 1350 1 1350 1351 1 1351 1352 1 1352 1353 1 1353 1354 1 1354 1355 1 1355 1356 1
		 1356 1357 1 1357 1358 1 1358 1359 1 1359 1340 1 1360 1361 1 1361 1362 1 1362 1363 1
		 1363 1364 1 1364 1365 1 1365 1366 1 1366 1367 1 1367 1368 1 1368 1369 1 1369 1370 1;
	setAttr ".ed[2490:2655]" 1370 1371 1 1371 1372 1 1372 1373 1 1373 1374 1 1374 1375 1
		 1375 1376 1 1376 1377 1 1377 1378 1 1378 1379 1 1379 1360 1 1380 1381 1 1381 1382 1
		 1382 1383 1 1383 1384 1 1384 1385 1 1385 1386 1 1386 1387 1 1387 1388 1 1388 1389 1
		 1389 1390 1 1390 1391 1 1391 1392 1 1392 1393 1 1393 1394 1 1394 1395 1 1395 1396 1
		 1396 1397 1 1397 1398 1 1398 1399 1 1399 1380 1 1400 1401 1 1401 1402 1 1402 1403 1
		 1403 1404 1 1404 1405 1 1405 1406 1 1406 1407 1 1407 1408 1 1408 1409 1 1409 1410 1
		 1410 1411 1 1411 1412 1 1412 1413 1 1413 1414 1 1414 1415 1 1415 1416 1 1416 1417 1
		 1417 1418 1 1418 1419 1 1419 1400 1 1420 1421 0 1421 1422 0 1422 1423 0 1423 1424 0
		 1424 1425 0 1425 1426 0 1426 1427 0 1427 1428 0 1428 1429 0 1429 1430 0 1430 1431 0
		 1431 1432 0 1432 1433 0 1433 1434 0 1434 1435 0 1435 1436 0 1436 1437 0 1437 1438 0
		 1438 1439 0 1439 1420 0 1260 1280 1 1261 1281 1 1262 1282 1 1263 1283 1 1264 1284 1
		 1265 1285 1 1266 1286 1 1267 1287 1 1268 1288 1 1269 1289 1 1270 1290 1 1271 1291 1
		 1272 1292 1 1273 1293 1 1274 1294 1 1275 1295 1 1276 1296 1 1277 1297 1 1278 1298 1
		 1279 1299 1 1280 1300 1 1281 1301 1 1282 1302 1 1283 1303 1 1284 1304 1 1285 1305 1
		 1286 1306 1 1287 1307 1 1288 1308 1 1289 1309 1 1290 1310 1 1291 1311 1 1292 1312 1
		 1293 1313 1 1294 1314 1 1295 1315 1 1296 1316 1 1297 1317 1 1298 1318 1 1299 1319 1
		 1300 1320 1 1301 1321 1 1302 1322 1 1303 1323 1 1304 1324 1 1305 1325 1 1306 1326 1
		 1307 1327 1 1308 1328 1 1309 1329 1 1310 1330 1 1311 1331 1 1312 1332 1 1313 1333 1
		 1314 1334 1 1315 1335 1 1316 1336 1 1317 1337 1 1318 1338 1 1319 1339 1 1320 1340 1
		 1321 1341 1 1322 1342 1 1323 1343 1 1324 1344 1 1325 1345 1 1326 1346 1 1327 1347 1
		 1328 1348 1 1329 1349 1 1330 1350 1 1331 1351 1 1332 1352 1 1333 1353 1 1334 1354 1
		 1335 1355 1 1336 1356 1 1337 1357 1 1338 1358 1 1339 1359 1 1340 1360 1 1341 1361 1
		 1342 1362 1 1343 1363 1 1344 1364 1 1345 1365 1 1346 1366 1 1347 1367 1 1348 1368 1
		 1349 1369 1 1350 1370 1 1351 1371 1 1352 1372 1 1353 1373 1 1354 1374 1 1355 1375 1;
	setAttr ".ed[2656:2821]" 1356 1376 1 1357 1377 1 1358 1378 1 1359 1379 1 1360 1380 1
		 1361 1381 1 1362 1382 1 1363 1383 1 1364 1384 1 1365 1385 1 1366 1386 1 1367 1387 1
		 1368 1388 1 1369 1389 1 1370 1390 1 1371 1391 1 1372 1392 1 1373 1393 1 1374 1394 1
		 1375 1395 1 1376 1396 1 1377 1397 1 1378 1398 1 1379 1399 1 1380 1400 1 1381 1401 1
		 1382 1402 1 1383 1403 1 1384 1404 1 1385 1405 1 1386 1406 1 1387 1407 1 1388 1408 1
		 1389 1409 1 1390 1410 1 1391 1411 1 1392 1412 1 1393 1413 1 1394 1414 1 1395 1415 1
		 1396 1416 1 1397 1417 1 1398 1418 1 1399 1419 1 1400 1420 1 1401 1421 1 1402 1422 1
		 1403 1423 1 1404 1424 1 1405 1425 1 1406 1426 1 1407 1427 1 1408 1428 1 1409 1429 1
		 1410 1430 1 1411 1431 1 1412 1432 1 1413 1433 1 1414 1434 1 1415 1435 1 1416 1436 1
		 1417 1437 1 1418 1438 1 1419 1439 1 1440 1441 0 1441 1442 0 1442 1443 0 1443 1444 0
		 1444 1445 0 1445 1446 0 1446 1447 0 1447 1448 0 1448 1449 0 1449 1450 0 1450 1451 0
		 1451 1452 0 1452 1453 0 1453 1454 0 1454 1455 0 1455 1456 0 1456 1457 0 1457 1458 0
		 1458 1459 0 1459 1440 0 1460 1461 1 1461 1462 1 1462 1463 1 1463 1464 1 1464 1465 1
		 1465 1466 1 1466 1467 1 1467 1468 1 1468 1469 1 1469 1470 1 1470 1471 1 1471 1472 1
		 1472 1473 1 1473 1474 1 1474 1475 1 1475 1476 1 1476 1477 1 1477 1478 1 1478 1479 1
		 1479 1460 1 1480 1481 1 1481 1482 1 1482 1483 1 1483 1484 1 1484 1485 1 1485 1486 1
		 1486 1487 1 1487 1488 1 1488 1489 1 1489 1490 1 1490 1491 1 1491 1492 1 1492 1493 1
		 1493 1494 1 1494 1495 1 1495 1496 1 1496 1497 1 1497 1498 1 1498 1499 1 1499 1480 1
		 1500 1501 1 1501 1502 1 1502 1503 1 1503 1504 1 1504 1505 1 1505 1506 1 1506 1507 1
		 1507 1508 1 1508 1509 1 1509 1510 1 1510 1511 1 1511 1512 1 1512 1513 1 1513 1514 1
		 1514 1515 1 1515 1516 1 1516 1517 1 1517 1518 1 1518 1519 1 1519 1500 1 1520 1521 1
		 1521 1522 1 1522 1523 1 1523 1524 1 1524 1525 1 1525 1526 1 1526 1527 1 1527 1528 1
		 1528 1529 1 1529 1530 1 1530 1531 1 1531 1532 1 1532 1533 1 1533 1534 1 1534 1535 1
		 1535 1536 1 1536 1537 1 1537 1538 1 1538 1539 1 1539 1520 1 1540 1541 1 1541 1542 1;
	setAttr ".ed[2822:2987]" 1542 1543 1 1543 1544 1 1544 1545 1 1545 1546 1 1546 1547 1
		 1547 1548 1 1548 1549 1 1549 1550 1 1550 1551 1 1551 1552 1 1552 1553 1 1553 1554 1
		 1554 1555 1 1555 1556 1 1556 1557 1 1557 1558 1 1558 1559 1 1559 1540 1 1560 1561 1
		 1561 1562 1 1562 1563 1 1563 1564 1 1564 1565 1 1565 1566 1 1566 1567 1 1567 1568 1
		 1568 1569 1 1569 1570 1 1570 1571 1 1571 1572 1 1572 1573 1 1573 1574 1 1574 1575 1
		 1575 1576 1 1576 1577 1 1577 1578 1 1578 1579 1 1579 1560 1 1580 1581 1 1581 1582 1
		 1582 1583 1 1583 1584 1 1584 1585 1 1585 1586 1 1586 1587 1 1587 1588 1 1588 1589 1
		 1589 1590 1 1590 1591 1 1591 1592 1 1592 1593 1 1593 1594 1 1594 1595 1 1595 1596 1
		 1596 1597 1 1597 1598 1 1598 1599 1 1599 1580 1 1600 1601 0 1601 1602 0 1602 1603 0
		 1603 1604 0 1604 1605 0 1605 1606 0 1606 1607 0 1607 1608 0 1608 1609 0 1609 1610 0
		 1610 1611 0 1611 1612 0 1612 1613 0 1613 1614 0 1614 1615 0 1615 1616 0 1616 1617 0
		 1617 1618 0 1618 1619 0 1619 1600 0 1440 1460 1 1441 1461 1 1442 1462 1 1443 1463 1
		 1444 1464 1 1445 1465 1 1446 1466 1 1447 1467 1 1448 1468 1 1449 1469 1 1450 1470 1
		 1451 1471 1 1452 1472 1 1453 1473 1 1454 1474 1 1455 1475 1 1456 1476 1 1457 1477 1
		 1458 1478 1 1459 1479 1 1460 1480 1 1461 1481 1 1462 1482 1 1463 1483 1 1464 1484 1
		 1465 1485 1 1466 1486 1 1467 1487 1 1468 1488 1 1469 1489 1 1470 1490 1 1471 1491 1
		 1472 1492 1 1473 1493 1 1474 1494 1 1475 1495 1 1476 1496 1 1477 1497 1 1478 1498 1
		 1479 1499 1 1480 1500 1 1481 1501 1 1482 1502 1 1483 1503 1 1484 1504 1 1485 1505 1
		 1486 1506 1 1487 1507 1 1488 1508 1 1489 1509 1 1490 1510 1 1491 1511 1 1492 1512 1
		 1493 1513 1 1494 1514 1 1495 1515 1 1496 1516 1 1497 1517 1 1498 1518 1 1499 1519 1
		 1500 1520 1 1501 1521 1 1502 1522 1 1503 1523 1 1504 1524 1 1505 1525 1 1506 1526 1
		 1507 1527 1 1508 1528 1 1509 1529 1 1510 1530 1 1511 1531 1 1512 1532 1 1513 1533 1
		 1514 1534 1 1515 1535 1 1516 1536 1 1517 1537 1 1518 1538 1 1519 1539 1 1520 1540 1
		 1521 1541 1 1522 1542 1 1523 1543 1 1524 1544 1 1525 1545 1 1526 1546 1 1527 1547 1;
	setAttr ".ed[2988:3153]" 1528 1548 1 1529 1549 1 1530 1550 1 1531 1551 1 1532 1552 1
		 1533 1553 1 1534 1554 1 1535 1555 1 1536 1556 1 1537 1557 1 1538 1558 1 1539 1559 1
		 1540 1560 1 1541 1561 1 1542 1562 1 1543 1563 1 1544 1564 1 1545 1565 1 1546 1566 1
		 1547 1567 1 1548 1568 1 1549 1569 1 1550 1570 1 1551 1571 1 1552 1572 1 1553 1573 1
		 1554 1574 1 1555 1575 1 1556 1576 1 1557 1577 1 1558 1578 1 1559 1579 1 1560 1580 1
		 1561 1581 1 1562 1582 1 1563 1583 1 1564 1584 1 1565 1585 1 1566 1586 1 1567 1587 1
		 1568 1588 1 1569 1589 1 1570 1590 1 1571 1591 1 1572 1592 1 1573 1593 1 1574 1594 1
		 1575 1595 1 1576 1596 1 1577 1597 1 1578 1598 1 1579 1599 1 1580 1600 1 1581 1601 1
		 1582 1602 1 1583 1603 1 1584 1604 1 1585 1605 1 1586 1606 1 1587 1607 1 1588 1608 1
		 1589 1609 1 1590 1610 1 1591 1611 1 1592 1612 1 1593 1613 1 1594 1614 1 1595 1615 1
		 1596 1616 1 1597 1617 1 1598 1618 1 1599 1619 1 1620 1621 0 1621 1622 0 1622 1623 0
		 1623 1624 0 1624 1625 0 1625 1626 0 1626 1627 0 1627 1628 0 1628 1629 0 1629 1630 0
		 1630 1631 0 1631 1632 0 1632 1633 0 1633 1634 0 1634 1635 0 1635 1636 0 1636 1637 0
		 1637 1638 0 1638 1639 0 1639 1620 0 1640 1641 1 1641 1642 1 1642 1643 1 1643 1644 1
		 1644 1645 1 1645 1646 1 1646 1647 1 1647 1648 1 1648 1649 1 1649 1650 1 1650 1651 1
		 1651 1652 1 1652 1653 1 1653 1654 1 1654 1655 1 1655 1656 1 1656 1657 1 1657 1658 1
		 1658 1659 1 1659 1640 1 1660 1661 1 1661 1662 1 1662 1663 1 1663 1664 1 1664 1665 1
		 1665 1666 1 1666 1667 1 1667 1668 1 1668 1669 1 1669 1670 1 1670 1671 1 1671 1672 1
		 1672 1673 1 1673 1674 1 1674 1675 1 1675 1676 1 1676 1677 1 1677 1678 1 1678 1679 1
		 1679 1660 1 1680 1681 1 1681 1682 1 1682 1683 1 1683 1684 1 1684 1685 1 1685 1686 1
		 1686 1687 1 1687 1688 1 1688 1689 1 1689 1690 1 1690 1691 1 1691 1692 1 1692 1693 1
		 1693 1694 1 1694 1695 1 1695 1696 1 1696 1697 1 1697 1698 1 1698 1699 1 1699 1680 1
		 1700 1701 1 1701 1702 1 1702 1703 1 1703 1704 1 1704 1705 1 1705 1706 1 1706 1707 1
		 1707 1708 1 1708 1709 1 1709 1710 1 1710 1711 1 1711 1712 1 1712 1713 1 1713 1714 1;
	setAttr ".ed[3154:3319]" 1714 1715 1 1715 1716 1 1716 1717 1 1717 1718 1 1718 1719 1
		 1719 1700 1 1720 1721 1 1721 1722 1 1722 1723 1 1723 1724 1 1724 1725 1 1725 1726 1
		 1726 1727 1 1727 1728 1 1728 1729 1 1729 1730 1 1730 1731 1 1731 1732 1 1732 1733 1
		 1733 1734 1 1734 1735 1 1735 1736 1 1736 1737 1 1737 1738 1 1738 1739 1 1739 1720 1
		 1740 1741 1 1741 1742 1 1742 1743 1 1743 1744 1 1744 1745 1 1745 1746 1 1746 1747 1
		 1747 1748 1 1748 1749 1 1749 1750 1 1750 1751 1 1751 1752 1 1752 1753 1 1753 1754 1
		 1754 1755 1 1755 1756 1 1756 1757 1 1757 1758 1 1758 1759 1 1759 1740 1 1760 1761 1
		 1761 1762 1 1762 1763 1 1763 1764 1 1764 1765 1 1765 1766 1 1766 1767 1 1767 1768 1
		 1768 1769 1 1769 1770 1 1770 1771 1 1771 1772 1 1772 1773 1 1773 1774 1 1774 1775 1
		 1775 1776 1 1776 1777 1 1777 1778 1 1778 1779 1 1779 1760 1 1780 1781 0 1781 1782 0
		 1782 1783 0 1783 1784 0 1784 1785 0 1785 1786 0 1786 1787 0 1787 1788 0 1788 1789 0
		 1789 1790 0 1790 1791 0 1791 1792 0 1792 1793 0 1793 1794 0 1794 1795 0 1795 1796 0
		 1796 1797 0 1797 1798 0 1798 1799 0 1799 1780 0 1620 1640 1 1621 1641 1 1622 1642 1
		 1623 1643 1 1624 1644 1 1625 1645 1 1626 1646 1 1627 1647 1 1628 1648 1 1629 1649 1
		 1630 1650 1 1631 1651 1 1632 1652 1 1633 1653 1 1634 1654 1 1635 1655 1 1636 1656 1
		 1637 1657 1 1638 1658 1 1639 1659 1 1640 1660 1 1641 1661 1 1642 1662 1 1643 1663 1
		 1644 1664 1 1645 1665 1 1646 1666 1 1647 1667 1 1648 1668 1 1649 1669 1 1650 1670 1
		 1651 1671 1 1652 1672 1 1653 1673 1 1654 1674 1 1655 1675 1 1656 1676 1 1657 1677 1
		 1658 1678 1 1659 1679 1 1660 1680 1 1661 1681 1 1662 1682 1 1663 1683 1 1664 1684 1
		 1665 1685 1 1666 1686 1 1667 1687 1 1668 1688 1 1669 1689 1 1670 1690 1 1671 1691 1
		 1672 1692 1 1673 1693 1 1674 1694 1 1675 1695 1 1676 1696 1 1677 1697 1 1678 1698 1
		 1679 1699 1 1680 1700 1 1681 1701 1 1682 1702 1 1683 1703 1 1684 1704 1 1685 1705 1
		 1686 1706 1 1687 1707 1 1688 1708 1 1689 1709 1 1690 1710 1 1691 1711 1 1692 1712 1
		 1693 1713 1 1694 1714 1 1695 1715 1 1696 1716 1 1697 1717 1 1698 1718 1 1699 1719 1;
	setAttr ".ed[3320:3485]" 1700 1720 1 1701 1721 1 1702 1722 1 1703 1723 1 1704 1724 1
		 1705 1725 1 1706 1726 1 1707 1727 1 1708 1728 1 1709 1729 1 1710 1730 1 1711 1731 1
		 1712 1732 1 1713 1733 1 1714 1734 1 1715 1735 1 1716 1736 1 1717 1737 1 1718 1738 1
		 1719 1739 1 1720 1740 1 1721 1741 1 1722 1742 1 1723 1743 1 1724 1744 1 1725 1745 1
		 1726 1746 1 1727 1747 1 1728 1748 1 1729 1749 1 1730 1750 1 1731 1751 1 1732 1752 1
		 1733 1753 1 1734 1754 1 1735 1755 1 1736 1756 1 1737 1757 1 1738 1758 1 1739 1759 1
		 1740 1760 1 1741 1761 1 1742 1762 1 1743 1763 1 1744 1764 1 1745 1765 1 1746 1766 1
		 1747 1767 1 1748 1768 1 1749 1769 1 1750 1770 1 1751 1771 1 1752 1772 1 1753 1773 1
		 1754 1774 1 1755 1775 1 1756 1776 1 1757 1777 1 1758 1778 1 1759 1779 1 1760 1780 1
		 1761 1781 1 1762 1782 1 1763 1783 1 1764 1784 1 1765 1785 1 1766 1786 1 1767 1787 1
		 1768 1788 1 1769 1789 1 1770 1790 1 1771 1791 1 1772 1792 1 1773 1793 1 1774 1794 1
		 1775 1795 1 1776 1796 1 1777 1797 1 1778 1798 1 1779 1799 1 1800 1801 0 1801 1802 0
		 1802 1803 0 1803 1804 0 1804 1805 0 1805 1806 0 1806 1807 0 1807 1808 0 1808 1809 0
		 1809 1810 0 1810 1811 0 1811 1812 0 1812 1813 0 1813 1814 0 1814 1815 0 1815 1816 0
		 1816 1817 0 1817 1818 0 1818 1819 0 1819 1800 0 1820 1821 1 1821 1822 1 1822 1823 1
		 1823 1824 1 1824 1825 1 1825 1826 1 1826 1827 1 1827 1828 1 1828 1829 1 1829 1830 1
		 1830 1831 1 1831 1832 1 1832 1833 1 1833 1834 1 1834 1835 1 1835 1836 1 1836 1837 1
		 1837 1838 1 1838 1839 1 1839 1820 1 1840 1841 1 1841 1842 1 1842 1843 1 1843 1844 1
		 1844 1845 1 1845 1846 1 1846 1847 1 1847 1848 1 1848 1849 1 1849 1850 1 1850 1851 1
		 1851 1852 1 1852 1853 1 1853 1854 1 1854 1855 1 1855 1856 1 1856 1857 1 1857 1858 1
		 1858 1859 1 1859 1840 1 1860 1861 1 1861 1862 1 1862 1863 1 1863 1864 1 1864 1865 1
		 1865 1866 1 1866 1867 1 1867 1868 1 1868 1869 1 1869 1870 1 1870 1871 1 1871 1872 1
		 1872 1873 1 1873 1874 1 1874 1875 1 1875 1876 1 1876 1877 1 1877 1878 1 1878 1879 1
		 1879 1860 1 1880 1881 1 1881 1882 1 1882 1883 1 1883 1884 1 1884 1885 1 1885 1886 1;
	setAttr ".ed[3486:3651]" 1886 1887 1 1887 1888 1 1888 1889 1 1889 1890 1 1890 1891 1
		 1891 1892 1 1892 1893 1 1893 1894 1 1894 1895 1 1895 1896 1 1896 1897 1 1897 1898 1
		 1898 1899 1 1899 1880 1 1900 1901 1 1901 1902 1 1902 1903 1 1903 1904 1 1904 1905 1
		 1905 1906 1 1906 1907 1 1907 1908 1 1908 1909 1 1909 1910 1 1910 1911 1 1911 1912 1
		 1912 1913 1 1913 1914 1 1914 1915 1 1915 1916 1 1916 1917 1 1917 1918 1 1918 1919 1
		 1919 1900 1 1920 1921 1 1921 1922 1 1922 1923 1 1923 1924 1 1924 1925 1 1925 1926 1
		 1926 1927 1 1927 1928 1 1928 1929 1 1929 1930 1 1930 1931 1 1931 1932 1 1932 1933 1
		 1933 1934 1 1934 1935 1 1935 1936 1 1936 1937 1 1937 1938 1 1938 1939 1 1939 1920 1
		 1940 1941 1 1941 1942 1 1942 1943 1 1943 1944 1 1944 1945 1 1945 1946 1 1946 1947 1
		 1947 1948 1 1948 1949 1 1949 1950 1 1950 1951 1 1951 1952 1 1952 1953 1 1953 1954 1
		 1954 1955 1 1955 1956 1 1956 1957 1 1957 1958 1 1958 1959 1 1959 1940 1 1960 1961 0
		 1961 1962 0 1962 1963 0 1963 1964 0 1964 1965 0 1965 1966 0 1966 1967 0 1967 1968 0
		 1968 1969 0 1969 1970 0 1970 1971 0 1971 1972 0 1972 1973 0 1973 1974 0 1974 1975 0
		 1975 1976 0 1976 1977 0 1977 1978 0 1978 1979 0 1979 1960 0 1800 1820 1 1801 1821 1
		 1802 1822 1 1803 1823 1 1804 1824 1 1805 1825 1 1806 1826 1 1807 1827 1 1808 1828 1
		 1809 1829 1 1810 1830 1 1811 1831 1 1812 1832 1 1813 1833 1 1814 1834 1 1815 1835 1
		 1816 1836 1 1817 1837 1 1818 1838 1 1819 1839 1 1820 1840 1 1821 1841 1 1822 1842 1
		 1823 1843 1 1824 1844 1 1825 1845 1 1826 1846 1 1827 1847 1 1828 1848 1 1829 1849 1
		 1830 1850 1 1831 1851 1 1832 1852 1 1833 1853 1 1834 1854 1 1835 1855 1 1836 1856 1
		 1837 1857 1 1838 1858 1 1839 1859 1 1840 1860 1 1841 1861 1 1842 1862 1 1843 1863 1
		 1844 1864 1 1845 1865 1 1846 1866 1 1847 1867 1 1848 1868 1 1849 1869 1 1850 1870 1
		 1851 1871 1 1852 1872 1 1853 1873 1 1854 1874 1 1855 1875 1 1856 1876 1 1857 1877 1
		 1858 1878 1 1859 1879 1 1860 1880 1 1861 1881 1 1862 1882 1 1863 1883 1 1864 1884 1
		 1865 1885 1 1866 1886 1 1867 1887 1 1868 1888 1 1869 1889 1 1870 1890 1 1871 1891 1;
	setAttr ".ed[3652:3817]" 1872 1892 1 1873 1893 1 1874 1894 1 1875 1895 1 1876 1896 1
		 1877 1897 1 1878 1898 1 1879 1899 1 1880 1900 1 1881 1901 1 1882 1902 1 1883 1903 1
		 1884 1904 1 1885 1905 1 1886 1906 1 1887 1907 1 1888 1908 1 1889 1909 1 1890 1910 1
		 1891 1911 1 1892 1912 1 1893 1913 1 1894 1914 1 1895 1915 1 1896 1916 1 1897 1917 1
		 1898 1918 1 1899 1919 1 1900 1920 1 1901 1921 1 1902 1922 1 1903 1923 1 1904 1924 1
		 1905 1925 1 1906 1926 1 1907 1927 1 1908 1928 1 1909 1929 1 1910 1930 1 1911 1931 1
		 1912 1932 1 1913 1933 1 1914 1934 1 1915 1935 1 1916 1936 1 1917 1937 1 1918 1938 1
		 1919 1939 1 1920 1940 1 1921 1941 1 1922 1942 1 1923 1943 1 1924 1944 1 1925 1945 1
		 1926 1946 1 1927 1947 1 1928 1948 1 1929 1949 1 1930 1950 1 1931 1951 1 1932 1952 1
		 1933 1953 1 1934 1954 1 1935 1955 1 1936 1956 1 1937 1957 1 1938 1958 1 1939 1959 1
		 1940 1960 1 1941 1961 1 1942 1962 1 1943 1963 1 1944 1964 1 1945 1965 1 1946 1966 1
		 1947 1967 1 1948 1968 1 1949 1969 1 1950 1970 1 1951 1971 1 1952 1972 1 1953 1973 1
		 1954 1974 1 1955 1975 1 1956 1976 1 1957 1977 1 1958 1978 1 1959 1979 1 1980 1981 0
		 1981 1982 0 1982 1983 0 1983 1984 0 1984 1985 0 1985 1986 0 1986 1987 0 1987 1988 0
		 1988 1989 0 1989 1990 0 1990 1991 0 1991 1992 0 1992 1993 0 1993 1994 0 1994 1995 0
		 1995 1996 0 1996 1997 0 1997 1998 0 1998 1999 0 1999 1980 0 2000 2001 1 2001 2002 1
		 2002 2003 1 2003 2004 1 2004 2005 1 2005 2006 1 2006 2007 1 2007 2008 1 2008 2009 1
		 2009 2010 1 2010 2011 1 2011 2012 1 2012 2013 1 2013 2014 1 2014 2015 1 2015 2016 1
		 2016 2017 1 2017 2018 1 2018 2019 1 2019 2000 1 2020 2021 1 2021 2022 1 2022 2023 1
		 2023 2024 1 2024 2025 1 2025 2026 1 2026 2027 1 2027 2028 1 2028 2029 1 2029 2030 1
		 2030 2031 1 2031 2032 1 2032 2033 1 2033 2034 1 2034 2035 1 2035 2036 1 2036 2037 1
		 2037 2038 1 2038 2039 1 2039 2020 1 2040 2041 1 2041 2042 1 2042 2043 1 2043 2044 1
		 2044 2045 1 2045 2046 1 2046 2047 1 2047 2048 1 2048 2049 1 2049 2050 1 2050 2051 1
		 2051 2052 1 2052 2053 1 2053 2054 1 2054 2055 1 2055 2056 1 2056 2057 1 2057 2058 1;
	setAttr ".ed[3818:3983]" 2058 2059 1 2059 2040 1 2060 2061 1 2061 2062 1 2062 2063 1
		 2063 2064 1 2064 2065 1 2065 2066 1 2066 2067 1 2067 2068 1 2068 2069 1 2069 2070 1
		 2070 2071 1 2071 2072 1 2072 2073 1 2073 2074 1 2074 2075 1 2075 2076 1 2076 2077 1
		 2077 2078 1 2078 2079 1 2079 2060 1 2080 2081 1 2081 2082 1 2082 2083 1 2083 2084 1
		 2084 2085 1 2085 2086 1 2086 2087 1 2087 2088 1 2088 2089 1 2089 2090 1 2090 2091 1
		 2091 2092 1 2092 2093 1 2093 2094 1 2094 2095 1 2095 2096 1 2096 2097 1 2097 2098 1
		 2098 2099 1 2099 2080 1 2100 2101 1 2101 2102 1 2102 2103 1 2103 2104 1 2104 2105 1
		 2105 2106 1 2106 2107 1 2107 2108 1 2108 2109 1 2109 2110 1 2110 2111 1 2111 2112 1
		 2112 2113 1 2113 2114 1 2114 2115 1 2115 2116 1 2116 2117 1 2117 2118 1 2118 2119 1
		 2119 2100 1 2120 2121 1 2121 2122 1 2122 2123 1 2123 2124 1 2124 2125 1 2125 2126 1
		 2126 2127 1 2127 2128 1 2128 2129 1 2129 2130 1 2130 2131 1 2131 2132 1 2132 2133 1
		 2133 2134 1 2134 2135 1 2135 2136 1 2136 2137 1 2137 2138 1 2138 2139 1 2139 2120 1
		 2140 2141 0 2141 2142 0 2142 2143 0 2143 2144 0 2144 2145 0 2145 2146 0 2146 2147 0
		 2147 2148 0 2148 2149 0 2149 2150 0 2150 2151 0 2151 2152 0 2152 2153 0 2153 2154 0
		 2154 2155 0 2155 2156 0 2156 2157 0 2157 2158 0 2158 2159 0 2159 2140 0 1980 2000 1
		 1981 2001 1 1982 2002 1 1983 2003 1 1984 2004 1 1985 2005 1 1986 2006 1 1987 2007 1
		 1988 2008 1 1989 2009 1 1990 2010 1 1991 2011 1 1992 2012 1 1993 2013 1 1994 2014 1
		 1995 2015 1 1996 2016 1 1997 2017 1 1998 2018 1 1999 2019 1 2000 2020 1 2001 2021 1
		 2002 2022 1 2003 2023 1 2004 2024 1 2005 2025 1 2006 2026 1 2007 2027 1 2008 2028 1
		 2009 2029 1 2010 2030 1 2011 2031 1 2012 2032 1 2013 2033 1 2014 2034 1 2015 2035 1
		 2016 2036 1 2017 2037 1 2018 2038 1 2019 2039 1 2020 2040 1 2021 2041 1 2022 2042 1
		 2023 2043 1 2024 2044 1 2025 2045 1 2026 2046 1 2027 2047 1 2028 2048 1 2029 2049 1
		 2030 2050 1 2031 2051 1 2032 2052 1 2033 2053 1 2034 2054 1 2035 2055 1 2036 2056 1
		 2037 2057 1 2038 2058 1 2039 2059 1 2040 2060 1 2041 2061 1 2042 2062 1 2043 2063 1;
	setAttr ".ed[3984:4149]" 2044 2064 1 2045 2065 1 2046 2066 1 2047 2067 1 2048 2068 1
		 2049 2069 1 2050 2070 1 2051 2071 1 2052 2072 1 2053 2073 1 2054 2074 1 2055 2075 1
		 2056 2076 1 2057 2077 1 2058 2078 1 2059 2079 1 2060 2080 1 2061 2081 1 2062 2082 1
		 2063 2083 1 2064 2084 1 2065 2085 1 2066 2086 1 2067 2087 1 2068 2088 1 2069 2089 1
		 2070 2090 1 2071 2091 1 2072 2092 1 2073 2093 1 2074 2094 1 2075 2095 1 2076 2096 1
		 2077 2097 1 2078 2098 1 2079 2099 1 2080 2100 1 2081 2101 1 2082 2102 1 2083 2103 1
		 2084 2104 1 2085 2105 1 2086 2106 1 2087 2107 1 2088 2108 1 2089 2109 1 2090 2110 1
		 2091 2111 1 2092 2112 1 2093 2113 1 2094 2114 1 2095 2115 1 2096 2116 1 2097 2117 1
		 2098 2118 1 2099 2119 1 2100 2120 1 2101 2121 1 2102 2122 1 2103 2123 1 2104 2124 1
		 2105 2125 1 2106 2126 1 2107 2127 1 2108 2128 1 2109 2129 1 2110 2130 1 2111 2131 1
		 2112 2132 1 2113 2133 1 2114 2134 1 2115 2135 1 2116 2136 1 2117 2137 1 2118 2138 1
		 2119 2139 1 2120 2140 1 2121 2141 1 2122 2142 1 2123 2143 1 2124 2144 1 2125 2145 1
		 2126 2146 1 2127 2147 1 2128 2148 1 2129 2149 1 2130 2150 1 2131 2151 1 2132 2152 1
		 2133 2153 1 2134 2154 1 2135 2155 1 2136 2156 1 2137 2157 1 2138 2158 1 2139 2159 1
		 2160 2161 0 2161 2162 0 2162 2163 0 2163 2164 0 2164 2165 0 2165 2166 0 2166 2167 0
		 2167 2168 0 2168 2169 0 2169 2170 0 2170 2171 0 2171 2172 0 2172 2173 0 2173 2174 0
		 2174 2175 0 2175 2176 0 2176 2177 0 2177 2178 0 2178 2179 0 2179 2160 0 2180 2181 1
		 2181 2182 1 2182 2183 1 2183 2184 1 2184 2185 1 2185 2186 1 2186 2187 1 2187 2188 1
		 2188 2189 1 2189 2190 1 2190 2191 1 2191 2192 1 2192 2193 1 2193 2194 1 2194 2195 1
		 2195 2196 1 2196 2197 1 2197 2198 1 2198 2199 1 2199 2180 1 2200 2201 1 2201 2202 1
		 2202 2203 1 2203 2204 1 2204 2205 1 2205 2206 1 2206 2207 1 2207 2208 1 2208 2209 1
		 2209 2210 1 2210 2211 1 2211 2212 1 2212 2213 1 2213 2214 1 2214 2215 1 2215 2216 1
		 2216 2217 1 2217 2218 1 2218 2219 1 2219 2200 1 2220 2221 1 2221 2222 1 2222 2223 1
		 2223 2224 1 2224 2225 1 2225 2226 1 2226 2227 1 2227 2228 1 2228 2229 1 2229 2230 1;
	setAttr ".ed[4150:4315]" 2230 2231 1 2231 2232 1 2232 2233 1 2233 2234 1 2234 2235 1
		 2235 2236 1 2236 2237 1 2237 2238 1 2238 2239 1 2239 2220 1 2240 2241 1 2241 2242 1
		 2242 2243 1 2243 2244 1 2244 2245 1 2245 2246 1 2246 2247 1 2247 2248 1 2248 2249 1
		 2249 2250 1 2250 2251 1 2251 2252 1 2252 2253 1 2253 2254 1 2254 2255 1 2255 2256 1
		 2256 2257 1 2257 2258 1 2258 2259 1 2259 2240 1 2260 2261 1 2261 2262 1 2262 2263 1
		 2263 2264 1 2264 2265 1 2265 2266 1 2266 2267 1 2267 2268 1 2268 2269 1 2269 2270 1
		 2270 2271 1 2271 2272 1 2272 2273 1 2273 2274 1 2274 2275 1 2275 2276 1 2276 2277 1
		 2277 2278 1 2278 2279 1 2279 2260 1 2280 2281 1 2281 2282 1 2282 2283 1 2283 2284 1
		 2284 2285 1 2285 2286 1 2286 2287 1 2287 2288 1 2288 2289 1 2289 2290 1 2290 2291 1
		 2291 2292 1 2292 2293 1 2293 2294 1 2294 2295 1 2295 2296 1 2296 2297 1 2297 2298 1
		 2298 2299 1 2299 2280 1 2300 2301 1 2301 2302 1 2302 2303 1 2303 2304 1 2304 2305 1
		 2305 2306 1 2306 2307 1 2307 2308 1 2308 2309 1 2309 2310 1 2310 2311 1 2311 2312 1
		 2312 2313 1 2313 2314 1 2314 2315 1 2315 2316 1 2316 2317 1 2317 2318 1 2318 2319 1
		 2319 2300 1 2320 2321 0 2321 2322 0 2322 2323 0 2323 2324 0 2324 2325 0 2325 2326 0
		 2326 2327 0 2327 2328 0 2328 2329 0 2329 2330 0 2330 2331 0 2331 2332 0 2332 2333 0
		 2333 2334 0 2334 2335 0 2335 2336 0 2336 2337 0 2337 2338 0 2338 2339 0 2339 2320 0
		 2160 2180 1 2161 2181 1 2162 2182 1 2163 2183 1 2164 2184 1 2165 2185 1 2166 2186 1
		 2167 2187 1 2168 2188 1 2169 2189 1 2170 2190 1 2171 2191 1 2172 2192 1 2173 2193 1
		 2174 2194 1 2175 2195 1 2176 2196 1 2177 2197 1 2178 2198 1 2179 2199 1 2180 2200 1
		 2181 2201 1 2182 2202 1 2183 2203 1 2184 2204 1 2185 2205 1 2186 2206 1 2187 2207 1
		 2188 2208 1 2189 2209 1 2190 2210 1 2191 2211 1 2192 2212 1 2193 2213 1 2194 2214 1
		 2195 2215 1 2196 2216 1 2197 2217 1 2198 2218 1 2199 2219 1 2200 2220 1 2201 2221 1
		 2202 2222 1 2203 2223 1 2204 2224 1 2205 2225 1 2206 2226 1 2207 2227 1 2208 2228 1
		 2209 2229 1 2210 2230 1 2211 2231 1 2212 2232 1 2213 2233 1 2214 2234 1 2215 2235 1;
	setAttr ".ed[4316:4481]" 2216 2236 1 2217 2237 1 2218 2238 1 2219 2239 1 2220 2240 1
		 2221 2241 1 2222 2242 1 2223 2243 1 2224 2244 1 2225 2245 1 2226 2246 1 2227 2247 1
		 2228 2248 1 2229 2249 1 2230 2250 1 2231 2251 1 2232 2252 1 2233 2253 1 2234 2254 1
		 2235 2255 1 2236 2256 1 2237 2257 1 2238 2258 1 2239 2259 1 2240 2260 1 2241 2261 1
		 2242 2262 1 2243 2263 1 2244 2264 1 2245 2265 1 2246 2266 1 2247 2267 1 2248 2268 1
		 2249 2269 1 2250 2270 1 2251 2271 1 2252 2272 1 2253 2273 1 2254 2274 1 2255 2275 1
		 2256 2276 1 2257 2277 1 2258 2278 1 2259 2279 1 2260 2280 1 2261 2281 1 2262 2282 1
		 2263 2283 1 2264 2284 1 2265 2285 1 2266 2286 1 2267 2287 1 2268 2288 1 2269 2289 1
		 2270 2290 1 2271 2291 1 2272 2292 1 2273 2293 1 2274 2294 1 2275 2295 1 2276 2296 1
		 2277 2297 1 2278 2298 1 2279 2299 1 2280 2300 1 2281 2301 1 2282 2302 1 2283 2303 1
		 2284 2304 1 2285 2305 1 2286 2306 1 2287 2307 1 2288 2308 1 2289 2309 1 2290 2310 1
		 2291 2311 1 2292 2312 1 2293 2313 1 2294 2314 1 2295 2315 1 2296 2316 1 2297 2317 1
		 2298 2318 1 2299 2319 1 2300 2320 1 2301 2321 1 2302 2322 1 2303 2323 1 2304 2324 1
		 2305 2325 1 2306 2326 1 2307 2327 1 2308 2328 1 2309 2329 1 2310 2330 1 2311 2331 1
		 2312 2332 1 2313 2333 1 2314 2334 1 2315 2335 1 2316 2336 1 2317 2337 1 2318 2338 1
		 2319 2339 1 2340 2341 0 2341 2342 0 2342 2343 0 2343 2344 0 2344 2345 0 2345 2346 0
		 2346 2347 0 2347 2348 0 2348 2349 0 2349 2350 0 2350 2351 0 2351 2352 0 2352 2353 0
		 2353 2354 0 2354 2355 0 2355 2356 0 2356 2357 0 2357 2358 0 2358 2359 0 2359 2340 0
		 2360 2361 1 2361 2362 1 2362 2363 1 2363 2364 1 2364 2365 1 2365 2366 1 2366 2367 1
		 2367 2368 1 2368 2369 1 2369 2370 1 2370 2371 1 2371 2372 1 2372 2373 1 2373 2374 1
		 2374 2375 1 2375 2376 1 2376 2377 1 2377 2378 1 2378 2379 1 2379 2360 1 2380 2381 1
		 2381 2382 1 2382 2383 1 2383 2384 1 2384 2385 1 2385 2386 1 2386 2387 1 2387 2388 1
		 2388 2389 1 2389 2390 1 2390 2391 1 2391 2392 1 2392 2393 1 2393 2394 1 2394 2395 1
		 2395 2396 1 2396 2397 1 2397 2398 1 2398 2399 1 2399 2380 1 2400 2401 1 2401 2402 1;
	setAttr ".ed[4482:4647]" 2402 2403 1 2403 2404 1 2404 2405 1 2405 2406 1 2406 2407 1
		 2407 2408 1 2408 2409 1 2409 2410 1 2410 2411 1 2411 2412 1 2412 2413 1 2413 2414 1
		 2414 2415 1 2415 2416 1 2416 2417 1 2417 2418 1 2418 2419 1 2419 2400 1 2420 2421 1
		 2421 2422 1 2422 2423 1 2423 2424 1 2424 2425 1 2425 2426 1 2426 2427 1 2427 2428 1
		 2428 2429 1 2429 2430 1 2430 2431 1 2431 2432 1 2432 2433 1 2433 2434 1 2434 2435 1
		 2435 2436 1 2436 2437 1 2437 2438 1 2438 2439 1 2439 2420 1 2440 2441 1 2441 2442 1
		 2442 2443 1 2443 2444 1 2444 2445 1 2445 2446 1 2446 2447 1 2447 2448 1 2448 2449 1
		 2449 2450 1 2450 2451 1 2451 2452 1 2452 2453 1 2453 2454 1 2454 2455 1 2455 2456 1
		 2456 2457 1 2457 2458 1 2458 2459 1 2459 2440 1 2460 2461 1 2461 2462 1 2462 2463 1
		 2463 2464 1 2464 2465 1 2465 2466 1 2466 2467 1 2467 2468 1 2468 2469 1 2469 2470 1
		 2470 2471 1 2471 2472 1 2472 2473 1 2473 2474 1 2474 2475 1 2475 2476 1 2476 2477 1
		 2477 2478 1 2478 2479 1 2479 2460 1 2480 2481 1 2481 2482 1 2482 2483 1 2483 2484 1
		 2484 2485 1 2485 2486 1 2486 2487 1 2487 2488 1 2488 2489 1 2489 2490 1 2490 2491 1
		 2491 2492 1 2492 2493 1 2493 2494 1 2494 2495 1 2495 2496 1 2496 2497 1 2497 2498 1
		 2498 2499 1 2499 2480 1 2500 2501 0 2501 2502 0 2502 2503 0 2503 2504 0 2504 2505 0
		 2505 2506 0 2506 2507 0 2507 2508 0 2508 2509 0 2509 2510 0 2510 2511 0 2511 2512 0
		 2512 2513 0 2513 2514 0 2514 2515 0 2515 2516 0 2516 2517 0 2517 2518 0 2518 2519 0
		 2519 2500 0 2340 2360 1 2341 2361 1 2342 2362 1 2343 2363 1 2344 2364 1 2345 2365 1
		 2346 2366 1 2347 2367 1 2348 2368 1 2349 2369 1 2350 2370 1 2351 2371 1 2352 2372 1
		 2353 2373 1 2354 2374 1 2355 2375 1 2356 2376 1 2357 2377 1 2358 2378 1 2359 2379 1
		 2360 2380 1 2361 2381 1 2362 2382 1 2363 2383 1 2364 2384 1 2365 2385 1 2366 2386 1
		 2367 2387 1 2368 2388 1 2369 2389 1 2370 2390 1 2371 2391 1 2372 2392 1 2373 2393 1
		 2374 2394 1 2375 2395 1 2376 2396 1 2377 2397 1 2378 2398 1 2379 2399 1 2380 2400 1
		 2381 2401 1 2382 2402 1 2383 2403 1 2384 2404 1 2385 2405 1 2386 2406 1 2387 2407 1;
	setAttr ".ed[4648:4813]" 2388 2408 1 2389 2409 1 2390 2410 1 2391 2411 1 2392 2412 1
		 2393 2413 1 2394 2414 1 2395 2415 1 2396 2416 1 2397 2417 1 2398 2418 1 2399 2419 1
		 2400 2420 1 2401 2421 1 2402 2422 1 2403 2423 1 2404 2424 1 2405 2425 1 2406 2426 1
		 2407 2427 1 2408 2428 1 2409 2429 1 2410 2430 1 2411 2431 1 2412 2432 1 2413 2433 1
		 2414 2434 1 2415 2435 1 2416 2436 1 2417 2437 1 2418 2438 1 2419 2439 1 2420 2440 1
		 2421 2441 1 2422 2442 1 2423 2443 1 2424 2444 1 2425 2445 1 2426 2446 1 2427 2447 1
		 2428 2448 1 2429 2449 1 2430 2450 1 2431 2451 1 2432 2452 1 2433 2453 1 2434 2454 1
		 2435 2455 1 2436 2456 1 2437 2457 1 2438 2458 1 2439 2459 1 2440 2460 1 2441 2461 1
		 2442 2462 1 2443 2463 1 2444 2464 1 2445 2465 1 2446 2466 1 2447 2467 1 2448 2468 1
		 2449 2469 1 2450 2470 1 2451 2471 1 2452 2472 1 2453 2473 1 2454 2474 1 2455 2475 1
		 2456 2476 1 2457 2477 1 2458 2478 1 2459 2479 1 2460 2480 1 2461 2481 1 2462 2482 1
		 2463 2483 1 2464 2484 1 2465 2485 1 2466 2486 1 2467 2487 1 2468 2488 1 2469 2489 1
		 2470 2490 1 2471 2491 1 2472 2492 1 2473 2493 1 2474 2494 1 2475 2495 1 2476 2496 1
		 2477 2497 1 2478 2498 1 2479 2499 1 2480 2500 1 2481 2501 1 2482 2502 1 2483 2503 1
		 2484 2504 1 2485 2505 1 2486 2506 1 2487 2507 1 2488 2508 1 2489 2509 1 2490 2510 1
		 2491 2511 1 2492 2512 1 2493 2513 1 2494 2514 1 2495 2515 1 2496 2516 1 2497 2517 1
		 2498 2518 1 2499 2519 1 2520 2521 0 2521 2522 0 2522 2523 0 2523 2524 0 2524 2525 0
		 2525 2526 0 2526 2527 0 2527 2528 0 2528 2529 0 2529 2530 0 2530 2531 0 2531 2532 0
		 2532 2533 0 2533 2534 0 2534 2535 0 2535 2536 0 2536 2537 0 2537 2538 0 2538 2539 0
		 2539 2520 0 2540 2541 1 2541 2542 1 2542 2543 1 2543 2544 1 2544 2545 1 2545 2546 1
		 2546 2547 1 2547 2548 1 2548 2549 1 2549 2550 1 2550 2551 1 2551 2552 1 2552 2553 1
		 2553 2554 1 2554 2555 1 2555 2556 1 2556 2557 1 2557 2558 1 2558 2559 1 2559 2540 1
		 2560 2561 1 2561 2562 1 2562 2563 1 2563 2564 1 2564 2565 1 2565 2566 1 2566 2567 1
		 2567 2568 1 2568 2569 1 2569 2570 1 2570 2571 1 2571 2572 1 2572 2573 1 2573 2574 1;
	setAttr ".ed[4814:4979]" 2574 2575 1 2575 2576 1 2576 2577 1 2577 2578 1 2578 2579 1
		 2579 2560 1 2580 2581 1 2581 2582 1 2582 2583 1 2583 2584 1 2584 2585 1 2585 2586 1
		 2586 2587 1 2587 2588 1 2588 2589 1 2589 2590 1 2590 2591 1 2591 2592 1 2592 2593 1
		 2593 2594 1 2594 2595 1 2595 2596 1 2596 2597 1 2597 2598 1 2598 2599 1 2599 2580 1
		 2600 2601 1 2601 2602 1 2602 2603 1 2603 2604 1 2604 2605 1 2605 2606 1 2606 2607 1
		 2607 2608 1 2608 2609 1 2609 2610 1 2610 2611 1 2611 2612 1 2612 2613 1 2613 2614 1
		 2614 2615 1 2615 2616 1 2616 2617 1 2617 2618 1 2618 2619 1 2619 2600 1 2620 2621 1
		 2621 2622 1 2622 2623 1 2623 2624 1 2624 2625 1 2625 2626 1 2626 2627 1 2627 2628 1
		 2628 2629 1 2629 2630 1 2630 2631 1 2631 2632 1 2632 2633 1 2633 2634 1 2634 2635 1
		 2635 2636 1 2636 2637 1 2637 2638 1 2638 2639 1 2639 2620 1 2640 2641 1 2641 2642 1
		 2642 2643 1 2643 2644 1 2644 2645 1 2645 2646 1 2646 2647 1 2647 2648 1 2648 2649 1
		 2649 2650 1 2650 2651 1 2651 2652 1 2652 2653 1 2653 2654 1 2654 2655 1 2655 2656 1
		 2656 2657 1 2657 2658 1 2658 2659 1 2659 2640 1 2660 2661 1 2661 2662 1 2662 2663 1
		 2663 2664 1 2664 2665 1 2665 2666 1 2666 2667 1 2667 2668 1 2668 2669 1 2669 2670 1
		 2670 2671 1 2671 2672 1 2672 2673 1 2673 2674 1 2674 2675 1 2675 2676 1 2676 2677 1
		 2677 2678 1 2678 2679 1 2679 2660 1 2680 2681 0 2681 2682 0 2682 2683 0 2683 2684 0
		 2684 2685 0 2685 2686 0 2686 2687 0 2687 2688 0 2688 2689 0 2689 2690 0 2690 2691 0
		 2691 2692 0 2692 2693 0 2693 2694 0 2694 2695 0 2695 2696 0 2696 2697 0 2697 2698 0
		 2698 2699 0 2699 2680 0 2520 2540 1 2521 2541 1 2522 2542 1 2523 2543 1 2524 2544 1
		 2525 2545 1 2526 2546 1 2527 2547 1 2528 2548 1 2529 2549 1 2530 2550 1 2531 2551 1
		 2532 2552 1 2533 2553 1 2534 2554 1 2535 2555 1 2536 2556 1 2537 2557 1 2538 2558 1
		 2539 2559 1 2540 2560 1 2541 2561 1 2542 2562 1 2543 2563 1 2544 2564 1 2545 2565 1
		 2546 2566 1 2547 2567 1 2548 2568 1 2549 2569 1 2550 2570 1 2551 2571 1 2552 2572 1
		 2553 2573 1 2554 2574 1 2555 2575 1 2556 2576 1 2557 2577 1 2558 2578 1 2559 2579 1;
	setAttr ".ed[4980:5145]" 2560 2580 1 2561 2581 1 2562 2582 1 2563 2583 1 2564 2584 1
		 2565 2585 1 2566 2586 1 2567 2587 1 2568 2588 1 2569 2589 1 2570 2590 1 2571 2591 1
		 2572 2592 1 2573 2593 1 2574 2594 1 2575 2595 1 2576 2596 1 2577 2597 1 2578 2598 1
		 2579 2599 1 2580 2600 1 2581 2601 1 2582 2602 1 2583 2603 1 2584 2604 1 2585 2605 1
		 2586 2606 1 2587 2607 1 2588 2608 1 2589 2609 1 2590 2610 1 2591 2611 1 2592 2612 1
		 2593 2613 1 2594 2614 1 2595 2615 1 2596 2616 1 2597 2617 1 2598 2618 1 2599 2619 1
		 2600 2620 1 2601 2621 1 2602 2622 1 2603 2623 1 2604 2624 1 2605 2625 1 2606 2626 1
		 2607 2627 1 2608 2628 1 2609 2629 1 2610 2630 1 2611 2631 1 2612 2632 1 2613 2633 1
		 2614 2634 1 2615 2635 1 2616 2636 1 2617 2637 1 2618 2638 1 2619 2639 1 2620 2640 1
		 2621 2641 1 2622 2642 1 2623 2643 1 2624 2644 1 2625 2645 1 2626 2646 1 2627 2647 1
		 2628 2648 1 2629 2649 1 2630 2650 1 2631 2651 1 2632 2652 1 2633 2653 1 2634 2654 1
		 2635 2655 1 2636 2656 1 2637 2657 1 2638 2658 1 2639 2659 1 2640 2660 1 2641 2661 1
		 2642 2662 1 2643 2663 1 2644 2664 1 2645 2665 1 2646 2666 1 2647 2667 1 2648 2668 1
		 2649 2669 1 2650 2670 1 2651 2671 1 2652 2672 1 2653 2673 1 2654 2674 1 2655 2675 1
		 2656 2676 1 2657 2677 1 2658 2678 1 2659 2679 1 2660 2680 1 2661 2681 1 2662 2682 1
		 2663 2683 1 2664 2684 1 2665 2685 1 2666 2686 1 2667 2687 1 2668 2688 1 2669 2689 1
		 2670 2690 1 2671 2691 1 2672 2692 1 2673 2693 1 2674 2694 1 2675 2695 1 2676 2696 1
		 2677 2697 1 2678 2698 1 2679 2699 1 2700 2701 0 2701 2702 0 2702 2703 0 2703 2704 0
		 2704 2705 0 2705 2706 0 2706 2707 0 2707 2708 0 2708 2709 0 2709 2710 0 2710 2711 0
		 2711 2712 0 2712 2713 0 2713 2714 0 2714 2715 0 2715 2716 0 2716 2717 0 2717 2718 0
		 2718 2719 0 2719 2700 0 2720 2721 1 2721 2722 1 2722 2723 1 2723 2724 1 2724 2725 1
		 2725 2726 1 2726 2727 1 2727 2728 1 2728 2729 1 2729 2730 1 2730 2731 1 2731 2732 1
		 2732 2733 1 2733 2734 1 2734 2735 1 2735 2736 1 2736 2737 1 2737 2738 1 2738 2739 1
		 2739 2720 1 2740 2741 1 2741 2742 1 2742 2743 1 2743 2744 1 2744 2745 1 2745 2746 1;
	setAttr ".ed[5146:5311]" 2746 2747 1 2747 2748 1 2748 2749 1 2749 2750 1 2750 2751 1
		 2751 2752 1 2752 2753 1 2753 2754 1 2754 2755 1 2755 2756 1 2756 2757 1 2757 2758 1
		 2758 2759 1 2759 2740 1 2760 2761 1 2761 2762 1 2762 2763 1 2763 2764 1 2764 2765 1
		 2765 2766 1 2766 2767 1 2767 2768 1 2768 2769 1 2769 2770 1 2770 2771 1 2771 2772 1
		 2772 2773 1 2773 2774 1 2774 2775 1 2775 2776 1 2776 2777 1 2777 2778 1 2778 2779 1
		 2779 2760 1 2780 2781 1 2781 2782 1 2782 2783 1 2783 2784 1 2784 2785 1 2785 2786 1
		 2786 2787 1 2787 2788 1 2788 2789 1 2789 2790 1 2790 2791 1 2791 2792 1 2792 2793 1
		 2793 2794 1 2794 2795 1 2795 2796 1 2796 2797 1 2797 2798 1 2798 2799 1 2799 2780 1
		 2800 2801 1 2801 2802 1 2802 2803 1 2803 2804 1 2804 2805 1 2805 2806 1 2806 2807 1
		 2807 2808 1 2808 2809 1 2809 2810 1 2810 2811 1 2811 2812 1 2812 2813 1 2813 2814 1
		 2814 2815 1 2815 2816 1 2816 2817 1 2817 2818 1 2818 2819 1 2819 2800 1 2820 2821 1
		 2821 2822 1 2822 2823 1 2823 2824 1 2824 2825 1 2825 2826 1 2826 2827 1 2827 2828 1
		 2828 2829 1 2829 2830 1 2830 2831 1 2831 2832 1 2832 2833 1 2833 2834 1 2834 2835 1
		 2835 2836 1 2836 2837 1 2837 2838 1 2838 2839 1 2839 2820 1 2840 2841 1 2841 2842 1
		 2842 2843 1 2843 2844 1 2844 2845 1 2845 2846 1 2846 2847 1 2847 2848 1 2848 2849 1
		 2849 2850 1 2850 2851 1 2851 2852 1 2852 2853 1 2853 2854 1 2854 2855 1 2855 2856 1
		 2856 2857 1 2857 2858 1 2858 2859 1 2859 2840 1 2860 2861 0 2861 2862 0 2862 2863 0
		 2863 2864 0 2864 2865 0 2865 2866 0 2866 2867 0 2867 2868 0 2868 2869 0 2869 2870 0
		 2870 2871 0 2871 2872 0 2872 2873 0 2873 2874 0 2874 2875 0 2875 2876 0 2876 2877 0
		 2877 2878 0 2878 2879 0 2879 2860 0 2700 2720 1 2701 2721 1 2702 2722 1 2703 2723 1
		 2704 2724 1 2705 2725 1 2706 2726 1 2707 2727 1 2708 2728 1 2709 2729 1 2710 2730 1
		 2711 2731 1 2712 2732 1 2713 2733 1 2714 2734 1 2715 2735 1 2716 2736 1 2717 2737 1
		 2718 2738 1 2719 2739 1 2720 2740 1 2721 2741 1 2722 2742 1 2723 2743 1 2724 2744 1
		 2725 2745 1 2726 2746 1 2727 2747 1 2728 2748 1 2729 2749 1 2730 2750 1 2731 2751 1;
	setAttr ".ed[5312:5477]" 2732 2752 1 2733 2753 1 2734 2754 1 2735 2755 1 2736 2756 1
		 2737 2757 1 2738 2758 1 2739 2759 1 2740 2760 1 2741 2761 1 2742 2762 1 2743 2763 1
		 2744 2764 1 2745 2765 1 2746 2766 1 2747 2767 1 2748 2768 1 2749 2769 1 2750 2770 1
		 2751 2771 1 2752 2772 1 2753 2773 1 2754 2774 1 2755 2775 1 2756 2776 1 2757 2777 1
		 2758 2778 1 2759 2779 1 2760 2780 1 2761 2781 1 2762 2782 1 2763 2783 1 2764 2784 1
		 2765 2785 1 2766 2786 1 2767 2787 1 2768 2788 1 2769 2789 1 2770 2790 1 2771 2791 1
		 2772 2792 1 2773 2793 1 2774 2794 1 2775 2795 1 2776 2796 1 2777 2797 1 2778 2798 1
		 2779 2799 1 2780 2800 1 2781 2801 1 2782 2802 1 2783 2803 1 2784 2804 1 2785 2805 1
		 2786 2806 1 2787 2807 1 2788 2808 1 2789 2809 1 2790 2810 1 2791 2811 1 2792 2812 1
		 2793 2813 1 2794 2814 1 2795 2815 1 2796 2816 1 2797 2817 1 2798 2818 1 2799 2819 1
		 2800 2820 1 2801 2821 1 2802 2822 1 2803 2823 1 2804 2824 1 2805 2825 1 2806 2826 1
		 2807 2827 1 2808 2828 1 2809 2829 1 2810 2830 1 2811 2831 1 2812 2832 1 2813 2833 1
		 2814 2834 1 2815 2835 1 2816 2836 1 2817 2837 1 2818 2838 1 2819 2839 1 2820 2840 1
		 2821 2841 1 2822 2842 1 2823 2843 1 2824 2844 1 2825 2845 1 2826 2846 1 2827 2847 1
		 2828 2848 1 2829 2849 1 2830 2850 1 2831 2851 1 2832 2852 1 2833 2853 1 2834 2854 1
		 2835 2855 1 2836 2856 1 2837 2857 1 2838 2858 1 2839 2859 1 2840 2860 1 2841 2861 1
		 2842 2862 1 2843 2863 1 2844 2864 1 2845 2865 1 2846 2866 1 2847 2867 1 2848 2868 1
		 2849 2869 1 2850 2870 1 2851 2871 1 2852 2872 1 2853 2873 1 2854 2874 1 2855 2875 1
		 2856 2876 1 2857 2877 1 2858 2878 1 2859 2879 1 2880 2881 0 2881 2882 0 2882 2883 0
		 2883 2884 0 2884 2885 0 2885 2886 0 2886 2887 0 2887 2888 0 2888 2889 0 2889 2890 0
		 2890 2891 0 2891 2892 0 2892 2893 0 2893 2894 0 2894 2895 0 2895 2896 0 2896 2897 0
		 2897 2898 0 2898 2899 0 2899 2880 0 2900 2901 1 2901 2902 1 2902 2903 1 2903 2904 1
		 2904 2905 1 2905 2906 1 2906 2907 1 2907 2908 1 2908 2909 1 2909 2910 1 2910 2911 1
		 2911 2912 1 2912 2913 1 2913 2914 1 2914 2915 1 2915 2916 1 2916 2917 1 2917 2918 1;
	setAttr ".ed[5478:5643]" 2918 2919 1 2919 2900 1 2920 2921 1 2921 2922 1 2922 2923 1
		 2923 2924 1 2924 2925 1 2925 2926 1 2926 2927 1 2927 2928 1 2928 2929 1 2929 2930 1
		 2930 2931 1 2931 2932 1 2932 2933 1 2933 2934 1 2934 2935 1 2935 2936 1 2936 2937 1
		 2937 2938 1 2938 2939 1 2939 2920 1 2940 2941 1 2941 2942 1 2942 2943 1 2943 2944 1
		 2944 2945 1 2945 2946 1 2946 2947 1 2947 2948 1 2948 2949 1 2949 2950 1 2950 2951 1
		 2951 2952 1 2952 2953 1 2953 2954 1 2954 2955 1 2955 2956 1 2956 2957 1 2957 2958 1
		 2958 2959 1 2959 2940 1 2960 2961 1 2961 2962 1 2962 2963 1 2963 2964 1 2964 2965 1
		 2965 2966 1 2966 2967 1 2967 2968 1 2968 2969 1 2969 2970 1 2970 2971 1 2971 2972 1
		 2972 2973 1 2973 2974 1 2974 2975 1 2975 2976 1 2976 2977 1 2977 2978 1 2978 2979 1
		 2979 2960 1 2980 2981 1 2981 2982 1 2982 2983 1 2983 2984 1 2984 2985 1 2985 2986 1
		 2986 2987 1 2987 2988 1 2988 2989 1 2989 2990 1 2990 2991 1 2991 2992 1 2992 2993 1
		 2993 2994 1 2994 2995 1 2995 2996 1 2996 2997 1 2997 2998 1 2998 2999 1 2999 2980 1
		 3000 3001 1 3001 3002 1 3002 3003 1 3003 3004 1 3004 3005 1 3005 3006 1 3006 3007 1
		 3007 3008 1 3008 3009 1 3009 3010 1 3010 3011 1 3011 3012 1 3012 3013 1 3013 3014 1
		 3014 3015 1 3015 3016 1 3016 3017 1 3017 3018 1 3018 3019 1 3019 3000 1 3020 3021 1
		 3021 3022 1 3022 3023 1 3023 3024 1 3024 3025 1 3025 3026 1 3026 3027 1 3027 3028 1
		 3028 3029 1 3029 3030 1 3030 3031 1 3031 3032 1 3032 3033 1 3033 3034 1 3034 3035 1
		 3035 3036 1 3036 3037 1 3037 3038 1 3038 3039 1 3039 3020 1 3040 3041 0 3041 3042 0
		 3042 3043 0 3043 3044 0 3044 3045 0 3045 3046 0 3046 3047 0 3047 3048 0 3048 3049 0
		 3049 3050 0 3050 3051 0 3051 3052 0 3052 3053 0 3053 3054 0 3054 3055 0 3055 3056 0
		 3056 3057 0 3057 3058 0 3058 3059 0 3059 3040 0 2880 2900 1 2881 2901 1 2882 2902 1
		 2883 2903 1 2884 2904 1 2885 2905 1 2886 2906 1 2887 2907 1 2888 2908 1 2889 2909 1
		 2890 2910 1 2891 2911 1 2892 2912 1 2893 2913 1 2894 2914 1 2895 2915 1 2896 2916 1
		 2897 2917 1 2898 2918 1 2899 2919 1 2900 2920 1 2901 2921 1 2902 2922 1 2903 2923 1;
	setAttr ".ed[5644:5809]" 2904 2924 1 2905 2925 1 2906 2926 1 2907 2927 1 2908 2928 1
		 2909 2929 1 2910 2930 1 2911 2931 1 2912 2932 1 2913 2933 1 2914 2934 1 2915 2935 1
		 2916 2936 1 2917 2937 1 2918 2938 1 2919 2939 1 2920 2940 1 2921 2941 1 2922 2942 1
		 2923 2943 1 2924 2944 1 2925 2945 1 2926 2946 1 2927 2947 1 2928 2948 1 2929 2949 1
		 2930 2950 1 2931 2951 1 2932 2952 1 2933 2953 1 2934 2954 1 2935 2955 1 2936 2956 1
		 2937 2957 1 2938 2958 1 2939 2959 1 2940 2960 1 2941 2961 1 2942 2962 1 2943 2963 1
		 2944 2964 1 2945 2965 1 2946 2966 1 2947 2967 1 2948 2968 1 2949 2969 1 2950 2970 1
		 2951 2971 1 2952 2972 1 2953 2973 1 2954 2974 1 2955 2975 1 2956 2976 1 2957 2977 1
		 2958 2978 1 2959 2979 1 2960 2980 1 2961 2981 1 2962 2982 1 2963 2983 1 2964 2984 1
		 2965 2985 1 2966 2986 1 2967 2987 1 2968 2988 1 2969 2989 1 2970 2990 1 2971 2991 1
		 2972 2992 1 2973 2993 1 2974 2994 1 2975 2995 1 2976 2996 1 2977 2997 1 2978 2998 1
		 2979 2999 1 2980 3000 1 2981 3001 1 2982 3002 1 2983 3003 1 2984 3004 1 2985 3005 1
		 2986 3006 1 2987 3007 1 2988 3008 1 2989 3009 1 2990 3010 1 2991 3011 1 2992 3012 1
		 2993 3013 1 2994 3014 1 2995 3015 1 2996 3016 1 2997 3017 1 2998 3018 1 2999 3019 1
		 3000 3020 1 3001 3021 1 3002 3022 1 3003 3023 1 3004 3024 1 3005 3025 1 3006 3026 1
		 3007 3027 1 3008 3028 1 3009 3029 1 3010 3030 1 3011 3031 1 3012 3032 1 3013 3033 1
		 3014 3034 1 3015 3035 1 3016 3036 1 3017 3037 1 3018 3038 1 3019 3039 1 3020 3040 1
		 3021 3041 1 3022 3042 1 3023 3043 1 3024 3044 1 3025 3045 1 3026 3046 1 3027 3047 1
		 3028 3048 1 3029 3049 1 3030 3050 1 3031 3051 1 3032 3052 1 3033 3053 1 3034 3054 1
		 3035 3055 1 3036 3056 1 3037 3057 1 3038 3058 1 3039 3059 1 3060 3061 0 3061 3062 0
		 3062 3063 0 3063 3064 0 3064 3065 0 3065 3066 0 3066 3067 0 3067 3068 0 3068 3069 0
		 3069 3070 0 3070 3071 0 3071 3072 0 3072 3073 0 3073 3074 0 3074 3075 0 3075 3076 0
		 3076 3077 0 3077 3078 0 3078 3079 0 3079 3060 0 3080 3081 1 3081 3082 1 3082 3083 1
		 3083 3084 1 3084 3085 1 3085 3086 1 3086 3087 1 3087 3088 1 3088 3089 1 3089 3090 1;
	setAttr ".ed[5810:5975]" 3090 3091 1 3091 3092 1 3092 3093 1 3093 3094 1 3094 3095 1
		 3095 3096 1 3096 3097 1 3097 3098 1 3098 3099 1 3099 3080 1 3100 3101 1 3101 3102 1
		 3102 3103 1 3103 3104 1 3104 3105 1 3105 3106 1 3106 3107 1 3107 3108 1 3108 3109 1
		 3109 3110 1 3110 3111 1 3111 3112 1 3112 3113 1 3113 3114 1 3114 3115 1 3115 3116 1
		 3116 3117 1 3117 3118 1 3118 3119 1 3119 3100 1 3120 3121 1 3121 3122 1 3122 3123 1
		 3123 3124 1 3124 3125 1 3125 3126 1 3126 3127 1 3127 3128 1 3128 3129 1 3129 3130 1
		 3130 3131 1 3131 3132 1 3132 3133 1 3133 3134 1 3134 3135 1 3135 3136 1 3136 3137 1
		 3137 3138 1 3138 3139 1 3139 3120 1 3140 3141 1 3141 3142 1 3142 3143 1 3143 3144 1
		 3144 3145 1 3145 3146 1 3146 3147 1 3147 3148 1 3148 3149 1 3149 3150 1 3150 3151 1
		 3151 3152 1 3152 3153 1 3153 3154 1 3154 3155 1 3155 3156 1 3156 3157 1 3157 3158 1
		 3158 3159 1 3159 3140 1 3160 3161 1 3161 3162 1 3162 3163 1 3163 3164 1 3164 3165 1
		 3165 3166 1 3166 3167 1 3167 3168 1 3168 3169 1 3169 3170 1 3170 3171 1 3171 3172 1
		 3172 3173 1 3173 3174 1 3174 3175 1 3175 3176 1 3176 3177 1 3177 3178 1 3178 3179 1
		 3179 3160 1 3180 3181 1 3181 3182 1 3182 3183 1 3183 3184 1 3184 3185 1 3185 3186 1
		 3186 3187 1 3187 3188 1 3188 3189 1 3189 3190 1 3190 3191 1 3191 3192 1 3192 3193 1
		 3193 3194 1 3194 3195 1 3195 3196 1 3196 3197 1 3197 3198 1 3198 3199 1 3199 3180 1
		 3200 3201 1 3201 3202 1 3202 3203 1 3203 3204 1 3204 3205 1 3205 3206 1 3206 3207 1
		 3207 3208 1 3208 3209 1 3209 3210 1 3210 3211 1 3211 3212 1 3212 3213 1 3213 3214 1
		 3214 3215 1 3215 3216 1 3216 3217 1 3217 3218 1 3218 3219 1 3219 3200 1 3220 3221 0
		 3221 3222 0 3222 3223 0 3223 3224 0 3224 3225 0 3225 3226 0 3226 3227 0 3227 3228 0
		 3228 3229 0 3229 3230 0 3230 3231 0 3231 3232 0 3232 3233 0 3233 3234 0 3234 3235 0
		 3235 3236 0 3236 3237 0 3237 3238 0 3238 3239 0 3239 3220 0 3060 3080 1 3061 3081 1
		 3062 3082 1 3063 3083 1 3064 3084 1 3065 3085 1 3066 3086 1 3067 3087 1 3068 3088 1
		 3069 3089 1 3070 3090 1 3071 3091 1 3072 3092 1 3073 3093 1 3074 3094 1 3075 3095 1;
	setAttr ".ed[5976:6141]" 3076 3096 1 3077 3097 1 3078 3098 1 3079 3099 1 3080 3100 1
		 3081 3101 1 3082 3102 1 3083 3103 1 3084 3104 1 3085 3105 1 3086 3106 1 3087 3107 1
		 3088 3108 1 3089 3109 1 3090 3110 1 3091 3111 1 3092 3112 1 3093 3113 1 3094 3114 1
		 3095 3115 1 3096 3116 1 3097 3117 1 3098 3118 1 3099 3119 1 3100 3120 1 3101 3121 1
		 3102 3122 1 3103 3123 1 3104 3124 1 3105 3125 1 3106 3126 1 3107 3127 1 3108 3128 1
		 3109 3129 1 3110 3130 1 3111 3131 1 3112 3132 1 3113 3133 1 3114 3134 1 3115 3135 1
		 3116 3136 1 3117 3137 1 3118 3138 1 3119 3139 1 3120 3140 1 3121 3141 1 3122 3142 1
		 3123 3143 1 3124 3144 1 3125 3145 1 3126 3146 1 3127 3147 1 3128 3148 1 3129 3149 1
		 3130 3150 1 3131 3151 1 3132 3152 1 3133 3153 1 3134 3154 1 3135 3155 1 3136 3156 1
		 3137 3157 1 3138 3158 1 3139 3159 1 3140 3160 1 3141 3161 1 3142 3162 1 3143 3163 1
		 3144 3164 1 3145 3165 1 3146 3166 1 3147 3167 1 3148 3168 1 3149 3169 1 3150 3170 1
		 3151 3171 1 3152 3172 1 3153 3173 1 3154 3174 1 3155 3175 1 3156 3176 1 3157 3177 1
		 3158 3178 1 3159 3179 1 3160 3180 1 3161 3181 1 3162 3182 1 3163 3183 1 3164 3184 1
		 3165 3185 1 3166 3186 1 3167 3187 1 3168 3188 1 3169 3189 1 3170 3190 1 3171 3191 1
		 3172 3192 1 3173 3193 1 3174 3194 1 3175 3195 1 3176 3196 1 3177 3197 1 3178 3198 1
		 3179 3199 1 3180 3200 1 3181 3201 1 3182 3202 1 3183 3203 1 3184 3204 1 3185 3205 1
		 3186 3206 1 3187 3207 1 3188 3208 1 3189 3209 1 3190 3210 1 3191 3211 1 3192 3212 1
		 3193 3213 1 3194 3214 1 3195 3215 1 3196 3216 1 3197 3217 1 3198 3218 1 3199 3219 1
		 3200 3220 1 3201 3221 1 3202 3222 1 3203 3223 1 3204 3224 1 3205 3225 1 3206 3226 1
		 3207 3227 1 3208 3228 1 3209 3229 1 3210 3230 1 3211 3231 1 3212 3232 1 3213 3233 1
		 3214 3234 1 3215 3235 1 3216 3236 1 3217 3237 1 3218 3238 1 3219 3239 1 3240 3241 0
		 3241 3242 0 3242 3243 0 3243 3244 0 3244 3245 0 3245 3246 0 3246 3247 0 3247 3248 0
		 3248 3249 0 3249 3250 0 3250 3251 0 3251 3252 0 3252 3253 0 3253 3254 0 3254 3255 0
		 3255 3256 0 3256 3257 0 3257 3258 0 3258 3259 0 3259 3240 0 3260 3261 1 3261 3262 1;
	setAttr ".ed[6142:6307]" 3262 3263 1 3263 3264 1 3264 3265 1 3265 3266 1 3266 3267 1
		 3267 3268 1 3268 3269 1 3269 3270 1 3270 3271 1 3271 3272 1 3272 3273 1 3273 3274 1
		 3274 3275 1 3275 3276 1 3276 3277 1 3277 3278 1 3278 3279 1 3279 3260 1 3280 3281 1
		 3281 3282 1 3282 3283 1 3283 3284 1 3284 3285 1 3285 3286 1 3286 3287 1 3287 3288 1
		 3288 3289 1 3289 3290 1 3290 3291 1 3291 3292 1 3292 3293 1 3293 3294 1 3294 3295 1
		 3295 3296 1 3296 3297 1 3297 3298 1 3298 3299 1 3299 3280 1 3300 3301 1 3301 3302 1
		 3302 3303 1 3303 3304 1 3304 3305 1 3305 3306 1 3306 3307 1 3307 3308 1 3308 3309 1
		 3309 3310 1 3310 3311 1 3311 3312 1 3312 3313 1 3313 3314 1 3314 3315 1 3315 3316 1
		 3316 3317 1 3317 3318 1 3318 3319 1 3319 3300 1 3320 3321 1 3321 3322 1 3322 3323 1
		 3323 3324 1 3324 3325 1 3325 3326 1 3326 3327 1 3327 3328 1 3328 3329 1 3329 3330 1
		 3330 3331 1 3331 3332 1 3332 3333 1 3333 3334 1 3334 3335 1 3335 3336 1 3336 3337 1
		 3337 3338 1 3338 3339 1 3339 3320 1 3340 3341 1 3341 3342 1 3342 3343 1 3343 3344 1
		 3344 3345 1 3345 3346 1 3346 3347 1 3347 3348 1 3348 3349 1 3349 3350 1 3350 3351 1
		 3351 3352 1 3352 3353 1 3353 3354 1 3354 3355 1 3355 3356 1 3356 3357 1 3357 3358 1
		 3358 3359 1 3359 3340 1 3360 3361 1 3361 3362 1 3362 3363 1 3363 3364 1 3364 3365 1
		 3365 3366 1 3366 3367 1 3367 3368 1 3368 3369 1 3369 3370 1 3370 3371 1 3371 3372 1
		 3372 3373 1 3373 3374 1 3374 3375 1 3375 3376 1 3376 3377 1 3377 3378 1 3378 3379 1
		 3379 3360 1 3380 3381 1 3381 3382 1 3382 3383 1 3383 3384 1 3384 3385 1 3385 3386 1
		 3386 3387 1 3387 3388 1 3388 3389 1 3389 3390 1 3390 3391 1 3391 3392 1 3392 3393 1
		 3393 3394 1 3394 3395 1 3395 3396 1 3396 3397 1 3397 3398 1 3398 3399 1 3399 3380 1
		 3400 3401 0 3401 3402 0 3402 3403 0 3403 3404 0 3404 3405 0 3405 3406 0 3406 3407 0
		 3407 3408 0 3408 3409 0 3409 3410 0 3410 3411 0 3411 3412 0 3412 3413 0 3413 3414 0
		 3414 3415 0 3415 3416 0 3416 3417 0 3417 3418 0 3418 3419 0 3419 3400 0 3240 3260 1
		 3241 3261 1 3242 3262 1 3243 3263 1 3244 3264 1 3245 3265 1 3246 3266 1 3247 3267 1;
	setAttr ".ed[6308:6473]" 3248 3268 1 3249 3269 1 3250 3270 1 3251 3271 1 3252 3272 1
		 3253 3273 1 3254 3274 1 3255 3275 1 3256 3276 1 3257 3277 1 3258 3278 1 3259 3279 1
		 3260 3280 1 3261 3281 1 3262 3282 1 3263 3283 1 3264 3284 1 3265 3285 1 3266 3286 1
		 3267 3287 1 3268 3288 1 3269 3289 1 3270 3290 1 3271 3291 1 3272 3292 1 3273 3293 1
		 3274 3294 1 3275 3295 1 3276 3296 1 3277 3297 1 3278 3298 1 3279 3299 1 3280 3300 1
		 3281 3301 1 3282 3302 1 3283 3303 1 3284 3304 1 3285 3305 1 3286 3306 1 3287 3307 1
		 3288 3308 1 3289 3309 1 3290 3310 1 3291 3311 1 3292 3312 1 3293 3313 1 3294 3314 1
		 3295 3315 1 3296 3316 1 3297 3317 1 3298 3318 1 3299 3319 1 3300 3320 1 3301 3321 1
		 3302 3322 1 3303 3323 1 3304 3324 1 3305 3325 1 3306 3326 1 3307 3327 1 3308 3328 1
		 3309 3329 1 3310 3330 1 3311 3331 1 3312 3332 1 3313 3333 1 3314 3334 1 3315 3335 1
		 3316 3336 1 3317 3337 1 3318 3338 1 3319 3339 1 3320 3340 1 3321 3341 1 3322 3342 1
		 3323 3343 1 3324 3344 1 3325 3345 1 3326 3346 1 3327 3347 1 3328 3348 1 3329 3349 1
		 3330 3350 1 3331 3351 1 3332 3352 1 3333 3353 1 3334 3354 1 3335 3355 1 3336 3356 1
		 3337 3357 1 3338 3358 1 3339 3359 1 3340 3360 1 3341 3361 1 3342 3362 1 3343 3363 1
		 3344 3364 1 3345 3365 1 3346 3366 1 3347 3367 1 3348 3368 1 3349 3369 1 3350 3370 1
		 3351 3371 1 3352 3372 1 3353 3373 1 3354 3374 1 3355 3375 1 3356 3376 1 3357 3377 1
		 3358 3378 1 3359 3379 1 3360 3380 1 3361 3381 1 3362 3382 1 3363 3383 1 3364 3384 1
		 3365 3385 1 3366 3386 1 3367 3387 1 3368 3388 1 3369 3389 1 3370 3390 1 3371 3391 1
		 3372 3392 1 3373 3393 1 3374 3394 1 3375 3395 1 3376 3396 1 3377 3397 1 3378 3398 1
		 3379 3399 1 3380 3400 1 3381 3401 1 3382 3402 1 3383 3403 1 3384 3404 1 3385 3405 1
		 3386 3406 1 3387 3407 1 3388 3408 1 3389 3409 1 3390 3410 1 3391 3411 1 3392 3412 1
		 3393 3413 1 3394 3414 1 3395 3415 1 3396 3416 1 3397 3417 1 3398 3418 1 3399 3419 1
		 3420 3421 0 3421 3422 0 3422 3423 0 3423 3424 0 3424 3425 0 3425 3426 0 3426 3427 0
		 3427 3428 0 3428 3429 0 3429 3430 0 3430 3431 0 3431 3432 0 3432 3433 0 3433 3434 0;
	setAttr ".ed[6474:6639]" 3434 3435 0 3435 3436 0 3436 3437 0 3437 3438 0 3438 3439 0
		 3439 3420 0 3440 3441 1 3441 3442 1 3442 3443 1 3443 3444 1 3444 3445 1 3445 3446 1
		 3446 3447 1 3447 3448 1 3448 3449 1 3449 3450 1 3450 3451 1 3451 3452 1 3452 3453 1
		 3453 3454 1 3454 3455 1 3455 3456 1 3456 3457 1 3457 3458 1 3458 3459 1 3459 3440 1
		 3460 3461 1 3461 3462 1 3462 3463 1 3463 3464 1 3464 3465 1 3465 3466 1 3466 3467 1
		 3467 3468 1 3468 3469 1 3469 3470 1 3470 3471 1 3471 3472 1 3472 3473 1 3473 3474 1
		 3474 3475 1 3475 3476 1 3476 3477 1 3477 3478 1 3478 3479 1 3479 3460 1 3480 3481 1
		 3481 3482 1 3482 3483 1 3483 3484 1 3484 3485 1 3485 3486 1 3486 3487 1 3487 3488 1
		 3488 3489 1 3489 3490 1 3490 3491 1 3491 3492 1 3492 3493 1 3493 3494 1 3494 3495 1
		 3495 3496 1 3496 3497 1 3497 3498 1 3498 3499 1 3499 3480 1 3500 3501 1 3501 3502 1
		 3502 3503 1 3503 3504 1 3504 3505 1 3505 3506 1 3506 3507 1 3507 3508 1 3508 3509 1
		 3509 3510 1 3510 3511 1 3511 3512 1 3512 3513 1 3513 3514 1 3514 3515 1 3515 3516 1
		 3516 3517 1 3517 3518 1 3518 3519 1 3519 3500 1 3520 3521 1 3521 3522 1 3522 3523 1
		 3523 3524 1 3524 3525 1 3525 3526 1 3526 3527 1 3527 3528 1 3528 3529 1 3529 3530 1
		 3530 3531 1 3531 3532 1 3532 3533 1 3533 3534 1 3534 3535 1 3535 3536 1 3536 3537 1
		 3537 3538 1 3538 3539 1 3539 3520 1 3540 3541 1 3541 3542 1 3542 3543 1 3543 3544 1
		 3544 3545 1 3545 3546 1 3546 3547 1 3547 3548 1 3548 3549 1 3549 3550 1 3550 3551 1
		 3551 3552 1 3552 3553 1 3553 3554 1 3554 3555 1 3555 3556 1 3556 3557 1 3557 3558 1
		 3558 3559 1 3559 3540 1 3560 3561 1 3561 3562 1 3562 3563 1 3563 3564 1 3564 3565 1
		 3565 3566 1 3566 3567 1 3567 3568 1 3568 3569 1 3569 3570 1 3570 3571 1 3571 3572 1
		 3572 3573 1 3573 3574 1 3574 3575 1 3575 3576 1 3576 3577 1 3577 3578 1 3578 3579 1
		 3579 3560 1 3580 3581 0 3581 3582 0 3582 3583 0 3583 3584 0 3584 3585 0 3585 3586 0
		 3586 3587 0 3587 3588 0 3588 3589 0 3589 3590 0 3590 3591 0 3591 3592 0 3592 3593 0
		 3593 3594 0 3594 3595 0 3595 3596 0 3596 3597 0 3597 3598 0 3598 3599 0 3599 3580 0;
	setAttr ".ed[6640:6805]" 3420 3440 1 3421 3441 1 3422 3442 1 3423 3443 1 3424 3444 1
		 3425 3445 1 3426 3446 1 3427 3447 1 3428 3448 1 3429 3449 1 3430 3450 1 3431 3451 1
		 3432 3452 1 3433 3453 1 3434 3454 1 3435 3455 1 3436 3456 1 3437 3457 1 3438 3458 1
		 3439 3459 1 3440 3460 1 3441 3461 1 3442 3462 1 3443 3463 1 3444 3464 1 3445 3465 1
		 3446 3466 1 3447 3467 1 3448 3468 1 3449 3469 1 3450 3470 1 3451 3471 1 3452 3472 1
		 3453 3473 1 3454 3474 1 3455 3475 1 3456 3476 1 3457 3477 1 3458 3478 1 3459 3479 1
		 3460 3480 1 3461 3481 1 3462 3482 1 3463 3483 1 3464 3484 1 3465 3485 1 3466 3486 1
		 3467 3487 1 3468 3488 1 3469 3489 1 3470 3490 1 3471 3491 1 3472 3492 1 3473 3493 1
		 3474 3494 1 3475 3495 1 3476 3496 1 3477 3497 1 3478 3498 1 3479 3499 1 3480 3500 1
		 3481 3501 1 3482 3502 1 3483 3503 1 3484 3504 1 3485 3505 1 3486 3506 1 3487 3507 1
		 3488 3508 1 3489 3509 1 3490 3510 1 3491 3511 1 3492 3512 1 3493 3513 1 3494 3514 1
		 3495 3515 1 3496 3516 1 3497 3517 1 3498 3518 1 3499 3519 1 3500 3520 1 3501 3521 1
		 3502 3522 1 3503 3523 1 3504 3524 1 3505 3525 1 3506 3526 1 3507 3527 1 3508 3528 1
		 3509 3529 1 3510 3530 1 3511 3531 1 3512 3532 1 3513 3533 1 3514 3534 1 3515 3535 1
		 3516 3536 1 3517 3537 1 3518 3538 1 3519 3539 1 3520 3540 1 3521 3541 1 3522 3542 1
		 3523 3543 1 3524 3544 1 3525 3545 1 3526 3546 1 3527 3547 1 3528 3548 1 3529 3549 1
		 3530 3550 1 3531 3551 1 3532 3552 1 3533 3553 1 3534 3554 1 3535 3555 1 3536 3556 1
		 3537 3557 1 3538 3558 1 3539 3559 1 3540 3560 1 3541 3561 1 3542 3562 1 3543 3563 1
		 3544 3564 1 3545 3565 1 3546 3566 1 3547 3567 1 3548 3568 1 3549 3569 1 3550 3570 1
		 3551 3571 1 3552 3572 1 3553 3573 1 3554 3574 1 3555 3575 1 3556 3576 1 3557 3577 1
		 3558 3578 1 3559 3579 1 3560 3580 1 3561 3581 1 3562 3582 1 3563 3583 1 3564 3584 1
		 3565 3585 1 3566 3586 1 3567 3587 1 3568 3588 1 3569 3589 1 3570 3590 1 3571 3591 1
		 3572 3592 1 3573 3593 1 3574 3594 1 3575 3595 1 3576 3596 1 3577 3597 1 3578 3598 1
		 3579 3599 1 3600 3652 0 3601 3642 0 3603 3659 0 3604 3649 0 3606 3658 0 3607 3648 0;
	setAttr ".ed[6806:6971]" 3609 3653 0 3610 3643 0 3600 3672 0 3601 3675 1 3602 3678 0
		 3603 4033 0 3604 4036 1 3605 4039 0 3606 3617 0 3607 3616 1 3608 3615 0 3609 3822 0
		 3610 3819 1 3611 3816 0 3612 3603 0 3613 3604 1 3614 3605 0 3615 3621 0 3616 3622 0
		 3617 3623 0 3612 3660 1 3613 3650 1 3614 4040 1 3615 3667 0 3616 3637 0 3617 3826 1
		 3618 3612 0 3619 3613 1 3620 3614 0 3621 3737 0 3623 3745 0 3618 3661 1 3619 3651 1
		 3620 4041 1 3621 3664 0 3622 3634 0 3623 3825 1 3616 3624 0 3617 3625 0 3624 3636 0
		 3622 3626 0 3624 3626 0 3623 3627 0 3626 3635 0 3625 3627 0 3615 3628 0 3616 3629 0
		 3628 3666 0 3621 3630 0 3628 3630 0 3622 3631 0 3630 3665 0 3629 3631 0 3632 3601 0
		 3633 3610 0 3634 3654 0 3635 3655 0 3636 3656 0 3637 3657 0 3638 3607 0 3639 3604 0
		 3640 3613 1 3641 3619 1 3632 4048 1 3633 3683 1 3634 3635 1 3637 3638 1 3638 3807 1
		 3639 3640 1 3640 3641 1 3641 3742 1 3642 3662 0 3643 3663 0 3644 3622 0 3645 3631 0
		 3646 3629 0 3647 3616 0 3648 3668 0 3649 3669 0 3650 3670 1 3651 3671 1 3642 4046 1
		 3643 3681 1 3644 3645 1 3647 3648 1 3648 3809 1 3649 3650 1 3650 3651 1 3651 3740 1
		 3652 3632 0 3653 3633 0 3654 3623 0 3655 3627 0 3656 3625 0 3657 3617 0 3658 3638 0
		 3659 3639 0 3660 3640 1 3661 3641 1 3652 4049 1 3653 3684 1 3654 3655 1 3657 3658 1
		 3658 3806 1 3659 3660 1 3660 3661 1 3661 3743 1 3662 3602 0 3663 3611 0 3664 3644 0
		 3665 3645 0 3666 3646 0 3667 3647 0 3668 3608 0 3669 3605 0 3670 3614 1 3671 3620 1
		 3662 4045 1 3663 3680 1 3664 3665 1 3667 3668 1 3668 3810 1 3669 3670 1 3670 3671 1
		 3671 3739 1 3672 3744 0 3673 3652 1 3674 3632 1 3675 3741 1 3676 3642 1 3677 3662 1
		 3678 3738 0 3679 3611 0 3680 3752 1 3681 3751 0 3682 3610 1 3683 3747 0 3684 3746 1
		 3685 3609 0 3672 3673 1 3673 3674 1 3674 3675 1 3675 3676 1 3676 3677 1 3677 3678 1
		 3678 4043 1 3679 3680 1 3680 3681 1 3681 3682 0 3682 3683 0 3683 3684 1 3684 3685 1
		 3685 3823 1 3682 3686 0 3683 3687 0 3686 3687 0 3687 3748 0 3622 3749 1 3681 3688 0
		 3688 3750 0 3688 3686 0 3665 3689 0 3666 3690 0 3628 3691 0 3691 3690 0 3630 3692 0;
	setAttr ".ed[6972:7137]" 3691 3692 0 3692 3689 0 3646 3693 0 3629 3694 0 3693 3694 0
		 3645 3695 0 3631 3696 0 3695 3696 0 3694 3696 0 3690 3693 0 3689 3695 0 3635 3697 0
		 3636 3698 0 3624 3699 0 3699 3698 0 3626 3700 0 3699 3700 0 3700 3697 0 3655 3701 0
		 3656 3702 0 3698 3702 0 3697 3701 0 3625 3703 0 3702 3703 0 3627 3704 0 3701 3704 0
		 3703 3704 0 3689 3705 0 3690 3706 0 3691 3707 0 3707 3706 0 3692 3708 0 3707 3708 0
		 3708 3705 0 3693 3709 0 3694 3710 0 3709 3710 0 3695 3711 0 3696 3712 0 3711 3712 0
		 3710 3712 0 3706 3709 0 3705 3711 0 3697 3713 0 3698 3714 0 3699 3715 0 3715 3714 0
		 3700 3716 0 3715 3716 0 3716 3713 0 3701 3717 0 3702 3718 0 3714 3718 0 3713 3717 0
		 3703 3719 0 3718 3719 0 3704 3720 0 3717 3720 0 3719 3720 0 3705 3721 0 3706 3722 0
		 3721 3722 1 3707 3723 0 3723 3722 0 3708 3724 0 3723 3724 0 3724 3721 0 3709 3725 0
		 3710 3726 0 3725 3726 0 3711 3727 0 3727 3725 1 3712 3728 0 3727 3728 0 3726 3728 0
		 3722 3725 0 3721 3727 0 3713 3729 0 3714 3730 0 3729 3730 1 3715 3731 0 3731 3730 0
		 3716 3732 0 3731 3732 0 3732 3729 0 3717 3733 0 3718 3734 0 3733 3734 1 3730 3734 0
		 3729 3733 0 3719 3735 0 3734 3735 0 3720 3736 0 3733 3736 0 3735 3736 0 3737 3679 0
		 3738 3620 0 3739 3677 1 3740 3676 1 3741 3619 1 3742 3674 1 3743 3673 1 3744 3618 0
		 3745 3685 0 3746 3654 1 3747 3634 0 3748 3634 0 3749 3686 1 3750 3644 0 3751 3644 0
		 3752 3664 1 3737 3814 1 3738 3739 1 3739 3740 1 3740 3741 1 3741 3742 1 3742 3743 1
		 3743 3744 1 3744 4052 1 3745 3746 1 3746 3747 1 3747 3748 1 3748 3749 1 3749 3750 1
		 3750 3751 1 3751 3752 1 3752 3737 1 3636 3753 0 3753 3637 1 3616 3754 0 3754 3637 0
		 3624 3755 0 3754 3755 0 3755 3753 0 3656 3756 0 3756 3757 1 3637 3757 0 3753 3756 0
		 3757 3617 0 3625 3758 0 3756 3758 0 3617 3758 0 3666 3759 0 3759 3760 1 3615 3760 0
		 3628 3761 0 3615 3761 0 3761 3759 0 3616 3762 0 3647 3762 0 3646 3763 0 3763 3647 1
		 3629 3764 0 3763 3764 0 3762 3764 0 3760 3647 0 3759 3763 0 3637 3765 0 3657 3766 0
		 3765 3766 0 3757 3767 0 3765 3767 0 3617 3768 0 3766 3768 0 3767 3768 0 3615 3769 0;
	setAttr ".ed[7138:7303]" 3667 3770 0 3769 3770 0 3760 3771 0 3769 3771 0 3647 3772 0
		 3770 3772 0 3771 3772 0 3765 3773 0 3766 3774 0 3773 3774 0 3767 3775 0 3773 3775 0
		 3768 3776 0 3774 3776 0 3775 3776 0 3769 3777 0 3770 3778 0 3777 3778 0 3771 3779 0
		 3777 3779 0 3772 3780 0 3778 3780 0 3779 3780 0 3773 3781 0 3774 3782 0 3781 3782 0
		 3775 3783 0 3781 3783 0 3776 3784 0 3782 3784 0 3783 3784 0 3777 3785 0 3778 3786 0
		 3785 3786 0 3779 3787 0 3785 3787 0 3780 3788 0 3786 3788 0 3787 3788 0 3781 3789 0
		 3782 3790 0 3789 3790 0 3781 3791 0 3789 3791 0 3783 3792 0 3791 3792 0 3784 3793 0
		 3790 3793 0 3784 3794 0 3792 3794 0 3793 3794 0 3785 3795 0 3786 3796 0 3795 3796 0
		 3785 3797 0 3795 3797 0 3787 3798 0 3797 3798 0 3788 3799 0 3796 3799 0 3788 3800 0
		 3798 3800 0 3799 3800 0 3789 3801 0 3790 3801 0 3791 3802 0 3801 3802 0 3792 3802 0
		 3793 3801 0 3794 3802 0 3795 3803 0 3796 3803 0 3797 3804 0 3803 3804 0 3798 3804 0
		 3799 3803 0 3800 3804 0 3805 3606 0 3806 3828 1 3807 3829 1 3808 3607 1 3809 3831 1
		 3810 3832 1 3811 3608 0 3812 3615 1 3813 3621 1 3814 3836 1 3815 3679 1 3816 3838 0
		 3817 3663 1 3818 3643 1 3819 3841 1 3820 3633 1 3821 3653 1 3822 3844 0 3823 3845 1
		 3824 3745 1 3825 3847 1 3826 3848 1 3805 3806 1 3806 3807 1 3807 3808 1 3808 3809 1
		 3809 3810 1 3810 3811 1 3811 3812 1 3812 3813 1 3813 3814 1 3814 3815 1 3815 3816 1
		 3816 3817 1 3817 3818 1 3818 3819 1 3819 3820 1 3820 3821 1 3821 3822 1 3822 3823 1
		 3823 3824 1 3824 3825 1 3825 3826 1 3826 3805 1 3827 3805 0 3828 3850 1 3829 3851 1
		 3830 3808 1 3831 3853 1 3832 3854 1 3833 3811 0 3834 3812 1 3835 3813 1 3837 3815 1
		 3839 3817 1 3840 3818 1 3842 3820 1 3843 3821 1 3846 3824 1 3847 3869 0 3848 3870 1
		 3827 3828 1 3828 3829 1 3829 3830 1 3830 3831 1 3831 3832 1 3832 3833 1 3833 3834 1
		 3834 3835 1 3835 3836 0 3836 3837 0 3837 3838 0 3838 3839 0 3839 3840 0 3840 3841 0
		 3841 3842 0 3842 3843 0 3843 3844 0 3844 3845 0 3845 3846 0 3846 3847 0 3847 3848 1
		 3848 3827 1 3849 3827 0 3850 4012 1 3851 4013 1 3852 3830 1 3853 4015 1 3854 4016 1;
	setAttr ".ed[7304:7469]" 3855 3833 0 3856 3834 1 3857 3835 0 3858 4020 0 3860 4022 0
		 3863 4025 1 3866 4028 0 3867 4029 1 3869 4031 0 3870 4032 1 3849 3850 1 3850 3851 1
		 3851 3852 1 3852 3853 1 3853 3854 1 3854 3855 1 3855 3856 1 3856 3857 1 3857 3858 0
		 3858 3859 0 3859 3860 0 3860 3861 0 3861 3862 0 3862 3863 0 3863 3864 0 3864 3865 0
		 3865 3866 0 3866 3867 0 3867 3868 0 3868 3869 0 3869 3870 1 3870 3849 1 3857 3871 0
		 3858 3872 0 3871 3872 0 3836 3873 0 3873 3872 1 3835 3874 0 3874 3873 0 3871 3874 0
		 3859 3875 0 3872 3875 0 3837 3876 0 3875 3876 1 3873 3876 0 3860 3877 0 3875 3877 0
		 3838 3878 0 3878 3877 0 3876 3878 0 3861 3879 0 3877 3879 0 3879 3880 1 3878 3880 0
		 3862 3881 0 3879 3881 0 3881 3882 1 3880 3882 0 3882 3883 0 3863 3884 0 3881 3884 0
		 3883 3884 1 3864 3885 0 3884 3885 0 3885 3886 1 3883 3886 0 3865 3887 0 3885 3887 0
		 3887 3888 1 3886 3888 0 3844 3889 0 3888 3889 0 3866 3890 0 3887 3890 0 3889 3890 0
		 3845 3891 0 3889 3891 0 3867 3892 0 3890 3892 0 3891 3892 1 3846 3893 0 3891 3893 0
		 3868 3894 0 3892 3894 0 3894 3893 1 3847 3895 0 3893 3895 0 3869 3896 0 3894 3896 0
		 3895 3896 0 3838 3897 0 3839 3898 0 3897 3898 0 3878 3899 0 3897 3899 0 3880 3900 0
		 3899 3900 0 3840 3901 0 3898 3901 0 3882 3902 0 3900 3902 0 3841 3903 0 3901 3903 0
		 3883 3904 0 3902 3904 0 3842 3905 0 3903 3905 0 3886 3906 0 3904 3906 0 3843 3907 0
		 3905 3907 0 3888 3908 0 3906 3908 0 3844 3909 0 3907 3909 0 3889 3910 0 3908 3910 0
		 3909 3910 0 3897 3911 0 3898 3912 0 3911 3912 0 3899 3913 0 3911 3913 0 3900 3914 0
		 3913 3914 0 3912 3914 0 3901 3915 0 3912 3915 0 3902 3916 0 3914 3916 0 3915 3916 0
		 3915 3917 0 3904 3918 0 3916 3918 0 3917 3918 0 3905 3919 0 3917 3919 0 3906 3920 0
		 3918 3920 0 3919 3920 0 3907 3921 0 3919 3921 0 3908 3922 0 3920 3922 0 3921 3922 0
		 3909 3923 0 3921 3923 0 3910 3924 0 3922 3924 0 3923 3924 0 3897 3925 0 3898 3926 0
		 3925 3926 0 3911 3927 0 3925 3927 0 3912 3928 0 3927 3928 0 3926 3928 0 3907 3929 0
		 3909 3930 0 3929 3930 0 3921 3931 0 3929 3931 0 3923 3932 0 3931 3932 0 3930 3932 0;
	setAttr ".ed[7470:7635]" 3925 3949 0 3926 3952 0 3933 3934 0 3927 3950 0 3933 3935 0
		 3928 3951 0 3935 3936 0 3934 3936 0 3929 3956 0 3930 3953 0 3937 3938 0 3931 3955 0
		 3937 3939 0 3932 3954 0 3939 3940 0 3938 3940 0 3933 3941 0 3934 3942 0 3941 3942 0
		 3935 3943 0 3941 3943 0 3936 3944 0 3943 3944 0 3942 3944 0 3937 3945 0 3938 3946 0
		 3945 3946 0 3939 3947 0 3945 3947 0 3940 3948 0 3947 3948 0 3946 3948 0 3949 3933 0
		 3950 3935 0 3951 3936 0 3952 3934 0 3949 3950 1 3950 3951 1 3951 3952 1 3952 3949 1
		 3953 3938 0 3954 3940 0 3955 3939 0 3956 3937 0 3953 3954 1 3954 3955 1 3955 3956 1
		 3956 3953 1 3898 3957 0 3901 3958 0 3957 3958 0 3912 3959 0 3957 3959 0 3915 3960 0
		 3959 3960 0 3958 3960 0 3905 3961 0 3907 3962 0 3961 3962 0 3919 3963 0 3961 3963 0
		 3921 3964 0 3963 3964 0 3962 3964 0 3901 3965 0 3903 3966 0 3965 3966 0 3915 3967 0
		 3965 3967 0 3917 3968 0 3967 3968 0 3966 3968 0 3905 3969 0 3966 3969 0 3919 3970 0
		 3968 3970 0 3969 3970 0 3957 3971 0 3958 3972 0 3971 3972 0 3959 3973 0 3971 3973 0
		 3960 3974 0 3973 3974 0 3972 3974 0 3961 3975 0 3962 3976 0 3975 3976 0 3963 3977 0
		 3975 3977 0 3964 3978 0 3977 3978 0 3976 3978 0 3971 3979 0 3972 3980 0 3979 3980 0
		 3973 3981 0 3979 3981 0 3974 3982 0 3981 3982 0 3980 3982 0 3975 3983 0 3976 3984 0
		 3983 3984 0 3977 3985 0 3983 3985 0 3978 3986 0 3985 3986 0 3984 3986 0 3965 3987 0
		 3966 3988 0 3987 3988 0 3967 3989 0 3987 3989 0 3968 3990 0 3989 3990 0 3988 3990 0
		 3966 3991 0 3969 3992 0 3991 3992 0 3968 3993 0 3991 3993 0 3970 3994 0 3993 3994 0
		 3992 3994 0 3987 3995 0 3988 3996 0 3995 3996 0 3989 3997 0 3995 3997 0 3990 3998 0
		 3997 3998 0 3996 3998 0 3991 3999 0 3992 4000 0 3999 4000 0 3993 4001 0 3999 4001 0
		 3994 4002 0 4001 4002 0 4000 4002 0 3995 4003 0 3996 4004 0 4003 4004 0 3997 4005 0
		 4003 4005 0 3998 4006 0 4005 4006 0 4004 4006 0 3999 4007 0 4000 4008 0 4007 4008 0
		 4001 4009 0 4007 4009 0 4002 4010 0 4009 4010 0 4008 4010 0 4011 3849 0 4012 4034 1
		 4013 4035 1 4014 3852 1 4015 4037 1 4016 4038 1 4017 3855 0 4018 3856 1 4019 3857 0;
	setAttr ".ed[7636:7801]" 4020 4042 1 4021 3859 1 4022 4044 0 4023 3861 1 4024 3862 1
		 4025 4047 1 4026 3864 1 4027 3865 1 4028 4050 0 4029 4051 1 4030 3868 0 4031 4053 1
		 4032 4054 1 4011 4012 1 4012 4013 1 4013 4014 1 4014 4015 1 4015 4016 1 4016 4017 1
		 4017 4018 1 4018 4019 1 4019 4020 0 4020 4021 1 4021 4022 1 4022 4023 1 4023 4024 1
		 4024 4025 1 4025 4026 1 4026 4027 1 4027 4028 1 4028 4029 1 4029 4030 1 4030 4031 0
		 4031 4032 1 4032 4011 1 4033 4011 0 4034 3659 1 4035 3639 1 4036 4014 1 4037 3649 1
		 4038 3669 1 4039 4017 0 4040 4018 1 4041 4019 1 4042 3738 1 4043 4021 1 4044 3602 0
		 4045 4023 1 4046 4024 1 4047 3601 1 4048 4026 1 4049 4027 1 4050 3600 0 4051 3672 1
		 4052 4030 1 4053 3618 1 4054 3612 1 4033 4034 1 4034 4035 1 4035 4036 1 4036 4037 1
		 4037 4038 1 4038 4039 1 4039 4040 1 4040 4041 1 4041 4042 1 4042 4043 1 4043 4044 1
		 4044 4045 1 4045 4046 1 4046 4047 1 4047 4048 1 4048 4049 1 4049 4050 1 4050 4051 1
		 4051 4052 1 4052 4053 1 4053 4054 1 4054 4033 1 4019 4055 0 4020 4056 0 4055 4056 0
		 3858 4056 0 4055 3857 0 4030 4057 0 4057 3868 0 4031 4058 0 4057 4058 0 3869 4058 0
		 4059 4060 0 4061 4062 1 4063 4064 1 4065 4066 1 4067 4068 0 4069 4070 0 4071 4072 1
		 4073 4074 1 4075 4076 1 4077 4078 0 4059 4061 0 4060 4062 0 4061 4063 0 4062 4064 0
		 4063 4065 0 4064 4066 0 4065 4067 0 4066 4068 0 4067 4069 0 4068 4070 0 4069 4071 0
		 4070 4072 0 4071 4073 0 4072 4074 0 4073 4075 0 4074 4076 0 4075 4077 0 4076 4078 0
		 4077 4059 0 4078 4060 0 4076 4062 1 4074 4064 1 4072 4066 1 4075 4061 1 4073 4063 1
		 4071 4065 1 4079 4080 0 4081 4082 1 4083 4084 1 4085 4086 1 4087 4088 0 4089 4090 0
		 4091 4092 1 4093 4094 1 4095 4096 1 4097 4098 0 4079 4081 0 4080 4082 0 4081 4083 0
		 4082 4084 0 4083 4085 0 4084 4086 0 4085 4087 0 4086 4088 0 4087 4089 0 4088 4090 0
		 4089 4091 0 4090 4092 0 4091 4093 0 4092 4094 0 4093 4095 0 4094 4096 0 4095 4097 0
		 4096 4098 0 4097 4079 0 4098 4080 0 4096 4082 1 4094 4084 1 4092 4086 1 4095 4081 1
		 4093 4083 1 4091 4085 1 4099 4100 0 4101 4102 1 4103 4104 1 4105 4106 1 4107 4108 0;
	setAttr ".ed[7802:7967]" 4109 4110 0 4111 4112 1 4113 4114 1 4115 4116 1 4117 4118 0
		 4099 4101 0 4100 4102 0 4101 4103 0 4102 4104 0 4103 4105 0 4104 4106 0 4105 4107 0
		 4106 4108 0 4107 4109 0 4108 4110 0 4109 4111 0 4110 4112 0 4111 4113 0 4112 4114 0
		 4113 4115 0 4114 4116 0 4115 4117 0 4116 4118 0 4117 4099 0 4118 4100 0 4116 4102 1
		 4114 4104 1 4112 4106 1 4115 4101 1 4113 4103 1 4111 4105 1 4119 4120 0 4121 4122 1
		 4123 4124 1 4125 4126 1 4127 4128 0 4129 4130 0 4131 4132 1 4133 4134 1 4135 4136 1
		 4137 4138 0 4119 4121 0 4120 4122 0 4121 4123 0 4122 4124 0 4123 4125 0 4124 4126 0
		 4125 4127 0 4126 4128 0 4127 4129 0 4128 4130 0 4129 4131 0 4130 4132 0 4131 4133 0
		 4132 4134 0 4133 4135 0 4134 4136 0 4135 4137 0 4136 4138 0 4137 4119 0 4138 4120 0
		 4136 4122 1 4134 4124 1 4132 4126 1 4135 4121 1 4133 4123 1 4131 4125 1 4139 4140 0
		 4141 4142 1 4143 4144 1 4145 4146 1 4147 4148 0 4149 4150 0 4151 4152 1 4153 4154 1
		 4155 4156 1 4157 4158 0 4139 4141 0 4140 4142 0 4141 4143 0 4142 4144 0 4143 4145 0
		 4144 4146 0 4145 4147 0 4146 4148 0 4147 4149 0 4148 4150 0 4149 4151 0 4150 4152 0
		 4151 4153 0 4152 4154 0 4153 4155 0 4154 4156 0 4155 4157 0 4156 4158 0 4157 4139 0
		 4158 4140 0 4156 4142 1 4154 4144 1 4152 4146 1 4155 4141 1 4153 4143 1 4151 4145 1
		 4159 4160 0 4161 4162 1 4163 4164 1 4165 4166 1 4167 4168 0 4169 4170 0 4171 4172 1
		 4173 4174 1 4175 4176 1 4177 4178 0 4159 4161 0 4160 4162 0 4161 4163 0 4162 4164 0
		 4163 4165 0 4164 4166 0 4165 4167 0 4166 4168 0 4167 4169 0 4168 4170 0 4169 4171 0
		 4170 4172 0 4171 4173 0 4172 4174 0 4173 4175 0 4174 4176 0 4175 4177 0 4176 4178 0
		 4177 4159 0 4178 4160 0 4176 4162 1 4174 4164 1 4172 4166 1 4175 4161 1 4173 4163 1
		 4171 4165 1 4179 4180 0 4181 4182 1 4183 4184 1 4185 4186 1 4187 4188 0 4189 4190 0
		 4191 4192 1 4193 4194 1 4195 4196 1 4197 4198 0 4179 4181 0 4180 4182 0 4181 4183 0
		 4182 4184 0 4183 4185 0 4184 4186 0 4185 4187 0 4186 4188 0 4187 4189 0 4188 4190 0
		 4189 4191 0 4190 4192 0 4191 4193 0 4192 4194 0 4193 4195 0 4194 4196 0 4195 4197 0;
	setAttr ".ed[7968:8133]" 4196 4198 0 4197 4179 0 4198 4180 0 4196 4182 1 4194 4184 1
		 4192 4186 1 4195 4181 1 4193 4183 1 4191 4185 1 4199 4200 0 4201 4202 1 4203 4204 1
		 4205 4206 1 4207 4208 0 4209 4210 0 4211 4212 1 4213 4214 1 4215 4216 1 4217 4218 0
		 4199 4201 0 4200 4202 0 4201 4203 0 4202 4204 0 4203 4205 0 4204 4206 0 4205 4207 0
		 4206 4208 0 4207 4209 0 4208 4210 0 4209 4211 0 4210 4212 0 4211 4213 0 4212 4214 0
		 4213 4215 0 4214 4216 0 4215 4217 0 4216 4218 0 4217 4199 0 4218 4200 0 4216 4202 1
		 4214 4204 1 4212 4206 1 4215 4201 1 4213 4203 1 4211 4205 1 4219 4220 0 4220 4222 0
		 4221 4222 1 4219 4221 0 4222 4224 0 4223 4224 1 4221 4223 0 4224 4226 0 4225 4226 1
		 4223 4225 0 4226 4228 0 4227 4228 0 4225 4227 0 4228 4230 0 4229 4230 0 4227 4229 0
		 4230 4232 0 4231 4232 1 4229 4231 0 4232 4234 0 4233 4234 1 4231 4233 0 4234 4236 0
		 4235 4236 1 4233 4235 0 4236 4238 0 4237 4238 0 4235 4237 0 4238 4220 0 4236 4222 1
		 4234 4224 1 4232 4226 1 4237 4219 0 4235 4221 1 4233 4223 1 4231 4225 1 4239 4240 0
		 4240 4242 0 4241 4242 1 4239 4241 0 4242 4244 0 4243 4244 1 4241 4243 0 4244 4246 0
		 4245 4246 1 4243 4245 0 4246 4248 0 4247 4248 0 4245 4247 0 4248 4250 0 4249 4250 0
		 4247 4249 0 4250 4252 0 4251 4252 1 4249 4251 0 4252 4254 0 4253 4254 1 4251 4253 0
		 4254 4256 0 4255 4256 1 4253 4255 0 4256 4258 0 4257 4258 0 4255 4257 0 4258 4240 0
		 4256 4242 1 4254 4244 1 4252 4246 1 4257 4239 0 4255 4241 1 4253 4243 1 4251 4245 1
		 4259 4260 0 4260 4262 0 4261 4262 1 4259 4261 0 4262 4264 0 4263 4264 1 4261 4263 0
		 4264 4266 0 4265 4266 1 4263 4265 0 4266 4268 0 4267 4268 0 4265 4267 0 4268 4270 0
		 4269 4270 0 4267 4269 0 4270 4272 0 4271 4272 1 4269 4271 0 4272 4274 0 4273 4274 1
		 4271 4273 0 4274 4276 0 4275 4276 1 4273 4275 0 4276 4278 0 4277 4278 0 4275 4277 0
		 4278 4260 0 4276 4262 1 4274 4264 1 4272 4266 1 4277 4259 0 4275 4261 1 4273 4263 1
		 4271 4265 1 4279 4280 0 4280 4282 0 4281 4282 1 4279 4281 0 4282 4284 0 4283 4284 1
		 4281 4283 0 4284 4286 0 4285 4286 1 4283 4285 0 4286 4288 0 4287 4288 0 4285 4287 0;
	setAttr ".ed[8134:8299]" 4288 4290 0 4289 4290 0 4287 4289 0 4290 4292 0 4291 4292 1
		 4289 4291 0 4292 4294 0 4293 4294 1 4291 4293 0 4294 4296 0 4295 4296 1 4293 4295 0
		 4296 4298 0 4297 4298 0 4295 4297 0 4298 4280 0 4296 4282 1 4294 4284 1 4292 4286 1
		 4297 4279 0 4295 4281 1 4293 4283 1 4291 4285 1 4299 4300 0 4300 4302 0 4301 4302 1
		 4299 4301 0 4302 4304 0 4303 4304 1 4301 4303 0 4304 4306 0 4305 4306 1 4303 4305 0
		 4306 4308 0 4307 4308 0 4305 4307 0 4308 4310 0 4309 4310 0 4307 4309 0 4310 4312 0
		 4311 4312 1 4309 4311 0 4312 4314 0 4313 4314 1 4311 4313 0 4314 4316 0 4315 4316 1
		 4313 4315 0 4316 4318 0 4317 4318 0 4315 4317 0 4318 4300 0 4316 4302 1 4314 4304 1
		 4312 4306 1 4317 4299 0 4315 4301 1 4313 4303 1 4311 4305 1 4319 4320 0 4320 4322 0
		 4321 4322 1 4319 4321 0 4322 4324 0 4323 4324 1 4321 4323 0 4324 4326 0 4325 4326 1
		 4323 4325 0 4326 4328 0 4327 4328 0 4325 4327 0 4328 4330 0 4329 4330 0 4327 4329 0
		 4330 4332 0 4331 4332 1 4329 4331 0 4332 4334 0 4333 4334 1 4331 4333 0 4334 4336 0
		 4335 4336 1 4333 4335 0 4336 4338 0 4337 4338 0 4335 4337 0 4338 4320 0 4336 4322 1
		 4334 4324 1 4332 4326 1 4337 4319 0 4335 4321 1 4333 4323 1 4331 4325 1 4339 4340 0
		 4340 4342 0 4341 4342 1 4339 4341 0 4342 4344 0 4343 4344 1 4341 4343 0 4344 4346 0
		 4345 4346 1 4343 4345 0 4346 4348 0 4347 4348 0 4345 4347 0 4348 4350 0 4349 4350 0
		 4347 4349 0 4350 4352 0 4351 4352 1 4349 4351 0 4352 4354 0 4353 4354 1 4351 4353 0
		 4354 4356 0 4355 4356 1 4353 4355 0 4356 4358 0 4357 4358 0 4355 4357 0 4358 4340 0
		 4356 4342 1 4354 4344 1 4352 4346 1 4357 4339 0 4355 4341 1 4353 4343 1 4351 4345 1
		 4359 4360 0 4360 4362 0 4361 4362 1 4359 4361 0 4362 4364 0 4363 4364 1 4361 4363 0
		 4364 4366 0 4365 4366 1 4363 4365 0 4366 4368 0 4367 4368 0 4365 4367 0 4368 4370 0
		 4369 4370 0 4367 4369 0 4370 4372 0 4371 4372 1 4369 4371 0 4372 4374 0 4373 4374 1
		 4371 4373 0 4374 4376 0 4375 4376 1 4373 4375 0 4376 4378 0 4377 4378 0 4375 4377 0
		 4378 4360 0 4376 4362 1 4374 4364 1 4372 4366 1 4377 4359 0 4375 4361 1 4373 4363 1;
	setAttr ".ed[8300]" 4371 4365 1;
	setAttr -s 3940 -ch 15738 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 181 -21 -181
		mu 0 4 0 1 2 3
		f 4 1 182 -22 -182
		mu 0 4 1 4 5 2
		f 4 2 183 -23 -183
		mu 0 4 4 6 7 5
		f 4 3 184 -24 -184
		mu 0 4 6 8 9 7
		f 4 4 185 -25 -185
		mu 0 4 8 10 11 9
		f 4 5 186 -26 -186
		mu 0 4 10 12 13 11
		f 4 6 187 -27 -187
		mu 0 4 12 14 15 13
		f 4 7 188 -28 -188
		mu 0 4 14 16 17 15
		f 4 8 189 -29 -189
		mu 0 4 16 18 19 17
		f 4 9 190 -30 -190
		mu 0 4 18 20 21 19
		f 4 10 191 -31 -191
		mu 0 4 20 22 23 21
		f 4 11 192 -32 -192
		mu 0 4 22 24 25 23
		f 4 12 193 -33 -193
		mu 0 4 24 26 27 25
		f 4 13 194 -34 -194
		mu 0 4 26 28 29 27
		f 4 14 195 -35 -195
		mu 0 4 28 30 31 29
		f 4 15 196 -36 -196
		mu 0 4 30 32 33 31
		f 4 16 197 -37 -197
		mu 0 4 32 34 35 33
		f 4 17 198 -38 -198
		mu 0 4 34 36 37 35
		f 4 18 199 -39 -199
		mu 0 4 36 38 39 37
		f 4 19 180 -40 -200
		mu 0 4 38 40 41 39
		f 4 20 201 -41 -201
		mu 0 4 3 2 42 43
		f 4 21 202 -42 -202
		mu 0 4 2 5 44 42
		f 4 22 203 -43 -203
		mu 0 4 5 7 45 44
		f 4 23 204 -44 -204
		mu 0 4 7 9 46 45
		f 4 24 205 -45 -205
		mu 0 4 9 11 47 46
		f 4 25 206 -46 -206
		mu 0 4 11 13 48 47
		f 4 26 207 -47 -207
		mu 0 4 13 15 49 48
		f 4 27 208 -48 -208
		mu 0 4 15 17 50 49
		f 4 28 209 -49 -209
		mu 0 4 17 19 51 50
		f 4 29 210 -50 -210
		mu 0 4 19 21 52 51
		f 4 30 211 -51 -211
		mu 0 4 21 23 53 52
		f 4 31 212 -52 -212
		mu 0 4 23 25 54 53
		f 4 32 213 -53 -213
		mu 0 4 25 27 55 54
		f 4 33 214 -54 -214
		mu 0 4 27 29 56 55
		f 4 34 215 -55 -215
		mu 0 4 29 31 57 56
		f 4 35 216 -56 -216
		mu 0 4 31 33 58 57
		f 4 36 217 -57 -217
		mu 0 4 33 35 59 58
		f 4 37 218 -58 -218
		mu 0 4 35 37 60 59
		f 4 38 219 -59 -219
		mu 0 4 37 39 61 60
		f 4 39 200 -60 -220
		mu 0 4 39 41 62 61
		f 4 40 221 -61 -221
		mu 0 4 43 42 63 64
		f 4 41 222 -62 -222
		mu 0 4 42 44 65 63
		f 4 42 223 -63 -223
		mu 0 4 44 45 66 65
		f 4 43 224 -64 -224
		mu 0 4 45 46 67 66
		f 4 44 225 -65 -225
		mu 0 4 46 47 68 67
		f 4 45 226 -66 -226
		mu 0 4 47 48 69 68
		f 4 46 227 -67 -227
		mu 0 4 48 49 70 69
		f 4 47 228 -68 -228
		mu 0 4 49 50 71 70
		f 4 48 229 -69 -229
		mu 0 4 50 51 72 71
		f 4 49 230 -70 -230
		mu 0 4 51 52 73 72
		f 4 50 231 -71 -231
		mu 0 4 52 53 74 73
		f 4 51 232 -72 -232
		mu 0 4 53 54 75 74
		f 4 52 233 -73 -233
		mu 0 4 54 55 76 75
		f 4 53 234 -74 -234
		mu 0 4 55 56 77 76
		f 4 54 235 -75 -235
		mu 0 4 56 57 78 77
		f 4 55 236 -76 -236
		mu 0 4 57 58 79 78
		f 4 56 237 -77 -237
		mu 0 4 58 59 80 79
		f 4 57 238 -78 -238
		mu 0 4 59 60 81 80
		f 4 58 239 -79 -239
		mu 0 4 60 61 82 81
		f 4 59 220 -80 -240
		mu 0 4 61 62 83 82
		f 4 60 241 -81 -241
		mu 0 4 64 63 84 85
		f 4 61 242 -82 -242
		mu 0 4 63 65 86 84
		f 4 62 243 -83 -243
		mu 0 4 65 66 87 86
		f 4 63 244 -84 -244
		mu 0 4 66 67 88 87
		f 4 64 245 -85 -245
		mu 0 4 67 68 89 88
		f 4 65 246 -86 -246
		mu 0 4 68 69 90 89
		f 4 66 247 -87 -247
		mu 0 4 69 70 91 90
		f 4 67 248 -88 -248
		mu 0 4 70 71 92 91
		f 4 68 249 -89 -249
		mu 0 4 71 72 93 92
		f 4 69 250 -90 -250
		mu 0 4 72 73 94 93
		f 4 70 251 -91 -251
		mu 0 4 73 74 95 94
		f 4 71 252 -92 -252
		mu 0 4 74 75 96 95
		f 4 72 253 -93 -253
		mu 0 4 75 76 97 96
		f 4 73 254 -94 -254
		mu 0 4 76 77 98 97
		f 4 74 255 -95 -255
		mu 0 4 77 78 99 98
		f 4 75 256 -96 -256
		mu 0 4 78 79 100 99
		f 4 76 257 -97 -257
		mu 0 4 79 80 101 100
		f 4 77 258 -98 -258
		mu 0 4 80 81 102 101
		f 4 78 259 -99 -259
		mu 0 4 81 82 103 102
		f 4 79 240 -100 -260
		mu 0 4 82 83 104 103
		f 4 80 261 -101 -261
		mu 0 4 85 84 105 106
		f 4 81 262 -102 -262
		mu 0 4 84 86 107 105
		f 4 82 263 -103 -263
		mu 0 4 86 87 108 107
		f 4 83 264 -104 -264
		mu 0 4 87 88 109 108
		f 4 84 265 -105 -265
		mu 0 4 88 89 110 109
		f 4 85 266 -106 -266
		mu 0 4 89 90 111 110
		f 4 86 267 -107 -267
		mu 0 4 90 91 112 111
		f 4 87 268 -108 -268
		mu 0 4 91 92 113 112
		f 4 88 269 -109 -269
		mu 0 4 92 93 114 113
		f 4 89 270 -110 -270
		mu 0 4 93 94 115 114
		f 4 90 271 -111 -271
		mu 0 4 94 95 116 115
		f 4 91 272 -112 -272
		mu 0 4 95 96 117 116
		f 4 92 273 -113 -273
		mu 0 4 96 97 118 117
		f 4 93 274 -114 -274
		mu 0 4 97 98 119 118
		f 4 94 275 -115 -275
		mu 0 4 98 99 120 119
		f 4 95 276 -116 -276
		mu 0 4 99 100 121 120
		f 4 96 277 -117 -277
		mu 0 4 100 101 122 121
		f 4 97 278 -118 -278
		mu 0 4 101 102 123 122
		f 4 98 279 -119 -279
		mu 0 4 102 103 124 123
		f 4 99 260 -120 -280
		mu 0 4 103 104 125 124
		f 4 100 281 -121 -281
		mu 0 4 106 105 126 127
		f 4 101 282 -122 -282
		mu 0 4 105 107 128 126
		f 4 102 283 -123 -283
		mu 0 4 107 108 129 128
		f 4 103 284 -124 -284
		mu 0 4 108 109 130 129
		f 4 104 285 -125 -285
		mu 0 4 109 110 131 130
		f 4 105 286 -126 -286
		mu 0 4 110 111 132 131
		f 4 106 287 -127 -287
		mu 0 4 111 112 133 132
		f 4 107 288 -128 -288
		mu 0 4 112 113 134 133
		f 4 108 289 -129 -289
		mu 0 4 113 114 135 134
		f 4 109 290 -130 -290
		mu 0 4 114 115 136 135
		f 4 110 291 -131 -291
		mu 0 4 115 116 137 136
		f 4 111 292 -132 -292
		mu 0 4 116 117 138 137
		f 4 112 293 -133 -293
		mu 0 4 117 118 139 138
		f 4 113 294 -134 -294
		mu 0 4 118 119 140 139
		f 4 114 295 -135 -295
		mu 0 4 119 120 141 140
		f 4 115 296 -136 -296
		mu 0 4 120 121 142 141
		f 4 116 297 -137 -297
		mu 0 4 121 122 143 142
		f 4 117 298 -138 -298
		mu 0 4 122 123 144 143
		f 4 118 299 -139 -299
		mu 0 4 123 124 145 144
		f 4 119 280 -140 -300
		mu 0 4 124 125 146 145
		f 4 120 301 -141 -301
		mu 0 4 127 126 147 148
		f 4 121 302 -142 -302
		mu 0 4 126 128 149 147
		f 4 122 303 -143 -303
		mu 0 4 128 129 150 149
		f 4 123 304 -144 -304
		mu 0 4 129 130 151 150
		f 4 124 305 -145 -305
		mu 0 4 130 131 152 151
		f 4 125 306 -146 -306
		mu 0 4 131 132 153 152
		f 4 126 307 -147 -307
		mu 0 4 132 133 154 153
		f 4 127 308 -148 -308
		mu 0 4 133 134 155 154
		f 4 128 309 -149 -309
		mu 0 4 134 135 156 155
		f 4 129 310 -150 -310
		mu 0 4 135 136 157 156
		f 4 130 311 -151 -311
		mu 0 4 136 137 158 157
		f 4 131 312 -152 -312
		mu 0 4 137 138 159 158
		f 4 132 313 -153 -313
		mu 0 4 138 139 160 159
		f 4 133 314 -154 -314
		mu 0 4 139 140 161 160
		f 4 134 315 -155 -315
		mu 0 4 140 141 162 161
		f 4 135 316 -156 -316
		mu 0 4 141 142 163 162
		f 4 136 317 -157 -317
		mu 0 4 142 143 164 163
		f 4 137 318 -158 -318
		mu 0 4 143 144 165 164
		f 4 138 319 -159 -319
		mu 0 4 144 145 166 165
		f 4 139 300 -160 -320
		mu 0 4 145 146 167 166
		f 4 140 321 -161 -321
		mu 0 4 148 147 168 169
		f 4 141 322 -162 -322
		mu 0 4 147 149 170 168
		f 4 142 323 -163 -323
		mu 0 4 149 150 171 170
		f 4 143 324 -164 -324
		mu 0 4 150 151 172 171
		f 4 144 325 -165 -325
		mu 0 4 151 152 173 172
		f 4 145 326 -166 -326
		mu 0 4 152 153 174 173
		f 4 146 327 -167 -327
		mu 0 4 153 154 175 174
		f 4 147 328 -168 -328
		mu 0 4 154 155 176 175
		f 4 148 329 -169 -329
		mu 0 4 155 156 177 176
		f 4 149 330 -170 -330
		mu 0 4 156 157 178 177
		f 4 150 331 -171 -331
		mu 0 4 157 158 179 178
		f 4 151 332 -172 -332
		mu 0 4 158 159 180 179
		f 4 152 333 -173 -333
		mu 0 4 159 160 181 180
		f 4 153 334 -174 -334
		mu 0 4 160 161 182 181
		f 4 154 335 -175 -335
		mu 0 4 161 162 183 182
		f 4 155 336 -176 -336
		mu 0 4 162 163 184 183
		f 4 156 337 -177 -337
		mu 0 4 163 164 185 184
		f 4 157 338 -178 -338
		mu 0 4 164 165 186 185
		f 4 158 339 -179 -339
		mu 0 4 165 166 187 186
		f 4 159 320 -180 -340
		mu 0 4 166 167 188 187
		f 4 340 521 -361 -521
		mu 0 4 189 190 191 192
		f 4 341 522 -362 -522
		mu 0 4 190 193 194 191
		f 4 342 523 -363 -523
		mu 0 4 193 195 196 194
		f 4 343 524 -364 -524
		mu 0 4 195 197 198 196
		f 4 344 525 -365 -525
		mu 0 4 197 199 200 198
		f 4 345 526 -366 -526
		mu 0 4 199 201 202 200
		f 4 346 527 -367 -527
		mu 0 4 201 203 204 202
		f 4 347 528 -368 -528
		mu 0 4 203 205 206 204
		f 4 348 529 -369 -529
		mu 0 4 205 207 208 206
		f 4 349 530 -370 -530
		mu 0 4 207 209 210 208
		f 4 350 531 -371 -531
		mu 0 4 209 211 212 210
		f 4 351 532 -372 -532
		mu 0 4 211 213 214 212
		f 4 352 533 -373 -533
		mu 0 4 213 215 216 214
		f 4 353 534 -374 -534
		mu 0 4 215 217 218 216
		f 4 354 535 -375 -535
		mu 0 4 217 219 220 218
		f 4 355 536 -376 -536
		mu 0 4 219 221 222 220
		f 4 356 537 -377 -537
		mu 0 4 221 223 224 222
		f 4 357 538 -378 -538
		mu 0 4 223 225 226 224
		f 4 358 539 -379 -539
		mu 0 4 225 227 228 226
		f 4 359 520 -380 -540
		mu 0 4 227 229 230 228
		f 4 360 541 -381 -541
		mu 0 4 192 191 231 232
		f 4 361 542 -382 -542
		mu 0 4 191 194 233 231
		f 4 362 543 -383 -543
		mu 0 4 194 196 234 233
		f 4 363 544 -384 -544
		mu 0 4 196 198 235 234
		f 4 364 545 -385 -545
		mu 0 4 198 200 236 235
		f 4 365 546 -386 -546
		mu 0 4 200 202 237 236
		f 4 366 547 -387 -547
		mu 0 4 202 204 238 237
		f 4 367 548 -388 -548
		mu 0 4 204 206 239 238
		f 4 368 549 -389 -549
		mu 0 4 206 208 240 239
		f 4 369 550 -390 -550
		mu 0 4 208 210 241 240
		f 4 370 551 -391 -551
		mu 0 4 210 212 242 241
		f 4 371 552 -392 -552
		mu 0 4 212 214 243 242
		f 4 372 553 -393 -553
		mu 0 4 214 216 244 243
		f 4 373 554 -394 -554
		mu 0 4 216 218 245 244
		f 4 374 555 -395 -555
		mu 0 4 218 220 246 245
		f 4 375 556 -396 -556
		mu 0 4 220 222 247 246
		f 4 376 557 -397 -557
		mu 0 4 222 224 248 247
		f 4 377 558 -398 -558
		mu 0 4 224 226 249 248
		f 4 378 559 -399 -559
		mu 0 4 226 228 250 249
		f 4 379 540 -400 -560
		mu 0 4 228 230 251 250
		f 4 380 561 -401 -561
		mu 0 4 232 231 252 253
		f 4 381 562 -402 -562
		mu 0 4 231 233 254 252
		f 4 382 563 -403 -563
		mu 0 4 233 234 255 254
		f 4 383 564 -404 -564
		mu 0 4 234 235 256 255
		f 4 384 565 -405 -565
		mu 0 4 235 236 257 256
		f 4 385 566 -406 -566
		mu 0 4 236 237 258 257
		f 4 386 567 -407 -567
		mu 0 4 237 238 259 258
		f 4 387 568 -408 -568
		mu 0 4 238 239 260 259
		f 4 388 569 -409 -569
		mu 0 4 239 240 261 260
		f 4 389 570 -410 -570
		mu 0 4 240 241 262 261
		f 4 390 571 -411 -571
		mu 0 4 241 242 263 262
		f 4 391 572 -412 -572
		mu 0 4 242 243 264 263
		f 4 392 573 -413 -573
		mu 0 4 243 244 265 264
		f 4 393 574 -414 -574
		mu 0 4 244 245 266 265
		f 4 394 575 -415 -575
		mu 0 4 245 246 267 266
		f 4 395 576 -416 -576
		mu 0 4 246 247 268 267
		f 4 396 577 -417 -577
		mu 0 4 247 248 269 268
		f 4 397 578 -418 -578
		mu 0 4 248 249 270 269
		f 4 398 579 -419 -579
		mu 0 4 249 250 271 270
		f 4 399 560 -420 -580
		mu 0 4 250 251 272 271
		f 4 400 581 -421 -581
		mu 0 4 253 252 273 274
		f 4 401 582 -422 -582
		mu 0 4 252 254 275 273
		f 4 402 583 -423 -583
		mu 0 4 254 255 276 275
		f 4 403 584 -424 -584
		mu 0 4 255 256 277 276
		f 4 404 585 -425 -585
		mu 0 4 256 257 278 277
		f 4 405 586 -426 -586
		mu 0 4 257 258 279 278
		f 4 406 587 -427 -587
		mu 0 4 258 259 280 279
		f 4 407 588 -428 -588
		mu 0 4 259 260 281 280
		f 4 408 589 -429 -589
		mu 0 4 260 261 282 281
		f 4 409 590 -430 -590
		mu 0 4 261 262 283 282
		f 4 410 591 -431 -591
		mu 0 4 262 263 284 283
		f 4 411 592 -432 -592
		mu 0 4 263 264 285 284
		f 4 412 593 -433 -593
		mu 0 4 264 265 286 285
		f 4 413 594 -434 -594
		mu 0 4 265 266 287 286
		f 4 414 595 -435 -595
		mu 0 4 266 267 288 287
		f 4 415 596 -436 -596
		mu 0 4 267 268 289 288
		f 4 416 597 -437 -597
		mu 0 4 268 269 290 289
		f 4 417 598 -438 -598
		mu 0 4 269 270 291 290
		f 4 418 599 -439 -599
		mu 0 4 270 271 292 291
		f 4 419 580 -440 -600
		mu 0 4 271 272 293 292
		f 4 420 601 -441 -601
		mu 0 4 274 273 294 295
		f 4 421 602 -442 -602
		mu 0 4 273 275 296 294
		f 4 422 603 -443 -603
		mu 0 4 275 276 297 296
		f 4 423 604 -444 -604
		mu 0 4 276 277 298 297
		f 4 424 605 -445 -605
		mu 0 4 277 278 299 298
		f 4 425 606 -446 -606
		mu 0 4 278 279 300 299
		f 4 426 607 -447 -607
		mu 0 4 279 280 301 300
		f 4 427 608 -448 -608
		mu 0 4 280 281 302 301
		f 4 428 609 -449 -609
		mu 0 4 281 282 303 302
		f 4 429 610 -450 -610
		mu 0 4 282 283 304 303
		f 4 430 611 -451 -611
		mu 0 4 283 284 305 304
		f 4 431 612 -452 -612
		mu 0 4 284 285 306 305
		f 4 432 613 -453 -613
		mu 0 4 285 286 307 306
		f 4 433 614 -454 -614
		mu 0 4 286 287 308 307
		f 4 434 615 -455 -615
		mu 0 4 287 288 309 308
		f 4 435 616 -456 -616
		mu 0 4 288 289 310 309
		f 4 436 617 -457 -617
		mu 0 4 289 290 311 310
		f 4 437 618 -458 -618
		mu 0 4 290 291 312 311
		f 4 438 619 -459 -619
		mu 0 4 291 292 313 312
		f 4 439 600 -460 -620
		mu 0 4 292 293 314 313
		f 4 440 621 -461 -621
		mu 0 4 295 294 315 316
		f 4 441 622 -462 -622
		mu 0 4 294 296 317 315
		f 4 442 623 -463 -623
		mu 0 4 296 297 318 317
		f 4 443 624 -464 -624
		mu 0 4 297 298 319 318
		f 4 444 625 -465 -625
		mu 0 4 298 299 320 319
		f 4 445 626 -466 -626
		mu 0 4 299 300 321 320
		f 4 446 627 -467 -627
		mu 0 4 300 301 322 321
		f 4 447 628 -468 -628
		mu 0 4 301 302 323 322
		f 4 448 629 -469 -629
		mu 0 4 302 303 324 323
		f 4 449 630 -470 -630
		mu 0 4 303 304 325 324
		f 4 450 631 -471 -631
		mu 0 4 304 305 326 325
		f 4 451 632 -472 -632
		mu 0 4 305 306 327 326
		f 4 452 633 -473 -633
		mu 0 4 306 307 328 327
		f 4 453 634 -474 -634
		mu 0 4 307 308 329 328
		f 4 454 635 -475 -635
		mu 0 4 308 309 330 329
		f 4 455 636 -476 -636
		mu 0 4 309 310 331 330
		f 4 456 637 -477 -637
		mu 0 4 310 311 332 331
		f 4 457 638 -478 -638
		mu 0 4 311 312 333 332
		f 4 458 639 -479 -639
		mu 0 4 312 313 334 333
		f 4 459 620 -480 -640
		mu 0 4 313 314 335 334
		f 4 460 641 -481 -641
		mu 0 4 316 315 336 337
		f 4 461 642 -482 -642
		mu 0 4 315 317 338 336
		f 4 462 643 -483 -643
		mu 0 4 317 318 339 338
		f 4 463 644 -484 -644
		mu 0 4 318 319 340 339
		f 4 464 645 -485 -645
		mu 0 4 319 320 341 340
		f 4 465 646 -486 -646
		mu 0 4 320 321 342 341
		f 4 466 647 -487 -647
		mu 0 4 321 322 343 342
		f 4 467 648 -488 -648
		mu 0 4 322 323 344 343
		f 4 468 649 -489 -649
		mu 0 4 323 324 345 344
		f 4 469 650 -490 -650
		mu 0 4 324 325 346 345
		f 4 470 651 -491 -651
		mu 0 4 325 326 347 346
		f 4 471 652 -492 -652
		mu 0 4 326 327 348 347
		f 4 472 653 -493 -653
		mu 0 4 327 328 349 348
		f 4 473 654 -494 -654
		mu 0 4 328 329 350 349
		f 4 474 655 -495 -655
		mu 0 4 329 330 351 350
		f 4 475 656 -496 -656
		mu 0 4 330 331 352 351
		f 4 476 657 -497 -657
		mu 0 4 331 332 353 352
		f 4 477 658 -498 -658
		mu 0 4 332 333 354 353
		f 4 478 659 -499 -659
		mu 0 4 333 334 355 354
		f 4 479 640 -500 -660
		mu 0 4 334 335 356 355
		f 4 480 661 -501 -661
		mu 0 4 337 336 357 358
		f 4 481 662 -502 -662
		mu 0 4 336 338 359 357
		f 4 482 663 -503 -663
		mu 0 4 338 339 360 359
		f 4 483 664 -504 -664
		mu 0 4 339 340 361 360
		f 4 484 665 -505 -665
		mu 0 4 340 341 362 361
		f 4 485 666 -506 -666
		mu 0 4 341 342 363 362
		f 4 486 667 -507 -667
		mu 0 4 342 343 364 363
		f 4 487 668 -508 -668
		mu 0 4 343 344 365 364
		f 4 488 669 -509 -669
		mu 0 4 344 345 366 365
		f 4 489 670 -510 -670
		mu 0 4 345 346 367 366
		f 4 490 671 -511 -671
		mu 0 4 346 347 368 367
		f 4 491 672 -512 -672
		mu 0 4 347 348 369 368
		f 4 492 673 -513 -673
		mu 0 4 348 349 370 369
		f 4 493 674 -514 -674
		mu 0 4 349 350 371 370
		f 4 494 675 -515 -675
		mu 0 4 350 351 372 371
		f 4 495 676 -516 -676
		mu 0 4 351 352 373 372
		f 4 496 677 -517 -677
		mu 0 4 352 353 374 373
		f 4 497 678 -518 -678
		mu 0 4 353 354 375 374
		f 4 498 679 -519 -679
		mu 0 4 354 355 376 375
		f 4 499 660 -520 -680
		mu 0 4 355 356 377 376
		f 4 680 861 -701 -861
		mu 0 4 378 379 380 381
		f 4 681 862 -702 -862
		mu 0 4 379 382 383 380
		f 4 682 863 -703 -863
		mu 0 4 382 384 385 383
		f 4 683 864 -704 -864
		mu 0 4 384 386 387 385
		f 4 684 865 -705 -865
		mu 0 4 386 388 389 387
		f 4 685 866 -706 -866
		mu 0 4 388 390 391 389
		f 4 686 867 -707 -867
		mu 0 4 390 392 393 391
		f 4 687 868 -708 -868
		mu 0 4 392 394 395 393
		f 4 688 869 -709 -869
		mu 0 4 394 396 397 395
		f 4 689 870 -710 -870
		mu 0 4 396 398 399 397
		f 4 690 871 -711 -871
		mu 0 4 398 400 401 399
		f 4 691 872 -712 -872
		mu 0 4 400 402 403 401
		f 4 692 873 -713 -873
		mu 0 4 402 404 405 403
		f 4 693 874 -714 -874
		mu 0 4 404 406 407 405
		f 4 694 875 -715 -875
		mu 0 4 406 408 409 407
		f 4 695 876 -716 -876
		mu 0 4 408 410 411 409
		f 4 696 877 -717 -877
		mu 0 4 410 412 413 411
		f 4 697 878 -718 -878
		mu 0 4 412 414 415 413
		f 4 698 879 -719 -879
		mu 0 4 414 416 417 415
		f 4 699 860 -720 -880
		mu 0 4 416 418 419 417
		f 4 700 881 -721 -881
		mu 0 4 381 380 420 421
		f 4 701 882 -722 -882
		mu 0 4 380 383 422 420
		f 4 702 883 -723 -883
		mu 0 4 383 385 423 422
		f 4 703 884 -724 -884
		mu 0 4 385 387 424 423
		f 4 704 885 -725 -885
		mu 0 4 387 389 425 424
		f 4 705 886 -726 -886
		mu 0 4 389 391 426 425
		f 4 706 887 -727 -887
		mu 0 4 391 393 427 426
		f 4 707 888 -728 -888
		mu 0 4 393 395 428 427
		f 4 708 889 -729 -889
		mu 0 4 395 397 429 428
		f 4 709 890 -730 -890
		mu 0 4 397 399 430 429
		f 4 710 891 -731 -891
		mu 0 4 399 401 431 430
		f 4 711 892 -732 -892
		mu 0 4 401 403 432 431
		f 4 712 893 -733 -893
		mu 0 4 403 405 433 432
		f 4 713 894 -734 -894
		mu 0 4 405 407 434 433
		f 4 714 895 -735 -895
		mu 0 4 407 409 435 434
		f 4 715 896 -736 -896
		mu 0 4 409 411 436 435
		f 4 716 897 -737 -897
		mu 0 4 411 413 437 436
		f 4 717 898 -738 -898
		mu 0 4 413 415 438 437
		f 4 718 899 -739 -899
		mu 0 4 415 417 439 438
		f 4 719 880 -740 -900
		mu 0 4 417 419 440 439
		f 4 720 901 -741 -901
		mu 0 4 421 420 441 442
		f 4 721 902 -742 -902
		mu 0 4 420 422 443 441
		f 4 722 903 -743 -903
		mu 0 4 422 423 444 443
		f 4 723 904 -744 -904
		mu 0 4 423 424 445 444
		f 4 724 905 -745 -905
		mu 0 4 424 425 446 445
		f 4 725 906 -746 -906
		mu 0 4 425 426 447 446
		f 4 726 907 -747 -907
		mu 0 4 426 427 448 447
		f 4 727 908 -748 -908
		mu 0 4 427 428 449 448
		f 4 728 909 -749 -909
		mu 0 4 428 429 450 449
		f 4 729 910 -750 -910
		mu 0 4 429 430 451 450
		f 4 730 911 -751 -911
		mu 0 4 430 431 452 451
		f 4 731 912 -752 -912
		mu 0 4 431 432 453 452
		f 4 732 913 -753 -913
		mu 0 4 432 433 454 453
		f 4 733 914 -754 -914
		mu 0 4 433 434 455 454
		f 4 734 915 -755 -915
		mu 0 4 434 435 456 455
		f 4 735 916 -756 -916
		mu 0 4 435 436 457 456
		f 4 736 917 -757 -917
		mu 0 4 436 437 458 457
		f 4 737 918 -758 -918
		mu 0 4 437 438 459 458
		f 4 738 919 -759 -919
		mu 0 4 438 439 460 459
		f 4 739 900 -760 -920
		mu 0 4 439 440 461 460
		f 4 740 921 -761 -921
		mu 0 4 442 441 462 463
		f 4 741 922 -762 -922
		mu 0 4 441 443 464 462
		f 4 742 923 -763 -923
		mu 0 4 443 444 465 464
		f 4 743 924 -764 -924
		mu 0 4 444 445 466 465
		f 4 744 925 -765 -925
		mu 0 4 445 446 467 466
		f 4 745 926 -766 -926
		mu 0 4 446 447 468 467
		f 4 746 927 -767 -927
		mu 0 4 447 448 469 468
		f 4 747 928 -768 -928
		mu 0 4 448 449 470 469
		f 4 748 929 -769 -929
		mu 0 4 449 450 471 470
		f 4 749 930 -770 -930
		mu 0 4 450 451 472 471
		f 4 750 931 -771 -931
		mu 0 4 451 452 473 472
		f 4 751 932 -772 -932
		mu 0 4 452 453 474 473
		f 4 752 933 -773 -933
		mu 0 4 453 454 475 474
		f 4 753 934 -774 -934
		mu 0 4 454 455 476 475
		f 4 754 935 -775 -935
		mu 0 4 455 456 477 476
		f 4 755 936 -776 -936
		mu 0 4 456 457 478 477
		f 4 756 937 -777 -937
		mu 0 4 457 458 479 478
		f 4 757 938 -778 -938
		mu 0 4 458 459 480 479
		f 4 758 939 -779 -939
		mu 0 4 459 460 481 480
		f 4 759 920 -780 -940
		mu 0 4 460 461 482 481
		f 4 760 941 -781 -941
		mu 0 4 463 462 483 484
		f 4 761 942 -782 -942
		mu 0 4 462 464 485 483
		f 4 762 943 -783 -943
		mu 0 4 464 465 486 485
		f 4 763 944 -784 -944
		mu 0 4 465 466 487 486
		f 4 764 945 -785 -945
		mu 0 4 466 467 488 487
		f 4 765 946 -786 -946
		mu 0 4 467 468 489 488
		f 4 766 947 -787 -947
		mu 0 4 468 469 490 489
		f 4 767 948 -788 -948
		mu 0 4 469 470 491 490
		f 4 768 949 -789 -949
		mu 0 4 470 471 492 491
		f 4 769 950 -790 -950
		mu 0 4 471 472 493 492
		f 4 770 951 -791 -951
		mu 0 4 472 473 494 493
		f 4 771 952 -792 -952
		mu 0 4 473 474 495 494
		f 4 772 953 -793 -953
		mu 0 4 474 475 496 495
		f 4 773 954 -794 -954
		mu 0 4 475 476 497 496
		f 4 774 955 -795 -955
		mu 0 4 476 477 498 497
		f 4 775 956 -796 -956
		mu 0 4 477 478 499 498
		f 4 776 957 -797 -957
		mu 0 4 478 479 500 499
		f 4 777 958 -798 -958
		mu 0 4 479 480 501 500
		f 4 778 959 -799 -959
		mu 0 4 480 481 502 501
		f 4 779 940 -800 -960
		mu 0 4 481 482 503 502
		f 4 780 961 -801 -961
		mu 0 4 484 483 504 505
		f 4 781 962 -802 -962
		mu 0 4 483 485 506 504
		f 4 782 963 -803 -963
		mu 0 4 485 486 507 506
		f 4 783 964 -804 -964
		mu 0 4 486 487 508 507
		f 4 784 965 -805 -965
		mu 0 4 487 488 509 508
		f 4 785 966 -806 -966
		mu 0 4 488 489 510 509
		f 4 786 967 -807 -967
		mu 0 4 489 490 511 510
		f 4 787 968 -808 -968
		mu 0 4 490 491 512 511
		f 4 788 969 -809 -969
		mu 0 4 491 492 513 512
		f 4 789 970 -810 -970
		mu 0 4 492 493 514 513
		f 4 790 971 -811 -971
		mu 0 4 493 494 515 514
		f 4 791 972 -812 -972
		mu 0 4 494 495 516 515
		f 4 792 973 -813 -973
		mu 0 4 495 496 517 516
		f 4 793 974 -814 -974
		mu 0 4 496 497 518 517
		f 4 794 975 -815 -975
		mu 0 4 497 498 519 518
		f 4 795 976 -816 -976
		mu 0 4 498 499 520 519
		f 4 796 977 -817 -977
		mu 0 4 499 500 521 520
		f 4 797 978 -818 -978
		mu 0 4 500 501 522 521
		f 4 798 979 -819 -979
		mu 0 4 501 502 523 522
		f 4 799 960 -820 -980
		mu 0 4 502 503 524 523
		f 4 800 981 -821 -981
		mu 0 4 505 504 525 526
		f 4 801 982 -822 -982
		mu 0 4 504 506 527 525
		f 4 802 983 -823 -983
		mu 0 4 506 507 528 527
		f 4 803 984 -824 -984
		mu 0 4 507 508 529 528
		f 4 804 985 -825 -985
		mu 0 4 508 509 530 529
		f 4 805 986 -826 -986
		mu 0 4 509 510 531 530
		f 4 806 987 -827 -987
		mu 0 4 510 511 532 531
		f 4 807 988 -828 -988
		mu 0 4 511 512 533 532
		f 4 808 989 -829 -989
		mu 0 4 512 513 534 533
		f 4 809 990 -830 -990
		mu 0 4 513 514 535 534
		f 4 810 991 -831 -991
		mu 0 4 514 515 536 535
		f 4 811 992 -832 -992
		mu 0 4 515 516 537 536
		f 4 812 993 -833 -993
		mu 0 4 516 517 538 537
		f 4 813 994 -834 -994
		mu 0 4 517 518 539 538
		f 4 814 995 -835 -995
		mu 0 4 518 519 540 539
		f 4 815 996 -836 -996
		mu 0 4 519 520 541 540
		f 4 816 997 -837 -997
		mu 0 4 520 521 542 541
		f 4 817 998 -838 -998
		mu 0 4 521 522 543 542
		f 4 818 999 -839 -999
		mu 0 4 522 523 544 543
		f 4 819 980 -840 -1000
		mu 0 4 523 524 545 544
		f 4 820 1001 -841 -1001
		mu 0 4 526 525 546 547
		f 4 821 1002 -842 -1002
		mu 0 4 525 527 548 546
		f 4 822 1003 -843 -1003
		mu 0 4 527 528 549 548
		f 4 823 1004 -844 -1004
		mu 0 4 528 529 550 549
		f 4 824 1005 -845 -1005
		mu 0 4 529 530 551 550
		f 4 825 1006 -846 -1006
		mu 0 4 530 531 552 551
		f 4 826 1007 -847 -1007
		mu 0 4 531 532 553 552
		f 4 827 1008 -848 -1008
		mu 0 4 532 533 554 553
		f 4 828 1009 -849 -1009
		mu 0 4 533 534 555 554
		f 4 829 1010 -850 -1010
		mu 0 4 534 535 556 555
		f 4 830 1011 -851 -1011
		mu 0 4 535 536 557 556
		f 4 831 1012 -852 -1012
		mu 0 4 536 537 558 557
		f 4 832 1013 -853 -1013
		mu 0 4 537 538 559 558
		f 4 833 1014 -854 -1014
		mu 0 4 538 539 560 559
		f 4 834 1015 -855 -1015
		mu 0 4 539 540 561 560
		f 4 835 1016 -856 -1016
		mu 0 4 540 541 562 561
		f 4 836 1017 -857 -1017
		mu 0 4 541 542 563 562
		f 4 837 1018 -858 -1018
		mu 0 4 542 543 564 563
		f 4 838 1019 -859 -1019
		mu 0 4 543 544 565 564
		f 4 839 1000 -860 -1020
		mu 0 4 544 545 566 565
		f 4 1020 1201 -1041 -1201
		mu 0 4 567 568 569 570
		f 4 1021 1202 -1042 -1202
		mu 0 4 568 571 572 569
		f 4 1022 1203 -1043 -1203
		mu 0 4 571 573 574 572
		f 4 1023 1204 -1044 -1204
		mu 0 4 573 575 576 574
		f 4 1024 1205 -1045 -1205
		mu 0 4 575 577 578 576
		f 4 1025 1206 -1046 -1206
		mu 0 4 577 579 580 578
		f 4 1026 1207 -1047 -1207
		mu 0 4 579 581 582 580
		f 4 1027 1208 -1048 -1208
		mu 0 4 581 583 584 582
		f 4 1028 1209 -1049 -1209
		mu 0 4 583 585 586 584
		f 4 1029 1210 -1050 -1210
		mu 0 4 585 587 588 586
		f 4 1030 1211 -1051 -1211
		mu 0 4 587 589 590 588
		f 4 1031 1212 -1052 -1212
		mu 0 4 589 591 592 590
		f 4 1032 1213 -1053 -1213
		mu 0 4 591 593 594 592
		f 4 1033 1214 -1054 -1214
		mu 0 4 593 595 596 594
		f 4 1034 1215 -1055 -1215
		mu 0 4 595 597 598 596
		f 4 1035 1216 -1056 -1216
		mu 0 4 597 599 600 598
		f 4 1036 1217 -1057 -1217
		mu 0 4 599 601 602 600
		f 4 1037 1218 -1058 -1218
		mu 0 4 601 603 604 602
		f 4 1038 1219 -1059 -1219
		mu 0 4 603 605 606 604
		f 4 1039 1200 -1060 -1220
		mu 0 4 605 607 608 606;
	setAttr ".fc[500:999]"
		f 4 1040 1221 -1061 -1221
		mu 0 4 570 569 609 610
		f 4 1041 1222 -1062 -1222
		mu 0 4 569 572 611 609
		f 4 1042 1223 -1063 -1223
		mu 0 4 572 574 612 611
		f 4 1043 1224 -1064 -1224
		mu 0 4 574 576 613 612
		f 4 1044 1225 -1065 -1225
		mu 0 4 576 578 614 613
		f 4 1045 1226 -1066 -1226
		mu 0 4 578 580 615 614
		f 4 1046 1227 -1067 -1227
		mu 0 4 580 582 616 615
		f 4 1047 1228 -1068 -1228
		mu 0 4 582 584 617 616
		f 4 1048 1229 -1069 -1229
		mu 0 4 584 586 618 617
		f 4 1049 1230 -1070 -1230
		mu 0 4 586 588 619 618
		f 4 1050 1231 -1071 -1231
		mu 0 4 588 590 620 619
		f 4 1051 1232 -1072 -1232
		mu 0 4 590 592 621 620
		f 4 1052 1233 -1073 -1233
		mu 0 4 592 594 622 621
		f 4 1053 1234 -1074 -1234
		mu 0 4 594 596 623 622
		f 4 1054 1235 -1075 -1235
		mu 0 4 596 598 624 623
		f 4 1055 1236 -1076 -1236
		mu 0 4 598 600 625 624
		f 4 1056 1237 -1077 -1237
		mu 0 4 600 602 626 625
		f 4 1057 1238 -1078 -1238
		mu 0 4 602 604 627 626
		f 4 1058 1239 -1079 -1239
		mu 0 4 604 606 628 627
		f 4 1059 1220 -1080 -1240
		mu 0 4 606 608 629 628
		f 4 1060 1241 -1081 -1241
		mu 0 4 610 609 630 631
		f 4 1061 1242 -1082 -1242
		mu 0 4 609 611 632 630
		f 4 1062 1243 -1083 -1243
		mu 0 4 611 612 633 632
		f 4 1063 1244 -1084 -1244
		mu 0 4 612 613 634 633
		f 4 1064 1245 -1085 -1245
		mu 0 4 613 614 635 634
		f 4 1065 1246 -1086 -1246
		mu 0 4 614 615 636 635
		f 4 1066 1247 -1087 -1247
		mu 0 4 615 616 637 636
		f 4 1067 1248 -1088 -1248
		mu 0 4 616 617 638 637
		f 4 1068 1249 -1089 -1249
		mu 0 4 617 618 639 638
		f 4 1069 1250 -1090 -1250
		mu 0 4 618 619 640 639
		f 4 1070 1251 -1091 -1251
		mu 0 4 619 620 641 640
		f 4 1071 1252 -1092 -1252
		mu 0 4 620 621 642 641
		f 4 1072 1253 -1093 -1253
		mu 0 4 621 622 643 642
		f 4 1073 1254 -1094 -1254
		mu 0 4 622 623 644 643
		f 4 1074 1255 -1095 -1255
		mu 0 4 623 624 645 644
		f 4 1075 1256 -1096 -1256
		mu 0 4 624 625 646 645
		f 4 1076 1257 -1097 -1257
		mu 0 4 625 626 647 646
		f 4 1077 1258 -1098 -1258
		mu 0 4 626 627 648 647
		f 4 1078 1259 -1099 -1259
		mu 0 4 627 628 649 648
		f 4 1079 1240 -1100 -1260
		mu 0 4 628 629 650 649
		f 4 1080 1261 -1101 -1261
		mu 0 4 631 630 651 652
		f 4 1081 1262 -1102 -1262
		mu 0 4 630 632 653 651
		f 4 1082 1263 -1103 -1263
		mu 0 4 632 633 654 653
		f 4 1083 1264 -1104 -1264
		mu 0 4 633 634 655 654
		f 4 1084 1265 -1105 -1265
		mu 0 4 634 635 656 655
		f 4 1085 1266 -1106 -1266
		mu 0 4 635 636 657 656
		f 4 1086 1267 -1107 -1267
		mu 0 4 636 637 658 657
		f 4 1087 1268 -1108 -1268
		mu 0 4 637 638 659 658
		f 4 1088 1269 -1109 -1269
		mu 0 4 638 639 660 659
		f 4 1089 1270 -1110 -1270
		mu 0 4 639 640 661 660
		f 4 1090 1271 -1111 -1271
		mu 0 4 640 641 662 661
		f 4 1091 1272 -1112 -1272
		mu 0 4 641 642 663 662
		f 4 1092 1273 -1113 -1273
		mu 0 4 642 643 664 663
		f 4 1093 1274 -1114 -1274
		mu 0 4 643 644 665 664
		f 4 1094 1275 -1115 -1275
		mu 0 4 644 645 666 665
		f 4 1095 1276 -1116 -1276
		mu 0 4 645 646 667 666
		f 4 1096 1277 -1117 -1277
		mu 0 4 646 647 668 667
		f 4 1097 1278 -1118 -1278
		mu 0 4 647 648 669 668
		f 4 1098 1279 -1119 -1279
		mu 0 4 648 649 670 669
		f 4 1099 1260 -1120 -1280
		mu 0 4 649 650 671 670
		f 4 1100 1281 -1121 -1281
		mu 0 4 652 651 672 673
		f 4 1101 1282 -1122 -1282
		mu 0 4 651 653 674 672
		f 4 1102 1283 -1123 -1283
		mu 0 4 653 654 675 674
		f 4 1103 1284 -1124 -1284
		mu 0 4 654 655 676 675
		f 4 1104 1285 -1125 -1285
		mu 0 4 655 656 677 676
		f 4 1105 1286 -1126 -1286
		mu 0 4 656 657 678 677
		f 4 1106 1287 -1127 -1287
		mu 0 4 657 658 679 678
		f 4 1107 1288 -1128 -1288
		mu 0 4 658 659 680 679
		f 4 1108 1289 -1129 -1289
		mu 0 4 659 660 681 680
		f 4 1109 1290 -1130 -1290
		mu 0 4 660 661 682 681
		f 4 1110 1291 -1131 -1291
		mu 0 4 661 662 683 682
		f 4 1111 1292 -1132 -1292
		mu 0 4 662 663 684 683
		f 4 1112 1293 -1133 -1293
		mu 0 4 663 664 685 684
		f 4 1113 1294 -1134 -1294
		mu 0 4 664 665 686 685
		f 4 1114 1295 -1135 -1295
		mu 0 4 665 666 687 686
		f 4 1115 1296 -1136 -1296
		mu 0 4 666 667 688 687
		f 4 1116 1297 -1137 -1297
		mu 0 4 667 668 689 688
		f 4 1117 1298 -1138 -1298
		mu 0 4 668 669 690 689
		f 4 1118 1299 -1139 -1299
		mu 0 4 669 670 691 690
		f 4 1119 1280 -1140 -1300
		mu 0 4 670 671 692 691
		f 4 1120 1301 -1141 -1301
		mu 0 4 673 672 693 694
		f 4 1121 1302 -1142 -1302
		mu 0 4 672 674 695 693
		f 4 1122 1303 -1143 -1303
		mu 0 4 674 675 696 695
		f 4 1123 1304 -1144 -1304
		mu 0 4 675 676 697 696
		f 4 1124 1305 -1145 -1305
		mu 0 4 676 677 698 697
		f 4 1125 1306 -1146 -1306
		mu 0 4 677 678 699 698
		f 4 1126 1307 -1147 -1307
		mu 0 4 678 679 700 699
		f 4 1127 1308 -1148 -1308
		mu 0 4 679 680 701 700
		f 4 1128 1309 -1149 -1309
		mu 0 4 680 681 702 701
		f 4 1129 1310 -1150 -1310
		mu 0 4 681 682 703 702
		f 4 1130 1311 -1151 -1311
		mu 0 4 682 683 704 703
		f 4 1131 1312 -1152 -1312
		mu 0 4 683 684 705 704
		f 4 1132 1313 -1153 -1313
		mu 0 4 684 685 706 705
		f 4 1133 1314 -1154 -1314
		mu 0 4 685 686 707 706
		f 4 1134 1315 -1155 -1315
		mu 0 4 686 687 708 707
		f 4 1135 1316 -1156 -1316
		mu 0 4 687 688 709 708
		f 4 1136 1317 -1157 -1317
		mu 0 4 688 689 710 709
		f 4 1137 1318 -1158 -1318
		mu 0 4 689 690 711 710
		f 4 1138 1319 -1159 -1319
		mu 0 4 690 691 712 711
		f 4 1139 1300 -1160 -1320
		mu 0 4 691 692 713 712
		f 4 1140 1321 -1161 -1321
		mu 0 4 694 693 714 715
		f 4 1141 1322 -1162 -1322
		mu 0 4 693 695 716 714
		f 4 1142 1323 -1163 -1323
		mu 0 4 695 696 717 716
		f 4 1143 1324 -1164 -1324
		mu 0 4 696 697 718 717
		f 4 1144 1325 -1165 -1325
		mu 0 4 697 698 719 718
		f 4 1145 1326 -1166 -1326
		mu 0 4 698 699 720 719
		f 4 1146 1327 -1167 -1327
		mu 0 4 699 700 721 720
		f 4 1147 1328 -1168 -1328
		mu 0 4 700 701 722 721
		f 4 1148 1329 -1169 -1329
		mu 0 4 701 702 723 722
		f 4 1149 1330 -1170 -1330
		mu 0 4 702 703 724 723
		f 4 1150 1331 -1171 -1331
		mu 0 4 703 704 725 724
		f 4 1151 1332 -1172 -1332
		mu 0 4 704 705 726 725
		f 4 1152 1333 -1173 -1333
		mu 0 4 705 706 727 726
		f 4 1153 1334 -1174 -1334
		mu 0 4 706 707 728 727
		f 4 1154 1335 -1175 -1335
		mu 0 4 707 708 729 728
		f 4 1155 1336 -1176 -1336
		mu 0 4 708 709 730 729
		f 4 1156 1337 -1177 -1337
		mu 0 4 709 710 731 730
		f 4 1157 1338 -1178 -1338
		mu 0 4 710 711 732 731
		f 4 1158 1339 -1179 -1339
		mu 0 4 711 712 733 732
		f 4 1159 1320 -1180 -1340
		mu 0 4 712 713 734 733
		f 4 1160 1341 -1181 -1341
		mu 0 4 715 714 735 736
		f 4 1161 1342 -1182 -1342
		mu 0 4 714 716 737 735
		f 4 1162 1343 -1183 -1343
		mu 0 4 716 717 738 737
		f 4 1163 1344 -1184 -1344
		mu 0 4 717 718 739 738
		f 4 1164 1345 -1185 -1345
		mu 0 4 718 719 740 739
		f 4 1165 1346 -1186 -1346
		mu 0 4 719 720 741 740
		f 4 1166 1347 -1187 -1347
		mu 0 4 720 721 742 741
		f 4 1167 1348 -1188 -1348
		mu 0 4 721 722 743 742
		f 4 1168 1349 -1189 -1349
		mu 0 4 722 723 744 743
		f 4 1169 1350 -1190 -1350
		mu 0 4 723 724 745 744
		f 4 1170 1351 -1191 -1351
		mu 0 4 724 725 746 745
		f 4 1171 1352 -1192 -1352
		mu 0 4 725 726 747 746
		f 4 1172 1353 -1193 -1353
		mu 0 4 726 727 748 747
		f 4 1173 1354 -1194 -1354
		mu 0 4 727 728 749 748
		f 4 1174 1355 -1195 -1355
		mu 0 4 728 729 750 749
		f 4 1175 1356 -1196 -1356
		mu 0 4 729 730 751 750
		f 4 1176 1357 -1197 -1357
		mu 0 4 730 731 752 751
		f 4 1177 1358 -1198 -1358
		mu 0 4 731 732 753 752
		f 4 1178 1359 -1199 -1359
		mu 0 4 732 733 754 753
		f 4 1179 1340 -1200 -1360
		mu 0 4 733 734 755 754
		f 4 1360 1541 -1381 -1541
		mu 0 4 756 757 758 759
		f 4 1361 1542 -1382 -1542
		mu 0 4 757 760 761 758
		f 4 1362 1543 -1383 -1543
		mu 0 4 760 762 763 761
		f 4 1363 1544 -1384 -1544
		mu 0 4 762 764 765 763
		f 4 1364 1545 -1385 -1545
		mu 0 4 764 766 767 765
		f 4 1365 1546 -1386 -1546
		mu 0 4 766 768 769 767
		f 4 1366 1547 -1387 -1547
		mu 0 4 768 770 771 769
		f 4 1367 1548 -1388 -1548
		mu 0 4 770 772 773 771
		f 4 1368 1549 -1389 -1549
		mu 0 4 772 774 775 773
		f 4 1369 1550 -1390 -1550
		mu 0 4 774 776 777 775
		f 4 1370 1551 -1391 -1551
		mu 0 4 776 778 779 777
		f 4 1371 1552 -1392 -1552
		mu 0 4 778 780 781 779
		f 4 1372 1553 -1393 -1553
		mu 0 4 780 782 783 781
		f 4 1373 1554 -1394 -1554
		mu 0 4 782 784 785 783
		f 4 1374 1555 -1395 -1555
		mu 0 4 784 786 787 785
		f 4 1375 1556 -1396 -1556
		mu 0 4 786 788 789 787
		f 4 1376 1557 -1397 -1557
		mu 0 4 788 790 791 789
		f 4 1377 1558 -1398 -1558
		mu 0 4 790 792 793 791
		f 4 1378 1559 -1399 -1559
		mu 0 4 792 794 795 793
		f 4 1379 1540 -1400 -1560
		mu 0 4 794 796 797 795
		f 4 1380 1561 -1401 -1561
		mu 0 4 759 758 798 799
		f 4 1381 1562 -1402 -1562
		mu 0 4 758 761 800 798
		f 4 1382 1563 -1403 -1563
		mu 0 4 761 763 801 800
		f 4 1383 1564 -1404 -1564
		mu 0 4 763 765 802 801
		f 4 1384 1565 -1405 -1565
		mu 0 4 765 767 803 802
		f 4 1385 1566 -1406 -1566
		mu 0 4 767 769 804 803
		f 4 1386 1567 -1407 -1567
		mu 0 4 769 771 805 804
		f 4 1387 1568 -1408 -1568
		mu 0 4 771 773 806 805
		f 4 1388 1569 -1409 -1569
		mu 0 4 773 775 807 806
		f 4 1389 1570 -1410 -1570
		mu 0 4 775 777 808 807
		f 4 1390 1571 -1411 -1571
		mu 0 4 777 779 809 808
		f 4 1391 1572 -1412 -1572
		mu 0 4 779 781 810 809
		f 4 1392 1573 -1413 -1573
		mu 0 4 781 783 811 810
		f 4 1393 1574 -1414 -1574
		mu 0 4 783 785 812 811
		f 4 1394 1575 -1415 -1575
		mu 0 4 785 787 813 812
		f 4 1395 1576 -1416 -1576
		mu 0 4 787 789 814 813
		f 4 1396 1577 -1417 -1577
		mu 0 4 789 791 815 814
		f 4 1397 1578 -1418 -1578
		mu 0 4 791 793 816 815
		f 4 1398 1579 -1419 -1579
		mu 0 4 793 795 817 816
		f 4 1399 1560 -1420 -1580
		mu 0 4 795 797 818 817
		f 4 1400 1581 -1421 -1581
		mu 0 4 799 798 819 820
		f 4 1401 1582 -1422 -1582
		mu 0 4 798 800 821 819
		f 4 1402 1583 -1423 -1583
		mu 0 4 800 801 822 821
		f 4 1403 1584 -1424 -1584
		mu 0 4 801 802 823 822
		f 4 1404 1585 -1425 -1585
		mu 0 4 802 803 824 823
		f 4 1405 1586 -1426 -1586
		mu 0 4 803 804 825 824
		f 4 1406 1587 -1427 -1587
		mu 0 4 804 805 826 825
		f 4 1407 1588 -1428 -1588
		mu 0 4 805 806 827 826
		f 4 1408 1589 -1429 -1589
		mu 0 4 806 807 828 827
		f 4 1409 1590 -1430 -1590
		mu 0 4 807 808 829 828
		f 4 1410 1591 -1431 -1591
		mu 0 4 808 809 830 829
		f 4 1411 1592 -1432 -1592
		mu 0 4 809 810 831 830
		f 4 1412 1593 -1433 -1593
		mu 0 4 810 811 832 831
		f 4 1413 1594 -1434 -1594
		mu 0 4 811 812 833 832
		f 4 1414 1595 -1435 -1595
		mu 0 4 812 813 834 833
		f 4 1415 1596 -1436 -1596
		mu 0 4 813 814 835 834
		f 4 1416 1597 -1437 -1597
		mu 0 4 814 815 836 835
		f 4 1417 1598 -1438 -1598
		mu 0 4 815 816 837 836
		f 4 1418 1599 -1439 -1599
		mu 0 4 816 817 838 837
		f 4 1419 1580 -1440 -1600
		mu 0 4 817 818 839 838
		f 4 1420 1601 -1441 -1601
		mu 0 4 820 819 840 841
		f 4 1421 1602 -1442 -1602
		mu 0 4 819 821 842 840
		f 4 1422 1603 -1443 -1603
		mu 0 4 821 822 843 842
		f 4 1423 1604 -1444 -1604
		mu 0 4 822 823 844 843
		f 4 1424 1605 -1445 -1605
		mu 0 4 823 824 845 844
		f 4 1425 1606 -1446 -1606
		mu 0 4 824 825 846 845
		f 4 1426 1607 -1447 -1607
		mu 0 4 825 826 847 846
		f 4 1427 1608 -1448 -1608
		mu 0 4 826 827 848 847
		f 4 1428 1609 -1449 -1609
		mu 0 4 827 828 849 848
		f 4 1429 1610 -1450 -1610
		mu 0 4 828 829 850 849
		f 4 1430 1611 -1451 -1611
		mu 0 4 829 830 851 850
		f 4 1431 1612 -1452 -1612
		mu 0 4 830 831 852 851
		f 4 1432 1613 -1453 -1613
		mu 0 4 831 832 853 852
		f 4 1433 1614 -1454 -1614
		mu 0 4 832 833 854 853
		f 4 1434 1615 -1455 -1615
		mu 0 4 833 834 855 854
		f 4 1435 1616 -1456 -1616
		mu 0 4 834 835 856 855
		f 4 1436 1617 -1457 -1617
		mu 0 4 835 836 857 856
		f 4 1437 1618 -1458 -1618
		mu 0 4 836 837 858 857
		f 4 1438 1619 -1459 -1619
		mu 0 4 837 838 859 858
		f 4 1439 1600 -1460 -1620
		mu 0 4 838 839 860 859
		f 4 1440 1621 -1461 -1621
		mu 0 4 841 840 861 862
		f 4 1441 1622 -1462 -1622
		mu 0 4 840 842 863 861
		f 4 1442 1623 -1463 -1623
		mu 0 4 842 843 864 863
		f 4 1443 1624 -1464 -1624
		mu 0 4 843 844 865 864
		f 4 1444 1625 -1465 -1625
		mu 0 4 844 845 866 865
		f 4 1445 1626 -1466 -1626
		mu 0 4 845 846 867 866
		f 4 1446 1627 -1467 -1627
		mu 0 4 846 847 868 867
		f 4 1447 1628 -1468 -1628
		mu 0 4 847 848 869 868
		f 4 1448 1629 -1469 -1629
		mu 0 4 848 849 870 869
		f 4 1449 1630 -1470 -1630
		mu 0 4 849 850 871 870
		f 4 1450 1631 -1471 -1631
		mu 0 4 850 851 872 871
		f 4 1451 1632 -1472 -1632
		mu 0 4 851 852 873 872
		f 4 1452 1633 -1473 -1633
		mu 0 4 852 853 874 873
		f 4 1453 1634 -1474 -1634
		mu 0 4 853 854 875 874
		f 4 1454 1635 -1475 -1635
		mu 0 4 854 855 876 875
		f 4 1455 1636 -1476 -1636
		mu 0 4 855 856 877 876
		f 4 1456 1637 -1477 -1637
		mu 0 4 856 857 878 877
		f 4 1457 1638 -1478 -1638
		mu 0 4 857 858 879 878
		f 4 1458 1639 -1479 -1639
		mu 0 4 858 859 880 879
		f 4 1459 1620 -1480 -1640
		mu 0 4 859 860 881 880
		f 4 1460 1641 -1481 -1641
		mu 0 4 862 861 882 883
		f 4 1461 1642 -1482 -1642
		mu 0 4 861 863 884 882
		f 4 1462 1643 -1483 -1643
		mu 0 4 863 864 885 884
		f 4 1463 1644 -1484 -1644
		mu 0 4 864 865 886 885
		f 4 1464 1645 -1485 -1645
		mu 0 4 865 866 887 886
		f 4 1465 1646 -1486 -1646
		mu 0 4 866 867 888 887
		f 4 1466 1647 -1487 -1647
		mu 0 4 867 868 889 888
		f 4 1467 1648 -1488 -1648
		mu 0 4 868 869 890 889
		f 4 1468 1649 -1489 -1649
		mu 0 4 869 870 891 890
		f 4 1469 1650 -1490 -1650
		mu 0 4 870 871 892 891
		f 4 1470 1651 -1491 -1651
		mu 0 4 871 872 893 892
		f 4 1471 1652 -1492 -1652
		mu 0 4 872 873 894 893
		f 4 1472 1653 -1493 -1653
		mu 0 4 873 874 895 894
		f 4 1473 1654 -1494 -1654
		mu 0 4 874 875 896 895
		f 4 1474 1655 -1495 -1655
		mu 0 4 875 876 897 896
		f 4 1475 1656 -1496 -1656
		mu 0 4 876 877 898 897
		f 4 1476 1657 -1497 -1657
		mu 0 4 877 878 899 898
		f 4 1477 1658 -1498 -1658
		mu 0 4 878 879 900 899
		f 4 1478 1659 -1499 -1659
		mu 0 4 879 880 901 900
		f 4 1479 1640 -1500 -1660
		mu 0 4 880 881 902 901
		f 4 1480 1661 -1501 -1661
		mu 0 4 883 882 903 904
		f 4 1481 1662 -1502 -1662
		mu 0 4 882 884 905 903
		f 4 1482 1663 -1503 -1663
		mu 0 4 884 885 906 905
		f 4 1483 1664 -1504 -1664
		mu 0 4 885 886 907 906
		f 4 1484 1665 -1505 -1665
		mu 0 4 886 887 908 907
		f 4 1485 1666 -1506 -1666
		mu 0 4 887 888 909 908
		f 4 1486 1667 -1507 -1667
		mu 0 4 888 889 910 909
		f 4 1487 1668 -1508 -1668
		mu 0 4 889 890 911 910
		f 4 1488 1669 -1509 -1669
		mu 0 4 890 891 912 911
		f 4 1489 1670 -1510 -1670
		mu 0 4 891 892 913 912
		f 4 1490 1671 -1511 -1671
		mu 0 4 892 893 914 913
		f 4 1491 1672 -1512 -1672
		mu 0 4 893 894 915 914
		f 4 1492 1673 -1513 -1673
		mu 0 4 894 895 916 915
		f 4 1493 1674 -1514 -1674
		mu 0 4 895 896 917 916
		f 4 1494 1675 -1515 -1675
		mu 0 4 896 897 918 917
		f 4 1495 1676 -1516 -1676
		mu 0 4 897 898 919 918
		f 4 1496 1677 -1517 -1677
		mu 0 4 898 899 920 919
		f 4 1497 1678 -1518 -1678
		mu 0 4 899 900 921 920
		f 4 1498 1679 -1519 -1679
		mu 0 4 900 901 922 921
		f 4 1499 1660 -1520 -1680
		mu 0 4 901 902 923 922
		f 4 1500 1681 -1521 -1681
		mu 0 4 904 903 924 925
		f 4 1501 1682 -1522 -1682
		mu 0 4 903 905 926 924
		f 4 1502 1683 -1523 -1683
		mu 0 4 905 906 927 926
		f 4 1503 1684 -1524 -1684
		mu 0 4 906 907 928 927
		f 4 1504 1685 -1525 -1685
		mu 0 4 907 908 929 928
		f 4 1505 1686 -1526 -1686
		mu 0 4 908 909 930 929
		f 4 1506 1687 -1527 -1687
		mu 0 4 909 910 931 930
		f 4 1507 1688 -1528 -1688
		mu 0 4 910 911 932 931
		f 4 1508 1689 -1529 -1689
		mu 0 4 911 912 933 932
		f 4 1509 1690 -1530 -1690
		mu 0 4 912 913 934 933
		f 4 1510 1691 -1531 -1691
		mu 0 4 913 914 935 934
		f 4 1511 1692 -1532 -1692
		mu 0 4 914 915 936 935
		f 4 1512 1693 -1533 -1693
		mu 0 4 915 916 937 936
		f 4 1513 1694 -1534 -1694
		mu 0 4 916 917 938 937
		f 4 1514 1695 -1535 -1695
		mu 0 4 917 918 939 938
		f 4 1515 1696 -1536 -1696
		mu 0 4 918 919 940 939
		f 4 1516 1697 -1537 -1697
		mu 0 4 919 920 941 940
		f 4 1517 1698 -1538 -1698
		mu 0 4 920 921 942 941
		f 4 1518 1699 -1539 -1699
		mu 0 4 921 922 943 942
		f 4 1519 1680 -1540 -1700
		mu 0 4 922 923 944 943
		f 4 1700 1881 -1721 -1881
		mu 0 4 945 946 947 948
		f 4 1701 1882 -1722 -1882
		mu 0 4 946 949 950 947
		f 4 1702 1883 -1723 -1883
		mu 0 4 949 951 952 950
		f 4 1703 1884 -1724 -1884
		mu 0 4 951 953 954 952
		f 4 1704 1885 -1725 -1885
		mu 0 4 953 955 956 954
		f 4 1705 1886 -1726 -1886
		mu 0 4 955 957 958 956
		f 4 1706 1887 -1727 -1887
		mu 0 4 957 959 960 958
		f 4 1707 1888 -1728 -1888
		mu 0 4 959 961 962 960
		f 4 1708 1889 -1729 -1889
		mu 0 4 961 963 964 962
		f 4 1709 1890 -1730 -1890
		mu 0 4 963 965 966 964
		f 4 1710 1891 -1731 -1891
		mu 0 4 965 967 968 966
		f 4 1711 1892 -1732 -1892
		mu 0 4 967 969 970 968
		f 4 1712 1893 -1733 -1893
		mu 0 4 969 971 972 970
		f 4 1713 1894 -1734 -1894
		mu 0 4 971 973 974 972
		f 4 1714 1895 -1735 -1895
		mu 0 4 973 975 976 974
		f 4 1715 1896 -1736 -1896
		mu 0 4 975 977 978 976
		f 4 1716 1897 -1737 -1897
		mu 0 4 977 979 980 978
		f 4 1717 1898 -1738 -1898
		mu 0 4 979 981 982 980
		f 4 1718 1899 -1739 -1899
		mu 0 4 981 983 984 982
		f 4 1719 1880 -1740 -1900
		mu 0 4 983 985 986 984
		f 4 1720 1901 -1741 -1901
		mu 0 4 948 947 987 988
		f 4 1721 1902 -1742 -1902
		mu 0 4 947 950 989 987
		f 4 1722 1903 -1743 -1903
		mu 0 4 950 952 990 989
		f 4 1723 1904 -1744 -1904
		mu 0 4 952 954 991 990
		f 4 1724 1905 -1745 -1905
		mu 0 4 954 956 992 991
		f 4 1725 1906 -1746 -1906
		mu 0 4 956 958 993 992
		f 4 1726 1907 -1747 -1907
		mu 0 4 958 960 994 993
		f 4 1727 1908 -1748 -1908
		mu 0 4 960 962 995 994
		f 4 1728 1909 -1749 -1909
		mu 0 4 962 964 996 995
		f 4 1729 1910 -1750 -1910
		mu 0 4 964 966 997 996
		f 4 1730 1911 -1751 -1911
		mu 0 4 966 968 998 997
		f 4 1731 1912 -1752 -1912
		mu 0 4 968 970 999 998
		f 4 1732 1913 -1753 -1913
		mu 0 4 970 972 1000 999
		f 4 1733 1914 -1754 -1914
		mu 0 4 972 974 1001 1000
		f 4 1734 1915 -1755 -1915
		mu 0 4 974 976 1002 1001
		f 4 1735 1916 -1756 -1916
		mu 0 4 976 978 1003 1002
		f 4 1736 1917 -1757 -1917
		mu 0 4 978 980 1004 1003
		f 4 1737 1918 -1758 -1918
		mu 0 4 980 982 1005 1004
		f 4 1738 1919 -1759 -1919
		mu 0 4 982 984 1006 1005
		f 4 1739 1900 -1760 -1920
		mu 0 4 984 986 1007 1006
		f 4 1740 1921 -1761 -1921
		mu 0 4 988 987 1008 1009
		f 4 1741 1922 -1762 -1922
		mu 0 4 987 989 1010 1008
		f 4 1742 1923 -1763 -1923
		mu 0 4 989 990 1011 1010
		f 4 1743 1924 -1764 -1924
		mu 0 4 990 991 1012 1011
		f 4 1744 1925 -1765 -1925
		mu 0 4 991 992 1013 1012
		f 4 1745 1926 -1766 -1926
		mu 0 4 992 993 1014 1013
		f 4 1746 1927 -1767 -1927
		mu 0 4 993 994 1015 1014
		f 4 1747 1928 -1768 -1928
		mu 0 4 994 995 1016 1015
		f 4 1748 1929 -1769 -1929
		mu 0 4 995 996 1017 1016
		f 4 1749 1930 -1770 -1930
		mu 0 4 996 997 1018 1017
		f 4 1750 1931 -1771 -1931
		mu 0 4 997 998 1019 1018
		f 4 1751 1932 -1772 -1932
		mu 0 4 998 999 1020 1019
		f 4 1752 1933 -1773 -1933
		mu 0 4 999 1000 1021 1020
		f 4 1753 1934 -1774 -1934
		mu 0 4 1000 1001 1022 1021
		f 4 1754 1935 -1775 -1935
		mu 0 4 1001 1002 1023 1022
		f 4 1755 1936 -1776 -1936
		mu 0 4 1002 1003 1024 1023
		f 4 1756 1937 -1777 -1937
		mu 0 4 1003 1004 1025 1024
		f 4 1757 1938 -1778 -1938
		mu 0 4 1004 1005 1026 1025
		f 4 1758 1939 -1779 -1939
		mu 0 4 1005 1006 1027 1026
		f 4 1759 1920 -1780 -1940
		mu 0 4 1006 1007 1028 1027
		f 4 1760 1941 -1781 -1941
		mu 0 4 1009 1008 1029 1030
		f 4 1761 1942 -1782 -1942
		mu 0 4 1008 1010 1031 1029
		f 4 1762 1943 -1783 -1943
		mu 0 4 1010 1011 1032 1031
		f 4 1763 1944 -1784 -1944
		mu 0 4 1011 1012 1033 1032
		f 4 1764 1945 -1785 -1945
		mu 0 4 1012 1013 1034 1033
		f 4 1765 1946 -1786 -1946
		mu 0 4 1013 1014 1035 1034
		f 4 1766 1947 -1787 -1947
		mu 0 4 1014 1015 1036 1035
		f 4 1767 1948 -1788 -1948
		mu 0 4 1015 1016 1037 1036
		f 4 1768 1949 -1789 -1949
		mu 0 4 1016 1017 1038 1037
		f 4 1769 1950 -1790 -1950
		mu 0 4 1017 1018 1039 1038
		f 4 1770 1951 -1791 -1951
		mu 0 4 1018 1019 1040 1039
		f 4 1771 1952 -1792 -1952
		mu 0 4 1019 1020 1041 1040
		f 4 1772 1953 -1793 -1953
		mu 0 4 1020 1021 1042 1041
		f 4 1773 1954 -1794 -1954
		mu 0 4 1021 1022 1043 1042
		f 4 1774 1955 -1795 -1955
		mu 0 4 1022 1023 1044 1043
		f 4 1775 1956 -1796 -1956
		mu 0 4 1023 1024 1045 1044
		f 4 1776 1957 -1797 -1957
		mu 0 4 1024 1025 1046 1045
		f 4 1777 1958 -1798 -1958
		mu 0 4 1025 1026 1047 1046
		f 4 1778 1959 -1799 -1959
		mu 0 4 1026 1027 1048 1047
		f 4 1779 1940 -1800 -1960
		mu 0 4 1027 1028 1049 1048
		f 4 1780 1961 -1801 -1961
		mu 0 4 1030 1029 1050 1051
		f 4 1781 1962 -1802 -1962
		mu 0 4 1029 1031 1052 1050
		f 4 1782 1963 -1803 -1963
		mu 0 4 1031 1032 1053 1052
		f 4 1783 1964 -1804 -1964
		mu 0 4 1032 1033 1054 1053
		f 4 1784 1965 -1805 -1965
		mu 0 4 1033 1034 1055 1054
		f 4 1785 1966 -1806 -1966
		mu 0 4 1034 1035 1056 1055
		f 4 1786 1967 -1807 -1967
		mu 0 4 1035 1036 1057 1056
		f 4 1787 1968 -1808 -1968
		mu 0 4 1036 1037 1058 1057
		f 4 1788 1969 -1809 -1969
		mu 0 4 1037 1038 1059 1058
		f 4 1789 1970 -1810 -1970
		mu 0 4 1038 1039 1060 1059
		f 4 1790 1971 -1811 -1971
		mu 0 4 1039 1040 1061 1060
		f 4 1791 1972 -1812 -1972
		mu 0 4 1040 1041 1062 1061
		f 4 1792 1973 -1813 -1973
		mu 0 4 1041 1042 1063 1062
		f 4 1793 1974 -1814 -1974
		mu 0 4 1042 1043 1064 1063
		f 4 1794 1975 -1815 -1975
		mu 0 4 1043 1044 1065 1064
		f 4 1795 1976 -1816 -1976
		mu 0 4 1044 1045 1066 1065
		f 4 1796 1977 -1817 -1977
		mu 0 4 1045 1046 1067 1066
		f 4 1797 1978 -1818 -1978
		mu 0 4 1046 1047 1068 1067
		f 4 1798 1979 -1819 -1979
		mu 0 4 1047 1048 1069 1068
		f 4 1799 1960 -1820 -1980
		mu 0 4 1048 1049 1070 1069
		f 4 1800 1981 -1821 -1981
		mu 0 4 1051 1050 1071 1072
		f 4 1801 1982 -1822 -1982
		mu 0 4 1050 1052 1073 1071
		f 4 1802 1983 -1823 -1983
		mu 0 4 1052 1053 1074 1073
		f 4 1803 1984 -1824 -1984
		mu 0 4 1053 1054 1075 1074
		f 4 1804 1985 -1825 -1985
		mu 0 4 1054 1055 1076 1075
		f 4 1805 1986 -1826 -1986
		mu 0 4 1055 1056 1077 1076
		f 4 1806 1987 -1827 -1987
		mu 0 4 1056 1057 1078 1077
		f 4 1807 1988 -1828 -1988
		mu 0 4 1057 1058 1079 1078
		f 4 1808 1989 -1829 -1989
		mu 0 4 1058 1059 1080 1079
		f 4 1809 1990 -1830 -1990
		mu 0 4 1059 1060 1081 1080
		f 4 1810 1991 -1831 -1991
		mu 0 4 1060 1061 1082 1081
		f 4 1811 1992 -1832 -1992
		mu 0 4 1061 1062 1083 1082
		f 4 1812 1993 -1833 -1993
		mu 0 4 1062 1063 1084 1083
		f 4 1813 1994 -1834 -1994
		mu 0 4 1063 1064 1085 1084
		f 4 1814 1995 -1835 -1995
		mu 0 4 1064 1065 1086 1085
		f 4 1815 1996 -1836 -1996
		mu 0 4 1065 1066 1087 1086
		f 4 1816 1997 -1837 -1997
		mu 0 4 1066 1067 1088 1087
		f 4 1817 1998 -1838 -1998
		mu 0 4 1067 1068 1089 1088
		f 4 1818 1999 -1839 -1999
		mu 0 4 1068 1069 1090 1089
		f 4 1819 1980 -1840 -2000
		mu 0 4 1069 1070 1091 1090
		f 4 1820 2001 -1841 -2001
		mu 0 4 1072 1071 1092 1093
		f 4 1821 2002 -1842 -2002
		mu 0 4 1071 1073 1094 1092
		f 4 1822 2003 -1843 -2003
		mu 0 4 1073 1074 1095 1094
		f 4 1823 2004 -1844 -2004
		mu 0 4 1074 1075 1096 1095
		f 4 1824 2005 -1845 -2005
		mu 0 4 1075 1076 1097 1096
		f 4 1825 2006 -1846 -2006
		mu 0 4 1076 1077 1098 1097
		f 4 1826 2007 -1847 -2007
		mu 0 4 1077 1078 1099 1098
		f 4 1827 2008 -1848 -2008
		mu 0 4 1078 1079 1100 1099
		f 4 1828 2009 -1849 -2009
		mu 0 4 1079 1080 1101 1100
		f 4 1829 2010 -1850 -2010
		mu 0 4 1080 1081 1102 1101
		f 4 1830 2011 -1851 -2011
		mu 0 4 1081 1082 1103 1102
		f 4 1831 2012 -1852 -2012
		mu 0 4 1082 1083 1104 1103
		f 4 1832 2013 -1853 -2013
		mu 0 4 1083 1084 1105 1104
		f 4 1833 2014 -1854 -2014
		mu 0 4 1084 1085 1106 1105
		f 4 1834 2015 -1855 -2015
		mu 0 4 1085 1086 1107 1106
		f 4 1835 2016 -1856 -2016
		mu 0 4 1086 1087 1108 1107
		f 4 1836 2017 -1857 -2017
		mu 0 4 1087 1088 1109 1108
		f 4 1837 2018 -1858 -2018
		mu 0 4 1088 1089 1110 1109
		f 4 1838 2019 -1859 -2019
		mu 0 4 1089 1090 1111 1110
		f 4 1839 2000 -1860 -2020
		mu 0 4 1090 1091 1112 1111
		f 4 1840 2021 -1861 -2021
		mu 0 4 1093 1092 1113 1114
		f 4 1841 2022 -1862 -2022
		mu 0 4 1092 1094 1115 1113
		f 4 1842 2023 -1863 -2023
		mu 0 4 1094 1095 1116 1115
		f 4 1843 2024 -1864 -2024
		mu 0 4 1095 1096 1117 1116
		f 4 1844 2025 -1865 -2025
		mu 0 4 1096 1097 1118 1117
		f 4 1845 2026 -1866 -2026
		mu 0 4 1097 1098 1119 1118
		f 4 1846 2027 -1867 -2027
		mu 0 4 1098 1099 1120 1119
		f 4 1847 2028 -1868 -2028
		mu 0 4 1099 1100 1121 1120
		f 4 1848 2029 -1869 -2029
		mu 0 4 1100 1101 1122 1121
		f 4 1849 2030 -1870 -2030
		mu 0 4 1101 1102 1123 1122
		f 4 1850 2031 -1871 -2031
		mu 0 4 1102 1103 1124 1123
		f 4 1851 2032 -1872 -2032
		mu 0 4 1103 1104 1125 1124
		f 4 1852 2033 -1873 -2033
		mu 0 4 1104 1105 1126 1125
		f 4 1853 2034 -1874 -2034
		mu 0 4 1105 1106 1127 1126
		f 4 1854 2035 -1875 -2035
		mu 0 4 1106 1107 1128 1127
		f 4 1855 2036 -1876 -2036
		mu 0 4 1107 1108 1129 1128
		f 4 1856 2037 -1877 -2037
		mu 0 4 1108 1109 1130 1129
		f 4 1857 2038 -1878 -2038
		mu 0 4 1109 1110 1131 1130
		f 4 1858 2039 -1879 -2039
		mu 0 4 1110 1111 1132 1131
		f 4 1859 2020 -1880 -2040
		mu 0 4 1111 1112 1133 1132
		f 4 2040 2221 -2061 -2221
		mu 0 4 1134 1135 1136 1137
		f 4 2041 2222 -2062 -2222
		mu 0 4 1135 1138 1139 1136
		f 4 2042 2223 -2063 -2223
		mu 0 4 1138 1140 1141 1139
		f 4 2043 2224 -2064 -2224
		mu 0 4 1140 1142 1143 1141
		f 4 2044 2225 -2065 -2225
		mu 0 4 1142 1144 1145 1143
		f 4 2045 2226 -2066 -2226
		mu 0 4 1144 1146 1147 1145
		f 4 2046 2227 -2067 -2227
		mu 0 4 1146 1148 1149 1147
		f 4 2047 2228 -2068 -2228
		mu 0 4 1148 1150 1151 1149
		f 4 2048 2229 -2069 -2229
		mu 0 4 1150 1152 1153 1151
		f 4 2049 2230 -2070 -2230
		mu 0 4 1152 1154 1155 1153
		f 4 2050 2231 -2071 -2231
		mu 0 4 1154 1156 1157 1155
		f 4 2051 2232 -2072 -2232
		mu 0 4 1156 1158 1159 1157
		f 4 2052 2233 -2073 -2233
		mu 0 4 1158 1160 1161 1159
		f 4 2053 2234 -2074 -2234
		mu 0 4 1160 1162 1163 1161
		f 4 2054 2235 -2075 -2235
		mu 0 4 1162 1164 1165 1163
		f 4 2055 2236 -2076 -2236
		mu 0 4 1164 1166 1167 1165
		f 4 2056 2237 -2077 -2237
		mu 0 4 1166 1168 1169 1167
		f 4 2057 2238 -2078 -2238
		mu 0 4 1168 1170 1171 1169
		f 4 2058 2239 -2079 -2239
		mu 0 4 1170 1172 1173 1171
		f 4 2059 2220 -2080 -2240
		mu 0 4 1172 1174 1175 1173
		f 4 2060 2241 -2081 -2241
		mu 0 4 1137 1136 1176 1177
		f 4 2061 2242 -2082 -2242
		mu 0 4 1136 1139 1178 1176
		f 4 2062 2243 -2083 -2243
		mu 0 4 1139 1141 1179 1178
		f 4 2063 2244 -2084 -2244
		mu 0 4 1141 1143 1180 1179
		f 4 2064 2245 -2085 -2245
		mu 0 4 1143 1145 1181 1180
		f 4 2065 2246 -2086 -2246
		mu 0 4 1145 1147 1182 1181
		f 4 2066 2247 -2087 -2247
		mu 0 4 1147 1149 1183 1182
		f 4 2067 2248 -2088 -2248
		mu 0 4 1149 1151 1184 1183
		f 4 2068 2249 -2089 -2249
		mu 0 4 1151 1153 1185 1184
		f 4 2069 2250 -2090 -2250
		mu 0 4 1153 1155 1186 1185
		f 4 2070 2251 -2091 -2251
		mu 0 4 1155 1157 1187 1186
		f 4 2071 2252 -2092 -2252
		mu 0 4 1157 1159 1188 1187
		f 4 2072 2253 -2093 -2253
		mu 0 4 1159 1161 1189 1188
		f 4 2073 2254 -2094 -2254
		mu 0 4 1161 1163 1190 1189
		f 4 2074 2255 -2095 -2255
		mu 0 4 1163 1165 1191 1190
		f 4 2075 2256 -2096 -2256
		mu 0 4 1165 1167 1192 1191
		f 4 2076 2257 -2097 -2257
		mu 0 4 1167 1169 1193 1192
		f 4 2077 2258 -2098 -2258
		mu 0 4 1169 1171 1194 1193
		f 4 2078 2259 -2099 -2259
		mu 0 4 1171 1173 1195 1194
		f 4 2079 2240 -2100 -2260
		mu 0 4 1173 1175 1196 1195;
	setAttr ".fc[1000:1499]"
		f 4 2080 2261 -2101 -2261
		mu 0 4 1177 1176 1197 1198
		f 4 2081 2262 -2102 -2262
		mu 0 4 1176 1178 1199 1197
		f 4 2082 2263 -2103 -2263
		mu 0 4 1178 1179 1200 1199
		f 4 2083 2264 -2104 -2264
		mu 0 4 1179 1180 1201 1200
		f 4 2084 2265 -2105 -2265
		mu 0 4 1180 1181 1202 1201
		f 4 2085 2266 -2106 -2266
		mu 0 4 1181 1182 1203 1202
		f 4 2086 2267 -2107 -2267
		mu 0 4 1182 1183 1204 1203
		f 4 2087 2268 -2108 -2268
		mu 0 4 1183 1184 1205 1204
		f 4 2088 2269 -2109 -2269
		mu 0 4 1184 1185 1206 1205
		f 4 2089 2270 -2110 -2270
		mu 0 4 1185 1186 1207 1206
		f 4 2090 2271 -2111 -2271
		mu 0 4 1186 1187 1208 1207
		f 4 2091 2272 -2112 -2272
		mu 0 4 1187 1188 1209 1208
		f 4 2092 2273 -2113 -2273
		mu 0 4 1188 1189 1210 1209
		f 4 2093 2274 -2114 -2274
		mu 0 4 1189 1190 1211 1210
		f 4 2094 2275 -2115 -2275
		mu 0 4 1190 1191 1212 1211
		f 4 2095 2276 -2116 -2276
		mu 0 4 1191 1192 1213 1212
		f 4 2096 2277 -2117 -2277
		mu 0 4 1192 1193 1214 1213
		f 4 2097 2278 -2118 -2278
		mu 0 4 1193 1194 1215 1214
		f 4 2098 2279 -2119 -2279
		mu 0 4 1194 1195 1216 1215
		f 4 2099 2260 -2120 -2280
		mu 0 4 1195 1196 1217 1216
		f 4 2100 2281 -2121 -2281
		mu 0 4 1198 1197 1218 1219
		f 4 2101 2282 -2122 -2282
		mu 0 4 1197 1199 1220 1218
		f 4 2102 2283 -2123 -2283
		mu 0 4 1199 1200 1221 1220
		f 4 2103 2284 -2124 -2284
		mu 0 4 1200 1201 1222 1221
		f 4 2104 2285 -2125 -2285
		mu 0 4 1201 1202 1223 1222
		f 4 2105 2286 -2126 -2286
		mu 0 4 1202 1203 1224 1223
		f 4 2106 2287 -2127 -2287
		mu 0 4 1203 1204 1225 1224
		f 4 2107 2288 -2128 -2288
		mu 0 4 1204 1205 1226 1225
		f 4 2108 2289 -2129 -2289
		mu 0 4 1205 1206 1227 1226
		f 4 2109 2290 -2130 -2290
		mu 0 4 1206 1207 1228 1227
		f 4 2110 2291 -2131 -2291
		mu 0 4 1207 1208 1229 1228
		f 4 2111 2292 -2132 -2292
		mu 0 4 1208 1209 1230 1229
		f 4 2112 2293 -2133 -2293
		mu 0 4 1209 1210 1231 1230
		f 4 2113 2294 -2134 -2294
		mu 0 4 1210 1211 1232 1231
		f 4 2114 2295 -2135 -2295
		mu 0 4 1211 1212 1233 1232
		f 4 2115 2296 -2136 -2296
		mu 0 4 1212 1213 1234 1233
		f 4 2116 2297 -2137 -2297
		mu 0 4 1213 1214 1235 1234
		f 4 2117 2298 -2138 -2298
		mu 0 4 1214 1215 1236 1235
		f 4 2118 2299 -2139 -2299
		mu 0 4 1215 1216 1237 1236
		f 4 2119 2280 -2140 -2300
		mu 0 4 1216 1217 1238 1237
		f 4 2120 2301 -2141 -2301
		mu 0 4 1219 1218 1239 1240
		f 4 2121 2302 -2142 -2302
		mu 0 4 1218 1220 1241 1239
		f 4 2122 2303 -2143 -2303
		mu 0 4 1220 1221 1242 1241
		f 4 2123 2304 -2144 -2304
		mu 0 4 1221 1222 1243 1242
		f 4 2124 2305 -2145 -2305
		mu 0 4 1222 1223 1244 1243
		f 4 2125 2306 -2146 -2306
		mu 0 4 1223 1224 1245 1244
		f 4 2126 2307 -2147 -2307
		mu 0 4 1224 1225 1246 1245
		f 4 2127 2308 -2148 -2308
		mu 0 4 1225 1226 1247 1246
		f 4 2128 2309 -2149 -2309
		mu 0 4 1226 1227 1248 1247
		f 4 2129 2310 -2150 -2310
		mu 0 4 1227 1228 1249 1248
		f 4 2130 2311 -2151 -2311
		mu 0 4 1228 1229 1250 1249
		f 4 2131 2312 -2152 -2312
		mu 0 4 1229 1230 1251 1250
		f 4 2132 2313 -2153 -2313
		mu 0 4 1230 1231 1252 1251
		f 4 2133 2314 -2154 -2314
		mu 0 4 1231 1232 1253 1252
		f 4 2134 2315 -2155 -2315
		mu 0 4 1232 1233 1254 1253
		f 4 2135 2316 -2156 -2316
		mu 0 4 1233 1234 1255 1254
		f 4 2136 2317 -2157 -2317
		mu 0 4 1234 1235 1256 1255
		f 4 2137 2318 -2158 -2318
		mu 0 4 1235 1236 1257 1256
		f 4 2138 2319 -2159 -2319
		mu 0 4 1236 1237 1258 1257
		f 4 2139 2300 -2160 -2320
		mu 0 4 1237 1238 1259 1258
		f 4 2140 2321 -2161 -2321
		mu 0 4 1240 1239 1260 1261
		f 4 2141 2322 -2162 -2322
		mu 0 4 1239 1241 1262 1260
		f 4 2142 2323 -2163 -2323
		mu 0 4 1241 1242 1263 1262
		f 4 2143 2324 -2164 -2324
		mu 0 4 1242 1243 1264 1263
		f 4 2144 2325 -2165 -2325
		mu 0 4 1243 1244 1265 1264
		f 4 2145 2326 -2166 -2326
		mu 0 4 1244 1245 1266 1265
		f 4 2146 2327 -2167 -2327
		mu 0 4 1245 1246 1267 1266
		f 4 2147 2328 -2168 -2328
		mu 0 4 1246 1247 1268 1267
		f 4 2148 2329 -2169 -2329
		mu 0 4 1247 1248 1269 1268
		f 4 2149 2330 -2170 -2330
		mu 0 4 1248 1249 1270 1269
		f 4 2150 2331 -2171 -2331
		mu 0 4 1249 1250 1271 1270
		f 4 2151 2332 -2172 -2332
		mu 0 4 1250 1251 1272 1271
		f 4 2152 2333 -2173 -2333
		mu 0 4 1251 1252 1273 1272
		f 4 2153 2334 -2174 -2334
		mu 0 4 1252 1253 1274 1273
		f 4 2154 2335 -2175 -2335
		mu 0 4 1253 1254 1275 1274
		f 4 2155 2336 -2176 -2336
		mu 0 4 1254 1255 1276 1275
		f 4 2156 2337 -2177 -2337
		mu 0 4 1255 1256 1277 1276
		f 4 2157 2338 -2178 -2338
		mu 0 4 1256 1257 1278 1277
		f 4 2158 2339 -2179 -2339
		mu 0 4 1257 1258 1279 1278
		f 4 2159 2320 -2180 -2340
		mu 0 4 1258 1259 1280 1279
		f 4 2160 2341 -2181 -2341
		mu 0 4 1261 1260 1281 1282
		f 4 2161 2342 -2182 -2342
		mu 0 4 1260 1262 1283 1281
		f 4 2162 2343 -2183 -2343
		mu 0 4 1262 1263 1284 1283
		f 4 2163 2344 -2184 -2344
		mu 0 4 1263 1264 1285 1284
		f 4 2164 2345 -2185 -2345
		mu 0 4 1264 1265 1286 1285
		f 4 2165 2346 -2186 -2346
		mu 0 4 1265 1266 1287 1286
		f 4 2166 2347 -2187 -2347
		mu 0 4 1266 1267 1288 1287
		f 4 2167 2348 -2188 -2348
		mu 0 4 1267 1268 1289 1288
		f 4 2168 2349 -2189 -2349
		mu 0 4 1268 1269 1290 1289
		f 4 2169 2350 -2190 -2350
		mu 0 4 1269 1270 1291 1290
		f 4 2170 2351 -2191 -2351
		mu 0 4 1270 1271 1292 1291
		f 4 2171 2352 -2192 -2352
		mu 0 4 1271 1272 1293 1292
		f 4 2172 2353 -2193 -2353
		mu 0 4 1272 1273 1294 1293
		f 4 2173 2354 -2194 -2354
		mu 0 4 1273 1274 1295 1294
		f 4 2174 2355 -2195 -2355
		mu 0 4 1274 1275 1296 1295
		f 4 2175 2356 -2196 -2356
		mu 0 4 1275 1276 1297 1296
		f 4 2176 2357 -2197 -2357
		mu 0 4 1276 1277 1298 1297
		f 4 2177 2358 -2198 -2358
		mu 0 4 1277 1278 1299 1298
		f 4 2178 2359 -2199 -2359
		mu 0 4 1278 1279 1300 1299
		f 4 2179 2340 -2200 -2360
		mu 0 4 1279 1280 1301 1300
		f 4 2180 2361 -2201 -2361
		mu 0 4 1282 1281 1302 1303
		f 4 2181 2362 -2202 -2362
		mu 0 4 1281 1283 1304 1302
		f 4 2182 2363 -2203 -2363
		mu 0 4 1283 1284 1305 1304
		f 4 2183 2364 -2204 -2364
		mu 0 4 1284 1285 1306 1305
		f 4 2184 2365 -2205 -2365
		mu 0 4 1285 1286 1307 1306
		f 4 2185 2366 -2206 -2366
		mu 0 4 1286 1287 1308 1307
		f 4 2186 2367 -2207 -2367
		mu 0 4 1287 1288 1309 1308
		f 4 2187 2368 -2208 -2368
		mu 0 4 1288 1289 1310 1309
		f 4 2188 2369 -2209 -2369
		mu 0 4 1289 1290 1311 1310
		f 4 2189 2370 -2210 -2370
		mu 0 4 1290 1291 1312 1311
		f 4 2190 2371 -2211 -2371
		mu 0 4 1291 1292 1313 1312
		f 4 2191 2372 -2212 -2372
		mu 0 4 1292 1293 1314 1313
		f 4 2192 2373 -2213 -2373
		mu 0 4 1293 1294 1315 1314
		f 4 2193 2374 -2214 -2374
		mu 0 4 1294 1295 1316 1315
		f 4 2194 2375 -2215 -2375
		mu 0 4 1295 1296 1317 1316
		f 4 2195 2376 -2216 -2376
		mu 0 4 1296 1297 1318 1317
		f 4 2196 2377 -2217 -2377
		mu 0 4 1297 1298 1319 1318
		f 4 2197 2378 -2218 -2378
		mu 0 4 1298 1299 1320 1319
		f 4 2198 2379 -2219 -2379
		mu 0 4 1299 1300 1321 1320
		f 4 2199 2360 -2220 -2380
		mu 0 4 1300 1301 1322 1321
		f 4 2380 2561 -2401 -2561
		mu 0 4 1323 1324 1325 1326
		f 4 2381 2562 -2402 -2562
		mu 0 4 1324 1327 1328 1325
		f 4 2382 2563 -2403 -2563
		mu 0 4 1327 1329 1330 1328
		f 4 2383 2564 -2404 -2564
		mu 0 4 1329 1331 1332 1330
		f 4 2384 2565 -2405 -2565
		mu 0 4 1331 1333 1334 1332
		f 4 2385 2566 -2406 -2566
		mu 0 4 1333 1335 1336 1334
		f 4 2386 2567 -2407 -2567
		mu 0 4 1335 1337 1338 1336
		f 4 2387 2568 -2408 -2568
		mu 0 4 1337 1339 1340 1338
		f 4 2388 2569 -2409 -2569
		mu 0 4 1339 1341 1342 1340
		f 4 2389 2570 -2410 -2570
		mu 0 4 1341 1343 1344 1342
		f 4 2390 2571 -2411 -2571
		mu 0 4 1343 1345 1346 1344
		f 4 2391 2572 -2412 -2572
		mu 0 4 1345 1347 1348 1346
		f 4 2392 2573 -2413 -2573
		mu 0 4 1347 1349 1350 1348
		f 4 2393 2574 -2414 -2574
		mu 0 4 1349 1351 1352 1350
		f 4 2394 2575 -2415 -2575
		mu 0 4 1351 1353 1354 1352
		f 4 2395 2576 -2416 -2576
		mu 0 4 1353 1355 1356 1354
		f 4 2396 2577 -2417 -2577
		mu 0 4 1355 1357 1358 1356
		f 4 2397 2578 -2418 -2578
		mu 0 4 1357 1359 1360 1358
		f 4 2398 2579 -2419 -2579
		mu 0 4 1359 1361 1362 1360
		f 4 2399 2560 -2420 -2580
		mu 0 4 1361 1363 1364 1362
		f 4 2400 2581 -2421 -2581
		mu 0 4 1326 1325 1365 1366
		f 4 2401 2582 -2422 -2582
		mu 0 4 1325 1328 1367 1365
		f 4 2402 2583 -2423 -2583
		mu 0 4 1328 1330 1368 1367
		f 4 2403 2584 -2424 -2584
		mu 0 4 1330 1332 1369 1368
		f 4 2404 2585 -2425 -2585
		mu 0 4 1332 1334 1370 1369
		f 4 2405 2586 -2426 -2586
		mu 0 4 1334 1336 1371 1370
		f 4 2406 2587 -2427 -2587
		mu 0 4 1336 1338 1372 1371
		f 4 2407 2588 -2428 -2588
		mu 0 4 1338 1340 1373 1372
		f 4 2408 2589 -2429 -2589
		mu 0 4 1340 1342 1374 1373
		f 4 2409 2590 -2430 -2590
		mu 0 4 1342 1344 1375 1374
		f 4 2410 2591 -2431 -2591
		mu 0 4 1344 1346 1376 1375
		f 4 2411 2592 -2432 -2592
		mu 0 4 1346 1348 1377 1376
		f 4 2412 2593 -2433 -2593
		mu 0 4 1348 1350 1378 1377
		f 4 2413 2594 -2434 -2594
		mu 0 4 1350 1352 1379 1378
		f 4 2414 2595 -2435 -2595
		mu 0 4 1352 1354 1380 1379
		f 4 2415 2596 -2436 -2596
		mu 0 4 1354 1356 1381 1380
		f 4 2416 2597 -2437 -2597
		mu 0 4 1356 1358 1382 1381
		f 4 2417 2598 -2438 -2598
		mu 0 4 1358 1360 1383 1382
		f 4 2418 2599 -2439 -2599
		mu 0 4 1360 1362 1384 1383
		f 4 2419 2580 -2440 -2600
		mu 0 4 1362 1364 1385 1384
		f 4 2420 2601 -2441 -2601
		mu 0 4 1366 1365 1386 1387
		f 4 2421 2602 -2442 -2602
		mu 0 4 1365 1367 1388 1386
		f 4 2422 2603 -2443 -2603
		mu 0 4 1367 1368 1389 1388
		f 4 2423 2604 -2444 -2604
		mu 0 4 1368 1369 1390 1389
		f 4 2424 2605 -2445 -2605
		mu 0 4 1369 1370 1391 1390
		f 4 2425 2606 -2446 -2606
		mu 0 4 1370 1371 1392 1391
		f 4 2426 2607 -2447 -2607
		mu 0 4 1371 1372 1393 1392
		f 4 2427 2608 -2448 -2608
		mu 0 4 1372 1373 1394 1393
		f 4 2428 2609 -2449 -2609
		mu 0 4 1373 1374 1395 1394
		f 4 2429 2610 -2450 -2610
		mu 0 4 1374 1375 1396 1395
		f 4 2430 2611 -2451 -2611
		mu 0 4 1375 1376 1397 1396
		f 4 2431 2612 -2452 -2612
		mu 0 4 1376 1377 1398 1397
		f 4 2432 2613 -2453 -2613
		mu 0 4 1377 1378 1399 1398
		f 4 2433 2614 -2454 -2614
		mu 0 4 1378 1379 1400 1399
		f 4 2434 2615 -2455 -2615
		mu 0 4 1379 1380 1401 1400
		f 4 2435 2616 -2456 -2616
		mu 0 4 1380 1381 1402 1401
		f 4 2436 2617 -2457 -2617
		mu 0 4 1381 1382 1403 1402
		f 4 2437 2618 -2458 -2618
		mu 0 4 1382 1383 1404 1403
		f 4 2438 2619 -2459 -2619
		mu 0 4 1383 1384 1405 1404
		f 4 2439 2600 -2460 -2620
		mu 0 4 1384 1385 1406 1405
		f 4 2440 2621 -2461 -2621
		mu 0 4 1387 1386 1407 1408
		f 4 2441 2622 -2462 -2622
		mu 0 4 1386 1388 1409 1407
		f 4 2442 2623 -2463 -2623
		mu 0 4 1388 1389 1410 1409
		f 4 2443 2624 -2464 -2624
		mu 0 4 1389 1390 1411 1410
		f 4 2444 2625 -2465 -2625
		mu 0 4 1390 1391 1412 1411
		f 4 2445 2626 -2466 -2626
		mu 0 4 1391 1392 1413 1412
		f 4 2446 2627 -2467 -2627
		mu 0 4 1392 1393 1414 1413
		f 4 2447 2628 -2468 -2628
		mu 0 4 1393 1394 1415 1414
		f 4 2448 2629 -2469 -2629
		mu 0 4 1394 1395 1416 1415
		f 4 2449 2630 -2470 -2630
		mu 0 4 1395 1396 1417 1416
		f 4 2450 2631 -2471 -2631
		mu 0 4 1396 1397 1418 1417
		f 4 2451 2632 -2472 -2632
		mu 0 4 1397 1398 1419 1418
		f 4 2452 2633 -2473 -2633
		mu 0 4 1398 1399 1420 1419
		f 4 2453 2634 -2474 -2634
		mu 0 4 1399 1400 1421 1420
		f 4 2454 2635 -2475 -2635
		mu 0 4 1400 1401 1422 1421
		f 4 2455 2636 -2476 -2636
		mu 0 4 1401 1402 1423 1422
		f 4 2456 2637 -2477 -2637
		mu 0 4 1402 1403 1424 1423
		f 4 2457 2638 -2478 -2638
		mu 0 4 1403 1404 1425 1424
		f 4 2458 2639 -2479 -2639
		mu 0 4 1404 1405 1426 1425
		f 4 2459 2620 -2480 -2640
		mu 0 4 1405 1406 1427 1426
		f 4 2460 2641 -2481 -2641
		mu 0 4 1408 1407 1428 1429
		f 4 2461 2642 -2482 -2642
		mu 0 4 1407 1409 1430 1428
		f 4 2462 2643 -2483 -2643
		mu 0 4 1409 1410 1431 1430
		f 4 2463 2644 -2484 -2644
		mu 0 4 1410 1411 1432 1431
		f 4 2464 2645 -2485 -2645
		mu 0 4 1411 1412 1433 1432
		f 4 2465 2646 -2486 -2646
		mu 0 4 1412 1413 1434 1433
		f 4 2466 2647 -2487 -2647
		mu 0 4 1413 1414 1435 1434
		f 4 2467 2648 -2488 -2648
		mu 0 4 1414 1415 1436 1435
		f 4 2468 2649 -2489 -2649
		mu 0 4 1415 1416 1437 1436
		f 4 2469 2650 -2490 -2650
		mu 0 4 1416 1417 1438 1437
		f 4 2470 2651 -2491 -2651
		mu 0 4 1417 1418 1439 1438
		f 4 2471 2652 -2492 -2652
		mu 0 4 1418 1419 1440 1439
		f 4 2472 2653 -2493 -2653
		mu 0 4 1419 1420 1441 1440
		f 4 2473 2654 -2494 -2654
		mu 0 4 1420 1421 1442 1441
		f 4 2474 2655 -2495 -2655
		mu 0 4 1421 1422 1443 1442
		f 4 2475 2656 -2496 -2656
		mu 0 4 1422 1423 1444 1443
		f 4 2476 2657 -2497 -2657
		mu 0 4 1423 1424 1445 1444
		f 4 2477 2658 -2498 -2658
		mu 0 4 1424 1425 1446 1445
		f 4 2478 2659 -2499 -2659
		mu 0 4 1425 1426 1447 1446
		f 4 2479 2640 -2500 -2660
		mu 0 4 1426 1427 1448 1447
		f 4 2480 2661 -2501 -2661
		mu 0 4 1429 1428 1449 1450
		f 4 2481 2662 -2502 -2662
		mu 0 4 1428 1430 1451 1449
		f 4 2482 2663 -2503 -2663
		mu 0 4 1430 1431 1452 1451
		f 4 2483 2664 -2504 -2664
		mu 0 4 1431 1432 1453 1452
		f 4 2484 2665 -2505 -2665
		mu 0 4 1432 1433 1454 1453
		f 4 2485 2666 -2506 -2666
		mu 0 4 1433 1434 1455 1454
		f 4 2486 2667 -2507 -2667
		mu 0 4 1434 1435 1456 1455
		f 4 2487 2668 -2508 -2668
		mu 0 4 1435 1436 1457 1456
		f 4 2488 2669 -2509 -2669
		mu 0 4 1436 1437 1458 1457
		f 4 2489 2670 -2510 -2670
		mu 0 4 1437 1438 1459 1458
		f 4 2490 2671 -2511 -2671
		mu 0 4 1438 1439 1460 1459
		f 4 2491 2672 -2512 -2672
		mu 0 4 1439 1440 1461 1460
		f 4 2492 2673 -2513 -2673
		mu 0 4 1440 1441 1462 1461
		f 4 2493 2674 -2514 -2674
		mu 0 4 1441 1442 1463 1462
		f 4 2494 2675 -2515 -2675
		mu 0 4 1442 1443 1464 1463
		f 4 2495 2676 -2516 -2676
		mu 0 4 1443 1444 1465 1464
		f 4 2496 2677 -2517 -2677
		mu 0 4 1444 1445 1466 1465
		f 4 2497 2678 -2518 -2678
		mu 0 4 1445 1446 1467 1466
		f 4 2498 2679 -2519 -2679
		mu 0 4 1446 1447 1468 1467
		f 4 2499 2660 -2520 -2680
		mu 0 4 1447 1448 1469 1468
		f 4 2500 2681 -2521 -2681
		mu 0 4 1450 1449 1470 1471
		f 4 2501 2682 -2522 -2682
		mu 0 4 1449 1451 1472 1470
		f 4 2502 2683 -2523 -2683
		mu 0 4 1451 1452 1473 1472
		f 4 2503 2684 -2524 -2684
		mu 0 4 1452 1453 1474 1473
		f 4 2504 2685 -2525 -2685
		mu 0 4 1453 1454 1475 1474
		f 4 2505 2686 -2526 -2686
		mu 0 4 1454 1455 1476 1475
		f 4 2506 2687 -2527 -2687
		mu 0 4 1455 1456 1477 1476
		f 4 2507 2688 -2528 -2688
		mu 0 4 1456 1457 1478 1477
		f 4 2508 2689 -2529 -2689
		mu 0 4 1457 1458 1479 1478
		f 4 2509 2690 -2530 -2690
		mu 0 4 1458 1459 1480 1479
		f 4 2510 2691 -2531 -2691
		mu 0 4 1459 1460 1481 1480
		f 4 2511 2692 -2532 -2692
		mu 0 4 1460 1461 1482 1481
		f 4 2512 2693 -2533 -2693
		mu 0 4 1461 1462 1483 1482
		f 4 2513 2694 -2534 -2694
		mu 0 4 1462 1463 1484 1483
		f 4 2514 2695 -2535 -2695
		mu 0 4 1463 1464 1485 1484
		f 4 2515 2696 -2536 -2696
		mu 0 4 1464 1465 1486 1485
		f 4 2516 2697 -2537 -2697
		mu 0 4 1465 1466 1487 1486
		f 4 2517 2698 -2538 -2698
		mu 0 4 1466 1467 1488 1487
		f 4 2518 2699 -2539 -2699
		mu 0 4 1467 1468 1489 1488
		f 4 2519 2680 -2540 -2700
		mu 0 4 1468 1469 1490 1489
		f 4 2520 2701 -2541 -2701
		mu 0 4 1471 1470 1491 1492
		f 4 2521 2702 -2542 -2702
		mu 0 4 1470 1472 1493 1491
		f 4 2522 2703 -2543 -2703
		mu 0 4 1472 1473 1494 1493
		f 4 2523 2704 -2544 -2704
		mu 0 4 1473 1474 1495 1494
		f 4 2524 2705 -2545 -2705
		mu 0 4 1474 1475 1496 1495
		f 4 2525 2706 -2546 -2706
		mu 0 4 1475 1476 1497 1496
		f 4 2526 2707 -2547 -2707
		mu 0 4 1476 1477 1498 1497
		f 4 2527 2708 -2548 -2708
		mu 0 4 1477 1478 1499 1498
		f 4 2528 2709 -2549 -2709
		mu 0 4 1478 1479 1500 1499
		f 4 2529 2710 -2550 -2710
		mu 0 4 1479 1480 1501 1500
		f 4 2530 2711 -2551 -2711
		mu 0 4 1480 1481 1502 1501
		f 4 2531 2712 -2552 -2712
		mu 0 4 1481 1482 1503 1502
		f 4 2532 2713 -2553 -2713
		mu 0 4 1482 1483 1504 1503
		f 4 2533 2714 -2554 -2714
		mu 0 4 1483 1484 1505 1504
		f 4 2534 2715 -2555 -2715
		mu 0 4 1484 1485 1506 1505
		f 4 2535 2716 -2556 -2716
		mu 0 4 1485 1486 1507 1506
		f 4 2536 2717 -2557 -2717
		mu 0 4 1486 1487 1508 1507
		f 4 2537 2718 -2558 -2718
		mu 0 4 1487 1488 1509 1508
		f 4 2538 2719 -2559 -2719
		mu 0 4 1488 1489 1510 1509
		f 4 2539 2700 -2560 -2720
		mu 0 4 1489 1490 1511 1510
		f 4 2720 2901 -2741 -2901
		mu 0 4 1512 1513 1514 1515
		f 4 2721 2902 -2742 -2902
		mu 0 4 1513 1516 1517 1514
		f 4 2722 2903 -2743 -2903
		mu 0 4 1516 1518 1519 1517
		f 4 2723 2904 -2744 -2904
		mu 0 4 1518 1520 1521 1519
		f 4 2724 2905 -2745 -2905
		mu 0 4 1520 1522 1523 1521
		f 4 2725 2906 -2746 -2906
		mu 0 4 1522 1524 1525 1523
		f 4 2726 2907 -2747 -2907
		mu 0 4 1524 1526 1527 1525
		f 4 2727 2908 -2748 -2908
		mu 0 4 1526 1528 1529 1527
		f 4 2728 2909 -2749 -2909
		mu 0 4 1528 1530 1531 1529
		f 4 2729 2910 -2750 -2910
		mu 0 4 1530 1532 1533 1531
		f 4 2730 2911 -2751 -2911
		mu 0 4 1532 1534 1535 1533
		f 4 2731 2912 -2752 -2912
		mu 0 4 1534 1536 1537 1535
		f 4 2732 2913 -2753 -2913
		mu 0 4 1536 1538 1539 1537
		f 4 2733 2914 -2754 -2914
		mu 0 4 1538 1540 1541 1539
		f 4 2734 2915 -2755 -2915
		mu 0 4 1540 1542 1543 1541
		f 4 2735 2916 -2756 -2916
		mu 0 4 1542 1544 1545 1543
		f 4 2736 2917 -2757 -2917
		mu 0 4 1544 1546 1547 1545
		f 4 2737 2918 -2758 -2918
		mu 0 4 1546 1548 1549 1547
		f 4 2738 2919 -2759 -2919
		mu 0 4 1548 1550 1551 1549
		f 4 2739 2900 -2760 -2920
		mu 0 4 1550 1552 1553 1551
		f 4 2740 2921 -2761 -2921
		mu 0 4 1515 1514 1554 1555
		f 4 2741 2922 -2762 -2922
		mu 0 4 1514 1517 1556 1554
		f 4 2742 2923 -2763 -2923
		mu 0 4 1517 1519 1557 1556
		f 4 2743 2924 -2764 -2924
		mu 0 4 1519 1521 1558 1557
		f 4 2744 2925 -2765 -2925
		mu 0 4 1521 1523 1559 1558
		f 4 2745 2926 -2766 -2926
		mu 0 4 1523 1525 1560 1559
		f 4 2746 2927 -2767 -2927
		mu 0 4 1525 1527 1561 1560
		f 4 2747 2928 -2768 -2928
		mu 0 4 1527 1529 1562 1561
		f 4 2748 2929 -2769 -2929
		mu 0 4 1529 1531 1563 1562
		f 4 2749 2930 -2770 -2930
		mu 0 4 1531 1533 1564 1563
		f 4 2750 2931 -2771 -2931
		mu 0 4 1533 1535 1565 1564
		f 4 2751 2932 -2772 -2932
		mu 0 4 1535 1537 1566 1565
		f 4 2752 2933 -2773 -2933
		mu 0 4 1537 1539 1567 1566
		f 4 2753 2934 -2774 -2934
		mu 0 4 1539 1541 1568 1567
		f 4 2754 2935 -2775 -2935
		mu 0 4 1541 1543 1569 1568
		f 4 2755 2936 -2776 -2936
		mu 0 4 1543 1545 1570 1569
		f 4 2756 2937 -2777 -2937
		mu 0 4 1545 1547 1571 1570
		f 4 2757 2938 -2778 -2938
		mu 0 4 1547 1549 1572 1571
		f 4 2758 2939 -2779 -2939
		mu 0 4 1549 1551 1573 1572
		f 4 2759 2920 -2780 -2940
		mu 0 4 1551 1553 1574 1573
		f 4 2760 2941 -2781 -2941
		mu 0 4 1555 1554 1575 1576
		f 4 2761 2942 -2782 -2942
		mu 0 4 1554 1556 1577 1575
		f 4 2762 2943 -2783 -2943
		mu 0 4 1556 1557 1578 1577
		f 4 2763 2944 -2784 -2944
		mu 0 4 1557 1558 1579 1578
		f 4 2764 2945 -2785 -2945
		mu 0 4 1558 1559 1580 1579
		f 4 2765 2946 -2786 -2946
		mu 0 4 1559 1560 1581 1580
		f 4 2766 2947 -2787 -2947
		mu 0 4 1560 1561 1582 1581
		f 4 2767 2948 -2788 -2948
		mu 0 4 1561 1562 1583 1582
		f 4 2768 2949 -2789 -2949
		mu 0 4 1562 1563 1584 1583
		f 4 2769 2950 -2790 -2950
		mu 0 4 1563 1564 1585 1584
		f 4 2770 2951 -2791 -2951
		mu 0 4 1564 1565 1586 1585
		f 4 2771 2952 -2792 -2952
		mu 0 4 1565 1566 1587 1586
		f 4 2772 2953 -2793 -2953
		mu 0 4 1566 1567 1588 1587
		f 4 2773 2954 -2794 -2954
		mu 0 4 1567 1568 1589 1588
		f 4 2774 2955 -2795 -2955
		mu 0 4 1568 1569 1590 1589
		f 4 2775 2956 -2796 -2956
		mu 0 4 1569 1570 1591 1590
		f 4 2776 2957 -2797 -2957
		mu 0 4 1570 1571 1592 1591
		f 4 2777 2958 -2798 -2958
		mu 0 4 1571 1572 1593 1592
		f 4 2778 2959 -2799 -2959
		mu 0 4 1572 1573 1594 1593
		f 4 2779 2940 -2800 -2960
		mu 0 4 1573 1574 1595 1594
		f 4 2780 2961 -2801 -2961
		mu 0 4 1576 1575 1596 1597
		f 4 2781 2962 -2802 -2962
		mu 0 4 1575 1577 1598 1596
		f 4 2782 2963 -2803 -2963
		mu 0 4 1577 1578 1599 1598
		f 4 2783 2964 -2804 -2964
		mu 0 4 1578 1579 1600 1599
		f 4 2784 2965 -2805 -2965
		mu 0 4 1579 1580 1601 1600
		f 4 2785 2966 -2806 -2966
		mu 0 4 1580 1581 1602 1601
		f 4 2786 2967 -2807 -2967
		mu 0 4 1581 1582 1603 1602
		f 4 2787 2968 -2808 -2968
		mu 0 4 1582 1583 1604 1603
		f 4 2788 2969 -2809 -2969
		mu 0 4 1583 1584 1605 1604
		f 4 2789 2970 -2810 -2970
		mu 0 4 1584 1585 1606 1605
		f 4 2790 2971 -2811 -2971
		mu 0 4 1585 1586 1607 1606
		f 4 2791 2972 -2812 -2972
		mu 0 4 1586 1587 1608 1607
		f 4 2792 2973 -2813 -2973
		mu 0 4 1587 1588 1609 1608
		f 4 2793 2974 -2814 -2974
		mu 0 4 1588 1589 1610 1609
		f 4 2794 2975 -2815 -2975
		mu 0 4 1589 1590 1611 1610
		f 4 2795 2976 -2816 -2976
		mu 0 4 1590 1591 1612 1611
		f 4 2796 2977 -2817 -2977
		mu 0 4 1591 1592 1613 1612
		f 4 2797 2978 -2818 -2978
		mu 0 4 1592 1593 1614 1613
		f 4 2798 2979 -2819 -2979
		mu 0 4 1593 1594 1615 1614
		f 4 2799 2960 -2820 -2980
		mu 0 4 1594 1595 1616 1615
		f 4 2800 2981 -2821 -2981
		mu 0 4 1597 1596 1617 1618
		f 4 2801 2982 -2822 -2982
		mu 0 4 1596 1598 1619 1617
		f 4 2802 2983 -2823 -2983
		mu 0 4 1598 1599 1620 1619
		f 4 2803 2984 -2824 -2984
		mu 0 4 1599 1600 1621 1620
		f 4 2804 2985 -2825 -2985
		mu 0 4 1600 1601 1622 1621
		f 4 2805 2986 -2826 -2986
		mu 0 4 1601 1602 1623 1622
		f 4 2806 2987 -2827 -2987
		mu 0 4 1602 1603 1624 1623
		f 4 2807 2988 -2828 -2988
		mu 0 4 1603 1604 1625 1624
		f 4 2808 2989 -2829 -2989
		mu 0 4 1604 1605 1626 1625
		f 4 2809 2990 -2830 -2990
		mu 0 4 1605 1606 1627 1626
		f 4 2810 2991 -2831 -2991
		mu 0 4 1606 1607 1628 1627
		f 4 2811 2992 -2832 -2992
		mu 0 4 1607 1608 1629 1628
		f 4 2812 2993 -2833 -2993
		mu 0 4 1608 1609 1630 1629
		f 4 2813 2994 -2834 -2994
		mu 0 4 1609 1610 1631 1630
		f 4 2814 2995 -2835 -2995
		mu 0 4 1610 1611 1632 1631
		f 4 2815 2996 -2836 -2996
		mu 0 4 1611 1612 1633 1632
		f 4 2816 2997 -2837 -2997
		mu 0 4 1612 1613 1634 1633
		f 4 2817 2998 -2838 -2998
		mu 0 4 1613 1614 1635 1634
		f 4 2818 2999 -2839 -2999
		mu 0 4 1614 1615 1636 1635
		f 4 2819 2980 -2840 -3000
		mu 0 4 1615 1616 1637 1636
		f 4 2820 3001 -2841 -3001
		mu 0 4 1618 1617 1638 1639
		f 4 2821 3002 -2842 -3002
		mu 0 4 1617 1619 1640 1638
		f 4 2822 3003 -2843 -3003
		mu 0 4 1619 1620 1641 1640
		f 4 2823 3004 -2844 -3004
		mu 0 4 1620 1621 1642 1641
		f 4 2824 3005 -2845 -3005
		mu 0 4 1621 1622 1643 1642
		f 4 2825 3006 -2846 -3006
		mu 0 4 1622 1623 1644 1643
		f 4 2826 3007 -2847 -3007
		mu 0 4 1623 1624 1645 1644
		f 4 2827 3008 -2848 -3008
		mu 0 4 1624 1625 1646 1645
		f 4 2828 3009 -2849 -3009
		mu 0 4 1625 1626 1647 1646
		f 4 2829 3010 -2850 -3010
		mu 0 4 1626 1627 1648 1647
		f 4 2830 3011 -2851 -3011
		mu 0 4 1627 1628 1649 1648
		f 4 2831 3012 -2852 -3012
		mu 0 4 1628 1629 1650 1649
		f 4 2832 3013 -2853 -3013
		mu 0 4 1629 1630 1651 1650
		f 4 2833 3014 -2854 -3014
		mu 0 4 1630 1631 1652 1651
		f 4 2834 3015 -2855 -3015
		mu 0 4 1631 1632 1653 1652
		f 4 2835 3016 -2856 -3016
		mu 0 4 1632 1633 1654 1653
		f 4 2836 3017 -2857 -3017
		mu 0 4 1633 1634 1655 1654
		f 4 2837 3018 -2858 -3018
		mu 0 4 1634 1635 1656 1655
		f 4 2838 3019 -2859 -3019
		mu 0 4 1635 1636 1657 1656
		f 4 2839 3000 -2860 -3020
		mu 0 4 1636 1637 1658 1657
		f 4 2840 3021 -2861 -3021
		mu 0 4 1639 1638 1659 1660
		f 4 2841 3022 -2862 -3022
		mu 0 4 1638 1640 1661 1659
		f 4 2842 3023 -2863 -3023
		mu 0 4 1640 1641 1662 1661
		f 4 2843 3024 -2864 -3024
		mu 0 4 1641 1642 1663 1662
		f 4 2844 3025 -2865 -3025
		mu 0 4 1642 1643 1664 1663
		f 4 2845 3026 -2866 -3026
		mu 0 4 1643 1644 1665 1664
		f 4 2846 3027 -2867 -3027
		mu 0 4 1644 1645 1666 1665
		f 4 2847 3028 -2868 -3028
		mu 0 4 1645 1646 1667 1666
		f 4 2848 3029 -2869 -3029
		mu 0 4 1646 1647 1668 1667
		f 4 2849 3030 -2870 -3030
		mu 0 4 1647 1648 1669 1668
		f 4 2850 3031 -2871 -3031
		mu 0 4 1648 1649 1670 1669
		f 4 2851 3032 -2872 -3032
		mu 0 4 1649 1650 1671 1670
		f 4 2852 3033 -2873 -3033
		mu 0 4 1650 1651 1672 1671
		f 4 2853 3034 -2874 -3034
		mu 0 4 1651 1652 1673 1672
		f 4 2854 3035 -2875 -3035
		mu 0 4 1652 1653 1674 1673
		f 4 2855 3036 -2876 -3036
		mu 0 4 1653 1654 1675 1674
		f 4 2856 3037 -2877 -3037
		mu 0 4 1654 1655 1676 1675
		f 4 2857 3038 -2878 -3038
		mu 0 4 1655 1656 1677 1676
		f 4 2858 3039 -2879 -3039
		mu 0 4 1656 1657 1678 1677
		f 4 2859 3020 -2880 -3040
		mu 0 4 1657 1658 1679 1678
		f 4 2860 3041 -2881 -3041
		mu 0 4 1660 1659 1680 1681
		f 4 2861 3042 -2882 -3042
		mu 0 4 1659 1661 1682 1680
		f 4 2862 3043 -2883 -3043
		mu 0 4 1661 1662 1683 1682
		f 4 2863 3044 -2884 -3044
		mu 0 4 1662 1663 1684 1683
		f 4 2864 3045 -2885 -3045
		mu 0 4 1663 1664 1685 1684
		f 4 2865 3046 -2886 -3046
		mu 0 4 1664 1665 1686 1685
		f 4 2866 3047 -2887 -3047
		mu 0 4 1665 1666 1687 1686
		f 4 2867 3048 -2888 -3048
		mu 0 4 1666 1667 1688 1687
		f 4 2868 3049 -2889 -3049
		mu 0 4 1667 1668 1689 1688
		f 4 2869 3050 -2890 -3050
		mu 0 4 1668 1669 1690 1689
		f 4 2870 3051 -2891 -3051
		mu 0 4 1669 1670 1691 1690
		f 4 2871 3052 -2892 -3052
		mu 0 4 1670 1671 1692 1691
		f 4 2872 3053 -2893 -3053
		mu 0 4 1671 1672 1693 1692
		f 4 2873 3054 -2894 -3054
		mu 0 4 1672 1673 1694 1693
		f 4 2874 3055 -2895 -3055
		mu 0 4 1673 1674 1695 1694
		f 4 2875 3056 -2896 -3056
		mu 0 4 1674 1675 1696 1695
		f 4 2876 3057 -2897 -3057
		mu 0 4 1675 1676 1697 1696
		f 4 2877 3058 -2898 -3058
		mu 0 4 1676 1677 1698 1697
		f 4 2878 3059 -2899 -3059
		mu 0 4 1677 1678 1699 1698
		f 4 2879 3040 -2900 -3060
		mu 0 4 1678 1679 1700 1699
		f 4 3060 3241 -3081 -3241
		mu 0 4 1701 1702 1703 1704
		f 4 3061 3242 -3082 -3242
		mu 0 4 1702 1705 1706 1703
		f 4 3062 3243 -3083 -3243
		mu 0 4 1705 1707 1708 1706
		f 4 3063 3244 -3084 -3244
		mu 0 4 1707 1709 1710 1708
		f 4 3064 3245 -3085 -3245
		mu 0 4 1709 1711 1712 1710
		f 4 3065 3246 -3086 -3246
		mu 0 4 1711 1713 1714 1712
		f 4 3066 3247 -3087 -3247
		mu 0 4 1713 1715 1716 1714
		f 4 3067 3248 -3088 -3248
		mu 0 4 1715 1717 1718 1716
		f 4 3068 3249 -3089 -3249
		mu 0 4 1717 1719 1720 1718
		f 4 3069 3250 -3090 -3250
		mu 0 4 1719 1721 1722 1720
		f 4 3070 3251 -3091 -3251
		mu 0 4 1721 1723 1724 1722
		f 4 3071 3252 -3092 -3252
		mu 0 4 1723 1725 1726 1724
		f 4 3072 3253 -3093 -3253
		mu 0 4 1725 1727 1728 1726
		f 4 3073 3254 -3094 -3254
		mu 0 4 1727 1729 1730 1728
		f 4 3074 3255 -3095 -3255
		mu 0 4 1729 1731 1732 1730
		f 4 3075 3256 -3096 -3256
		mu 0 4 1731 1733 1734 1732
		f 4 3076 3257 -3097 -3257
		mu 0 4 1733 1735 1736 1734
		f 4 3077 3258 -3098 -3258
		mu 0 4 1735 1737 1738 1736
		f 4 3078 3259 -3099 -3259
		mu 0 4 1737 1739 1740 1738
		f 4 3079 3240 -3100 -3260
		mu 0 4 1739 1741 1742 1740
		f 4 3080 3261 -3101 -3261
		mu 0 4 1704 1703 1743 1744
		f 4 3081 3262 -3102 -3262
		mu 0 4 1703 1706 1745 1743
		f 4 3082 3263 -3103 -3263
		mu 0 4 1706 1708 1746 1745
		f 4 3083 3264 -3104 -3264
		mu 0 4 1708 1710 1747 1746
		f 4 3084 3265 -3105 -3265
		mu 0 4 1710 1712 1748 1747
		f 4 3085 3266 -3106 -3266
		mu 0 4 1712 1714 1749 1748
		f 4 3086 3267 -3107 -3267
		mu 0 4 1714 1716 1750 1749
		f 4 3087 3268 -3108 -3268
		mu 0 4 1716 1718 1751 1750
		f 4 3088 3269 -3109 -3269
		mu 0 4 1718 1720 1752 1751
		f 4 3089 3270 -3110 -3270
		mu 0 4 1720 1722 1753 1752
		f 4 3090 3271 -3111 -3271
		mu 0 4 1722 1724 1754 1753
		f 4 3091 3272 -3112 -3272
		mu 0 4 1724 1726 1755 1754
		f 4 3092 3273 -3113 -3273
		mu 0 4 1726 1728 1756 1755
		f 4 3093 3274 -3114 -3274
		mu 0 4 1728 1730 1757 1756
		f 4 3094 3275 -3115 -3275
		mu 0 4 1730 1732 1758 1757
		f 4 3095 3276 -3116 -3276
		mu 0 4 1732 1734 1759 1758
		f 4 3096 3277 -3117 -3277
		mu 0 4 1734 1736 1760 1759
		f 4 3097 3278 -3118 -3278
		mu 0 4 1736 1738 1761 1760
		f 4 3098 3279 -3119 -3279
		mu 0 4 1738 1740 1762 1761
		f 4 3099 3260 -3120 -3280
		mu 0 4 1740 1742 1763 1762
		f 4 3100 3281 -3121 -3281
		mu 0 4 1744 1743 1764 1765
		f 4 3101 3282 -3122 -3282
		mu 0 4 1743 1745 1766 1764
		f 4 3102 3283 -3123 -3283
		mu 0 4 1745 1746 1767 1766
		f 4 3103 3284 -3124 -3284
		mu 0 4 1746 1747 1768 1767
		f 4 3104 3285 -3125 -3285
		mu 0 4 1747 1748 1769 1768
		f 4 3105 3286 -3126 -3286
		mu 0 4 1748 1749 1770 1769
		f 4 3106 3287 -3127 -3287
		mu 0 4 1749 1750 1771 1770
		f 4 3107 3288 -3128 -3288
		mu 0 4 1750 1751 1772 1771
		f 4 3108 3289 -3129 -3289
		mu 0 4 1751 1752 1773 1772
		f 4 3109 3290 -3130 -3290
		mu 0 4 1752 1753 1774 1773
		f 4 3110 3291 -3131 -3291
		mu 0 4 1753 1754 1775 1774
		f 4 3111 3292 -3132 -3292
		mu 0 4 1754 1755 1776 1775
		f 4 3112 3293 -3133 -3293
		mu 0 4 1755 1756 1777 1776
		f 4 3113 3294 -3134 -3294
		mu 0 4 1756 1757 1778 1777
		f 4 3114 3295 -3135 -3295
		mu 0 4 1757 1758 1779 1778
		f 4 3115 3296 -3136 -3296
		mu 0 4 1758 1759 1780 1779
		f 4 3116 3297 -3137 -3297
		mu 0 4 1759 1760 1781 1780
		f 4 3117 3298 -3138 -3298
		mu 0 4 1760 1761 1782 1781
		f 4 3118 3299 -3139 -3299
		mu 0 4 1761 1762 1783 1782
		f 4 3119 3280 -3140 -3300
		mu 0 4 1762 1763 1784 1783;
	setAttr ".fc[1500:1999]"
		f 4 3120 3301 -3141 -3301
		mu 0 4 1765 1764 1785 1786
		f 4 3121 3302 -3142 -3302
		mu 0 4 1764 1766 1787 1785
		f 4 3122 3303 -3143 -3303
		mu 0 4 1766 1767 1788 1787
		f 4 3123 3304 -3144 -3304
		mu 0 4 1767 1768 1789 1788
		f 4 3124 3305 -3145 -3305
		mu 0 4 1768 1769 1790 1789
		f 4 3125 3306 -3146 -3306
		mu 0 4 1769 1770 1791 1790
		f 4 3126 3307 -3147 -3307
		mu 0 4 1770 1771 1792 1791
		f 4 3127 3308 -3148 -3308
		mu 0 4 1771 1772 1793 1792
		f 4 3128 3309 -3149 -3309
		mu 0 4 1772 1773 1794 1793
		f 4 3129 3310 -3150 -3310
		mu 0 4 1773 1774 1795 1794
		f 4 3130 3311 -3151 -3311
		mu 0 4 1774 1775 1796 1795
		f 4 3131 3312 -3152 -3312
		mu 0 4 1775 1776 1797 1796
		f 4 3132 3313 -3153 -3313
		mu 0 4 1776 1777 1798 1797
		f 4 3133 3314 -3154 -3314
		mu 0 4 1777 1778 1799 1798
		f 4 3134 3315 -3155 -3315
		mu 0 4 1778 1779 1800 1799
		f 4 3135 3316 -3156 -3316
		mu 0 4 1779 1780 1801 1800
		f 4 3136 3317 -3157 -3317
		mu 0 4 1780 1781 1802 1801
		f 4 3137 3318 -3158 -3318
		mu 0 4 1781 1782 1803 1802
		f 4 3138 3319 -3159 -3319
		mu 0 4 1782 1783 1804 1803
		f 4 3139 3300 -3160 -3320
		mu 0 4 1783 1784 1805 1804
		f 4 3140 3321 -3161 -3321
		mu 0 4 1786 1785 1806 1807
		f 4 3141 3322 -3162 -3322
		mu 0 4 1785 1787 1808 1806
		f 4 3142 3323 -3163 -3323
		mu 0 4 1787 1788 1809 1808
		f 4 3143 3324 -3164 -3324
		mu 0 4 1788 1789 1810 1809
		f 4 3144 3325 -3165 -3325
		mu 0 4 1789 1790 1811 1810
		f 4 3145 3326 -3166 -3326
		mu 0 4 1790 1791 1812 1811
		f 4 3146 3327 -3167 -3327
		mu 0 4 1791 1792 1813 1812
		f 4 3147 3328 -3168 -3328
		mu 0 4 1792 1793 1814 1813
		f 4 3148 3329 -3169 -3329
		mu 0 4 1793 1794 1815 1814
		f 4 3149 3330 -3170 -3330
		mu 0 4 1794 1795 1816 1815
		f 4 3150 3331 -3171 -3331
		mu 0 4 1795 1796 1817 1816
		f 4 3151 3332 -3172 -3332
		mu 0 4 1796 1797 1818 1817
		f 4 3152 3333 -3173 -3333
		mu 0 4 1797 1798 1819 1818
		f 4 3153 3334 -3174 -3334
		mu 0 4 1798 1799 1820 1819
		f 4 3154 3335 -3175 -3335
		mu 0 4 1799 1800 1821 1820
		f 4 3155 3336 -3176 -3336
		mu 0 4 1800 1801 1822 1821
		f 4 3156 3337 -3177 -3337
		mu 0 4 1801 1802 1823 1822
		f 4 3157 3338 -3178 -3338
		mu 0 4 1802 1803 1824 1823
		f 4 3158 3339 -3179 -3339
		mu 0 4 1803 1804 1825 1824
		f 4 3159 3320 -3180 -3340
		mu 0 4 1804 1805 1826 1825
		f 4 3160 3341 -3181 -3341
		mu 0 4 1807 1806 1827 1828
		f 4 3161 3342 -3182 -3342
		mu 0 4 1806 1808 1829 1827
		f 4 3162 3343 -3183 -3343
		mu 0 4 1808 1809 1830 1829
		f 4 3163 3344 -3184 -3344
		mu 0 4 1809 1810 1831 1830
		f 4 3164 3345 -3185 -3345
		mu 0 4 1810 1811 1832 1831
		f 4 3165 3346 -3186 -3346
		mu 0 4 1811 1812 1833 1832
		f 4 3166 3347 -3187 -3347
		mu 0 4 1812 1813 1834 1833
		f 4 3167 3348 -3188 -3348
		mu 0 4 1813 1814 1835 1834
		f 4 3168 3349 -3189 -3349
		mu 0 4 1814 1815 1836 1835
		f 4 3169 3350 -3190 -3350
		mu 0 4 1815 1816 1837 1836
		f 4 3170 3351 -3191 -3351
		mu 0 4 1816 1817 1838 1837
		f 4 3171 3352 -3192 -3352
		mu 0 4 1817 1818 1839 1838
		f 4 3172 3353 -3193 -3353
		mu 0 4 1818 1819 1840 1839
		f 4 3173 3354 -3194 -3354
		mu 0 4 1819 1820 1841 1840
		f 4 3174 3355 -3195 -3355
		mu 0 4 1820 1821 1842 1841
		f 4 3175 3356 -3196 -3356
		mu 0 4 1821 1822 1843 1842
		f 4 3176 3357 -3197 -3357
		mu 0 4 1822 1823 1844 1843
		f 4 3177 3358 -3198 -3358
		mu 0 4 1823 1824 1845 1844
		f 4 3178 3359 -3199 -3359
		mu 0 4 1824 1825 1846 1845
		f 4 3179 3340 -3200 -3360
		mu 0 4 1825 1826 1847 1846
		f 4 3180 3361 -3201 -3361
		mu 0 4 1828 1827 1848 1849
		f 4 3181 3362 -3202 -3362
		mu 0 4 1827 1829 1850 1848
		f 4 3182 3363 -3203 -3363
		mu 0 4 1829 1830 1851 1850
		f 4 3183 3364 -3204 -3364
		mu 0 4 1830 1831 1852 1851
		f 4 3184 3365 -3205 -3365
		mu 0 4 1831 1832 1853 1852
		f 4 3185 3366 -3206 -3366
		mu 0 4 1832 1833 1854 1853
		f 4 3186 3367 -3207 -3367
		mu 0 4 1833 1834 1855 1854
		f 4 3187 3368 -3208 -3368
		mu 0 4 1834 1835 1856 1855
		f 4 3188 3369 -3209 -3369
		mu 0 4 1835 1836 1857 1856
		f 4 3189 3370 -3210 -3370
		mu 0 4 1836 1837 1858 1857
		f 4 3190 3371 -3211 -3371
		mu 0 4 1837 1838 1859 1858
		f 4 3191 3372 -3212 -3372
		mu 0 4 1838 1839 1860 1859
		f 4 3192 3373 -3213 -3373
		mu 0 4 1839 1840 1861 1860
		f 4 3193 3374 -3214 -3374
		mu 0 4 1840 1841 1862 1861
		f 4 3194 3375 -3215 -3375
		mu 0 4 1841 1842 1863 1862
		f 4 3195 3376 -3216 -3376
		mu 0 4 1842 1843 1864 1863
		f 4 3196 3377 -3217 -3377
		mu 0 4 1843 1844 1865 1864
		f 4 3197 3378 -3218 -3378
		mu 0 4 1844 1845 1866 1865
		f 4 3198 3379 -3219 -3379
		mu 0 4 1845 1846 1867 1866
		f 4 3199 3360 -3220 -3380
		mu 0 4 1846 1847 1868 1867
		f 4 3200 3381 -3221 -3381
		mu 0 4 1849 1848 1869 1870
		f 4 3201 3382 -3222 -3382
		mu 0 4 1848 1850 1871 1869
		f 4 3202 3383 -3223 -3383
		mu 0 4 1850 1851 1872 1871
		f 4 3203 3384 -3224 -3384
		mu 0 4 1851 1852 1873 1872
		f 4 3204 3385 -3225 -3385
		mu 0 4 1852 1853 1874 1873
		f 4 3205 3386 -3226 -3386
		mu 0 4 1853 1854 1875 1874
		f 4 3206 3387 -3227 -3387
		mu 0 4 1854 1855 1876 1875
		f 4 3207 3388 -3228 -3388
		mu 0 4 1855 1856 1877 1876
		f 4 3208 3389 -3229 -3389
		mu 0 4 1856 1857 1878 1877
		f 4 3209 3390 -3230 -3390
		mu 0 4 1857 1858 1879 1878
		f 4 3210 3391 -3231 -3391
		mu 0 4 1858 1859 1880 1879
		f 4 3211 3392 -3232 -3392
		mu 0 4 1859 1860 1881 1880
		f 4 3212 3393 -3233 -3393
		mu 0 4 1860 1861 1882 1881
		f 4 3213 3394 -3234 -3394
		mu 0 4 1861 1862 1883 1882
		f 4 3214 3395 -3235 -3395
		mu 0 4 1862 1863 1884 1883
		f 4 3215 3396 -3236 -3396
		mu 0 4 1863 1864 1885 1884
		f 4 3216 3397 -3237 -3397
		mu 0 4 1864 1865 1886 1885
		f 4 3217 3398 -3238 -3398
		mu 0 4 1865 1866 1887 1886
		f 4 3218 3399 -3239 -3399
		mu 0 4 1866 1867 1888 1887
		f 4 3219 3380 -3240 -3400
		mu 0 4 1867 1868 1889 1888
		f 4 3400 3581 -3421 -3581
		mu 0 4 1890 1891 1892 1893
		f 4 3401 3582 -3422 -3582
		mu 0 4 1891 1894 1895 1892
		f 4 3402 3583 -3423 -3583
		mu 0 4 1894 1896 1897 1895
		f 4 3403 3584 -3424 -3584
		mu 0 4 1896 1898 1899 1897
		f 4 3404 3585 -3425 -3585
		mu 0 4 1898 1900 1901 1899
		f 4 3405 3586 -3426 -3586
		mu 0 4 1900 1902 1903 1901
		f 4 3406 3587 -3427 -3587
		mu 0 4 1902 1904 1905 1903
		f 4 3407 3588 -3428 -3588
		mu 0 4 1904 1906 1907 1905
		f 4 3408 3589 -3429 -3589
		mu 0 4 1906 1908 1909 1907
		f 4 3409 3590 -3430 -3590
		mu 0 4 1908 1910 1911 1909
		f 4 3410 3591 -3431 -3591
		mu 0 4 1910 1912 1913 1911
		f 4 3411 3592 -3432 -3592
		mu 0 4 1912 1914 1915 1913
		f 4 3412 3593 -3433 -3593
		mu 0 4 1914 1916 1917 1915
		f 4 3413 3594 -3434 -3594
		mu 0 4 1916 1918 1919 1917
		f 4 3414 3595 -3435 -3595
		mu 0 4 1918 1920 1921 1919
		f 4 3415 3596 -3436 -3596
		mu 0 4 1920 1922 1923 1921
		f 4 3416 3597 -3437 -3597
		mu 0 4 1922 1924 1925 1923
		f 4 3417 3598 -3438 -3598
		mu 0 4 1924 1926 1927 1925
		f 4 3418 3599 -3439 -3599
		mu 0 4 1926 1928 1929 1927
		f 4 3419 3580 -3440 -3600
		mu 0 4 1928 1930 1931 1929
		f 4 3420 3601 -3441 -3601
		mu 0 4 1893 1892 1932 1933
		f 4 3421 3602 -3442 -3602
		mu 0 4 1892 1895 1934 1932
		f 4 3422 3603 -3443 -3603
		mu 0 4 1895 1897 1935 1934
		f 4 3423 3604 -3444 -3604
		mu 0 4 1897 1899 1936 1935
		f 4 3424 3605 -3445 -3605
		mu 0 4 1899 1901 1937 1936
		f 4 3425 3606 -3446 -3606
		mu 0 4 1901 1903 1938 1937
		f 4 3426 3607 -3447 -3607
		mu 0 4 1903 1905 1939 1938
		f 4 3427 3608 -3448 -3608
		mu 0 4 1905 1907 1940 1939
		f 4 3428 3609 -3449 -3609
		mu 0 4 1907 1909 1941 1940
		f 4 3429 3610 -3450 -3610
		mu 0 4 1909 1911 1942 1941
		f 4 3430 3611 -3451 -3611
		mu 0 4 1911 1913 1943 1942
		f 4 3431 3612 -3452 -3612
		mu 0 4 1913 1915 1944 1943
		f 4 3432 3613 -3453 -3613
		mu 0 4 1915 1917 1945 1944
		f 4 3433 3614 -3454 -3614
		mu 0 4 1917 1919 1946 1945
		f 4 3434 3615 -3455 -3615
		mu 0 4 1919 1921 1947 1946
		f 4 3435 3616 -3456 -3616
		mu 0 4 1921 1923 1948 1947
		f 4 3436 3617 -3457 -3617
		mu 0 4 1923 1925 1949 1948
		f 4 3437 3618 -3458 -3618
		mu 0 4 1925 1927 1950 1949
		f 4 3438 3619 -3459 -3619
		mu 0 4 1927 1929 1951 1950
		f 4 3439 3600 -3460 -3620
		mu 0 4 1929 1931 1952 1951
		f 4 3440 3621 -3461 -3621
		mu 0 4 1933 1932 1953 1954
		f 4 3441 3622 -3462 -3622
		mu 0 4 1932 1934 1955 1953
		f 4 3442 3623 -3463 -3623
		mu 0 4 1934 1935 1956 1955
		f 4 3443 3624 -3464 -3624
		mu 0 4 1935 1936 1957 1956
		f 4 3444 3625 -3465 -3625
		mu 0 4 1936 1937 1958 1957
		f 4 3445 3626 -3466 -3626
		mu 0 4 1937 1938 1959 1958
		f 4 3446 3627 -3467 -3627
		mu 0 4 1938 1939 1960 1959
		f 4 3447 3628 -3468 -3628
		mu 0 4 1939 1940 1961 1960
		f 4 3448 3629 -3469 -3629
		mu 0 4 1940 1941 1962 1961
		f 4 3449 3630 -3470 -3630
		mu 0 4 1941 1942 1963 1962
		f 4 3450 3631 -3471 -3631
		mu 0 4 1942 1943 1964 1963
		f 4 3451 3632 -3472 -3632
		mu 0 4 1943 1944 1965 1964
		f 4 3452 3633 -3473 -3633
		mu 0 4 1944 1945 1966 1965
		f 4 3453 3634 -3474 -3634
		mu 0 4 1945 1946 1967 1966
		f 4 3454 3635 -3475 -3635
		mu 0 4 1946 1947 1968 1967
		f 4 3455 3636 -3476 -3636
		mu 0 4 1947 1948 1969 1968
		f 4 3456 3637 -3477 -3637
		mu 0 4 1948 1949 1970 1969
		f 4 3457 3638 -3478 -3638
		mu 0 4 1949 1950 1971 1970
		f 4 3458 3639 -3479 -3639
		mu 0 4 1950 1951 1972 1971
		f 4 3459 3620 -3480 -3640
		mu 0 4 1951 1952 1973 1972
		f 4 3460 3641 -3481 -3641
		mu 0 4 1954 1953 1974 1975
		f 4 3461 3642 -3482 -3642
		mu 0 4 1953 1955 1976 1974
		f 4 3462 3643 -3483 -3643
		mu 0 4 1955 1956 1977 1976
		f 4 3463 3644 -3484 -3644
		mu 0 4 1956 1957 1978 1977
		f 4 3464 3645 -3485 -3645
		mu 0 4 1957 1958 1979 1978
		f 4 3465 3646 -3486 -3646
		mu 0 4 1958 1959 1980 1979
		f 4 3466 3647 -3487 -3647
		mu 0 4 1959 1960 1981 1980
		f 4 3467 3648 -3488 -3648
		mu 0 4 1960 1961 1982 1981
		f 4 3468 3649 -3489 -3649
		mu 0 4 1961 1962 1983 1982
		f 4 3469 3650 -3490 -3650
		mu 0 4 1962 1963 1984 1983
		f 4 3470 3651 -3491 -3651
		mu 0 4 1963 1964 1985 1984
		f 4 3471 3652 -3492 -3652
		mu 0 4 1964 1965 1986 1985
		f 4 3472 3653 -3493 -3653
		mu 0 4 1965 1966 1987 1986
		f 4 3473 3654 -3494 -3654
		mu 0 4 1966 1967 1988 1987
		f 4 3474 3655 -3495 -3655
		mu 0 4 1967 1968 1989 1988
		f 4 3475 3656 -3496 -3656
		mu 0 4 1968 1969 1990 1989
		f 4 3476 3657 -3497 -3657
		mu 0 4 1969 1970 1991 1990
		f 4 3477 3658 -3498 -3658
		mu 0 4 1970 1971 1992 1991
		f 4 3478 3659 -3499 -3659
		mu 0 4 1971 1972 1993 1992
		f 4 3479 3640 -3500 -3660
		mu 0 4 1972 1973 1994 1993
		f 4 3480 3661 -3501 -3661
		mu 0 4 1975 1974 1995 1996
		f 4 3481 3662 -3502 -3662
		mu 0 4 1974 1976 1997 1995
		f 4 3482 3663 -3503 -3663
		mu 0 4 1976 1977 1998 1997
		f 4 3483 3664 -3504 -3664
		mu 0 4 1977 1978 1999 1998
		f 4 3484 3665 -3505 -3665
		mu 0 4 1978 1979 2000 1999
		f 4 3485 3666 -3506 -3666
		mu 0 4 1979 1980 2001 2000
		f 4 3486 3667 -3507 -3667
		mu 0 4 1980 1981 2002 2001
		f 4 3487 3668 -3508 -3668
		mu 0 4 1981 1982 2003 2002
		f 4 3488 3669 -3509 -3669
		mu 0 4 1982 1983 2004 2003
		f 4 3489 3670 -3510 -3670
		mu 0 4 1983 1984 2005 2004
		f 4 3490 3671 -3511 -3671
		mu 0 4 1984 1985 2006 2005
		f 4 3491 3672 -3512 -3672
		mu 0 4 1985 1986 2007 2006
		f 4 3492 3673 -3513 -3673
		mu 0 4 1986 1987 2008 2007
		f 4 3493 3674 -3514 -3674
		mu 0 4 1987 1988 2009 2008
		f 4 3494 3675 -3515 -3675
		mu 0 4 1988 1989 2010 2009
		f 4 3495 3676 -3516 -3676
		mu 0 4 1989 1990 2011 2010
		f 4 3496 3677 -3517 -3677
		mu 0 4 1990 1991 2012 2011
		f 4 3497 3678 -3518 -3678
		mu 0 4 1991 1992 2013 2012
		f 4 3498 3679 -3519 -3679
		mu 0 4 1992 1993 2014 2013
		f 4 3499 3660 -3520 -3680
		mu 0 4 1993 1994 2015 2014
		f 4 3500 3681 -3521 -3681
		mu 0 4 1996 1995 2016 2017
		f 4 3501 3682 -3522 -3682
		mu 0 4 1995 1997 2018 2016
		f 4 3502 3683 -3523 -3683
		mu 0 4 1997 1998 2019 2018
		f 4 3503 3684 -3524 -3684
		mu 0 4 1998 1999 2020 2019
		f 4 3504 3685 -3525 -3685
		mu 0 4 1999 2000 2021 2020
		f 4 3505 3686 -3526 -3686
		mu 0 4 2000 2001 2022 2021
		f 4 3506 3687 -3527 -3687
		mu 0 4 2001 2002 2023 2022
		f 4 3507 3688 -3528 -3688
		mu 0 4 2002 2003 2024 2023
		f 4 3508 3689 -3529 -3689
		mu 0 4 2003 2004 2025 2024
		f 4 3509 3690 -3530 -3690
		mu 0 4 2004 2005 2026 2025
		f 4 3510 3691 -3531 -3691
		mu 0 4 2005 2006 2027 2026
		f 4 3511 3692 -3532 -3692
		mu 0 4 2006 2007 2028 2027
		f 4 3512 3693 -3533 -3693
		mu 0 4 2007 2008 2029 2028
		f 4 3513 3694 -3534 -3694
		mu 0 4 2008 2009 2030 2029
		f 4 3514 3695 -3535 -3695
		mu 0 4 2009 2010 2031 2030
		f 4 3515 3696 -3536 -3696
		mu 0 4 2010 2011 2032 2031
		f 4 3516 3697 -3537 -3697
		mu 0 4 2011 2012 2033 2032
		f 4 3517 3698 -3538 -3698
		mu 0 4 2012 2013 2034 2033
		f 4 3518 3699 -3539 -3699
		mu 0 4 2013 2014 2035 2034
		f 4 3519 3680 -3540 -3700
		mu 0 4 2014 2015 2036 2035
		f 4 3520 3701 -3541 -3701
		mu 0 4 2017 2016 2037 2038
		f 4 3521 3702 -3542 -3702
		mu 0 4 2016 2018 2039 2037
		f 4 3522 3703 -3543 -3703
		mu 0 4 2018 2019 2040 2039
		f 4 3523 3704 -3544 -3704
		mu 0 4 2019 2020 2041 2040
		f 4 3524 3705 -3545 -3705
		mu 0 4 2020 2021 2042 2041
		f 4 3525 3706 -3546 -3706
		mu 0 4 2021 2022 2043 2042
		f 4 3526 3707 -3547 -3707
		mu 0 4 2022 2023 2044 2043
		f 4 3527 3708 -3548 -3708
		mu 0 4 2023 2024 2045 2044
		f 4 3528 3709 -3549 -3709
		mu 0 4 2024 2025 2046 2045
		f 4 3529 3710 -3550 -3710
		mu 0 4 2025 2026 2047 2046
		f 4 3530 3711 -3551 -3711
		mu 0 4 2026 2027 2048 2047
		f 4 3531 3712 -3552 -3712
		mu 0 4 2027 2028 2049 2048
		f 4 3532 3713 -3553 -3713
		mu 0 4 2028 2029 2050 2049
		f 4 3533 3714 -3554 -3714
		mu 0 4 2029 2030 2051 2050
		f 4 3534 3715 -3555 -3715
		mu 0 4 2030 2031 2052 2051
		f 4 3535 3716 -3556 -3716
		mu 0 4 2031 2032 2053 2052
		f 4 3536 3717 -3557 -3717
		mu 0 4 2032 2033 2054 2053
		f 4 3537 3718 -3558 -3718
		mu 0 4 2033 2034 2055 2054
		f 4 3538 3719 -3559 -3719
		mu 0 4 2034 2035 2056 2055
		f 4 3539 3700 -3560 -3720
		mu 0 4 2035 2036 2057 2056
		f 4 3540 3721 -3561 -3721
		mu 0 4 2038 2037 2058 2059
		f 4 3541 3722 -3562 -3722
		mu 0 4 2037 2039 2060 2058
		f 4 3542 3723 -3563 -3723
		mu 0 4 2039 2040 2061 2060
		f 4 3543 3724 -3564 -3724
		mu 0 4 2040 2041 2062 2061
		f 4 3544 3725 -3565 -3725
		mu 0 4 2041 2042 2063 2062
		f 4 3545 3726 -3566 -3726
		mu 0 4 2042 2043 2064 2063
		f 4 3546 3727 -3567 -3727
		mu 0 4 2043 2044 2065 2064
		f 4 3547 3728 -3568 -3728
		mu 0 4 2044 2045 2066 2065
		f 4 3548 3729 -3569 -3729
		mu 0 4 2045 2046 2067 2066
		f 4 3549 3730 -3570 -3730
		mu 0 4 2046 2047 2068 2067
		f 4 3550 3731 -3571 -3731
		mu 0 4 2047 2048 2069 2068
		f 4 3551 3732 -3572 -3732
		mu 0 4 2048 2049 2070 2069
		f 4 3552 3733 -3573 -3733
		mu 0 4 2049 2050 2071 2070
		f 4 3553 3734 -3574 -3734
		mu 0 4 2050 2051 2072 2071
		f 4 3554 3735 -3575 -3735
		mu 0 4 2051 2052 2073 2072
		f 4 3555 3736 -3576 -3736
		mu 0 4 2052 2053 2074 2073
		f 4 3556 3737 -3577 -3737
		mu 0 4 2053 2054 2075 2074
		f 4 3557 3738 -3578 -3738
		mu 0 4 2054 2055 2076 2075
		f 4 3558 3739 -3579 -3739
		mu 0 4 2055 2056 2077 2076
		f 4 3559 3720 -3580 -3740
		mu 0 4 2056 2057 2078 2077
		f 4 3740 3921 -3761 -3921
		mu 0 4 2079 2080 2081 2082
		f 4 3741 3922 -3762 -3922
		mu 0 4 2080 2083 2084 2081
		f 4 3742 3923 -3763 -3923
		mu 0 4 2083 2085 2086 2084
		f 4 3743 3924 -3764 -3924
		mu 0 4 2085 2087 2088 2086
		f 4 3744 3925 -3765 -3925
		mu 0 4 2087 2089 2090 2088
		f 4 3745 3926 -3766 -3926
		mu 0 4 2089 2091 2092 2090
		f 4 3746 3927 -3767 -3927
		mu 0 4 2091 2093 2094 2092
		f 4 3747 3928 -3768 -3928
		mu 0 4 2093 2095 2096 2094
		f 4 3748 3929 -3769 -3929
		mu 0 4 2095 2097 2098 2096
		f 4 3749 3930 -3770 -3930
		mu 0 4 2097 2099 2100 2098
		f 4 3750 3931 -3771 -3931
		mu 0 4 2099 2101 2102 2100
		f 4 3751 3932 -3772 -3932
		mu 0 4 2101 2103 2104 2102
		f 4 3752 3933 -3773 -3933
		mu 0 4 2103 2105 2106 2104
		f 4 3753 3934 -3774 -3934
		mu 0 4 2105 2107 2108 2106
		f 4 3754 3935 -3775 -3935
		mu 0 4 2107 2109 2110 2108
		f 4 3755 3936 -3776 -3936
		mu 0 4 2109 2111 2112 2110
		f 4 3756 3937 -3777 -3937
		mu 0 4 2111 2113 2114 2112
		f 4 3757 3938 -3778 -3938
		mu 0 4 2113 2115 2116 2114
		f 4 3758 3939 -3779 -3939
		mu 0 4 2115 2117 2118 2116
		f 4 3759 3920 -3780 -3940
		mu 0 4 2117 2119 2120 2118
		f 4 3760 3941 -3781 -3941
		mu 0 4 2082 2081 2121 2122
		f 4 3761 3942 -3782 -3942
		mu 0 4 2081 2084 2123 2121
		f 4 3762 3943 -3783 -3943
		mu 0 4 2084 2086 2124 2123
		f 4 3763 3944 -3784 -3944
		mu 0 4 2086 2088 2125 2124
		f 4 3764 3945 -3785 -3945
		mu 0 4 2088 2090 2126 2125
		f 4 3765 3946 -3786 -3946
		mu 0 4 2090 2092 2127 2126
		f 4 3766 3947 -3787 -3947
		mu 0 4 2092 2094 2128 2127
		f 4 3767 3948 -3788 -3948
		mu 0 4 2094 2096 2129 2128
		f 4 3768 3949 -3789 -3949
		mu 0 4 2096 2098 2130 2129
		f 4 3769 3950 -3790 -3950
		mu 0 4 2098 2100 2131 2130
		f 4 3770 3951 -3791 -3951
		mu 0 4 2100 2102 2132 2131
		f 4 3771 3952 -3792 -3952
		mu 0 4 2102 2104 2133 2132
		f 4 3772 3953 -3793 -3953
		mu 0 4 2104 2106 2134 2133
		f 4 3773 3954 -3794 -3954
		mu 0 4 2106 2108 2135 2134
		f 4 3774 3955 -3795 -3955
		mu 0 4 2108 2110 2136 2135
		f 4 3775 3956 -3796 -3956
		mu 0 4 2110 2112 2137 2136
		f 4 3776 3957 -3797 -3957
		mu 0 4 2112 2114 2138 2137
		f 4 3777 3958 -3798 -3958
		mu 0 4 2114 2116 2139 2138
		f 4 3778 3959 -3799 -3959
		mu 0 4 2116 2118 2140 2139
		f 4 3779 3940 -3800 -3960
		mu 0 4 2118 2120 2141 2140
		f 4 3780 3961 -3801 -3961
		mu 0 4 2122 2121 2142 2143
		f 4 3781 3962 -3802 -3962
		mu 0 4 2121 2123 2144 2142
		f 4 3782 3963 -3803 -3963
		mu 0 4 2123 2124 2145 2144
		f 4 3783 3964 -3804 -3964
		mu 0 4 2124 2125 2146 2145
		f 4 3784 3965 -3805 -3965
		mu 0 4 2125 2126 2147 2146
		f 4 3785 3966 -3806 -3966
		mu 0 4 2126 2127 2148 2147
		f 4 3786 3967 -3807 -3967
		mu 0 4 2127 2128 2149 2148
		f 4 3787 3968 -3808 -3968
		mu 0 4 2128 2129 2150 2149
		f 4 3788 3969 -3809 -3969
		mu 0 4 2129 2130 2151 2150
		f 4 3789 3970 -3810 -3970
		mu 0 4 2130 2131 2152 2151
		f 4 3790 3971 -3811 -3971
		mu 0 4 2131 2132 2153 2152
		f 4 3791 3972 -3812 -3972
		mu 0 4 2132 2133 2154 2153
		f 4 3792 3973 -3813 -3973
		mu 0 4 2133 2134 2155 2154
		f 4 3793 3974 -3814 -3974
		mu 0 4 2134 2135 2156 2155
		f 4 3794 3975 -3815 -3975
		mu 0 4 2135 2136 2157 2156
		f 4 3795 3976 -3816 -3976
		mu 0 4 2136 2137 2158 2157
		f 4 3796 3977 -3817 -3977
		mu 0 4 2137 2138 2159 2158
		f 4 3797 3978 -3818 -3978
		mu 0 4 2138 2139 2160 2159
		f 4 3798 3979 -3819 -3979
		mu 0 4 2139 2140 2161 2160
		f 4 3799 3960 -3820 -3980
		mu 0 4 2140 2141 2162 2161
		f 4 3800 3981 -3821 -3981
		mu 0 4 2143 2142 2163 2164
		f 4 3801 3982 -3822 -3982
		mu 0 4 2142 2144 2165 2163
		f 4 3802 3983 -3823 -3983
		mu 0 4 2144 2145 2166 2165
		f 4 3803 3984 -3824 -3984
		mu 0 4 2145 2146 2167 2166
		f 4 3804 3985 -3825 -3985
		mu 0 4 2146 2147 2168 2167
		f 4 3805 3986 -3826 -3986
		mu 0 4 2147 2148 2169 2168
		f 4 3806 3987 -3827 -3987
		mu 0 4 2148 2149 2170 2169
		f 4 3807 3988 -3828 -3988
		mu 0 4 2149 2150 2171 2170
		f 4 3808 3989 -3829 -3989
		mu 0 4 2150 2151 2172 2171
		f 4 3809 3990 -3830 -3990
		mu 0 4 2151 2152 2173 2172
		f 4 3810 3991 -3831 -3991
		mu 0 4 2152 2153 2174 2173
		f 4 3811 3992 -3832 -3992
		mu 0 4 2153 2154 2175 2174
		f 4 3812 3993 -3833 -3993
		mu 0 4 2154 2155 2176 2175
		f 4 3813 3994 -3834 -3994
		mu 0 4 2155 2156 2177 2176
		f 4 3814 3995 -3835 -3995
		mu 0 4 2156 2157 2178 2177
		f 4 3815 3996 -3836 -3996
		mu 0 4 2157 2158 2179 2178
		f 4 3816 3997 -3837 -3997
		mu 0 4 2158 2159 2180 2179
		f 4 3817 3998 -3838 -3998
		mu 0 4 2159 2160 2181 2180
		f 4 3818 3999 -3839 -3999
		mu 0 4 2160 2161 2182 2181
		f 4 3819 3980 -3840 -4000
		mu 0 4 2161 2162 2183 2182
		f 4 3820 4001 -3841 -4001
		mu 0 4 2164 2163 2184 2185
		f 4 3821 4002 -3842 -4002
		mu 0 4 2163 2165 2186 2184
		f 4 3822 4003 -3843 -4003
		mu 0 4 2165 2166 2187 2186
		f 4 3823 4004 -3844 -4004
		mu 0 4 2166 2167 2188 2187
		f 4 3824 4005 -3845 -4005
		mu 0 4 2167 2168 2189 2188
		f 4 3825 4006 -3846 -4006
		mu 0 4 2168 2169 2190 2189
		f 4 3826 4007 -3847 -4007
		mu 0 4 2169 2170 2191 2190
		f 4 3827 4008 -3848 -4008
		mu 0 4 2170 2171 2192 2191
		f 4 3828 4009 -3849 -4009
		mu 0 4 2171 2172 2193 2192
		f 4 3829 4010 -3850 -4010
		mu 0 4 2172 2173 2194 2193
		f 4 3830 4011 -3851 -4011
		mu 0 4 2173 2174 2195 2194
		f 4 3831 4012 -3852 -4012
		mu 0 4 2174 2175 2196 2195
		f 4 3832 4013 -3853 -4013
		mu 0 4 2175 2176 2197 2196
		f 4 3833 4014 -3854 -4014
		mu 0 4 2176 2177 2198 2197
		f 4 3834 4015 -3855 -4015
		mu 0 4 2177 2178 2199 2198
		f 4 3835 4016 -3856 -4016
		mu 0 4 2178 2179 2200 2199
		f 4 3836 4017 -3857 -4017
		mu 0 4 2179 2180 2201 2200
		f 4 3837 4018 -3858 -4018
		mu 0 4 2180 2181 2202 2201
		f 4 3838 4019 -3859 -4019
		mu 0 4 2181 2182 2203 2202
		f 4 3839 4000 -3860 -4020
		mu 0 4 2182 2183 2204 2203
		f 4 3840 4021 -3861 -4021
		mu 0 4 2185 2184 2205 2206
		f 4 3841 4022 -3862 -4022
		mu 0 4 2184 2186 2207 2205
		f 4 3842 4023 -3863 -4023
		mu 0 4 2186 2187 2208 2207
		f 4 3843 4024 -3864 -4024
		mu 0 4 2187 2188 2209 2208
		f 4 3844 4025 -3865 -4025
		mu 0 4 2188 2189 2210 2209
		f 4 3845 4026 -3866 -4026
		mu 0 4 2189 2190 2211 2210
		f 4 3846 4027 -3867 -4027
		mu 0 4 2190 2191 2212 2211
		f 4 3847 4028 -3868 -4028
		mu 0 4 2191 2192 2213 2212
		f 4 3848 4029 -3869 -4029
		mu 0 4 2192 2193 2214 2213
		f 4 3849 4030 -3870 -4030
		mu 0 4 2193 2194 2215 2214
		f 4 3850 4031 -3871 -4031
		mu 0 4 2194 2195 2216 2215
		f 4 3851 4032 -3872 -4032
		mu 0 4 2195 2196 2217 2216
		f 4 3852 4033 -3873 -4033
		mu 0 4 2196 2197 2218 2217
		f 4 3853 4034 -3874 -4034
		mu 0 4 2197 2198 2219 2218
		f 4 3854 4035 -3875 -4035
		mu 0 4 2198 2199 2220 2219
		f 4 3855 4036 -3876 -4036
		mu 0 4 2199 2200 2221 2220
		f 4 3856 4037 -3877 -4037
		mu 0 4 2200 2201 2222 2221
		f 4 3857 4038 -3878 -4038
		mu 0 4 2201 2202 2223 2222
		f 4 3858 4039 -3879 -4039
		mu 0 4 2202 2203 2224 2223
		f 4 3859 4020 -3880 -4040
		mu 0 4 2203 2204 2225 2224
		f 4 3860 4041 -3881 -4041
		mu 0 4 2206 2205 2226 2227
		f 4 3861 4042 -3882 -4042
		mu 0 4 2205 2207 2228 2226
		f 4 3862 4043 -3883 -4043
		mu 0 4 2207 2208 2229 2228
		f 4 3863 4044 -3884 -4044
		mu 0 4 2208 2209 2230 2229
		f 4 3864 4045 -3885 -4045
		mu 0 4 2209 2210 2231 2230
		f 4 3865 4046 -3886 -4046
		mu 0 4 2210 2211 2232 2231
		f 4 3866 4047 -3887 -4047
		mu 0 4 2211 2212 2233 2232
		f 4 3867 4048 -3888 -4048
		mu 0 4 2212 2213 2234 2233
		f 4 3868 4049 -3889 -4049
		mu 0 4 2213 2214 2235 2234
		f 4 3869 4050 -3890 -4050
		mu 0 4 2214 2215 2236 2235
		f 4 3870 4051 -3891 -4051
		mu 0 4 2215 2216 2237 2236
		f 4 3871 4052 -3892 -4052
		mu 0 4 2216 2217 2238 2237
		f 4 3872 4053 -3893 -4053
		mu 0 4 2217 2218 2239 2238
		f 4 3873 4054 -3894 -4054
		mu 0 4 2218 2219 2240 2239
		f 4 3874 4055 -3895 -4055
		mu 0 4 2219 2220 2241 2240
		f 4 3875 4056 -3896 -4056
		mu 0 4 2220 2221 2242 2241
		f 4 3876 4057 -3897 -4057
		mu 0 4 2221 2222 2243 2242
		f 4 3877 4058 -3898 -4058
		mu 0 4 2222 2223 2244 2243
		f 4 3878 4059 -3899 -4059
		mu 0 4 2223 2224 2245 2244
		f 4 3879 4040 -3900 -4060
		mu 0 4 2224 2225 2246 2245
		f 4 3880 4061 -3901 -4061
		mu 0 4 2227 2226 2247 2248
		f 4 3881 4062 -3902 -4062
		mu 0 4 2226 2228 2249 2247
		f 4 3882 4063 -3903 -4063
		mu 0 4 2228 2229 2250 2249
		f 4 3883 4064 -3904 -4064
		mu 0 4 2229 2230 2251 2250
		f 4 3884 4065 -3905 -4065
		mu 0 4 2230 2231 2252 2251
		f 4 3885 4066 -3906 -4066
		mu 0 4 2231 2232 2253 2252
		f 4 3886 4067 -3907 -4067
		mu 0 4 2232 2233 2254 2253
		f 4 3887 4068 -3908 -4068
		mu 0 4 2233 2234 2255 2254
		f 4 3888 4069 -3909 -4069
		mu 0 4 2234 2235 2256 2255
		f 4 3889 4070 -3910 -4070
		mu 0 4 2235 2236 2257 2256
		f 4 3890 4071 -3911 -4071
		mu 0 4 2236 2237 2258 2257
		f 4 3891 4072 -3912 -4072
		mu 0 4 2237 2238 2259 2258
		f 4 3892 4073 -3913 -4073
		mu 0 4 2238 2239 2260 2259
		f 4 3893 4074 -3914 -4074
		mu 0 4 2239 2240 2261 2260
		f 4 3894 4075 -3915 -4075
		mu 0 4 2240 2241 2262 2261
		f 4 3895 4076 -3916 -4076
		mu 0 4 2241 2242 2263 2262
		f 4 3896 4077 -3917 -4077
		mu 0 4 2242 2243 2264 2263
		f 4 3897 4078 -3918 -4078
		mu 0 4 2243 2244 2265 2264
		f 4 3898 4079 -3919 -4079
		mu 0 4 2244 2245 2266 2265
		f 4 3899 4060 -3920 -4080
		mu 0 4 2245 2246 2267 2266
		f 4 4080 4261 -4101 -4261
		mu 0 4 2268 2269 2270 2271
		f 4 4081 4262 -4102 -4262
		mu 0 4 2269 2272 2273 2270
		f 4 4082 4263 -4103 -4263
		mu 0 4 2272 2274 2275 2273
		f 4 4083 4264 -4104 -4264
		mu 0 4 2274 2276 2277 2275
		f 4 4084 4265 -4105 -4265
		mu 0 4 2276 2278 2279 2277
		f 4 4085 4266 -4106 -4266
		mu 0 4 2278 2280 2281 2279
		f 4 4086 4267 -4107 -4267
		mu 0 4 2280 2282 2283 2281
		f 4 4087 4268 -4108 -4268
		mu 0 4 2282 2284 2285 2283
		f 4 4088 4269 -4109 -4269
		mu 0 4 2284 2286 2287 2285
		f 4 4089 4270 -4110 -4270
		mu 0 4 2286 2288 2289 2287
		f 4 4090 4271 -4111 -4271
		mu 0 4 2288 2290 2291 2289
		f 4 4091 4272 -4112 -4272
		mu 0 4 2290 2292 2293 2291
		f 4 4092 4273 -4113 -4273
		mu 0 4 2292 2294 2295 2293
		f 4 4093 4274 -4114 -4274
		mu 0 4 2294 2296 2297 2295
		f 4 4094 4275 -4115 -4275
		mu 0 4 2296 2298 2299 2297
		f 4 4095 4276 -4116 -4276
		mu 0 4 2298 2300 2301 2299
		f 4 4096 4277 -4117 -4277
		mu 0 4 2300 2302 2303 2301
		f 4 4097 4278 -4118 -4278
		mu 0 4 2302 2304 2305 2303
		f 4 4098 4279 -4119 -4279
		mu 0 4 2304 2306 2307 2305
		f 4 4099 4260 -4120 -4280
		mu 0 4 2306 2308 2309 2307
		f 4 4100 4281 -4121 -4281
		mu 0 4 2271 2270 2310 2311
		f 4 4101 4282 -4122 -4282
		mu 0 4 2270 2273 2312 2310
		f 4 4102 4283 -4123 -4283
		mu 0 4 2273 2275 2313 2312
		f 4 4103 4284 -4124 -4284
		mu 0 4 2275 2277 2314 2313
		f 4 4104 4285 -4125 -4285
		mu 0 4 2277 2279 2315 2314
		f 4 4105 4286 -4126 -4286
		mu 0 4 2279 2281 2316 2315
		f 4 4106 4287 -4127 -4287
		mu 0 4 2281 2283 2317 2316
		f 4 4107 4288 -4128 -4288
		mu 0 4 2283 2285 2318 2317
		f 4 4108 4289 -4129 -4289
		mu 0 4 2285 2287 2319 2318
		f 4 4109 4290 -4130 -4290
		mu 0 4 2287 2289 2320 2319
		f 4 4110 4291 -4131 -4291
		mu 0 4 2289 2291 2321 2320
		f 4 4111 4292 -4132 -4292
		mu 0 4 2291 2293 2322 2321
		f 4 4112 4293 -4133 -4293
		mu 0 4 2293 2295 2323 2322
		f 4 4113 4294 -4134 -4294
		mu 0 4 2295 2297 2324 2323
		f 4 4114 4295 -4135 -4295
		mu 0 4 2297 2299 2325 2324
		f 4 4115 4296 -4136 -4296
		mu 0 4 2299 2301 2326 2325
		f 4 4116 4297 -4137 -4297
		mu 0 4 2301 2303 2327 2326
		f 4 4117 4298 -4138 -4298
		mu 0 4 2303 2305 2328 2327
		f 4 4118 4299 -4139 -4299
		mu 0 4 2305 2307 2329 2328
		f 4 4119 4280 -4140 -4300
		mu 0 4 2307 2309 2330 2329
		f 4 4120 4301 -4141 -4301
		mu 0 4 2311 2310 2331 2332
		f 4 4121 4302 -4142 -4302
		mu 0 4 2310 2312 2333 2331
		f 4 4122 4303 -4143 -4303
		mu 0 4 2312 2313 2334 2333
		f 4 4123 4304 -4144 -4304
		mu 0 4 2313 2314 2335 2334
		f 4 4124 4305 -4145 -4305
		mu 0 4 2314 2315 2336 2335
		f 4 4125 4306 -4146 -4306
		mu 0 4 2315 2316 2337 2336
		f 4 4126 4307 -4147 -4307
		mu 0 4 2316 2317 2338 2337
		f 4 4127 4308 -4148 -4308
		mu 0 4 2317 2318 2339 2338
		f 4 4128 4309 -4149 -4309
		mu 0 4 2318 2319 2340 2339
		f 4 4129 4310 -4150 -4310
		mu 0 4 2319 2320 2341 2340
		f 4 4130 4311 -4151 -4311
		mu 0 4 2320 2321 2342 2341
		f 4 4131 4312 -4152 -4312
		mu 0 4 2321 2322 2343 2342
		f 4 4132 4313 -4153 -4313
		mu 0 4 2322 2323 2344 2343
		f 4 4133 4314 -4154 -4314
		mu 0 4 2323 2324 2345 2344
		f 4 4134 4315 -4155 -4315
		mu 0 4 2324 2325 2346 2345
		f 4 4135 4316 -4156 -4316
		mu 0 4 2325 2326 2347 2346
		f 4 4136 4317 -4157 -4317
		mu 0 4 2326 2327 2348 2347
		f 4 4137 4318 -4158 -4318
		mu 0 4 2327 2328 2349 2348
		f 4 4138 4319 -4159 -4319
		mu 0 4 2328 2329 2350 2349
		f 4 4139 4300 -4160 -4320
		mu 0 4 2329 2330 2351 2350
		f 4 4140 4321 -4161 -4321
		mu 0 4 2332 2331 2352 2353
		f 4 4141 4322 -4162 -4322
		mu 0 4 2331 2333 2354 2352
		f 4 4142 4323 -4163 -4323
		mu 0 4 2333 2334 2355 2354
		f 4 4143 4324 -4164 -4324
		mu 0 4 2334 2335 2356 2355
		f 4 4144 4325 -4165 -4325
		mu 0 4 2335 2336 2357 2356
		f 4 4145 4326 -4166 -4326
		mu 0 4 2336 2337 2358 2357
		f 4 4146 4327 -4167 -4327
		mu 0 4 2337 2338 2359 2358
		f 4 4147 4328 -4168 -4328
		mu 0 4 2338 2339 2360 2359
		f 4 4148 4329 -4169 -4329
		mu 0 4 2339 2340 2361 2360
		f 4 4149 4330 -4170 -4330
		mu 0 4 2340 2341 2362 2361
		f 4 4150 4331 -4171 -4331
		mu 0 4 2341 2342 2363 2362
		f 4 4151 4332 -4172 -4332
		mu 0 4 2342 2343 2364 2363
		f 4 4152 4333 -4173 -4333
		mu 0 4 2343 2344 2365 2364
		f 4 4153 4334 -4174 -4334
		mu 0 4 2344 2345 2366 2365
		f 4 4154 4335 -4175 -4335
		mu 0 4 2345 2346 2367 2366
		f 4 4155 4336 -4176 -4336
		mu 0 4 2346 2347 2368 2367
		f 4 4156 4337 -4177 -4337
		mu 0 4 2347 2348 2369 2368
		f 4 4157 4338 -4178 -4338
		mu 0 4 2348 2349 2370 2369
		f 4 4158 4339 -4179 -4339
		mu 0 4 2349 2350 2371 2370
		f 4 4159 4320 -4180 -4340
		mu 0 4 2350 2351 2372 2371;
	setAttr ".fc[2000:2499]"
		f 4 4160 4341 -4181 -4341
		mu 0 4 2353 2352 2373 2374
		f 4 4161 4342 -4182 -4342
		mu 0 4 2352 2354 2375 2373
		f 4 4162 4343 -4183 -4343
		mu 0 4 2354 2355 2376 2375
		f 4 4163 4344 -4184 -4344
		mu 0 4 2355 2356 2377 2376
		f 4 4164 4345 -4185 -4345
		mu 0 4 2356 2357 2378 2377
		f 4 4165 4346 -4186 -4346
		mu 0 4 2357 2358 2379 2378
		f 4 4166 4347 -4187 -4347
		mu 0 4 2358 2359 2380 2379
		f 4 4167 4348 -4188 -4348
		mu 0 4 2359 2360 2381 2380
		f 4 4168 4349 -4189 -4349
		mu 0 4 2360 2361 2382 2381
		f 4 4169 4350 -4190 -4350
		mu 0 4 2361 2362 2383 2382
		f 4 4170 4351 -4191 -4351
		mu 0 4 2362 2363 2384 2383
		f 4 4171 4352 -4192 -4352
		mu 0 4 2363 2364 2385 2384
		f 4 4172 4353 -4193 -4353
		mu 0 4 2364 2365 2386 2385
		f 4 4173 4354 -4194 -4354
		mu 0 4 2365 2366 2387 2386
		f 4 4174 4355 -4195 -4355
		mu 0 4 2366 2367 2388 2387
		f 4 4175 4356 -4196 -4356
		mu 0 4 2367 2368 2389 2388
		f 4 4176 4357 -4197 -4357
		mu 0 4 2368 2369 2390 2389
		f 4 4177 4358 -4198 -4358
		mu 0 4 2369 2370 2391 2390
		f 4 4178 4359 -4199 -4359
		mu 0 4 2370 2371 2392 2391
		f 4 4179 4340 -4200 -4360
		mu 0 4 2371 2372 2393 2392
		f 4 4180 4361 -4201 -4361
		mu 0 4 2374 2373 2394 2395
		f 4 4181 4362 -4202 -4362
		mu 0 4 2373 2375 2396 2394
		f 4 4182 4363 -4203 -4363
		mu 0 4 2375 2376 2397 2396
		f 4 4183 4364 -4204 -4364
		mu 0 4 2376 2377 2398 2397
		f 4 4184 4365 -4205 -4365
		mu 0 4 2377 2378 2399 2398
		f 4 4185 4366 -4206 -4366
		mu 0 4 2378 2379 2400 2399
		f 4 4186 4367 -4207 -4367
		mu 0 4 2379 2380 2401 2400
		f 4 4187 4368 -4208 -4368
		mu 0 4 2380 2381 2402 2401
		f 4 4188 4369 -4209 -4369
		mu 0 4 2381 2382 2403 2402
		f 4 4189 4370 -4210 -4370
		mu 0 4 2382 2383 2404 2403
		f 4 4190 4371 -4211 -4371
		mu 0 4 2383 2384 2405 2404
		f 4 4191 4372 -4212 -4372
		mu 0 4 2384 2385 2406 2405
		f 4 4192 4373 -4213 -4373
		mu 0 4 2385 2386 2407 2406
		f 4 4193 4374 -4214 -4374
		mu 0 4 2386 2387 2408 2407
		f 4 4194 4375 -4215 -4375
		mu 0 4 2387 2388 2409 2408
		f 4 4195 4376 -4216 -4376
		mu 0 4 2388 2389 2410 2409
		f 4 4196 4377 -4217 -4377
		mu 0 4 2389 2390 2411 2410
		f 4 4197 4378 -4218 -4378
		mu 0 4 2390 2391 2412 2411
		f 4 4198 4379 -4219 -4379
		mu 0 4 2391 2392 2413 2412
		f 4 4199 4360 -4220 -4380
		mu 0 4 2392 2393 2414 2413
		f 4 4200 4381 -4221 -4381
		mu 0 4 2395 2394 2415 2416
		f 4 4201 4382 -4222 -4382
		mu 0 4 2394 2396 2417 2415
		f 4 4202 4383 -4223 -4383
		mu 0 4 2396 2397 2418 2417
		f 4 4203 4384 -4224 -4384
		mu 0 4 2397 2398 2419 2418
		f 4 4204 4385 -4225 -4385
		mu 0 4 2398 2399 2420 2419
		f 4 4205 4386 -4226 -4386
		mu 0 4 2399 2400 2421 2420
		f 4 4206 4387 -4227 -4387
		mu 0 4 2400 2401 2422 2421
		f 4 4207 4388 -4228 -4388
		mu 0 4 2401 2402 2423 2422
		f 4 4208 4389 -4229 -4389
		mu 0 4 2402 2403 2424 2423
		f 4 4209 4390 -4230 -4390
		mu 0 4 2403 2404 2425 2424
		f 4 4210 4391 -4231 -4391
		mu 0 4 2404 2405 2426 2425
		f 4 4211 4392 -4232 -4392
		mu 0 4 2405 2406 2427 2426
		f 4 4212 4393 -4233 -4393
		mu 0 4 2406 2407 2428 2427
		f 4 4213 4394 -4234 -4394
		mu 0 4 2407 2408 2429 2428
		f 4 4214 4395 -4235 -4395
		mu 0 4 2408 2409 2430 2429
		f 4 4215 4396 -4236 -4396
		mu 0 4 2409 2410 2431 2430
		f 4 4216 4397 -4237 -4397
		mu 0 4 2410 2411 2432 2431
		f 4 4217 4398 -4238 -4398
		mu 0 4 2411 2412 2433 2432
		f 4 4218 4399 -4239 -4399
		mu 0 4 2412 2413 2434 2433
		f 4 4219 4380 -4240 -4400
		mu 0 4 2413 2414 2435 2434
		f 4 4220 4401 -4241 -4401
		mu 0 4 2416 2415 2436 2437
		f 4 4221 4402 -4242 -4402
		mu 0 4 2415 2417 2438 2436
		f 4 4222 4403 -4243 -4403
		mu 0 4 2417 2418 2439 2438
		f 4 4223 4404 -4244 -4404
		mu 0 4 2418 2419 2440 2439
		f 4 4224 4405 -4245 -4405
		mu 0 4 2419 2420 2441 2440
		f 4 4225 4406 -4246 -4406
		mu 0 4 2420 2421 2442 2441
		f 4 4226 4407 -4247 -4407
		mu 0 4 2421 2422 2443 2442
		f 4 4227 4408 -4248 -4408
		mu 0 4 2422 2423 2444 2443
		f 4 4228 4409 -4249 -4409
		mu 0 4 2423 2424 2445 2444
		f 4 4229 4410 -4250 -4410
		mu 0 4 2424 2425 2446 2445
		f 4 4230 4411 -4251 -4411
		mu 0 4 2425 2426 2447 2446
		f 4 4231 4412 -4252 -4412
		mu 0 4 2426 2427 2448 2447
		f 4 4232 4413 -4253 -4413
		mu 0 4 2427 2428 2449 2448
		f 4 4233 4414 -4254 -4414
		mu 0 4 2428 2429 2450 2449
		f 4 4234 4415 -4255 -4415
		mu 0 4 2429 2430 2451 2450
		f 4 4235 4416 -4256 -4416
		mu 0 4 2430 2431 2452 2451
		f 4 4236 4417 -4257 -4417
		mu 0 4 2431 2432 2453 2452
		f 4 4237 4418 -4258 -4418
		mu 0 4 2432 2433 2454 2453
		f 4 4238 4419 -4259 -4419
		mu 0 4 2433 2434 2455 2454
		f 4 4239 4400 -4260 -4420
		mu 0 4 2434 2435 2456 2455
		f 4 4420 4601 -4441 -4601
		mu 0 4 2457 2458 2459 2460
		f 4 4421 4602 -4442 -4602
		mu 0 4 2458 2461 2462 2459
		f 4 4422 4603 -4443 -4603
		mu 0 4 2461 2463 2464 2462
		f 4 4423 4604 -4444 -4604
		mu 0 4 2463 2465 2466 2464
		f 4 4424 4605 -4445 -4605
		mu 0 4 2465 2467 2468 2466
		f 4 4425 4606 -4446 -4606
		mu 0 4 2467 2469 2470 2468
		f 4 4426 4607 -4447 -4607
		mu 0 4 2469 2471 2472 2470
		f 4 4427 4608 -4448 -4608
		mu 0 4 2471 2473 2474 2472
		f 4 4428 4609 -4449 -4609
		mu 0 4 2473 2475 2476 2474
		f 4 4429 4610 -4450 -4610
		mu 0 4 2475 2477 2478 2476
		f 4 4430 4611 -4451 -4611
		mu 0 4 2477 2479 2480 2478
		f 4 4431 4612 -4452 -4612
		mu 0 4 2479 2481 2482 2480
		f 4 4432 4613 -4453 -4613
		mu 0 4 2481 2483 2484 2482
		f 4 4433 4614 -4454 -4614
		mu 0 4 2483 2485 2486 2484
		f 4 4434 4615 -4455 -4615
		mu 0 4 2485 2487 2488 2486
		f 4 4435 4616 -4456 -4616
		mu 0 4 2487 2489 2490 2488
		f 4 4436 4617 -4457 -4617
		mu 0 4 2489 2491 2492 2490
		f 4 4437 4618 -4458 -4618
		mu 0 4 2491 2493 2494 2492
		f 4 4438 4619 -4459 -4619
		mu 0 4 2493 2495 2496 2494
		f 4 4439 4600 -4460 -4620
		mu 0 4 2495 2497 2498 2496
		f 4 4440 4621 -4461 -4621
		mu 0 4 2460 2459 2499 2500
		f 4 4441 4622 -4462 -4622
		mu 0 4 2459 2462 2501 2499
		f 4 4442 4623 -4463 -4623
		mu 0 4 2462 2464 2502 2501
		f 4 4443 4624 -4464 -4624
		mu 0 4 2464 2466 2503 2502
		f 4 4444 4625 -4465 -4625
		mu 0 4 2466 2468 2504 2503
		f 4 4445 4626 -4466 -4626
		mu 0 4 2468 2470 2505 2504
		f 4 4446 4627 -4467 -4627
		mu 0 4 2470 2472 2506 2505
		f 4 4447 4628 -4468 -4628
		mu 0 4 2472 2474 2507 2506
		f 4 4448 4629 -4469 -4629
		mu 0 4 2474 2476 2508 2507
		f 4 4449 4630 -4470 -4630
		mu 0 4 2476 2478 2509 2508
		f 4 4450 4631 -4471 -4631
		mu 0 4 2478 2480 2510 2509
		f 4 4451 4632 -4472 -4632
		mu 0 4 2480 2482 2511 2510
		f 4 4452 4633 -4473 -4633
		mu 0 4 2482 2484 2512 2511
		f 4 4453 4634 -4474 -4634
		mu 0 4 2484 2486 2513 2512
		f 4 4454 4635 -4475 -4635
		mu 0 4 2486 2488 2514 2513
		f 4 4455 4636 -4476 -4636
		mu 0 4 2488 2490 2515 2514
		f 4 4456 4637 -4477 -4637
		mu 0 4 2490 2492 2516 2515
		f 4 4457 4638 -4478 -4638
		mu 0 4 2492 2494 2517 2516
		f 4 4458 4639 -4479 -4639
		mu 0 4 2494 2496 2518 2517
		f 4 4459 4620 -4480 -4640
		mu 0 4 2496 2498 2519 2518
		f 4 4460 4641 -4481 -4641
		mu 0 4 2500 2499 2520 2521
		f 4 4461 4642 -4482 -4642
		mu 0 4 2499 2501 2522 2520
		f 4 4462 4643 -4483 -4643
		mu 0 4 2501 2502 2523 2522
		f 4 4463 4644 -4484 -4644
		mu 0 4 2502 2503 2524 2523
		f 4 4464 4645 -4485 -4645
		mu 0 4 2503 2504 2525 2524
		f 4 4465 4646 -4486 -4646
		mu 0 4 2504 2505 2526 2525
		f 4 4466 4647 -4487 -4647
		mu 0 4 2505 2506 2527 2526
		f 4 4467 4648 -4488 -4648
		mu 0 4 2506 2507 2528 2527
		f 4 4468 4649 -4489 -4649
		mu 0 4 2507 2508 2529 2528
		f 4 4469 4650 -4490 -4650
		mu 0 4 2508 2509 2530 2529
		f 4 4470 4651 -4491 -4651
		mu 0 4 2509 2510 2531 2530
		f 4 4471 4652 -4492 -4652
		mu 0 4 2510 2511 2532 2531
		f 4 4472 4653 -4493 -4653
		mu 0 4 2511 2512 2533 2532
		f 4 4473 4654 -4494 -4654
		mu 0 4 2512 2513 2534 2533
		f 4 4474 4655 -4495 -4655
		mu 0 4 2513 2514 2535 2534
		f 4 4475 4656 -4496 -4656
		mu 0 4 2514 2515 2536 2535
		f 4 4476 4657 -4497 -4657
		mu 0 4 2515 2516 2537 2536
		f 4 4477 4658 -4498 -4658
		mu 0 4 2516 2517 2538 2537
		f 4 4478 4659 -4499 -4659
		mu 0 4 2517 2518 2539 2538
		f 4 4479 4640 -4500 -4660
		mu 0 4 2518 2519 2540 2539
		f 4 4480 4661 -4501 -4661
		mu 0 4 2521 2520 2541 2542
		f 4 4481 4662 -4502 -4662
		mu 0 4 2520 2522 2543 2541
		f 4 4482 4663 -4503 -4663
		mu 0 4 2522 2523 2544 2543
		f 4 4483 4664 -4504 -4664
		mu 0 4 2523 2524 2545 2544
		f 4 4484 4665 -4505 -4665
		mu 0 4 2524 2525 2546 2545
		f 4 4485 4666 -4506 -4666
		mu 0 4 2525 2526 2547 2546
		f 4 4486 4667 -4507 -4667
		mu 0 4 2526 2527 2548 2547
		f 4 4487 4668 -4508 -4668
		mu 0 4 2527 2528 2549 2548
		f 4 4488 4669 -4509 -4669
		mu 0 4 2528 2529 2550 2549
		f 4 4489 4670 -4510 -4670
		mu 0 4 2529 2530 2551 2550
		f 4 4490 4671 -4511 -4671
		mu 0 4 2530 2531 2552 2551
		f 4 4491 4672 -4512 -4672
		mu 0 4 2531 2532 2553 2552
		f 4 4492 4673 -4513 -4673
		mu 0 4 2532 2533 2554 2553
		f 4 4493 4674 -4514 -4674
		mu 0 4 2533 2534 2555 2554
		f 4 4494 4675 -4515 -4675
		mu 0 4 2534 2535 2556 2555
		f 4 4495 4676 -4516 -4676
		mu 0 4 2535 2536 2557 2556
		f 4 4496 4677 -4517 -4677
		mu 0 4 2536 2537 2558 2557
		f 4 4497 4678 -4518 -4678
		mu 0 4 2537 2538 2559 2558
		f 4 4498 4679 -4519 -4679
		mu 0 4 2538 2539 2560 2559
		f 4 4499 4660 -4520 -4680
		mu 0 4 2539 2540 2561 2560
		f 4 4500 4681 -4521 -4681
		mu 0 4 2542 2541 2562 2563
		f 4 4501 4682 -4522 -4682
		mu 0 4 2541 2543 2564 2562
		f 4 4502 4683 -4523 -4683
		mu 0 4 2543 2544 2565 2564
		f 4 4503 4684 -4524 -4684
		mu 0 4 2544 2545 2566 2565
		f 4 4504 4685 -4525 -4685
		mu 0 4 2545 2546 2567 2566
		f 4 4505 4686 -4526 -4686
		mu 0 4 2546 2547 2568 2567
		f 4 4506 4687 -4527 -4687
		mu 0 4 2547 2548 2569 2568
		f 4 4507 4688 -4528 -4688
		mu 0 4 2548 2549 2570 2569
		f 4 4508 4689 -4529 -4689
		mu 0 4 2549 2550 2571 2570
		f 4 4509 4690 -4530 -4690
		mu 0 4 2550 2551 2572 2571
		f 4 4510 4691 -4531 -4691
		mu 0 4 2551 2552 2573 2572
		f 4 4511 4692 -4532 -4692
		mu 0 4 2552 2553 2574 2573
		f 4 4512 4693 -4533 -4693
		mu 0 4 2553 2554 2575 2574
		f 4 4513 4694 -4534 -4694
		mu 0 4 2554 2555 2576 2575
		f 4 4514 4695 -4535 -4695
		mu 0 4 2555 2556 2577 2576
		f 4 4515 4696 -4536 -4696
		mu 0 4 2556 2557 2578 2577
		f 4 4516 4697 -4537 -4697
		mu 0 4 2557 2558 2579 2578
		f 4 4517 4698 -4538 -4698
		mu 0 4 2558 2559 2580 2579
		f 4 4518 4699 -4539 -4699
		mu 0 4 2559 2560 2581 2580
		f 4 4519 4680 -4540 -4700
		mu 0 4 2560 2561 2582 2581
		f 4 4520 4701 -4541 -4701
		mu 0 4 2563 2562 2583 2584
		f 4 4521 4702 -4542 -4702
		mu 0 4 2562 2564 2585 2583
		f 4 4522 4703 -4543 -4703
		mu 0 4 2564 2565 2586 2585
		f 4 4523 4704 -4544 -4704
		mu 0 4 2565 2566 2587 2586
		f 4 4524 4705 -4545 -4705
		mu 0 4 2566 2567 2588 2587
		f 4 4525 4706 -4546 -4706
		mu 0 4 2567 2568 2589 2588
		f 4 4526 4707 -4547 -4707
		mu 0 4 2568 2569 2590 2589
		f 4 4527 4708 -4548 -4708
		mu 0 4 2569 2570 2591 2590
		f 4 4528 4709 -4549 -4709
		mu 0 4 2570 2571 2592 2591
		f 4 4529 4710 -4550 -4710
		mu 0 4 2571 2572 2593 2592
		f 4 4530 4711 -4551 -4711
		mu 0 4 2572 2573 2594 2593
		f 4 4531 4712 -4552 -4712
		mu 0 4 2573 2574 2595 2594
		f 4 4532 4713 -4553 -4713
		mu 0 4 2574 2575 2596 2595
		f 4 4533 4714 -4554 -4714
		mu 0 4 2575 2576 2597 2596
		f 4 4534 4715 -4555 -4715
		mu 0 4 2576 2577 2598 2597
		f 4 4535 4716 -4556 -4716
		mu 0 4 2577 2578 2599 2598
		f 4 4536 4717 -4557 -4717
		mu 0 4 2578 2579 2600 2599
		f 4 4537 4718 -4558 -4718
		mu 0 4 2579 2580 2601 2600
		f 4 4538 4719 -4559 -4719
		mu 0 4 2580 2581 2602 2601
		f 4 4539 4700 -4560 -4720
		mu 0 4 2581 2582 2603 2602
		f 4 4540 4721 -4561 -4721
		mu 0 4 2584 2583 2604 2605
		f 4 4541 4722 -4562 -4722
		mu 0 4 2583 2585 2606 2604
		f 4 4542 4723 -4563 -4723
		mu 0 4 2585 2586 2607 2606
		f 4 4543 4724 -4564 -4724
		mu 0 4 2586 2587 2608 2607
		f 4 4544 4725 -4565 -4725
		mu 0 4 2587 2588 2609 2608
		f 4 4545 4726 -4566 -4726
		mu 0 4 2588 2589 2610 2609
		f 4 4546 4727 -4567 -4727
		mu 0 4 2589 2590 2611 2610
		f 4 4547 4728 -4568 -4728
		mu 0 4 2590 2591 2612 2611
		f 4 4548 4729 -4569 -4729
		mu 0 4 2591 2592 2613 2612
		f 4 4549 4730 -4570 -4730
		mu 0 4 2592 2593 2614 2613
		f 4 4550 4731 -4571 -4731
		mu 0 4 2593 2594 2615 2614
		f 4 4551 4732 -4572 -4732
		mu 0 4 2594 2595 2616 2615
		f 4 4552 4733 -4573 -4733
		mu 0 4 2595 2596 2617 2616
		f 4 4553 4734 -4574 -4734
		mu 0 4 2596 2597 2618 2617
		f 4 4554 4735 -4575 -4735
		mu 0 4 2597 2598 2619 2618
		f 4 4555 4736 -4576 -4736
		mu 0 4 2598 2599 2620 2619
		f 4 4556 4737 -4577 -4737
		mu 0 4 2599 2600 2621 2620
		f 4 4557 4738 -4578 -4738
		mu 0 4 2600 2601 2622 2621
		f 4 4558 4739 -4579 -4739
		mu 0 4 2601 2602 2623 2622
		f 4 4559 4720 -4580 -4740
		mu 0 4 2602 2603 2624 2623
		f 4 4560 4741 -4581 -4741
		mu 0 4 2605 2604 2625 2626
		f 4 4561 4742 -4582 -4742
		mu 0 4 2604 2606 2627 2625
		f 4 4562 4743 -4583 -4743
		mu 0 4 2606 2607 2628 2627
		f 4 4563 4744 -4584 -4744
		mu 0 4 2607 2608 2629 2628
		f 4 4564 4745 -4585 -4745
		mu 0 4 2608 2609 2630 2629
		f 4 4565 4746 -4586 -4746
		mu 0 4 2609 2610 2631 2630
		f 4 4566 4747 -4587 -4747
		mu 0 4 2610 2611 2632 2631
		f 4 4567 4748 -4588 -4748
		mu 0 4 2611 2612 2633 2632
		f 4 4568 4749 -4589 -4749
		mu 0 4 2612 2613 2634 2633
		f 4 4569 4750 -4590 -4750
		mu 0 4 2613 2614 2635 2634
		f 4 4570 4751 -4591 -4751
		mu 0 4 2614 2615 2636 2635
		f 4 4571 4752 -4592 -4752
		mu 0 4 2615 2616 2637 2636
		f 4 4572 4753 -4593 -4753
		mu 0 4 2616 2617 2638 2637
		f 4 4573 4754 -4594 -4754
		mu 0 4 2617 2618 2639 2638
		f 4 4574 4755 -4595 -4755
		mu 0 4 2618 2619 2640 2639
		f 4 4575 4756 -4596 -4756
		mu 0 4 2619 2620 2641 2640
		f 4 4576 4757 -4597 -4757
		mu 0 4 2620 2621 2642 2641
		f 4 4577 4758 -4598 -4758
		mu 0 4 2621 2622 2643 2642
		f 4 4578 4759 -4599 -4759
		mu 0 4 2622 2623 2644 2643
		f 4 4579 4740 -4600 -4760
		mu 0 4 2623 2624 2645 2644
		f 4 4760 4941 -4781 -4941
		mu 0 4 2646 2647 2648 2649
		f 4 4761 4942 -4782 -4942
		mu 0 4 2647 2650 2651 2648
		f 4 4762 4943 -4783 -4943
		mu 0 4 2650 2652 2653 2651
		f 4 4763 4944 -4784 -4944
		mu 0 4 2652 2654 2655 2653
		f 4 4764 4945 -4785 -4945
		mu 0 4 2654 2656 2657 2655
		f 4 4765 4946 -4786 -4946
		mu 0 4 2656 2658 2659 2657
		f 4 4766 4947 -4787 -4947
		mu 0 4 2658 2660 2661 2659
		f 4 4767 4948 -4788 -4948
		mu 0 4 2660 2662 2663 2661
		f 4 4768 4949 -4789 -4949
		mu 0 4 2662 2664 2665 2663
		f 4 4769 4950 -4790 -4950
		mu 0 4 2664 2666 2667 2665
		f 4 4770 4951 -4791 -4951
		mu 0 4 2666 2668 2669 2667
		f 4 4771 4952 -4792 -4952
		mu 0 4 2668 2670 2671 2669
		f 4 4772 4953 -4793 -4953
		mu 0 4 2670 2672 2673 2671
		f 4 4773 4954 -4794 -4954
		mu 0 4 2672 2674 2675 2673
		f 4 4774 4955 -4795 -4955
		mu 0 4 2674 2676 2677 2675
		f 4 4775 4956 -4796 -4956
		mu 0 4 2676 2678 2679 2677
		f 4 4776 4957 -4797 -4957
		mu 0 4 2678 2680 2681 2679
		f 4 4777 4958 -4798 -4958
		mu 0 4 2680 2682 2683 2681
		f 4 4778 4959 -4799 -4959
		mu 0 4 2682 2684 2685 2683
		f 4 4779 4940 -4800 -4960
		mu 0 4 2684 2686 2687 2685
		f 4 4780 4961 -4801 -4961
		mu 0 4 2649 2648 2688 2689
		f 4 4781 4962 -4802 -4962
		mu 0 4 2648 2651 2690 2688
		f 4 4782 4963 -4803 -4963
		mu 0 4 2651 2653 2691 2690
		f 4 4783 4964 -4804 -4964
		mu 0 4 2653 2655 2692 2691
		f 4 4784 4965 -4805 -4965
		mu 0 4 2655 2657 2693 2692
		f 4 4785 4966 -4806 -4966
		mu 0 4 2657 2659 2694 2693
		f 4 4786 4967 -4807 -4967
		mu 0 4 2659 2661 2695 2694
		f 4 4787 4968 -4808 -4968
		mu 0 4 2661 2663 2696 2695
		f 4 4788 4969 -4809 -4969
		mu 0 4 2663 2665 2697 2696
		f 4 4789 4970 -4810 -4970
		mu 0 4 2665 2667 2698 2697
		f 4 4790 4971 -4811 -4971
		mu 0 4 2667 2669 2699 2698
		f 4 4791 4972 -4812 -4972
		mu 0 4 2669 2671 2700 2699
		f 4 4792 4973 -4813 -4973
		mu 0 4 2671 2673 2701 2700
		f 4 4793 4974 -4814 -4974
		mu 0 4 2673 2675 2702 2701
		f 4 4794 4975 -4815 -4975
		mu 0 4 2675 2677 2703 2702
		f 4 4795 4976 -4816 -4976
		mu 0 4 2677 2679 2704 2703
		f 4 4796 4977 -4817 -4977
		mu 0 4 2679 2681 2705 2704
		f 4 4797 4978 -4818 -4978
		mu 0 4 2681 2683 2706 2705
		f 4 4798 4979 -4819 -4979
		mu 0 4 2683 2685 2707 2706
		f 4 4799 4960 -4820 -4980
		mu 0 4 2685 2687 2708 2707
		f 4 4800 4981 -4821 -4981
		mu 0 4 2689 2688 2709 2710
		f 4 4801 4982 -4822 -4982
		mu 0 4 2688 2690 2711 2709
		f 4 4802 4983 -4823 -4983
		mu 0 4 2690 2691 2712 2711
		f 4 4803 4984 -4824 -4984
		mu 0 4 2691 2692 2713 2712
		f 4 4804 4985 -4825 -4985
		mu 0 4 2692 2693 2714 2713
		f 4 4805 4986 -4826 -4986
		mu 0 4 2693 2694 2715 2714
		f 4 4806 4987 -4827 -4987
		mu 0 4 2694 2695 2716 2715
		f 4 4807 4988 -4828 -4988
		mu 0 4 2695 2696 2717 2716
		f 4 4808 4989 -4829 -4989
		mu 0 4 2696 2697 2718 2717
		f 4 4809 4990 -4830 -4990
		mu 0 4 2697 2698 2719 2718
		f 4 4810 4991 -4831 -4991
		mu 0 4 2698 2699 2720 2719
		f 4 4811 4992 -4832 -4992
		mu 0 4 2699 2700 2721 2720
		f 4 4812 4993 -4833 -4993
		mu 0 4 2700 2701 2722 2721
		f 4 4813 4994 -4834 -4994
		mu 0 4 2701 2702 2723 2722
		f 4 4814 4995 -4835 -4995
		mu 0 4 2702 2703 2724 2723
		f 4 4815 4996 -4836 -4996
		mu 0 4 2703 2704 2725 2724
		f 4 4816 4997 -4837 -4997
		mu 0 4 2704 2705 2726 2725
		f 4 4817 4998 -4838 -4998
		mu 0 4 2705 2706 2727 2726
		f 4 4818 4999 -4839 -4999
		mu 0 4 2706 2707 2728 2727
		f 4 4819 4980 -4840 -5000
		mu 0 4 2707 2708 2729 2728
		f 4 4820 5001 -4841 -5001
		mu 0 4 2710 2709 2730 2731
		f 4 4821 5002 -4842 -5002
		mu 0 4 2709 2711 2732 2730
		f 4 4822 5003 -4843 -5003
		mu 0 4 2711 2712 2733 2732
		f 4 4823 5004 -4844 -5004
		mu 0 4 2712 2713 2734 2733
		f 4 4824 5005 -4845 -5005
		mu 0 4 2713 2714 2735 2734
		f 4 4825 5006 -4846 -5006
		mu 0 4 2714 2715 2736 2735
		f 4 4826 5007 -4847 -5007
		mu 0 4 2715 2716 2737 2736
		f 4 4827 5008 -4848 -5008
		mu 0 4 2716 2717 2738 2737
		f 4 4828 5009 -4849 -5009
		mu 0 4 2717 2718 2739 2738
		f 4 4829 5010 -4850 -5010
		mu 0 4 2718 2719 2740 2739
		f 4 4830 5011 -4851 -5011
		mu 0 4 2719 2720 2741 2740
		f 4 4831 5012 -4852 -5012
		mu 0 4 2720 2721 2742 2741
		f 4 4832 5013 -4853 -5013
		mu 0 4 2721 2722 2743 2742
		f 4 4833 5014 -4854 -5014
		mu 0 4 2722 2723 2744 2743
		f 4 4834 5015 -4855 -5015
		mu 0 4 2723 2724 2745 2744
		f 4 4835 5016 -4856 -5016
		mu 0 4 2724 2725 2746 2745
		f 4 4836 5017 -4857 -5017
		mu 0 4 2725 2726 2747 2746
		f 4 4837 5018 -4858 -5018
		mu 0 4 2726 2727 2748 2747
		f 4 4838 5019 -4859 -5019
		mu 0 4 2727 2728 2749 2748
		f 4 4839 5000 -4860 -5020
		mu 0 4 2728 2729 2750 2749
		f 4 4840 5021 -4861 -5021
		mu 0 4 2731 2730 2751 2752
		f 4 4841 5022 -4862 -5022
		mu 0 4 2730 2732 2753 2751
		f 4 4842 5023 -4863 -5023
		mu 0 4 2732 2733 2754 2753
		f 4 4843 5024 -4864 -5024
		mu 0 4 2733 2734 2755 2754
		f 4 4844 5025 -4865 -5025
		mu 0 4 2734 2735 2756 2755
		f 4 4845 5026 -4866 -5026
		mu 0 4 2735 2736 2757 2756
		f 4 4846 5027 -4867 -5027
		mu 0 4 2736 2737 2758 2757
		f 4 4847 5028 -4868 -5028
		mu 0 4 2737 2738 2759 2758
		f 4 4848 5029 -4869 -5029
		mu 0 4 2738 2739 2760 2759
		f 4 4849 5030 -4870 -5030
		mu 0 4 2739 2740 2761 2760
		f 4 4850 5031 -4871 -5031
		mu 0 4 2740 2741 2762 2761
		f 4 4851 5032 -4872 -5032
		mu 0 4 2741 2742 2763 2762
		f 4 4852 5033 -4873 -5033
		mu 0 4 2742 2743 2764 2763
		f 4 4853 5034 -4874 -5034
		mu 0 4 2743 2744 2765 2764
		f 4 4854 5035 -4875 -5035
		mu 0 4 2744 2745 2766 2765
		f 4 4855 5036 -4876 -5036
		mu 0 4 2745 2746 2767 2766
		f 4 4856 5037 -4877 -5037
		mu 0 4 2746 2747 2768 2767
		f 4 4857 5038 -4878 -5038
		mu 0 4 2747 2748 2769 2768
		f 4 4858 5039 -4879 -5039
		mu 0 4 2748 2749 2770 2769
		f 4 4859 5020 -4880 -5040
		mu 0 4 2749 2750 2771 2770
		f 4 4860 5041 -4881 -5041
		mu 0 4 2752 2751 2772 2773
		f 4 4861 5042 -4882 -5042
		mu 0 4 2751 2753 2774 2772
		f 4 4862 5043 -4883 -5043
		mu 0 4 2753 2754 2775 2774
		f 4 4863 5044 -4884 -5044
		mu 0 4 2754 2755 2776 2775
		f 4 4864 5045 -4885 -5045
		mu 0 4 2755 2756 2777 2776
		f 4 4865 5046 -4886 -5046
		mu 0 4 2756 2757 2778 2777
		f 4 4866 5047 -4887 -5047
		mu 0 4 2757 2758 2779 2778
		f 4 4867 5048 -4888 -5048
		mu 0 4 2758 2759 2780 2779
		f 4 4868 5049 -4889 -5049
		mu 0 4 2759 2760 2781 2780
		f 4 4869 5050 -4890 -5050
		mu 0 4 2760 2761 2782 2781
		f 4 4870 5051 -4891 -5051
		mu 0 4 2761 2762 2783 2782
		f 4 4871 5052 -4892 -5052
		mu 0 4 2762 2763 2784 2783
		f 4 4872 5053 -4893 -5053
		mu 0 4 2763 2764 2785 2784
		f 4 4873 5054 -4894 -5054
		mu 0 4 2764 2765 2786 2785
		f 4 4874 5055 -4895 -5055
		mu 0 4 2765 2766 2787 2786
		f 4 4875 5056 -4896 -5056
		mu 0 4 2766 2767 2788 2787
		f 4 4876 5057 -4897 -5057
		mu 0 4 2767 2768 2789 2788
		f 4 4877 5058 -4898 -5058
		mu 0 4 2768 2769 2790 2789
		f 4 4878 5059 -4899 -5059
		mu 0 4 2769 2770 2791 2790
		f 4 4879 5040 -4900 -5060
		mu 0 4 2770 2771 2792 2791
		f 4 4880 5061 -4901 -5061
		mu 0 4 2773 2772 2793 2794
		f 4 4881 5062 -4902 -5062
		mu 0 4 2772 2774 2795 2793
		f 4 4882 5063 -4903 -5063
		mu 0 4 2774 2775 2796 2795
		f 4 4883 5064 -4904 -5064
		mu 0 4 2775 2776 2797 2796
		f 4 4884 5065 -4905 -5065
		mu 0 4 2776 2777 2798 2797
		f 4 4885 5066 -4906 -5066
		mu 0 4 2777 2778 2799 2798
		f 4 4886 5067 -4907 -5067
		mu 0 4 2778 2779 2800 2799
		f 4 4887 5068 -4908 -5068
		mu 0 4 2779 2780 2801 2800
		f 4 4888 5069 -4909 -5069
		mu 0 4 2780 2781 2802 2801
		f 4 4889 5070 -4910 -5070
		mu 0 4 2781 2782 2803 2802
		f 4 4890 5071 -4911 -5071
		mu 0 4 2782 2783 2804 2803
		f 4 4891 5072 -4912 -5072
		mu 0 4 2783 2784 2805 2804
		f 4 4892 5073 -4913 -5073
		mu 0 4 2784 2785 2806 2805
		f 4 4893 5074 -4914 -5074
		mu 0 4 2785 2786 2807 2806
		f 4 4894 5075 -4915 -5075
		mu 0 4 2786 2787 2808 2807
		f 4 4895 5076 -4916 -5076
		mu 0 4 2787 2788 2809 2808
		f 4 4896 5077 -4917 -5077
		mu 0 4 2788 2789 2810 2809
		f 4 4897 5078 -4918 -5078
		mu 0 4 2789 2790 2811 2810
		f 4 4898 5079 -4919 -5079
		mu 0 4 2790 2791 2812 2811
		f 4 4899 5060 -4920 -5080
		mu 0 4 2791 2792 2813 2812
		f 4 4900 5081 -4921 -5081
		mu 0 4 2794 2793 2814 2815
		f 4 4901 5082 -4922 -5082
		mu 0 4 2793 2795 2816 2814
		f 4 4902 5083 -4923 -5083
		mu 0 4 2795 2796 2817 2816
		f 4 4903 5084 -4924 -5084
		mu 0 4 2796 2797 2818 2817
		f 4 4904 5085 -4925 -5085
		mu 0 4 2797 2798 2819 2818
		f 4 4905 5086 -4926 -5086
		mu 0 4 2798 2799 2820 2819
		f 4 4906 5087 -4927 -5087
		mu 0 4 2799 2800 2821 2820
		f 4 4907 5088 -4928 -5088
		mu 0 4 2800 2801 2822 2821
		f 4 4908 5089 -4929 -5089
		mu 0 4 2801 2802 2823 2822
		f 4 4909 5090 -4930 -5090
		mu 0 4 2802 2803 2824 2823
		f 4 4910 5091 -4931 -5091
		mu 0 4 2803 2804 2825 2824
		f 4 4911 5092 -4932 -5092
		mu 0 4 2804 2805 2826 2825
		f 4 4912 5093 -4933 -5093
		mu 0 4 2805 2806 2827 2826
		f 4 4913 5094 -4934 -5094
		mu 0 4 2806 2807 2828 2827
		f 4 4914 5095 -4935 -5095
		mu 0 4 2807 2808 2829 2828
		f 4 4915 5096 -4936 -5096
		mu 0 4 2808 2809 2830 2829
		f 4 4916 5097 -4937 -5097
		mu 0 4 2809 2810 2831 2830
		f 4 4917 5098 -4938 -5098
		mu 0 4 2810 2811 2832 2831
		f 4 4918 5099 -4939 -5099
		mu 0 4 2811 2812 2833 2832
		f 4 4919 5080 -4940 -5100
		mu 0 4 2812 2813 2834 2833
		f 4 5100 5281 -5121 -5281
		mu 0 4 2835 2836 2837 2838
		f 4 5101 5282 -5122 -5282
		mu 0 4 2836 2839 2840 2837
		f 4 5102 5283 -5123 -5283
		mu 0 4 2839 2841 2842 2840
		f 4 5103 5284 -5124 -5284
		mu 0 4 2841 2843 2844 2842
		f 4 5104 5285 -5125 -5285
		mu 0 4 2843 2845 2846 2844
		f 4 5105 5286 -5126 -5286
		mu 0 4 2845 2847 2848 2846
		f 4 5106 5287 -5127 -5287
		mu 0 4 2847 2849 2850 2848
		f 4 5107 5288 -5128 -5288
		mu 0 4 2849 2851 2852 2850
		f 4 5108 5289 -5129 -5289
		mu 0 4 2851 2853 2854 2852
		f 4 5109 5290 -5130 -5290
		mu 0 4 2853 2855 2856 2854
		f 4 5110 5291 -5131 -5291
		mu 0 4 2855 2857 2858 2856
		f 4 5111 5292 -5132 -5292
		mu 0 4 2857 2859 2860 2858
		f 4 5112 5293 -5133 -5293
		mu 0 4 2859 2861 2862 2860
		f 4 5113 5294 -5134 -5294
		mu 0 4 2861 2863 2864 2862
		f 4 5114 5295 -5135 -5295
		mu 0 4 2863 2865 2866 2864
		f 4 5115 5296 -5136 -5296
		mu 0 4 2865 2867 2868 2866
		f 4 5116 5297 -5137 -5297
		mu 0 4 2867 2869 2870 2868
		f 4 5117 5298 -5138 -5298
		mu 0 4 2869 2871 2872 2870
		f 4 5118 5299 -5139 -5299
		mu 0 4 2871 2873 2874 2872
		f 4 5119 5280 -5140 -5300
		mu 0 4 2873 2875 2876 2874
		f 4 5120 5301 -5141 -5301
		mu 0 4 2838 2837 2877 2878
		f 4 5121 5302 -5142 -5302
		mu 0 4 2837 2840 2879 2877
		f 4 5122 5303 -5143 -5303
		mu 0 4 2840 2842 2880 2879
		f 4 5123 5304 -5144 -5304
		mu 0 4 2842 2844 2881 2880
		f 4 5124 5305 -5145 -5305
		mu 0 4 2844 2846 2882 2881
		f 4 5125 5306 -5146 -5306
		mu 0 4 2846 2848 2883 2882
		f 4 5126 5307 -5147 -5307
		mu 0 4 2848 2850 2884 2883
		f 4 5127 5308 -5148 -5308
		mu 0 4 2850 2852 2885 2884
		f 4 5128 5309 -5149 -5309
		mu 0 4 2852 2854 2886 2885
		f 4 5129 5310 -5150 -5310
		mu 0 4 2854 2856 2887 2886
		f 4 5130 5311 -5151 -5311
		mu 0 4 2856 2858 2888 2887
		f 4 5131 5312 -5152 -5312
		mu 0 4 2858 2860 2889 2888
		f 4 5132 5313 -5153 -5313
		mu 0 4 2860 2862 2890 2889
		f 4 5133 5314 -5154 -5314
		mu 0 4 2862 2864 2891 2890
		f 4 5134 5315 -5155 -5315
		mu 0 4 2864 2866 2892 2891
		f 4 5135 5316 -5156 -5316
		mu 0 4 2866 2868 2893 2892
		f 4 5136 5317 -5157 -5317
		mu 0 4 2868 2870 2894 2893
		f 4 5137 5318 -5158 -5318
		mu 0 4 2870 2872 2895 2894
		f 4 5138 5319 -5159 -5319
		mu 0 4 2872 2874 2896 2895
		f 4 5139 5300 -5160 -5320
		mu 0 4 2874 2876 2897 2896
		f 4 5140 5321 -5161 -5321
		mu 0 4 2878 2877 2898 2899
		f 4 5141 5322 -5162 -5322
		mu 0 4 2877 2879 2900 2898
		f 4 5142 5323 -5163 -5323
		mu 0 4 2879 2880 2901 2900
		f 4 5143 5324 -5164 -5324
		mu 0 4 2880 2881 2902 2901
		f 4 5144 5325 -5165 -5325
		mu 0 4 2881 2882 2903 2902
		f 4 5145 5326 -5166 -5326
		mu 0 4 2882 2883 2904 2903
		f 4 5146 5327 -5167 -5327
		mu 0 4 2883 2884 2905 2904
		f 4 5147 5328 -5168 -5328
		mu 0 4 2884 2885 2906 2905
		f 4 5148 5329 -5169 -5329
		mu 0 4 2885 2886 2907 2906
		f 4 5149 5330 -5170 -5330
		mu 0 4 2886 2887 2908 2907
		f 4 5150 5331 -5171 -5331
		mu 0 4 2887 2888 2909 2908
		f 4 5151 5332 -5172 -5332
		mu 0 4 2888 2889 2910 2909
		f 4 5152 5333 -5173 -5333
		mu 0 4 2889 2890 2911 2910
		f 4 5153 5334 -5174 -5334
		mu 0 4 2890 2891 2912 2911
		f 4 5154 5335 -5175 -5335
		mu 0 4 2891 2892 2913 2912
		f 4 5155 5336 -5176 -5336
		mu 0 4 2892 2893 2914 2913
		f 4 5156 5337 -5177 -5337
		mu 0 4 2893 2894 2915 2914
		f 4 5157 5338 -5178 -5338
		mu 0 4 2894 2895 2916 2915
		f 4 5158 5339 -5179 -5339
		mu 0 4 2895 2896 2917 2916
		f 4 5159 5320 -5180 -5340
		mu 0 4 2896 2897 2918 2917
		f 4 5160 5341 -5181 -5341
		mu 0 4 2899 2898 2919 2920
		f 4 5161 5342 -5182 -5342
		mu 0 4 2898 2900 2921 2919
		f 4 5162 5343 -5183 -5343
		mu 0 4 2900 2901 2922 2921
		f 4 5163 5344 -5184 -5344
		mu 0 4 2901 2902 2923 2922
		f 4 5164 5345 -5185 -5345
		mu 0 4 2902 2903 2924 2923
		f 4 5165 5346 -5186 -5346
		mu 0 4 2903 2904 2925 2924
		f 4 5166 5347 -5187 -5347
		mu 0 4 2904 2905 2926 2925
		f 4 5167 5348 -5188 -5348
		mu 0 4 2905 2906 2927 2926
		f 4 5168 5349 -5189 -5349
		mu 0 4 2906 2907 2928 2927
		f 4 5169 5350 -5190 -5350
		mu 0 4 2907 2908 2929 2928
		f 4 5170 5351 -5191 -5351
		mu 0 4 2908 2909 2930 2929
		f 4 5171 5352 -5192 -5352
		mu 0 4 2909 2910 2931 2930
		f 4 5172 5353 -5193 -5353
		mu 0 4 2910 2911 2932 2931
		f 4 5173 5354 -5194 -5354
		mu 0 4 2911 2912 2933 2932
		f 4 5174 5355 -5195 -5355
		mu 0 4 2912 2913 2934 2933
		f 4 5175 5356 -5196 -5356
		mu 0 4 2913 2914 2935 2934
		f 4 5176 5357 -5197 -5357
		mu 0 4 2914 2915 2936 2935
		f 4 5177 5358 -5198 -5358
		mu 0 4 2915 2916 2937 2936
		f 4 5178 5359 -5199 -5359
		mu 0 4 2916 2917 2938 2937
		f 4 5179 5340 -5200 -5360
		mu 0 4 2917 2918 2939 2938
		f 4 5180 5361 -5201 -5361
		mu 0 4 2920 2919 2940 2941
		f 4 5181 5362 -5202 -5362
		mu 0 4 2919 2921 2942 2940
		f 4 5182 5363 -5203 -5363
		mu 0 4 2921 2922 2943 2942
		f 4 5183 5364 -5204 -5364
		mu 0 4 2922 2923 2944 2943
		f 4 5184 5365 -5205 -5365
		mu 0 4 2923 2924 2945 2944
		f 4 5185 5366 -5206 -5366
		mu 0 4 2924 2925 2946 2945
		f 4 5186 5367 -5207 -5367
		mu 0 4 2925 2926 2947 2946
		f 4 5187 5368 -5208 -5368
		mu 0 4 2926 2927 2948 2947
		f 4 5188 5369 -5209 -5369
		mu 0 4 2927 2928 2949 2948
		f 4 5189 5370 -5210 -5370
		mu 0 4 2928 2929 2950 2949
		f 4 5190 5371 -5211 -5371
		mu 0 4 2929 2930 2951 2950
		f 4 5191 5372 -5212 -5372
		mu 0 4 2930 2931 2952 2951
		f 4 5192 5373 -5213 -5373
		mu 0 4 2931 2932 2953 2952
		f 4 5193 5374 -5214 -5374
		mu 0 4 2932 2933 2954 2953
		f 4 5194 5375 -5215 -5375
		mu 0 4 2933 2934 2955 2954
		f 4 5195 5376 -5216 -5376
		mu 0 4 2934 2935 2956 2955
		f 4 5196 5377 -5217 -5377
		mu 0 4 2935 2936 2957 2956
		f 4 5197 5378 -5218 -5378
		mu 0 4 2936 2937 2958 2957
		f 4 5198 5379 -5219 -5379
		mu 0 4 2937 2938 2959 2958
		f 4 5199 5360 -5220 -5380
		mu 0 4 2938 2939 2960 2959;
	setAttr ".fc[2500:2999]"
		f 4 5200 5381 -5221 -5381
		mu 0 4 2941 2940 2961 2962
		f 4 5201 5382 -5222 -5382
		mu 0 4 2940 2942 2963 2961
		f 4 5202 5383 -5223 -5383
		mu 0 4 2942 2943 2964 2963
		f 4 5203 5384 -5224 -5384
		mu 0 4 2943 2944 2965 2964
		f 4 5204 5385 -5225 -5385
		mu 0 4 2944 2945 2966 2965
		f 4 5205 5386 -5226 -5386
		mu 0 4 2945 2946 2967 2966
		f 4 5206 5387 -5227 -5387
		mu 0 4 2946 2947 2968 2967
		f 4 5207 5388 -5228 -5388
		mu 0 4 2947 2948 2969 2968
		f 4 5208 5389 -5229 -5389
		mu 0 4 2948 2949 2970 2969
		f 4 5209 5390 -5230 -5390
		mu 0 4 2949 2950 2971 2970
		f 4 5210 5391 -5231 -5391
		mu 0 4 2950 2951 2972 2971
		f 4 5211 5392 -5232 -5392
		mu 0 4 2951 2952 2973 2972
		f 4 5212 5393 -5233 -5393
		mu 0 4 2952 2953 2974 2973
		f 4 5213 5394 -5234 -5394
		mu 0 4 2953 2954 2975 2974
		f 4 5214 5395 -5235 -5395
		mu 0 4 2954 2955 2976 2975
		f 4 5215 5396 -5236 -5396
		mu 0 4 2955 2956 2977 2976
		f 4 5216 5397 -5237 -5397
		mu 0 4 2956 2957 2978 2977
		f 4 5217 5398 -5238 -5398
		mu 0 4 2957 2958 2979 2978
		f 4 5218 5399 -5239 -5399
		mu 0 4 2958 2959 2980 2979
		f 4 5219 5380 -5240 -5400
		mu 0 4 2959 2960 2981 2980
		f 4 5220 5401 -5241 -5401
		mu 0 4 2962 2961 2982 2983
		f 4 5221 5402 -5242 -5402
		mu 0 4 2961 2963 2984 2982
		f 4 5222 5403 -5243 -5403
		mu 0 4 2963 2964 2985 2984
		f 4 5223 5404 -5244 -5404
		mu 0 4 2964 2965 2986 2985
		f 4 5224 5405 -5245 -5405
		mu 0 4 2965 2966 2987 2986
		f 4 5225 5406 -5246 -5406
		mu 0 4 2966 2967 2988 2987
		f 4 5226 5407 -5247 -5407
		mu 0 4 2967 2968 2989 2988
		f 4 5227 5408 -5248 -5408
		mu 0 4 2968 2969 2990 2989
		f 4 5228 5409 -5249 -5409
		mu 0 4 2969 2970 2991 2990
		f 4 5229 5410 -5250 -5410
		mu 0 4 2970 2971 2992 2991
		f 4 5230 5411 -5251 -5411
		mu 0 4 2971 2972 2993 2992
		f 4 5231 5412 -5252 -5412
		mu 0 4 2972 2973 2994 2993
		f 4 5232 5413 -5253 -5413
		mu 0 4 2973 2974 2995 2994
		f 4 5233 5414 -5254 -5414
		mu 0 4 2974 2975 2996 2995
		f 4 5234 5415 -5255 -5415
		mu 0 4 2975 2976 2997 2996
		f 4 5235 5416 -5256 -5416
		mu 0 4 2976 2977 2998 2997
		f 4 5236 5417 -5257 -5417
		mu 0 4 2977 2978 2999 2998
		f 4 5237 5418 -5258 -5418
		mu 0 4 2978 2979 3000 2999
		f 4 5238 5419 -5259 -5419
		mu 0 4 2979 2980 3001 3000
		f 4 5239 5400 -5260 -5420
		mu 0 4 2980 2981 3002 3001
		f 4 5240 5421 -5261 -5421
		mu 0 4 2983 2982 3003 3004
		f 4 5241 5422 -5262 -5422
		mu 0 4 2982 2984 3005 3003
		f 4 5242 5423 -5263 -5423
		mu 0 4 2984 2985 3006 3005
		f 4 5243 5424 -5264 -5424
		mu 0 4 2985 2986 3007 3006
		f 4 5244 5425 -5265 -5425
		mu 0 4 2986 2987 3008 3007
		f 4 5245 5426 -5266 -5426
		mu 0 4 2987 2988 3009 3008
		f 4 5246 5427 -5267 -5427
		mu 0 4 2988 2989 3010 3009
		f 4 5247 5428 -5268 -5428
		mu 0 4 2989 2990 3011 3010
		f 4 5248 5429 -5269 -5429
		mu 0 4 2990 2991 3012 3011
		f 4 5249 5430 -5270 -5430
		mu 0 4 2991 2992 3013 3012
		f 4 5250 5431 -5271 -5431
		mu 0 4 2992 2993 3014 3013
		f 4 5251 5432 -5272 -5432
		mu 0 4 2993 2994 3015 3014
		f 4 5252 5433 -5273 -5433
		mu 0 4 2994 2995 3016 3015
		f 4 5253 5434 -5274 -5434
		mu 0 4 2995 2996 3017 3016
		f 4 5254 5435 -5275 -5435
		mu 0 4 2996 2997 3018 3017
		f 4 5255 5436 -5276 -5436
		mu 0 4 2997 2998 3019 3018
		f 4 5256 5437 -5277 -5437
		mu 0 4 2998 2999 3020 3019
		f 4 5257 5438 -5278 -5438
		mu 0 4 2999 3000 3021 3020
		f 4 5258 5439 -5279 -5439
		mu 0 4 3000 3001 3022 3021
		f 4 5259 5420 -5280 -5440
		mu 0 4 3001 3002 3023 3022
		f 4 5440 5621 -5461 -5621
		mu 0 4 3024 3025 3026 3027
		f 4 5441 5622 -5462 -5622
		mu 0 4 3025 3028 3029 3026
		f 4 5442 5623 -5463 -5623
		mu 0 4 3028 3030 3031 3029
		f 4 5443 5624 -5464 -5624
		mu 0 4 3030 3032 3033 3031
		f 4 5444 5625 -5465 -5625
		mu 0 4 3032 3034 3035 3033
		f 4 5445 5626 -5466 -5626
		mu 0 4 3034 3036 3037 3035
		f 4 5446 5627 -5467 -5627
		mu 0 4 3036 3038 3039 3037
		f 4 5447 5628 -5468 -5628
		mu 0 4 3038 3040 3041 3039
		f 4 5448 5629 -5469 -5629
		mu 0 4 3040 3042 3043 3041
		f 4 5449 5630 -5470 -5630
		mu 0 4 3042 3044 3045 3043
		f 4 5450 5631 -5471 -5631
		mu 0 4 3044 3046 3047 3045
		f 4 5451 5632 -5472 -5632
		mu 0 4 3046 3048 3049 3047
		f 4 5452 5633 -5473 -5633
		mu 0 4 3048 3050 3051 3049
		f 4 5453 5634 -5474 -5634
		mu 0 4 3050 3052 3053 3051
		f 4 5454 5635 -5475 -5635
		mu 0 4 3052 3054 3055 3053
		f 4 5455 5636 -5476 -5636
		mu 0 4 3054 3056 3057 3055
		f 4 5456 5637 -5477 -5637
		mu 0 4 3056 3058 3059 3057
		f 4 5457 5638 -5478 -5638
		mu 0 4 3058 3060 3061 3059
		f 4 5458 5639 -5479 -5639
		mu 0 4 3060 3062 3063 3061
		f 4 5459 5620 -5480 -5640
		mu 0 4 3062 3064 3065 3063
		f 4 5460 5641 -5481 -5641
		mu 0 4 3027 3026 3066 3067
		f 4 5461 5642 -5482 -5642
		mu 0 4 3026 3029 3068 3066
		f 4 5462 5643 -5483 -5643
		mu 0 4 3029 3031 3069 3068
		f 4 5463 5644 -5484 -5644
		mu 0 4 3031 3033 3070 3069
		f 4 5464 5645 -5485 -5645
		mu 0 4 3033 3035 3071 3070
		f 4 5465 5646 -5486 -5646
		mu 0 4 3035 3037 3072 3071
		f 4 5466 5647 -5487 -5647
		mu 0 4 3037 3039 3073 3072
		f 4 5467 5648 -5488 -5648
		mu 0 4 3039 3041 3074 3073
		f 4 5468 5649 -5489 -5649
		mu 0 4 3041 3043 3075 3074
		f 4 5469 5650 -5490 -5650
		mu 0 4 3043 3045 3076 3075
		f 4 5470 5651 -5491 -5651
		mu 0 4 3045 3047 3077 3076
		f 4 5471 5652 -5492 -5652
		mu 0 4 3047 3049 3078 3077
		f 4 5472 5653 -5493 -5653
		mu 0 4 3049 3051 3079 3078
		f 4 5473 5654 -5494 -5654
		mu 0 4 3051 3053 3080 3079
		f 4 5474 5655 -5495 -5655
		mu 0 4 3053 3055 3081 3080
		f 4 5475 5656 -5496 -5656
		mu 0 4 3055 3057 3082 3081
		f 4 5476 5657 -5497 -5657
		mu 0 4 3057 3059 3083 3082
		f 4 5477 5658 -5498 -5658
		mu 0 4 3059 3061 3084 3083
		f 4 5478 5659 -5499 -5659
		mu 0 4 3061 3063 3085 3084
		f 4 5479 5640 -5500 -5660
		mu 0 4 3063 3065 3086 3085
		f 4 5480 5661 -5501 -5661
		mu 0 4 3067 3066 3087 3088
		f 4 5481 5662 -5502 -5662
		mu 0 4 3066 3068 3089 3087
		f 4 5482 5663 -5503 -5663
		mu 0 4 3068 3069 3090 3089
		f 4 5483 5664 -5504 -5664
		mu 0 4 3069 3070 3091 3090
		f 4 5484 5665 -5505 -5665
		mu 0 4 3070 3071 3092 3091
		f 4 5485 5666 -5506 -5666
		mu 0 4 3071 3072 3093 3092
		f 4 5486 5667 -5507 -5667
		mu 0 4 3072 3073 3094 3093
		f 4 5487 5668 -5508 -5668
		mu 0 4 3073 3074 3095 3094
		f 4 5488 5669 -5509 -5669
		mu 0 4 3074 3075 3096 3095
		f 4 5489 5670 -5510 -5670
		mu 0 4 3075 3076 3097 3096
		f 4 5490 5671 -5511 -5671
		mu 0 4 3076 3077 3098 3097
		f 4 5491 5672 -5512 -5672
		mu 0 4 3077 3078 3099 3098
		f 4 5492 5673 -5513 -5673
		mu 0 4 3078 3079 3100 3099
		f 4 5493 5674 -5514 -5674
		mu 0 4 3079 3080 3101 3100
		f 4 5494 5675 -5515 -5675
		mu 0 4 3080 3081 3102 3101
		f 4 5495 5676 -5516 -5676
		mu 0 4 3081 3082 3103 3102
		f 4 5496 5677 -5517 -5677
		mu 0 4 3082 3083 3104 3103
		f 4 5497 5678 -5518 -5678
		mu 0 4 3083 3084 3105 3104
		f 4 5498 5679 -5519 -5679
		mu 0 4 3084 3085 3106 3105
		f 4 5499 5660 -5520 -5680
		mu 0 4 3085 3086 3107 3106
		f 4 5500 5681 -5521 -5681
		mu 0 4 3088 3087 3108 3109
		f 4 5501 5682 -5522 -5682
		mu 0 4 3087 3089 3110 3108
		f 4 5502 5683 -5523 -5683
		mu 0 4 3089 3090 3111 3110
		f 4 5503 5684 -5524 -5684
		mu 0 4 3090 3091 3112 3111
		f 4 5504 5685 -5525 -5685
		mu 0 4 3091 3092 3113 3112
		f 4 5505 5686 -5526 -5686
		mu 0 4 3092 3093 3114 3113
		f 4 5506 5687 -5527 -5687
		mu 0 4 3093 3094 3115 3114
		f 4 5507 5688 -5528 -5688
		mu 0 4 3094 3095 3116 3115
		f 4 5508 5689 -5529 -5689
		mu 0 4 3095 3096 3117 3116
		f 4 5509 5690 -5530 -5690
		mu 0 4 3096 3097 3118 3117
		f 4 5510 5691 -5531 -5691
		mu 0 4 3097 3098 3119 3118
		f 4 5511 5692 -5532 -5692
		mu 0 4 3098 3099 3120 3119
		f 4 5512 5693 -5533 -5693
		mu 0 4 3099 3100 3121 3120
		f 4 5513 5694 -5534 -5694
		mu 0 4 3100 3101 3122 3121
		f 4 5514 5695 -5535 -5695
		mu 0 4 3101 3102 3123 3122
		f 4 5515 5696 -5536 -5696
		mu 0 4 3102 3103 3124 3123
		f 4 5516 5697 -5537 -5697
		mu 0 4 3103 3104 3125 3124
		f 4 5517 5698 -5538 -5698
		mu 0 4 3104 3105 3126 3125
		f 4 5518 5699 -5539 -5699
		mu 0 4 3105 3106 3127 3126
		f 4 5519 5680 -5540 -5700
		mu 0 4 3106 3107 3128 3127
		f 4 5520 5701 -5541 -5701
		mu 0 4 3109 3108 3129 3130
		f 4 5521 5702 -5542 -5702
		mu 0 4 3108 3110 3131 3129
		f 4 5522 5703 -5543 -5703
		mu 0 4 3110 3111 3132 3131
		f 4 5523 5704 -5544 -5704
		mu 0 4 3111 3112 3133 3132
		f 4 5524 5705 -5545 -5705
		mu 0 4 3112 3113 3134 3133
		f 4 5525 5706 -5546 -5706
		mu 0 4 3113 3114 3135 3134
		f 4 5526 5707 -5547 -5707
		mu 0 4 3114 3115 3136 3135
		f 4 5527 5708 -5548 -5708
		mu 0 4 3115 3116 3137 3136
		f 4 5528 5709 -5549 -5709
		mu 0 4 3116 3117 3138 3137
		f 4 5529 5710 -5550 -5710
		mu 0 4 3117 3118 3139 3138
		f 4 5530 5711 -5551 -5711
		mu 0 4 3118 3119 3140 3139
		f 4 5531 5712 -5552 -5712
		mu 0 4 3119 3120 3141 3140
		f 4 5532 5713 -5553 -5713
		mu 0 4 3120 3121 3142 3141
		f 4 5533 5714 -5554 -5714
		mu 0 4 3121 3122 3143 3142
		f 4 5534 5715 -5555 -5715
		mu 0 4 3122 3123 3144 3143
		f 4 5535 5716 -5556 -5716
		mu 0 4 3123 3124 3145 3144
		f 4 5536 5717 -5557 -5717
		mu 0 4 3124 3125 3146 3145
		f 4 5537 5718 -5558 -5718
		mu 0 4 3125 3126 3147 3146
		f 4 5538 5719 -5559 -5719
		mu 0 4 3126 3127 3148 3147
		f 4 5539 5700 -5560 -5720
		mu 0 4 3127 3128 3149 3148
		f 4 5540 5721 -5561 -5721
		mu 0 4 3130 3129 3150 3151
		f 4 5541 5722 -5562 -5722
		mu 0 4 3129 3131 3152 3150
		f 4 5542 5723 -5563 -5723
		mu 0 4 3131 3132 3153 3152
		f 4 5543 5724 -5564 -5724
		mu 0 4 3132 3133 3154 3153
		f 4 5544 5725 -5565 -5725
		mu 0 4 3133 3134 3155 3154
		f 4 5545 5726 -5566 -5726
		mu 0 4 3134 3135 3156 3155
		f 4 5546 5727 -5567 -5727
		mu 0 4 3135 3136 3157 3156
		f 4 5547 5728 -5568 -5728
		mu 0 4 3136 3137 3158 3157
		f 4 5548 5729 -5569 -5729
		mu 0 4 3137 3138 3159 3158
		f 4 5549 5730 -5570 -5730
		mu 0 4 3138 3139 3160 3159
		f 4 5550 5731 -5571 -5731
		mu 0 4 3139 3140 3161 3160
		f 4 5551 5732 -5572 -5732
		mu 0 4 3140 3141 3162 3161
		f 4 5552 5733 -5573 -5733
		mu 0 4 3141 3142 3163 3162
		f 4 5553 5734 -5574 -5734
		mu 0 4 3142 3143 3164 3163
		f 4 5554 5735 -5575 -5735
		mu 0 4 3143 3144 3165 3164
		f 4 5555 5736 -5576 -5736
		mu 0 4 3144 3145 3166 3165
		f 4 5556 5737 -5577 -5737
		mu 0 4 3145 3146 3167 3166
		f 4 5557 5738 -5578 -5738
		mu 0 4 3146 3147 3168 3167
		f 4 5558 5739 -5579 -5739
		mu 0 4 3147 3148 3169 3168
		f 4 5559 5720 -5580 -5740
		mu 0 4 3148 3149 3170 3169
		f 4 5560 5741 -5581 -5741
		mu 0 4 3151 3150 3171 3172
		f 4 5561 5742 -5582 -5742
		mu 0 4 3150 3152 3173 3171
		f 4 5562 5743 -5583 -5743
		mu 0 4 3152 3153 3174 3173
		f 4 5563 5744 -5584 -5744
		mu 0 4 3153 3154 3175 3174
		f 4 5564 5745 -5585 -5745
		mu 0 4 3154 3155 3176 3175
		f 4 5565 5746 -5586 -5746
		mu 0 4 3155 3156 3177 3176
		f 4 5566 5747 -5587 -5747
		mu 0 4 3156 3157 3178 3177
		f 4 5567 5748 -5588 -5748
		mu 0 4 3157 3158 3179 3178
		f 4 5568 5749 -5589 -5749
		mu 0 4 3158 3159 3180 3179
		f 4 5569 5750 -5590 -5750
		mu 0 4 3159 3160 3181 3180
		f 4 5570 5751 -5591 -5751
		mu 0 4 3160 3161 3182 3181
		f 4 5571 5752 -5592 -5752
		mu 0 4 3161 3162 3183 3182
		f 4 5572 5753 -5593 -5753
		mu 0 4 3162 3163 3184 3183
		f 4 5573 5754 -5594 -5754
		mu 0 4 3163 3164 3185 3184
		f 4 5574 5755 -5595 -5755
		mu 0 4 3164 3165 3186 3185
		f 4 5575 5756 -5596 -5756
		mu 0 4 3165 3166 3187 3186
		f 4 5576 5757 -5597 -5757
		mu 0 4 3166 3167 3188 3187
		f 4 5577 5758 -5598 -5758
		mu 0 4 3167 3168 3189 3188
		f 4 5578 5759 -5599 -5759
		mu 0 4 3168 3169 3190 3189
		f 4 5579 5740 -5600 -5760
		mu 0 4 3169 3170 3191 3190
		f 4 5580 5761 -5601 -5761
		mu 0 4 3172 3171 3192 3193
		f 4 5581 5762 -5602 -5762
		mu 0 4 3171 3173 3194 3192
		f 4 5582 5763 -5603 -5763
		mu 0 4 3173 3174 3195 3194
		f 4 5583 5764 -5604 -5764
		mu 0 4 3174 3175 3196 3195
		f 4 5584 5765 -5605 -5765
		mu 0 4 3175 3176 3197 3196
		f 4 5585 5766 -5606 -5766
		mu 0 4 3176 3177 3198 3197
		f 4 5586 5767 -5607 -5767
		mu 0 4 3177 3178 3199 3198
		f 4 5587 5768 -5608 -5768
		mu 0 4 3178 3179 3200 3199
		f 4 5588 5769 -5609 -5769
		mu 0 4 3179 3180 3201 3200
		f 4 5589 5770 -5610 -5770
		mu 0 4 3180 3181 3202 3201
		f 4 5590 5771 -5611 -5771
		mu 0 4 3181 3182 3203 3202
		f 4 5591 5772 -5612 -5772
		mu 0 4 3182 3183 3204 3203
		f 4 5592 5773 -5613 -5773
		mu 0 4 3183 3184 3205 3204
		f 4 5593 5774 -5614 -5774
		mu 0 4 3184 3185 3206 3205
		f 4 5594 5775 -5615 -5775
		mu 0 4 3185 3186 3207 3206
		f 4 5595 5776 -5616 -5776
		mu 0 4 3186 3187 3208 3207
		f 4 5596 5777 -5617 -5777
		mu 0 4 3187 3188 3209 3208
		f 4 5597 5778 -5618 -5778
		mu 0 4 3188 3189 3210 3209
		f 4 5598 5779 -5619 -5779
		mu 0 4 3189 3190 3211 3210
		f 4 5599 5760 -5620 -5780
		mu 0 4 3190 3191 3212 3211
		f 4 5780 5961 -5801 -5961
		mu 0 4 3213 3214 3215 3216
		f 4 5781 5962 -5802 -5962
		mu 0 4 3214 3217 3218 3215
		f 4 5782 5963 -5803 -5963
		mu 0 4 3217 3219 3220 3218
		f 4 5783 5964 -5804 -5964
		mu 0 4 3219 3221 3222 3220
		f 4 5784 5965 -5805 -5965
		mu 0 4 3221 3223 3224 3222
		f 4 5785 5966 -5806 -5966
		mu 0 4 3223 3225 3226 3224
		f 4 5786 5967 -5807 -5967
		mu 0 4 3225 3227 3228 3226
		f 4 5787 5968 -5808 -5968
		mu 0 4 3227 3229 3230 3228
		f 4 5788 5969 -5809 -5969
		mu 0 4 3229 3231 3232 3230
		f 4 5789 5970 -5810 -5970
		mu 0 4 3231 3233 3234 3232
		f 4 5790 5971 -5811 -5971
		mu 0 4 3233 3235 3236 3234
		f 4 5791 5972 -5812 -5972
		mu 0 4 3235 3237 3238 3236
		f 4 5792 5973 -5813 -5973
		mu 0 4 3237 3239 3240 3238
		f 4 5793 5974 -5814 -5974
		mu 0 4 3239 3241 3242 3240
		f 4 5794 5975 -5815 -5975
		mu 0 4 3241 3243 3244 3242
		f 4 5795 5976 -5816 -5976
		mu 0 4 3243 3245 3246 3244
		f 4 5796 5977 -5817 -5977
		mu 0 4 3245 3247 3248 3246
		f 4 5797 5978 -5818 -5978
		mu 0 4 3247 3249 3250 3248
		f 4 5798 5979 -5819 -5979
		mu 0 4 3249 3251 3252 3250
		f 4 5799 5960 -5820 -5980
		mu 0 4 3251 3253 3254 3252
		f 4 5800 5981 -5821 -5981
		mu 0 4 3216 3215 3255 3256
		f 4 5801 5982 -5822 -5982
		mu 0 4 3215 3218 3257 3255
		f 4 5802 5983 -5823 -5983
		mu 0 4 3218 3220 3258 3257
		f 4 5803 5984 -5824 -5984
		mu 0 4 3220 3222 3259 3258
		f 4 5804 5985 -5825 -5985
		mu 0 4 3222 3224 3260 3259
		f 4 5805 5986 -5826 -5986
		mu 0 4 3224 3226 3261 3260
		f 4 5806 5987 -5827 -5987
		mu 0 4 3226 3228 3262 3261
		f 4 5807 5988 -5828 -5988
		mu 0 4 3228 3230 3263 3262
		f 4 5808 5989 -5829 -5989
		mu 0 4 3230 3232 3264 3263
		f 4 5809 5990 -5830 -5990
		mu 0 4 3232 3234 3265 3264
		f 4 5810 5991 -5831 -5991
		mu 0 4 3234 3236 3266 3265
		f 4 5811 5992 -5832 -5992
		mu 0 4 3236 3238 3267 3266
		f 4 5812 5993 -5833 -5993
		mu 0 4 3238 3240 3268 3267
		f 4 5813 5994 -5834 -5994
		mu 0 4 3240 3242 3269 3268
		f 4 5814 5995 -5835 -5995
		mu 0 4 3242 3244 3270 3269
		f 4 5815 5996 -5836 -5996
		mu 0 4 3244 3246 3271 3270
		f 4 5816 5997 -5837 -5997
		mu 0 4 3246 3248 3272 3271
		f 4 5817 5998 -5838 -5998
		mu 0 4 3248 3250 3273 3272
		f 4 5818 5999 -5839 -5999
		mu 0 4 3250 3252 3274 3273
		f 4 5819 5980 -5840 -6000
		mu 0 4 3252 3254 3275 3274
		f 4 5820 6001 -5841 -6001
		mu 0 4 3256 3255 3276 3277
		f 4 5821 6002 -5842 -6002
		mu 0 4 3255 3257 3278 3276
		f 4 5822 6003 -5843 -6003
		mu 0 4 3257 3258 3279 3278
		f 4 5823 6004 -5844 -6004
		mu 0 4 3258 3259 3280 3279
		f 4 5824 6005 -5845 -6005
		mu 0 4 3259 3260 3281 3280
		f 4 5825 6006 -5846 -6006
		mu 0 4 3260 3261 3282 3281
		f 4 5826 6007 -5847 -6007
		mu 0 4 3261 3262 3283 3282
		f 4 5827 6008 -5848 -6008
		mu 0 4 3262 3263 3284 3283
		f 4 5828 6009 -5849 -6009
		mu 0 4 3263 3264 3285 3284
		f 4 5829 6010 -5850 -6010
		mu 0 4 3264 3265 3286 3285
		f 4 5830 6011 -5851 -6011
		mu 0 4 3265 3266 3287 3286
		f 4 5831 6012 -5852 -6012
		mu 0 4 3266 3267 3288 3287
		f 4 5832 6013 -5853 -6013
		mu 0 4 3267 3268 3289 3288
		f 4 5833 6014 -5854 -6014
		mu 0 4 3268 3269 3290 3289
		f 4 5834 6015 -5855 -6015
		mu 0 4 3269 3270 3291 3290
		f 4 5835 6016 -5856 -6016
		mu 0 4 3270 3271 3292 3291
		f 4 5836 6017 -5857 -6017
		mu 0 4 3271 3272 3293 3292
		f 4 5837 6018 -5858 -6018
		mu 0 4 3272 3273 3294 3293
		f 4 5838 6019 -5859 -6019
		mu 0 4 3273 3274 3295 3294
		f 4 5839 6000 -5860 -6020
		mu 0 4 3274 3275 3296 3295
		f 4 5840 6021 -5861 -6021
		mu 0 4 3277 3276 3297 3298
		f 4 5841 6022 -5862 -6022
		mu 0 4 3276 3278 3299 3297
		f 4 5842 6023 -5863 -6023
		mu 0 4 3278 3279 3300 3299
		f 4 5843 6024 -5864 -6024
		mu 0 4 3279 3280 3301 3300
		f 4 5844 6025 -5865 -6025
		mu 0 4 3280 3281 3302 3301
		f 4 5845 6026 -5866 -6026
		mu 0 4 3281 3282 3303 3302
		f 4 5846 6027 -5867 -6027
		mu 0 4 3282 3283 3304 3303
		f 4 5847 6028 -5868 -6028
		mu 0 4 3283 3284 3305 3304
		f 4 5848 6029 -5869 -6029
		mu 0 4 3284 3285 3306 3305
		f 4 5849 6030 -5870 -6030
		mu 0 4 3285 3286 3307 3306
		f 4 5850 6031 -5871 -6031
		mu 0 4 3286 3287 3308 3307
		f 4 5851 6032 -5872 -6032
		mu 0 4 3287 3288 3309 3308
		f 4 5852 6033 -5873 -6033
		mu 0 4 3288 3289 3310 3309
		f 4 5853 6034 -5874 -6034
		mu 0 4 3289 3290 3311 3310
		f 4 5854 6035 -5875 -6035
		mu 0 4 3290 3291 3312 3311
		f 4 5855 6036 -5876 -6036
		mu 0 4 3291 3292 3313 3312
		f 4 5856 6037 -5877 -6037
		mu 0 4 3292 3293 3314 3313
		f 4 5857 6038 -5878 -6038
		mu 0 4 3293 3294 3315 3314
		f 4 5858 6039 -5879 -6039
		mu 0 4 3294 3295 3316 3315
		f 4 5859 6020 -5880 -6040
		mu 0 4 3295 3296 3317 3316
		f 4 5860 6041 -5881 -6041
		mu 0 4 3298 3297 3318 3319
		f 4 5861 6042 -5882 -6042
		mu 0 4 3297 3299 3320 3318
		f 4 5862 6043 -5883 -6043
		mu 0 4 3299 3300 3321 3320
		f 4 5863 6044 -5884 -6044
		mu 0 4 3300 3301 3322 3321
		f 4 5864 6045 -5885 -6045
		mu 0 4 3301 3302 3323 3322
		f 4 5865 6046 -5886 -6046
		mu 0 4 3302 3303 3324 3323
		f 4 5866 6047 -5887 -6047
		mu 0 4 3303 3304 3325 3324
		f 4 5867 6048 -5888 -6048
		mu 0 4 3304 3305 3326 3325
		f 4 5868 6049 -5889 -6049
		mu 0 4 3305 3306 3327 3326
		f 4 5869 6050 -5890 -6050
		mu 0 4 3306 3307 3328 3327
		f 4 5870 6051 -5891 -6051
		mu 0 4 3307 3308 3329 3328
		f 4 5871 6052 -5892 -6052
		mu 0 4 3308 3309 3330 3329
		f 4 5872 6053 -5893 -6053
		mu 0 4 3309 3310 3331 3330
		f 4 5873 6054 -5894 -6054
		mu 0 4 3310 3311 3332 3331
		f 4 5874 6055 -5895 -6055
		mu 0 4 3311 3312 3333 3332
		f 4 5875 6056 -5896 -6056
		mu 0 4 3312 3313 3334 3333
		f 4 5876 6057 -5897 -6057
		mu 0 4 3313 3314 3335 3334
		f 4 5877 6058 -5898 -6058
		mu 0 4 3314 3315 3336 3335
		f 4 5878 6059 -5899 -6059
		mu 0 4 3315 3316 3337 3336
		f 4 5879 6040 -5900 -6060
		mu 0 4 3316 3317 3338 3337
		f 4 5880 6061 -5901 -6061
		mu 0 4 3319 3318 3339 3340
		f 4 5881 6062 -5902 -6062
		mu 0 4 3318 3320 3341 3339
		f 4 5882 6063 -5903 -6063
		mu 0 4 3320 3321 3342 3341
		f 4 5883 6064 -5904 -6064
		mu 0 4 3321 3322 3343 3342
		f 4 5884 6065 -5905 -6065
		mu 0 4 3322 3323 3344 3343
		f 4 5885 6066 -5906 -6066
		mu 0 4 3323 3324 3345 3344
		f 4 5886 6067 -5907 -6067
		mu 0 4 3324 3325 3346 3345
		f 4 5887 6068 -5908 -6068
		mu 0 4 3325 3326 3347 3346
		f 4 5888 6069 -5909 -6069
		mu 0 4 3326 3327 3348 3347
		f 4 5889 6070 -5910 -6070
		mu 0 4 3327 3328 3349 3348
		f 4 5890 6071 -5911 -6071
		mu 0 4 3328 3329 3350 3349
		f 4 5891 6072 -5912 -6072
		mu 0 4 3329 3330 3351 3350
		f 4 5892 6073 -5913 -6073
		mu 0 4 3330 3331 3352 3351
		f 4 5893 6074 -5914 -6074
		mu 0 4 3331 3332 3353 3352
		f 4 5894 6075 -5915 -6075
		mu 0 4 3332 3333 3354 3353
		f 4 5895 6076 -5916 -6076
		mu 0 4 3333 3334 3355 3354
		f 4 5896 6077 -5917 -6077
		mu 0 4 3334 3335 3356 3355
		f 4 5897 6078 -5918 -6078
		mu 0 4 3335 3336 3357 3356
		f 4 5898 6079 -5919 -6079
		mu 0 4 3336 3337 3358 3357
		f 4 5899 6060 -5920 -6080
		mu 0 4 3337 3338 3359 3358
		f 4 5900 6081 -5921 -6081
		mu 0 4 3340 3339 3360 3361
		f 4 5901 6082 -5922 -6082
		mu 0 4 3339 3341 3362 3360
		f 4 5902 6083 -5923 -6083
		mu 0 4 3341 3342 3363 3362
		f 4 5903 6084 -5924 -6084
		mu 0 4 3342 3343 3364 3363
		f 4 5904 6085 -5925 -6085
		mu 0 4 3343 3344 3365 3364
		f 4 5905 6086 -5926 -6086
		mu 0 4 3344 3345 3366 3365
		f 4 5906 6087 -5927 -6087
		mu 0 4 3345 3346 3367 3366
		f 4 5907 6088 -5928 -6088
		mu 0 4 3346 3347 3368 3367
		f 4 5908 6089 -5929 -6089
		mu 0 4 3347 3348 3369 3368
		f 4 5909 6090 -5930 -6090
		mu 0 4 3348 3349 3370 3369
		f 4 5910 6091 -5931 -6091
		mu 0 4 3349 3350 3371 3370
		f 4 5911 6092 -5932 -6092
		mu 0 4 3350 3351 3372 3371
		f 4 5912 6093 -5933 -6093
		mu 0 4 3351 3352 3373 3372
		f 4 5913 6094 -5934 -6094
		mu 0 4 3352 3353 3374 3373
		f 4 5914 6095 -5935 -6095
		mu 0 4 3353 3354 3375 3374
		f 4 5915 6096 -5936 -6096
		mu 0 4 3354 3355 3376 3375
		f 4 5916 6097 -5937 -6097
		mu 0 4 3355 3356 3377 3376
		f 4 5917 6098 -5938 -6098
		mu 0 4 3356 3357 3378 3377
		f 4 5918 6099 -5939 -6099
		mu 0 4 3357 3358 3379 3378
		f 4 5919 6080 -5940 -6100
		mu 0 4 3358 3359 3380 3379
		f 4 5920 6101 -5941 -6101
		mu 0 4 3361 3360 3381 3382
		f 4 5921 6102 -5942 -6102
		mu 0 4 3360 3362 3383 3381
		f 4 5922 6103 -5943 -6103
		mu 0 4 3362 3363 3384 3383
		f 4 5923 6104 -5944 -6104
		mu 0 4 3363 3364 3385 3384
		f 4 5924 6105 -5945 -6105
		mu 0 4 3364 3365 3386 3385
		f 4 5925 6106 -5946 -6106
		mu 0 4 3365 3366 3387 3386
		f 4 5926 6107 -5947 -6107
		mu 0 4 3366 3367 3388 3387
		f 4 5927 6108 -5948 -6108
		mu 0 4 3367 3368 3389 3388
		f 4 5928 6109 -5949 -6109
		mu 0 4 3368 3369 3390 3389
		f 4 5929 6110 -5950 -6110
		mu 0 4 3369 3370 3391 3390
		f 4 5930 6111 -5951 -6111
		mu 0 4 3370 3371 3392 3391
		f 4 5931 6112 -5952 -6112
		mu 0 4 3371 3372 3393 3392
		f 4 5932 6113 -5953 -6113
		mu 0 4 3372 3373 3394 3393
		f 4 5933 6114 -5954 -6114
		mu 0 4 3373 3374 3395 3394
		f 4 5934 6115 -5955 -6115
		mu 0 4 3374 3375 3396 3395
		f 4 5935 6116 -5956 -6116
		mu 0 4 3375 3376 3397 3396
		f 4 5936 6117 -5957 -6117
		mu 0 4 3376 3377 3398 3397
		f 4 5937 6118 -5958 -6118
		mu 0 4 3377 3378 3399 3398
		f 4 5938 6119 -5959 -6119
		mu 0 4 3378 3379 3400 3399
		f 4 5939 6100 -5960 -6120
		mu 0 4 3379 3380 3401 3400
		f 4 6120 6301 -6141 -6301
		mu 0 4 3402 3403 3404 3405
		f 4 6121 6302 -6142 -6302
		mu 0 4 3403 3406 3407 3404
		f 4 6122 6303 -6143 -6303
		mu 0 4 3406 3408 3409 3407
		f 4 6123 6304 -6144 -6304
		mu 0 4 3408 3410 3411 3409
		f 4 6124 6305 -6145 -6305
		mu 0 4 3410 3412 3413 3411
		f 4 6125 6306 -6146 -6306
		mu 0 4 3412 3414 3415 3413
		f 4 6126 6307 -6147 -6307
		mu 0 4 3414 3416 3417 3415
		f 4 6127 6308 -6148 -6308
		mu 0 4 3416 3418 3419 3417
		f 4 6128 6309 -6149 -6309
		mu 0 4 3418 3420 3421 3419
		f 4 6129 6310 -6150 -6310
		mu 0 4 3420 3422 3423 3421
		f 4 6130 6311 -6151 -6311
		mu 0 4 3422 3424 3425 3423
		f 4 6131 6312 -6152 -6312
		mu 0 4 3424 3426 3427 3425
		f 4 6132 6313 -6153 -6313
		mu 0 4 3426 3428 3429 3427
		f 4 6133 6314 -6154 -6314
		mu 0 4 3428 3430 3431 3429
		f 4 6134 6315 -6155 -6315
		mu 0 4 3430 3432 3433 3431
		f 4 6135 6316 -6156 -6316
		mu 0 4 3432 3434 3435 3433
		f 4 6136 6317 -6157 -6317
		mu 0 4 3434 3436 3437 3435
		f 4 6137 6318 -6158 -6318
		mu 0 4 3436 3438 3439 3437
		f 4 6138 6319 -6159 -6319
		mu 0 4 3438 3440 3441 3439
		f 4 6139 6300 -6160 -6320
		mu 0 4 3440 3442 3443 3441
		f 4 6140 6321 -6161 -6321
		mu 0 4 3405 3404 3444 3445
		f 4 6141 6322 -6162 -6322
		mu 0 4 3404 3407 3446 3444
		f 4 6142 6323 -6163 -6323
		mu 0 4 3407 3409 3447 3446
		f 4 6143 6324 -6164 -6324
		mu 0 4 3409 3411 3448 3447
		f 4 6144 6325 -6165 -6325
		mu 0 4 3411 3413 3449 3448
		f 4 6145 6326 -6166 -6326
		mu 0 4 3413 3415 3450 3449
		f 4 6146 6327 -6167 -6327
		mu 0 4 3415 3417 3451 3450
		f 4 6147 6328 -6168 -6328
		mu 0 4 3417 3419 3452 3451
		f 4 6148 6329 -6169 -6329
		mu 0 4 3419 3421 3453 3452
		f 4 6149 6330 -6170 -6330
		mu 0 4 3421 3423 3454 3453
		f 4 6150 6331 -6171 -6331
		mu 0 4 3423 3425 3455 3454
		f 4 6151 6332 -6172 -6332
		mu 0 4 3425 3427 3456 3455
		f 4 6152 6333 -6173 -6333
		mu 0 4 3427 3429 3457 3456
		f 4 6153 6334 -6174 -6334
		mu 0 4 3429 3431 3458 3457
		f 4 6154 6335 -6175 -6335
		mu 0 4 3431 3433 3459 3458
		f 4 6155 6336 -6176 -6336
		mu 0 4 3433 3435 3460 3459
		f 4 6156 6337 -6177 -6337
		mu 0 4 3435 3437 3461 3460
		f 4 6157 6338 -6178 -6338
		mu 0 4 3437 3439 3462 3461
		f 4 6158 6339 -6179 -6339
		mu 0 4 3439 3441 3463 3462
		f 4 6159 6320 -6180 -6340
		mu 0 4 3441 3443 3464 3463
		f 4 6160 6341 -6181 -6341
		mu 0 4 3445 3444 3465 3466
		f 4 6161 6342 -6182 -6342
		mu 0 4 3444 3446 3467 3465
		f 4 6162 6343 -6183 -6343
		mu 0 4 3446 3447 3468 3467
		f 4 6163 6344 -6184 -6344
		mu 0 4 3447 3448 3469 3468
		f 4 6164 6345 -6185 -6345
		mu 0 4 3448 3449 3470 3469
		f 4 6165 6346 -6186 -6346
		mu 0 4 3449 3450 3471 3470
		f 4 6166 6347 -6187 -6347
		mu 0 4 3450 3451 3472 3471
		f 4 6167 6348 -6188 -6348
		mu 0 4 3451 3452 3473 3472
		f 4 6168 6349 -6189 -6349
		mu 0 4 3452 3453 3474 3473
		f 4 6169 6350 -6190 -6350
		mu 0 4 3453 3454 3475 3474
		f 4 6170 6351 -6191 -6351
		mu 0 4 3454 3455 3476 3475
		f 4 6171 6352 -6192 -6352
		mu 0 4 3455 3456 3477 3476
		f 4 6172 6353 -6193 -6353
		mu 0 4 3456 3457 3478 3477
		f 4 6173 6354 -6194 -6354
		mu 0 4 3457 3458 3479 3478
		f 4 6174 6355 -6195 -6355
		mu 0 4 3458 3459 3480 3479
		f 4 6175 6356 -6196 -6356
		mu 0 4 3459 3460 3481 3480
		f 4 6176 6357 -6197 -6357
		mu 0 4 3460 3461 3482 3481
		f 4 6177 6358 -6198 -6358
		mu 0 4 3461 3462 3483 3482
		f 4 6178 6359 -6199 -6359
		mu 0 4 3462 3463 3484 3483
		f 4 6179 6340 -6200 -6360
		mu 0 4 3463 3464 3485 3484
		f 4 6180 6361 -6201 -6361
		mu 0 4 3466 3465 3486 3487
		f 4 6181 6362 -6202 -6362
		mu 0 4 3465 3467 3488 3486
		f 4 6182 6363 -6203 -6363
		mu 0 4 3467 3468 3489 3488
		f 4 6183 6364 -6204 -6364
		mu 0 4 3468 3469 3490 3489
		f 4 6184 6365 -6205 -6365
		mu 0 4 3469 3470 3491 3490
		f 4 6185 6366 -6206 -6366
		mu 0 4 3470 3471 3492 3491
		f 4 6186 6367 -6207 -6367
		mu 0 4 3471 3472 3493 3492
		f 4 6187 6368 -6208 -6368
		mu 0 4 3472 3473 3494 3493
		f 4 6188 6369 -6209 -6369
		mu 0 4 3473 3474 3495 3494
		f 4 6189 6370 -6210 -6370
		mu 0 4 3474 3475 3496 3495
		f 4 6190 6371 -6211 -6371
		mu 0 4 3475 3476 3497 3496
		f 4 6191 6372 -6212 -6372
		mu 0 4 3476 3477 3498 3497
		f 4 6192 6373 -6213 -6373
		mu 0 4 3477 3478 3499 3498
		f 4 6193 6374 -6214 -6374
		mu 0 4 3478 3479 3500 3499
		f 4 6194 6375 -6215 -6375
		mu 0 4 3479 3480 3501 3500
		f 4 6195 6376 -6216 -6376
		mu 0 4 3480 3481 3502 3501
		f 4 6196 6377 -6217 -6377
		mu 0 4 3481 3482 3503 3502
		f 4 6197 6378 -6218 -6378
		mu 0 4 3482 3483 3504 3503
		f 4 6198 6379 -6219 -6379
		mu 0 4 3483 3484 3505 3504
		f 4 6199 6360 -6220 -6380
		mu 0 4 3484 3485 3506 3505
		f 4 6200 6381 -6221 -6381
		mu 0 4 3487 3486 3507 3508
		f 4 6201 6382 -6222 -6382
		mu 0 4 3486 3488 3509 3507
		f 4 6202 6383 -6223 -6383
		mu 0 4 3488 3489 3510 3509
		f 4 6203 6384 -6224 -6384
		mu 0 4 3489 3490 3511 3510
		f 4 6204 6385 -6225 -6385
		mu 0 4 3490 3491 3512 3511
		f 4 6205 6386 -6226 -6386
		mu 0 4 3491 3492 3513 3512
		f 4 6206 6387 -6227 -6387
		mu 0 4 3492 3493 3514 3513
		f 4 6207 6388 -6228 -6388
		mu 0 4 3493 3494 3515 3514
		f 4 6208 6389 -6229 -6389
		mu 0 4 3494 3495 3516 3515
		f 4 6209 6390 -6230 -6390
		mu 0 4 3495 3496 3517 3516
		f 4 6210 6391 -6231 -6391
		mu 0 4 3496 3497 3518 3517
		f 4 6211 6392 -6232 -6392
		mu 0 4 3497 3498 3519 3518
		f 4 6212 6393 -6233 -6393
		mu 0 4 3498 3499 3520 3519
		f 4 6213 6394 -6234 -6394
		mu 0 4 3499 3500 3521 3520
		f 4 6214 6395 -6235 -6395
		mu 0 4 3500 3501 3522 3521
		f 4 6215 6396 -6236 -6396
		mu 0 4 3501 3502 3523 3522
		f 4 6216 6397 -6237 -6397
		mu 0 4 3502 3503 3524 3523
		f 4 6217 6398 -6238 -6398
		mu 0 4 3503 3504 3525 3524
		f 4 6218 6399 -6239 -6399
		mu 0 4 3504 3505 3526 3525
		f 4 6219 6380 -6240 -6400
		mu 0 4 3505 3506 3527 3526
		f 4 6220 6401 -6241 -6401
		mu 0 4 3508 3507 3528 3529
		f 4 6221 6402 -6242 -6402
		mu 0 4 3507 3509 3530 3528
		f 4 6222 6403 -6243 -6403
		mu 0 4 3509 3510 3531 3530
		f 4 6223 6404 -6244 -6404
		mu 0 4 3510 3511 3532 3531
		f 4 6224 6405 -6245 -6405
		mu 0 4 3511 3512 3533 3532
		f 4 6225 6406 -6246 -6406
		mu 0 4 3512 3513 3534 3533
		f 4 6226 6407 -6247 -6407
		mu 0 4 3513 3514 3535 3534
		f 4 6227 6408 -6248 -6408
		mu 0 4 3514 3515 3536 3535
		f 4 6228 6409 -6249 -6409
		mu 0 4 3515 3516 3537 3536
		f 4 6229 6410 -6250 -6410
		mu 0 4 3516 3517 3538 3537
		f 4 6230 6411 -6251 -6411
		mu 0 4 3517 3518 3539 3538
		f 4 6231 6412 -6252 -6412
		mu 0 4 3518 3519 3540 3539
		f 4 6232 6413 -6253 -6413
		mu 0 4 3519 3520 3541 3540
		f 4 6233 6414 -6254 -6414
		mu 0 4 3520 3521 3542 3541
		f 4 6234 6415 -6255 -6415
		mu 0 4 3521 3522 3543 3542
		f 4 6235 6416 -6256 -6416
		mu 0 4 3522 3523 3544 3543
		f 4 6236 6417 -6257 -6417
		mu 0 4 3523 3524 3545 3544
		f 4 6237 6418 -6258 -6418
		mu 0 4 3524 3525 3546 3545
		f 4 6238 6419 -6259 -6419
		mu 0 4 3525 3526 3547 3546
		f 4 6239 6400 -6260 -6420
		mu 0 4 3526 3527 3548 3547;
	setAttr ".fc[3000:3499]"
		f 4 6240 6421 -6261 -6421
		mu 0 4 3529 3528 3549 3550
		f 4 6241 6422 -6262 -6422
		mu 0 4 3528 3530 3551 3549
		f 4 6242 6423 -6263 -6423
		mu 0 4 3530 3531 3552 3551
		f 4 6243 6424 -6264 -6424
		mu 0 4 3531 3532 3553 3552
		f 4 6244 6425 -6265 -6425
		mu 0 4 3532 3533 3554 3553
		f 4 6245 6426 -6266 -6426
		mu 0 4 3533 3534 3555 3554
		f 4 6246 6427 -6267 -6427
		mu 0 4 3534 3535 3556 3555
		f 4 6247 6428 -6268 -6428
		mu 0 4 3535 3536 3557 3556
		f 4 6248 6429 -6269 -6429
		mu 0 4 3536 3537 3558 3557
		f 4 6249 6430 -6270 -6430
		mu 0 4 3537 3538 3559 3558
		f 4 6250 6431 -6271 -6431
		mu 0 4 3538 3539 3560 3559
		f 4 6251 6432 -6272 -6432
		mu 0 4 3539 3540 3561 3560
		f 4 6252 6433 -6273 -6433
		mu 0 4 3540 3541 3562 3561
		f 4 6253 6434 -6274 -6434
		mu 0 4 3541 3542 3563 3562
		f 4 6254 6435 -6275 -6435
		mu 0 4 3542 3543 3564 3563
		f 4 6255 6436 -6276 -6436
		mu 0 4 3543 3544 3565 3564
		f 4 6256 6437 -6277 -6437
		mu 0 4 3544 3545 3566 3565
		f 4 6257 6438 -6278 -6438
		mu 0 4 3545 3546 3567 3566
		f 4 6258 6439 -6279 -6439
		mu 0 4 3546 3547 3568 3567
		f 4 6259 6420 -6280 -6440
		mu 0 4 3547 3548 3569 3568
		f 4 6260 6441 -6281 -6441
		mu 0 4 3550 3549 3570 3571
		f 4 6261 6442 -6282 -6442
		mu 0 4 3549 3551 3572 3570
		f 4 6262 6443 -6283 -6443
		mu 0 4 3551 3552 3573 3572
		f 4 6263 6444 -6284 -6444
		mu 0 4 3552 3553 3574 3573
		f 4 6264 6445 -6285 -6445
		mu 0 4 3553 3554 3575 3574
		f 4 6265 6446 -6286 -6446
		mu 0 4 3554 3555 3576 3575
		f 4 6266 6447 -6287 -6447
		mu 0 4 3555 3556 3577 3576
		f 4 6267 6448 -6288 -6448
		mu 0 4 3556 3557 3578 3577
		f 4 6268 6449 -6289 -6449
		mu 0 4 3557 3558 3579 3578
		f 4 6269 6450 -6290 -6450
		mu 0 4 3558 3559 3580 3579
		f 4 6270 6451 -6291 -6451
		mu 0 4 3559 3560 3581 3580
		f 4 6271 6452 -6292 -6452
		mu 0 4 3560 3561 3582 3581
		f 4 6272 6453 -6293 -6453
		mu 0 4 3561 3562 3583 3582
		f 4 6273 6454 -6294 -6454
		mu 0 4 3562 3563 3584 3583
		f 4 6274 6455 -6295 -6455
		mu 0 4 3563 3564 3585 3584
		f 4 6275 6456 -6296 -6456
		mu 0 4 3564 3565 3586 3585
		f 4 6276 6457 -6297 -6457
		mu 0 4 3565 3566 3587 3586
		f 4 6277 6458 -6298 -6458
		mu 0 4 3566 3567 3588 3587
		f 4 6278 6459 -6299 -6459
		mu 0 4 3567 3568 3589 3588
		f 4 6279 6440 -6300 -6460
		mu 0 4 3568 3569 3590 3589
		f 4 6460 6641 -6481 -6641
		mu 0 4 3591 3592 3593 3594
		f 4 6461 6642 -6482 -6642
		mu 0 4 3592 3595 3596 3593
		f 4 6462 6643 -6483 -6643
		mu 0 4 3595 3597 3598 3596
		f 4 6463 6644 -6484 -6644
		mu 0 4 3597 3599 3600 3598
		f 4 6464 6645 -6485 -6645
		mu 0 4 3599 3601 3602 3600
		f 4 6465 6646 -6486 -6646
		mu 0 4 3601 3603 3604 3602
		f 4 6466 6647 -6487 -6647
		mu 0 4 3603 3605 3606 3604
		f 4 6467 6648 -6488 -6648
		mu 0 4 3605 3607 3608 3606
		f 4 6468 6649 -6489 -6649
		mu 0 4 3607 3609 3610 3608
		f 4 6469 6650 -6490 -6650
		mu 0 4 3609 3611 3612 3610
		f 4 6470 6651 -6491 -6651
		mu 0 4 3611 3613 3614 3612
		f 4 6471 6652 -6492 -6652
		mu 0 4 3613 3615 3616 3614
		f 4 6472 6653 -6493 -6653
		mu 0 4 3615 3617 3618 3616
		f 4 6473 6654 -6494 -6654
		mu 0 4 3617 3619 3620 3618
		f 4 6474 6655 -6495 -6655
		mu 0 4 3619 3621 3622 3620
		f 4 6475 6656 -6496 -6656
		mu 0 4 3621 3623 3624 3622
		f 4 6476 6657 -6497 -6657
		mu 0 4 3623 3625 3626 3624
		f 4 6477 6658 -6498 -6658
		mu 0 4 3625 3627 3628 3626
		f 4 6478 6659 -6499 -6659
		mu 0 4 3627 3629 3630 3628
		f 4 6479 6640 -6500 -6660
		mu 0 4 3629 3631 3632 3630
		f 4 6480 6661 -6501 -6661
		mu 0 4 3594 3593 3633 3634
		f 4 6481 6662 -6502 -6662
		mu 0 4 3593 3596 3635 3633
		f 4 6482 6663 -6503 -6663
		mu 0 4 3596 3598 3636 3635
		f 4 6483 6664 -6504 -6664
		mu 0 4 3598 3600 3637 3636
		f 4 6484 6665 -6505 -6665
		mu 0 4 3600 3602 3638 3637
		f 4 6485 6666 -6506 -6666
		mu 0 4 3602 3604 3639 3638
		f 4 6486 6667 -6507 -6667
		mu 0 4 3604 3606 3640 3639
		f 4 6487 6668 -6508 -6668
		mu 0 4 3606 3608 3641 3640
		f 4 6488 6669 -6509 -6669
		mu 0 4 3608 3610 3642 3641
		f 4 6489 6670 -6510 -6670
		mu 0 4 3610 3612 3643 3642
		f 4 6490 6671 -6511 -6671
		mu 0 4 3612 3614 3644 3643
		f 4 6491 6672 -6512 -6672
		mu 0 4 3614 3616 3645 3644
		f 4 6492 6673 -6513 -6673
		mu 0 4 3616 3618 3646 3645
		f 4 6493 6674 -6514 -6674
		mu 0 4 3618 3620 3647 3646
		f 4 6494 6675 -6515 -6675
		mu 0 4 3620 3622 3648 3647
		f 4 6495 6676 -6516 -6676
		mu 0 4 3622 3624 3649 3648
		f 4 6496 6677 -6517 -6677
		mu 0 4 3624 3626 3650 3649
		f 4 6497 6678 -6518 -6678
		mu 0 4 3626 3628 3651 3650
		f 4 6498 6679 -6519 -6679
		mu 0 4 3628 3630 3652 3651
		f 4 6499 6660 -6520 -6680
		mu 0 4 3630 3632 3653 3652
		f 4 6500 6681 -6521 -6681
		mu 0 4 3634 3633 3654 3655
		f 4 6501 6682 -6522 -6682
		mu 0 4 3633 3635 3656 3654
		f 4 6502 6683 -6523 -6683
		mu 0 4 3635 3636 3657 3656
		f 4 6503 6684 -6524 -6684
		mu 0 4 3636 3637 3658 3657
		f 4 6504 6685 -6525 -6685
		mu 0 4 3637 3638 3659 3658
		f 4 6505 6686 -6526 -6686
		mu 0 4 3638 3639 3660 3659
		f 4 6506 6687 -6527 -6687
		mu 0 4 3639 3640 3661 3660
		f 4 6507 6688 -6528 -6688
		mu 0 4 3640 3641 3662 3661
		f 4 6508 6689 -6529 -6689
		mu 0 4 3641 3642 3663 3662
		f 4 6509 6690 -6530 -6690
		mu 0 4 3642 3643 3664 3663
		f 4 6510 6691 -6531 -6691
		mu 0 4 3643 3644 3665 3664
		f 4 6511 6692 -6532 -6692
		mu 0 4 3644 3645 3666 3665
		f 4 6512 6693 -6533 -6693
		mu 0 4 3645 3646 3667 3666
		f 4 6513 6694 -6534 -6694
		mu 0 4 3646 3647 3668 3667
		f 4 6514 6695 -6535 -6695
		mu 0 4 3647 3648 3669 3668
		f 4 6515 6696 -6536 -6696
		mu 0 4 3648 3649 3670 3669
		f 4 6516 6697 -6537 -6697
		mu 0 4 3649 3650 3671 3670
		f 4 6517 6698 -6538 -6698
		mu 0 4 3650 3651 3672 3671
		f 4 6518 6699 -6539 -6699
		mu 0 4 3651 3652 3673 3672
		f 4 6519 6680 -6540 -6700
		mu 0 4 3652 3653 3674 3673
		f 4 6520 6701 -6541 -6701
		mu 0 4 3655 3654 3675 3676
		f 4 6521 6702 -6542 -6702
		mu 0 4 3654 3656 3677 3675
		f 4 6522 6703 -6543 -6703
		mu 0 4 3656 3657 3678 3677
		f 4 6523 6704 -6544 -6704
		mu 0 4 3657 3658 3679 3678
		f 4 6524 6705 -6545 -6705
		mu 0 4 3658 3659 3680 3679
		f 4 6525 6706 -6546 -6706
		mu 0 4 3659 3660 3681 3680
		f 4 6526 6707 -6547 -6707
		mu 0 4 3660 3661 3682 3681
		f 4 6527 6708 -6548 -6708
		mu 0 4 3661 3662 3683 3682
		f 4 6528 6709 -6549 -6709
		mu 0 4 3662 3663 3684 3683
		f 4 6529 6710 -6550 -6710
		mu 0 4 3663 3664 3685 3684
		f 4 6530 6711 -6551 -6711
		mu 0 4 3664 3665 3686 3685
		f 4 6531 6712 -6552 -6712
		mu 0 4 3665 3666 3687 3686
		f 4 6532 6713 -6553 -6713
		mu 0 4 3666 3667 3688 3687
		f 4 6533 6714 -6554 -6714
		mu 0 4 3667 3668 3689 3688
		f 4 6534 6715 -6555 -6715
		mu 0 4 3668 3669 3690 3689
		f 4 6535 6716 -6556 -6716
		mu 0 4 3669 3670 3691 3690
		f 4 6536 6717 -6557 -6717
		mu 0 4 3670 3671 3692 3691
		f 4 6537 6718 -6558 -6718
		mu 0 4 3671 3672 3693 3692
		f 4 6538 6719 -6559 -6719
		mu 0 4 3672 3673 3694 3693
		f 4 6539 6700 -6560 -6720
		mu 0 4 3673 3674 3695 3694
		f 4 6540 6721 -6561 -6721
		mu 0 4 3676 3675 3696 3697
		f 4 6541 6722 -6562 -6722
		mu 0 4 3675 3677 3698 3696
		f 4 6542 6723 -6563 -6723
		mu 0 4 3677 3678 3699 3698
		f 4 6543 6724 -6564 -6724
		mu 0 4 3678 3679 3700 3699
		f 4 6544 6725 -6565 -6725
		mu 0 4 3679 3680 3701 3700
		f 4 6545 6726 -6566 -6726
		mu 0 4 3680 3681 3702 3701
		f 4 6546 6727 -6567 -6727
		mu 0 4 3681 3682 3703 3702
		f 4 6547 6728 -6568 -6728
		mu 0 4 3682 3683 3704 3703
		f 4 6548 6729 -6569 -6729
		mu 0 4 3683 3684 3705 3704
		f 4 6549 6730 -6570 -6730
		mu 0 4 3684 3685 3706 3705
		f 4 6550 6731 -6571 -6731
		mu 0 4 3685 3686 3707 3706
		f 4 6551 6732 -6572 -6732
		mu 0 4 3686 3687 3708 3707
		f 4 6552 6733 -6573 -6733
		mu 0 4 3687 3688 3709 3708
		f 4 6553 6734 -6574 -6734
		mu 0 4 3688 3689 3710 3709
		f 4 6554 6735 -6575 -6735
		mu 0 4 3689 3690 3711 3710
		f 4 6555 6736 -6576 -6736
		mu 0 4 3690 3691 3712 3711
		f 4 6556 6737 -6577 -6737
		mu 0 4 3691 3692 3713 3712
		f 4 6557 6738 -6578 -6738
		mu 0 4 3692 3693 3714 3713
		f 4 6558 6739 -6579 -6739
		mu 0 4 3693 3694 3715 3714
		f 4 6559 6720 -6580 -6740
		mu 0 4 3694 3695 3716 3715
		f 4 6560 6741 -6581 -6741
		mu 0 4 3697 3696 3717 3718
		f 4 6561 6742 -6582 -6742
		mu 0 4 3696 3698 3719 3717
		f 4 6562 6743 -6583 -6743
		mu 0 4 3698 3699 3720 3719
		f 4 6563 6744 -6584 -6744
		mu 0 4 3699 3700 3721 3720
		f 4 6564 6745 -6585 -6745
		mu 0 4 3700 3701 3722 3721
		f 4 6565 6746 -6586 -6746
		mu 0 4 3701 3702 3723 3722
		f 4 6566 6747 -6587 -6747
		mu 0 4 3702 3703 3724 3723
		f 4 6567 6748 -6588 -6748
		mu 0 4 3703 3704 3725 3724
		f 4 6568 6749 -6589 -6749
		mu 0 4 3704 3705 3726 3725
		f 4 6569 6750 -6590 -6750
		mu 0 4 3705 3706 3727 3726
		f 4 6570 6751 -6591 -6751
		mu 0 4 3706 3707 3728 3727
		f 4 6571 6752 -6592 -6752
		mu 0 4 3707 3708 3729 3728
		f 4 6572 6753 -6593 -6753
		mu 0 4 3708 3709 3730 3729
		f 4 6573 6754 -6594 -6754
		mu 0 4 3709 3710 3731 3730
		f 4 6574 6755 -6595 -6755
		mu 0 4 3710 3711 3732 3731
		f 4 6575 6756 -6596 -6756
		mu 0 4 3711 3712 3733 3732
		f 4 6576 6757 -6597 -6757
		mu 0 4 3712 3713 3734 3733
		f 4 6577 6758 -6598 -6758
		mu 0 4 3713 3714 3735 3734
		f 4 6578 6759 -6599 -6759
		mu 0 4 3714 3715 3736 3735
		f 4 6579 6740 -6600 -6760
		mu 0 4 3715 3716 3737 3736
		f 4 6580 6761 -6601 -6761
		mu 0 4 3718 3717 3738 3739
		f 4 6581 6762 -6602 -6762
		mu 0 4 3717 3719 3740 3738
		f 4 6582 6763 -6603 -6763
		mu 0 4 3719 3720 3741 3740
		f 4 6583 6764 -6604 -6764
		mu 0 4 3720 3721 3742 3741
		f 4 6584 6765 -6605 -6765
		mu 0 4 3721 3722 3743 3742
		f 4 6585 6766 -6606 -6766
		mu 0 4 3722 3723 3744 3743
		f 4 6586 6767 -6607 -6767
		mu 0 4 3723 3724 3745 3744
		f 4 6587 6768 -6608 -6768
		mu 0 4 3724 3725 3746 3745
		f 4 6588 6769 -6609 -6769
		mu 0 4 3725 3726 3747 3746
		f 4 6589 6770 -6610 -6770
		mu 0 4 3726 3727 3748 3747
		f 4 6590 6771 -6611 -6771
		mu 0 4 3727 3728 3749 3748
		f 4 6591 6772 -6612 -6772
		mu 0 4 3728 3729 3750 3749
		f 4 6592 6773 -6613 -6773
		mu 0 4 3729 3730 3751 3750
		f 4 6593 6774 -6614 -6774
		mu 0 4 3730 3731 3752 3751
		f 4 6594 6775 -6615 -6775
		mu 0 4 3731 3732 3753 3752
		f 4 6595 6776 -6616 -6776
		mu 0 4 3732 3733 3754 3753
		f 4 6596 6777 -6617 -6777
		mu 0 4 3733 3734 3755 3754
		f 4 6597 6778 -6618 -6778
		mu 0 4 3734 3735 3756 3755
		f 4 6598 6779 -6619 -6779
		mu 0 4 3735 3736 3757 3756
		f 4 6599 6760 -6620 -6780
		mu 0 4 3736 3737 3758 3757
		f 4 6600 6781 -6621 -6781
		mu 0 4 3739 3738 3759 3760
		f 4 6601 6782 -6622 -6782
		mu 0 4 3738 3740 3761 3759
		f 4 6602 6783 -6623 -6783
		mu 0 4 3740 3741 3762 3761
		f 4 6603 6784 -6624 -6784
		mu 0 4 3741 3742 3763 3762
		f 4 6604 6785 -6625 -6785
		mu 0 4 3742 3743 3764 3763
		f 4 6605 6786 -6626 -6786
		mu 0 4 3743 3744 3765 3764
		f 4 6606 6787 -6627 -6787
		mu 0 4 3744 3745 3766 3765
		f 4 6607 6788 -6628 -6788
		mu 0 4 3745 3746 3767 3766
		f 4 6608 6789 -6629 -6789
		mu 0 4 3746 3747 3768 3767
		f 4 6609 6790 -6630 -6790
		mu 0 4 3747 3748 3769 3768
		f 4 6610 6791 -6631 -6791
		mu 0 4 3748 3749 3770 3769
		f 4 6611 6792 -6632 -6792
		mu 0 4 3749 3750 3771 3770
		f 4 6612 6793 -6633 -6793
		mu 0 4 3750 3751 3772 3771
		f 4 6613 6794 -6634 -6794
		mu 0 4 3751 3752 3773 3772
		f 4 6614 6795 -6635 -6795
		mu 0 4 3752 3753 3774 3773
		f 4 6615 6796 -6636 -6796
		mu 0 4 3753 3754 3775 3774
		f 4 6616 6797 -6637 -6797
		mu 0 4 3754 3755 3776 3775
		f 4 6617 6798 -6638 -6798
		mu 0 4 3755 3756 3777 3776
		f 4 6618 6799 -6639 -6799
		mu 0 4 3756 3757 3778 3777
		f 4 6619 6780 -6640 -6800
		mu 0 4 3757 3758 3779 3778
		f 4 6874 6867 6821 -6867
		mu 0 4 3780 3781 3782 3783
		f 4 6928 6921 6822 -6921
		mu 0 4 3784 3785 3786 3787
		f 4 6873 7239 7218 -6866
		mu 0 4 3788 3789 3790 3791
		f 4 6927 7242 7221 -6920
		mu 0 4 3792 3793 3794 3795
		f 4 6872 6865 6815 6830
		mu 0 4 3796 3788 3791 3797
		f 4 6926 6919 6816 6829
		mu 0 4 3798 3792 3795 3799
		f 4 7251 7230 6860 6818
		mu 0 4 3800 3801 3802 3803
		f 4 7248 7227 6914 6819
		mu 0 4 3804 3805 3806 3807
		f 4 7243 7222 -6817 -7222
		mu 0 4 3808 3809 3810 3811
		f 4 6831 7258 7215 6814
		mu 0 4 3812 3813 3814 3815
		f 4 6875 6868 6833 -6868
		mu 0 4 3781 3816 3817 3782
		f 4 6929 6922 6834 -6922
		mu 0 4 3785 3818 3819 3786
		f 4 7244 7223 -6824 -7223
		mu 0 4 3809 3820 3821 3810
		f 4 7033 -7036 7037 7038
		mu 0 4 3822 3823 3824 3825
		f 4 7051 -7054 7055 7056
		mu 0 4 3826 3827 3828 3829
		f 4 6842 7257 -6832 6825
		mu 0 4 3830 3831 3813 3812
		f 4 7087 7072 6947 6934
		mu 0 4 3832 3833 3834 3835
		f 4 7084 7069 6950 6937
		mu 0 4 3836 3837 3838 3839
		f 4 7246 7225 -7068 7083
		mu 0 4 3840 3841 3842 3843
		f 4 6952 6939 7098 7067
		mu 0 4 3844 3845 3846 3847
		f 4 6961 6962 7094 7079
		mu 0 4 3848 3849 3850 3851
		f 4 6958 7255 7234 7075
		mu 0 4 3852 3853 3854 3855
		f 4 7100 -7103 7104 7105
		mu 0 4 3856 3796 3857 3858
		f 4 6824 6846 -6848 -6844
		mu 0 4 3797 3859 3860 3861
		f 4 6841 6871 -6850 -6847
		mu 0 4 3859 3862 3863 3860
		f 4 -6826 6844 6850 -6849
		mu 0 4 3864 3865 3866 3867
		f 4 7115 -7117 7118 7119
		mu 0 4 3868 3869 3799 3870
		f 4 6823 6854 -6856 -6852
		mu 0 4 3799 3871 3872 4761
		f 4 6840 6925 -6858 -6855
		mu 0 4 3871 3873 3874 3872
		f 4 -6825 6852 6858 -6857
		mu 0 4 3859 3797 3875 3876
		f 4 7252 7231 6896 -7231
		mu 0 4 3801 3877 3878 3802
		f 4 6956 6943 7092 -6943
		mu 0 4 3879 3880 3881 3882
		f 4 -6872 6861 6907 -6863
		mu 0 4 3863 3862 3883 3884
		f 4 7059 -7061 -7052 7061
		mu 0 4 3885 3886 3827 3826
		f 4 7107 -7109 -7101 7109
		mu 0 4 3887 3888 3796 3856
		f 4 6908 6901 -6873 6864
		mu 0 4 4762 3889 3788 3796
		f 4 6909 7238 -6874 -6902
		mu 0 4 3889 3890 3789 3788
		f 4 6910 6903 -6875 -6903
		mu 0 4 3891 3892 3781 3780
		f 4 6911 6904 -6876 -6904
		mu 0 4 3892 3893 3816 3781
		f 4 7088 7073 6946 -7073
		mu 0 4 3833 3894 3895 3834
		f 4 6807 -7229 7250 -6819
		mu 0 4 3803 3896 3897 3800
		f 4 7095 -6966 6966 -7080
		mu 0 4 3851 3898 3899 3848
		f 4 -6890 6879 6856 -6881
		mu 0 4 3900 3901 3859 3876
		f 4 -7042 -7044 7045 -7047
		mu 0 4 3902 3903 3904 3905
		f 4 -7122 -7124 7125 -7127
		mu 0 4 4763 3906 3907 3908
		f 4 6805 -6891 6882 -6816
		mu 0 4 3791 3909 3906 3797
		f 4 7240 -6892 -6806 -7219
		mu 0 4 3790 3910 3909 3791
		f 4 6827 -6893 -6804 -6822
		mu 0 4 3782 3911 3912 3783
		f 4 6838 -6894 -6828 -6834
		mu 0 4 3817 3913 3911 3782
		f 4 6948 -7071 7086 -6935
		mu 0 4 3835 3914 3915 3832
		f 4 6806 -7232 7253 -6818
		mu 0 4 3916 3878 3877 3917
		f 4 7091 -6944 6957 -7076
		mu 0 4 3918 3881 3880 3919
		f 4 -6908 6897 6848 -6899
		mu 0 4 3884 3883 3864 3867
		f 4 -7064 -7060 7065 -7067
		mu 0 4 3920 3886 3885 3921
		f 4 -7111 -7108 7112 -7114
		mu 0 4 3922 3888 3887 3923
		f 4 6804 -6909 6900 -6815
		mu 0 4 3924 3889 4764 3865
		f 4 7237 -6910 -6805 -7216
		mu 0 4 3925 3890 3889 3924
		f 4 6826 -6911 -6803 -6821
		mu 0 4 3926 3892 3891 3927
		f 4 6837 -6912 -6827 -6833
		mu 0 4 3928 3893 3892 3926
		f 4 6945 -7074 7089 -6932
		mu 0 4 3929 3895 3894 3930
		f 4 7249 7228 6878 -7228
		mu 0 4 3805 3897 3896 3806
		f 4 6953 6940 7097 -6940
		mu 0 4 3845 3931 3932 3846
		f 4 -6926 6915 6889 -6917
		mu 0 4 3874 3873 3901 3900
		f 4 7043 -7048 -7034 7048
		mu 0 4 3904 3903 3823 3822
		f 4 7123 -7128 -7116 7128
		mu 0 4 3907 3906 3869 3868
		f 4 6890 6883 -6927 6918
		mu 0 4 3906 3909 3792 3798
		f 4 6891 7241 -6928 -6884
		mu 0 4 3909 3910 3793 3792
		f 4 6892 6885 -6929 -6885
		mu 0 4 3912 3911 3785 3784
		f 4 6893 6886 -6930 -6886
		mu 0 4 3911 3913 3818 3785
		f 4 7085 7070 6949 -7070
		mu 0 4 3837 3915 3914 3838
		f 4 6800 -6933 -6946 -6809
		mu 0 4 3933 3934 3895 3929
		f 4 -6947 6932 6895 -6934
		mu 0 4 3834 3895 3934 3935
		f 4 -6948 6933 6859 6809
		mu 0 4 3835 3834 3935 3936
		f 4 6801 -6936 -6949 -6810
		mu 0 4 3936 3937 3914 3835
		f 4 -6950 6935 6877 -6937
		mu 0 4 3838 3914 3937 3938
		f 4 -6951 6936 6913 6810
		mu 0 4 3839 3838 3938 3939
		f 4 7247 -6820 -6939 -7226
		mu 0 4 3841 3940 3941 3842
		f 4 6924 -6953 6938 -6915
		mu 0 4 3806 3845 3844 3807
		f 4 6888 -6954 -6925 -6879
		mu 0 4 3896 3931 3845 3806
		f 4 -6955 -6889 -6808 -6942
		mu 0 4 3942 3931 3896 3803
		f 4 6870 -6956 6941 -6861
		mu 0 4 3802 3879 3942 3803
		f 4 6906 -6957 -6871 -6897
		mu 0 4 3878 3880 3879 3802
		f 4 -6958 -6907 -6807 -6945
		mu 0 4 3919 3880 3878 3916
		f 4 6817 7254 -6959 6944
		mu 0 4 3943 3944 3853 3852
		f 4 6955 6960 -6962 -6960
		mu 0 4 3942 3879 3849 3848
		f 4 6942 7093 -6963 -6961
		mu 0 4 3879 3882 3850 3849
		f 4 7096 -6941 6964 6965
		mu 0 4 3898 3932 3931 3899
		f 4 6954 6959 -6967 -6965
		mu 0 4 3931 3942 3848 3899
		f 4 -6854 6969 6970 -6969
		mu 0 4 3945 4765 3946 3947
		f 4 6855 6971 -6973 -6970
		mu 0 4 4766 3872 3948 3946
		f 4 6857 6967 -6974 -6972
		mu 0 4 3872 3874 3949 3948
		f 4 -6882 6974 6976 -6976
		mu 0 4 3950 4767 3951 3952
		f 4 6880 6978 -6980 -6978
		mu 0 4 4768 4769 3953 4770
		f 4 -6859 6975 6980 -6979
		mu 0 4 4771 4772 3954 3953
		f 4 -6918 6968 6981 -6975
		mu 0 4 4773 4774 4775 3955
		f 4 6916 6977 -6983 -6968
		mu 0 4 4776 4777 3956 4778
		f 4 -6846 6985 6986 -6985
		mu 0 4 4779 4780 3957 3958
		f 4 6847 6987 -6989 -6986
		mu 0 4 4781 4782 3959 3960
		f 4 6849 6983 -6990 -6988
		mu 0 4 4783 4784 4785 3959
		f 4 -6864 6984 6992 -6992
		mu 0 4 4786 4787 4788 3961
		f 4 6862 6990 -6994 -6984
		mu 0 4 4789 4790 3962 4791
		f 4 -6900 6991 6995 -6995
		mu 0 4 4792 4793 3961 4794
		f 4 6898 6996 -6998 -6991
		mu 0 4 4795 4796 4797 4798
		f 4 -6851 6994 6998 -6997
		mu 0 4 4799 4800 4801 4802
		f 4 -6971 7001 7002 -7001
		mu 0 4 3947 3946 3963 3964
		f 4 6972 7003 -7005 -7002
		mu 0 4 3946 3948 3965 3963
		f 4 6973 6999 -7006 -7004
		mu 0 4 3948 3949 3966 3965
		f 4 -6977 7006 7008 -7008
		mu 0 4 3952 3951 3967 3968
		f 4 6979 7010 -7012 -7010
		mu 0 4 4803 3953 3969 4804
		f 4 -6981 7007 7012 -7011
		mu 0 4 3953 3954 3970 3969
		f 4 -6982 7000 7013 -7007
		mu 0 4 3955 4805 4806 3971
		f 4 6982 7009 -7015 -7000
		mu 0 4 4807 3956 3972 4808
		f 4 -6987 7017 7018 -7017
		mu 0 4 3958 3957 3973 3974
		f 4 6988 7019 -7021 -7018
		mu 0 4 3960 3959 3975 3976
		f 4 6989 7015 -7022 -7020
		mu 0 4 3959 4809 4810 3975
		f 4 -6993 7016 7024 -7024
		mu 0 4 3961 4811 4812 3977
		f 4 6993 7022 -7026 -7016
		mu 0 4 4813 3962 3978 4814
		f 4 -6996 7023 7027 -7027
		mu 0 4 4815 3961 3977 4816
		f 4 6997 7028 -7030 -7023
		mu 0 4 4817 4818 4819 4820
		f 4 -6999 7026 7030 -7029
		mu 0 4 4821 4822 4823 4824
		f 4 -7003 7034 7035 -7033
		mu 0 4 3964 3963 3824 3823
		f 4 7004 7036 -7038 -7035
		mu 0 4 3963 3965 3825 3824
		f 4 7005 7031 -7039 -7037
		mu 0 4 3965 3966 3822 3825
		f 4 -7009 7039 7041 -7041
		mu 0 4 3968 3967 4825 4826
		f 4 7011 7044 -7046 -7043
		mu 0 4 4827 3969 4828 4829
		f 4 -7013 7040 7046 -7045
		mu 0 4 3969 3970 4830 4831
		f 4 -7014 7032 7047 -7040
		mu 0 4 3971 4832 4833 4834
		f 4 7014 7042 -7049 -7032
		mu 0 4 4835 3972 4836 4837
		f 4 -7019 7052 7053 -7051
		mu 0 4 3974 3973 4838 4839
		f 4 7020 7054 -7056 -7053
		mu 0 4 3976 3975 4840 4841
		f 4 7021 7049 -7057 -7055
		mu 0 4 3975 4842 4843 4844
		f 4 -7025 7050 7060 -7059
		mu 0 4 3977 4845 4846 4847
		f 4 7025 7057 -7062 -7050
		mu 0 4 4848 3978 4849 4850
		f 4 -7028 7058 7063 -7063
		mu 0 4 4851 3977 4852 4853
		f 4 7029 7064 -7066 -7058
		mu 0 4 4854 4855 4856 4857
		f 4 -7031 7062 7066 -7065
		mu 0 4 4858 4859 4860 4861
		f 4 7245 -7084 -6836 -7224
		mu 0 4 3820 3840 3843 3821
		f 4 6930 -7085 7068 -6923
		mu 0 4 3818 3837 3836 3819
		f 4 6894 -7086 -6931 -6887
		mu 0 4 3913 3915 3837 3818
		f 4 -7087 -6895 -6839 -7072
		mu 0 4 3832 3915 3913 3817
		f 4 6876 -7088 7071 -6869
		mu 0 4 3816 3833 3832 3817
		f 4 6912 -7089 -6877 -6905
		mu 0 4 3893 3894 3833 3816
		f 4 -7090 -6913 -6838 -7075
		mu 0 4 3930 3894 3893 3928
		f 4 -7235 7256 -6843 6836
		mu 0 4 3855 3854 3831 3830
		f 4 -6898 -7077 -7092 -6837
		mu 0 4 3864 3883 3881 3918
		f 4 -7093 7076 -6862 -7078
		mu 0 4 3882 3881 3883 3862
		f 3 -7094 7077 -7079
		mu 0 3 3850 3882 3862
		f 4 -7095 7078 -6842 6963
		mu 0 4 3851 3850 3862 3859
		f 4 -7081 -7096 -6964 -6880
		mu 0 4 3901 3898 3851 3859
		f 3 -7082 -7097 7080
		mu 0 3 3901 3932 3898
		f 4 -7098 7081 -6916 -7083
		mu 0 4 3846 3932 3901 3873
		f 4 -7099 7082 -6841 6835
		mu 0 4 3847 3846 3873 3871
		f 3 -6831 7101 7102
		mu 0 3 3796 3797 3857
		f 4 6843 7103 -7105 -7102
		mu 0 4 3797 3861 3858 3857
		f 4 6845 7099 -7106 -7104
		mu 0 4 3861 4862 3856 3858
		f 4 6863 7106 -7110 -7100
		mu 0 4 4863 4864 4865 4866
		f 4 6899 7111 -7113 -7107
		mu 0 4 4867 4868 4869 4870
		f 3 -6845 7113 -7112
		mu 0 3 4871 4872 4873
		f 3 6851 7117 -7119
		mu 0 3 4874 4875 4876
		f 4 6853 7114 -7120 -7118
		mu 0 4 4877 4878 4879 4880
		f 3 -6883 7121 -7121
		mu 0 3 4881 4882 4883
		f 4 6881 7124 -7126 -7123
		mu 0 4 4884 4885 4886 4887
		f 4 -6853 7120 7126 -7125
		mu 0 4 4888 4889 4890 4891
		f 4 6917 7122 -7129 -7115
		mu 0 4 3945 4892 3907 3868
		f 4 -6865 7129 7131 -7131
		mu 0 4 4893 4894 3979 3980
		f 4 7108 7132 -7134 -7130
		mu 0 4 4895 4896 3981 3979
		f 4 -6901 7130 7135 -7135
		mu 0 4 4897 4898 3982 3983
		f 4 7110 7134 -7137 -7133
		mu 0 4 4899 4900 3983 3984
		f 4 -6830 7137 7139 -7139
		mu 0 4 4901 4902 3985 3986
		f 4 7116 7140 -7142 -7138
		mu 0 4 4903 4904 3987 3985
		f 4 -6919 7138 7143 -7143
		mu 0 4 3906 3798 4905 4906
		f 4 7127 7142 -7145 -7141
		mu 0 4 3869 3906 4907 4908
		f 4 -7132 7145 7147 -7147
		mu 0 4 3980 3979 3988 3989
		f 4 7133 7148 -7150 -7146
		mu 0 4 3979 3981 3990 3988
		f 4 -7136 7146 7151 -7151
		mu 0 4 3983 3982 3991 3992
		f 4 7136 7150 -7153 -7149
		mu 0 4 3984 3983 3992 3993
		f 4 -7140 7153 7155 -7155
		mu 0 4 3986 3985 3994 3995
		f 4 7141 7156 -7158 -7154
		mu 0 4 3985 3987 3996 3994
		f 4 -7144 7154 7159 -7159
		mu 0 4 4909 4910 4911 4912
		f 4 7144 7158 -7161 -7157
		mu 0 4 4913 4914 4915 4916
		f 4 -7148 7161 7163 -7163
		mu 0 4 3989 3988 3997 3998
		f 4 7149 7164 -7166 -7162
		mu 0 4 3988 3990 3999 3997
		f 4 -7152 7162 7167 -7167
		mu 0 4 3992 3991 4000 4001
		f 4 7152 7166 -7169 -7165
		mu 0 4 3993 3992 4001 4002
		f 4 -7156 7169 7171 -7171
		mu 0 4 3995 3994 4003 4004
		f 4 7157 7172 -7174 -7170
		mu 0 4 3994 3996 4005 4003
		f 4 -7160 7170 7175 -7175
		mu 0 4 4917 4918 4919 4920
		f 4 7160 7174 -7177 -7173
		mu 0 4 4921 4922 4923 4924
		f 4 -7164 7177 7179 -7179
		mu 0 4 3998 3997 4006 4007
		f 3 7180 -7182 -7178
		mu 0 3 3997 4008 4006
		f 4 7165 7182 -7184 -7181
		mu 0 4 3997 3999 4009 4008
		f 4 -7168 7178 7185 -7185
		mu 0 4 4001 4000 4010 4011
		f 4 7168 7186 -7188 -7183
		mu 0 4 4002 4001 4012 4013
		f 3 7184 7188 -7187
		mu 0 3 4001 4011 4012
		f 4 -7172 7189 7191 -7191
		mu 0 4 4004 4003 4014 4015
		f 3 7192 -7194 -7190
		mu 0 3 4003 4016 4014
		f 4 7173 7194 -7196 -7193
		mu 0 4 4003 4005 4017 4016
		f 4 -7176 7190 7197 -7197
		mu 0 4 4925 4926 4927 4928
		f 4 7176 7198 -7200 -7195
		mu 0 4 4929 4930 4931 4932
		f 3 7196 7200 -7199
		mu 0 3 4933 4934 4935
		f 3 -7180 7201 -7203
		mu 0 3 4007 4006 4018
		f 4 7181 7203 -7205 -7202
		mu 0 4 4006 4008 4019 4018
		f 3 7183 7205 -7204
		mu 0 3 4008 4009 4019
		f 3 -7186 7202 -7207
		mu 0 3 4011 4010 4020
		f 3 7187 7207 -7206
		mu 0 3 4013 4012 4021
		f 4 -7189 7206 7204 -7208
		mu 0 4 4012 4011 4020 4021
		f 3 -7192 7208 -7210
		mu 0 3 4015 4014 4936
		f 4 7193 7210 -7212 -7209
		mu 0 4 4014 4016 4937 4938
		f 3 7195 7212 -7211
		mu 0 3 4016 4017 4939
		f 3 -7198 7209 -7214
		mu 0 3 4940 4941 4942
		f 3 7199 7214 -7213
		mu 0 3 4943 4944 4945
		f 4 -7201 7213 7211 -7215
		mu 0 4 4946 4947 4948 4949
		f 4 7276 -7217 -7238 -7260
		mu 0 4 4022 4023 3890 3925
		f 4 -7239 7216 7277 -7218
		mu 0 4 3789 3890 4023 4024
		f 4 -7240 7217 7278 7262
		mu 0 4 3790 3789 4024 4025
		f 4 7279 -7220 -7241 -7263
		mu 0 4 4025 4026 3910 3790
		f 4 -7242 7219 7280 -7221
		mu 0 4 3793 3910 4026 4027
		f 4 -7243 7220 7281 7265
		mu 0 4 3794 3793 4027 4028
		f 4 7282 7266 -7244 -7266
		mu 0 4 4029 4030 3809 3808
		f 4 7283 7267 -7245 -7267
		mu 0 4 4030 4031 3820 3809
		f 4 7284 -7225 -7246 -7268
		mu 0 4 4031 4032 3840 3820
		f 4 7285 7268 -7247 7224
		mu 0 4 4032 4033 3841 3840
		f 4 7286 -7227 -7248 -7269
		mu 0 4 4033 4034 3940 3841
		f 4 7287 7269 -7249 7226
		mu 0 4 4035 4036 3805 3804
		f 4 7288 7270 -7250 -7270
		mu 0 4 4036 4037 3897 3805
		f 4 -7251 -7271 7289 -7230
		mu 0 4 3800 3897 4037 4038
		f 4 7290 7271 -7252 7229
		mu 0 4 4038 4039 3801 3800
		f 4 7291 7272 -7253 -7272
		mu 0 4 4039 4040 3877 3801
		f 4 -7254 -7273 7292 -7233
		mu 0 4 3917 3877 4040 4041
		f 4 -7255 7232 7293 -7234
		mu 0 4 3853 3944 4042 4043
		f 4 -7256 7233 7294 7273
		mu 0 4 3854 3853 4043 4044
		f 4 -7257 -7274 7295 -7236
		mu 0 4 3831 3854 4044 4045
		f 4 -7258 7235 7296 -7237
		mu 0 4 3813 3831 4045 4046
		f 4 -7259 7236 7297 7259
		mu 0 4 3814 3813 4046 4047
		f 4 7314 -7261 -7277 -7299
		mu 0 4 4048 4049 4023 4022
		f 4 -7278 7260 7315 -7262
		mu 0 4 4024 4023 4049 4050
		f 4 -7279 7261 7316 7301
		mu 0 4 4025 4024 4050 4051
		f 4 7317 -7264 -7280 -7302
		mu 0 4 4051 4052 4026 4025
		f 4 -7281 7263 7318 -7265
		mu 0 4 4027 4026 4052 4053
		f 4 -7282 7264 7319 7304
		mu 0 4 4028 4027 4053 4054
		f 4 7320 7305 -7283 -7305
		mu 0 4 4055 4056 4030 4029
		f 4 7321 7306 -7284 -7306
		mu 0 4 4056 4057 4031 4030
		f 4 7338 -7341 -7343 -7344
		mu 0 4 4058 4059 4060 4061
		f 4 7345 7347 -7349 7340
		mu 0 4 4059 4062 4063 4060
		f 4 7350 -7353 -7354 -7348
		mu 0 4 4062 4064 4065 4063
		f 4 7355 7356 -7358 7352
		mu 0 4 4066 4067 4068 4069
		f 4 7359 7360 -7362 -7357
		mu 0 4 4067 4070 4071 4068
		f 4 -7363 -7361 7364 -7366
		mu 0 4 4072 4071 4070 4073
		f 4 7367 7368 -7370 7365
		mu 0 4 4073 4074 4075 4072
		f 4 7371 7372 -7374 -7369
		mu 0 4 4074 4076 4077 4075
		f 4 -7376 -7373 7377 -7379
		mu 0 4 4078 4077 4076 4079
		f 4 -7381 7378 7382 -7384
		mu 0 4 4080 4081 4082 4083
		f 4 -7386 7383 7387 7388
		mu 0 4 4084 4080 4083 4085
		f 4 -7391 -7389 7392 -7394
		mu 0 4 4086 4084 4085 4087
		f 4 -7297 7274 7334 -7276
		mu 0 4 4046 4045 4088 4089
		f 4 -7298 7275 7335 7298
		mu 0 4 4047 4046 4089 4090
		f 4 7649 -7300 -7315 -7628
		mu 0 4 4091 4092 4049 4048
		f 4 -7316 7299 7650 -7301
		mu 0 4 4050 4049 4092 4093
		f 4 -7317 7300 7651 7630
		mu 0 4 4051 4050 4093 4094
		f 4 7652 -7303 -7318 -7631
		mu 0 4 4094 4095 4052 4051
		f 4 -7319 7302 7653 -7304
		mu 0 4 4053 4052 4095 4096
		f 4 -7320 7303 7654 7633
		mu 0 4 4054 4053 4096 4097
		f 4 7655 7634 -7321 -7634
		mu 0 4 4098 4099 4056 4055
		f 4 7656 7635 -7322 -7635
		mu 0 4 4099 4100 4057 4056
		f 4 7717 -7719 -7323 -7720
		mu 0 4 4101 4102 4103 4057
		f 4 7658 7637 -7324 7307
		mu 0 4 4104 4105 4106 4103
		f 4 7659 -7309 -7325 -7638
		mu 0 4 4105 4107 4108 4106
		f 4 7660 7639 -7326 7308
		mu 0 4 4109 4110 4111 4112
		f 4 7661 7640 -7327 -7640
		mu 0 4 4110 4113 4114 4111
		f 4 -7328 -7641 7662 -7310
		mu 0 4 4115 4114 4113 4116
		f 4 7663 7642 -7329 7309
		mu 0 4 4116 4117 4118 4115
		f 4 7664 7643 -7330 -7643
		mu 0 4 4117 4119 4120 4118
		f 4 -7331 -7644 7665 -7311
		mu 0 4 4121 4120 4119 4122
		f 4 -7332 7310 7666 -7312
		mu 0 4 4123 4124 4125 4126
		f 4 -7333 7311 7667 7646
		mu 0 4 4127 4123 4126 4128
		f 4 -7334 -7722 7723 -7725
		mu 0 4 4088 4127 4129 4130
		f 4 -7335 7312 7669 -7314
		mu 0 4 4089 4088 4131 4132
		f 4 -7336 7313 7670 7627
		mu 0 4 4090 4089 4132 4133
		f 4 7322 7337 -7339 -7337
		mu 0 4 4057 4103 4059 4058
		f 4 -7285 7341 7342 -7340
		mu 0 4 4032 4031 4061 4060
		f 4 -7307 7336 7343 -7342
		mu 0 4 4031 4057 4058 4061
		f 4 7323 7344 -7346 -7338
		mu 0 4 4103 4106 4062 4059
		f 4 -7286 7339 7348 -7347
		mu 0 4 4033 4032 4060 4063
		f 4 7324 7349 -7351 -7345
		mu 0 4 4106 4108 4064 4062
		f 4 -7287 7346 7353 -7352
		mu 0 4 4034 4033 4063 4065
		f 4 7325 7354 -7356 -7350
		mu 0 4 4112 4111 4067 4066
		f 4 -7425 7426 7428 -7430
		mu 0 4 4134 4135 4136 4137
		f 4 7326 7358 -7360 -7355
		mu 0 4 4111 4114 4070 4067
		f 4 -7432 7429 7433 -7435
		mu 0 4 4138 4134 4137 4139
		f 4 -7436 7434 7437 -7439
		mu 0 4 4140 4138 4139 4141
		f 4 7327 7363 -7365 -7359
		mu 0 4 4114 4115 4073 4070
		f 4 7328 7366 -7368 -7364
		mu 0 4 4115 4118 4074 4073
		f 4 -7441 7438 7442 -7444
		mu 0 4 4142 4140 4141 4143
		f 4 7329 7370 -7372 -7367
		mu 0 4 4118 4120 4076 4074
		f 4 -7446 7443 7447 -7449
		mu 0 4 4144 4142 4143 4145
		f 4 -7451 7448 7452 -7454
		mu 0 4 4146 4144 4145 4147
		f 4 7330 7376 -7378 -7371
		mu 0 4 4120 4121 4079 4076
		f 4 -7294 7374 7380 -7380
		mu 0 4 4043 4042 4081 4080
		f 4 7331 7381 -7383 -7377
		mu 0 4 4124 4123 4083 4082
		f 4 -7295 7379 7385 -7385
		mu 0 4 4044 4043 4080 4084;
	setAttr ".fc[3500:3939]"
		f 4 7332 7386 -7388 -7382
		mu 0 4 4123 4127 4085 4083
		f 4 -7296 7384 7390 -7390
		mu 0 4 4045 4044 4084 4086
		f 4 7333 7391 -7393 -7387
		mu 0 4 4127 4088 4087 4085
		f 4 -7275 7389 7393 -7392
		mu 0 4 4088 4045 4086 4087
		f 4 -7288 7394 7396 -7396
		mu 0 4 4036 4035 4148 4149
		f 4 7351 7397 -7399 -7395
		mu 0 4 4035 4069 4150 4148
		f 4 7357 7399 -7401 -7398
		mu 0 4 4069 4068 4151 4150
		f 4 -7289 7395 7402 -7402
		mu 0 4 4037 4036 4149 4152
		f 4 7361 7403 -7405 -7400
		mu 0 4 4068 4071 4153 4151
		f 4 -7290 7401 7406 -7406
		mu 0 4 4038 4037 4152 4154
		f 4 7362 7407 -7409 -7404
		mu 0 4 4071 4072 4155 4153
		f 4 -7291 7405 7410 -7410
		mu 0 4 4039 4038 4154 4156
		f 4 7369 7411 -7413 -7408
		mu 0 4 4072 4075 4157 4155
		f 4 -7292 7409 7414 -7414
		mu 0 4 4040 4039 4156 4158
		f 4 7373 7415 -7417 -7412
		mu 0 4 4075 4077 4159 4157
		f 4 -7293 7413 7418 -7418
		mu 0 4 4041 4040 4158 4160
		f 4 7375 7419 -7421 -7416
		mu 0 4 4077 4078 4161 4159
		f 4 -7375 7417 7421 -7420
		mu 0 4 4078 4041 4160 4161
		f 4 -7489 7490 7492 -7494
		mu 0 4 4162 4163 4164 4165
		f 4 7398 7425 -7427 -7423
		mu 0 4 4148 4150 4136 4135
		f 4 7400 7427 -7429 -7426
		mu 0 4 4150 4151 4137 4136
		f 4 -7566 7567 7569 -7571
		mu 0 4 4166 4167 4168 4169
		f 4 7404 7432 -7434 -7428
		mu 0 4 4151 4153 4139 4137
		f 4 -7614 7615 7617 -7619
		mu 0 4 4170 4171 4172 4173
		f 4 7408 7436 -7438 -7433
		mu 0 4 4153 4155 4141 4139
		f 4 -7622 7623 7625 -7627
		mu 0 4 4174 4175 4176 4177
		f 4 7412 7441 -7443 -7437
		mu 0 4 4155 4157 4143 4141
		f 4 -7574 7575 7577 -7579
		mu 0 4 4178 4179 4180 4181
		f 4 7416 7446 -7448 -7442
		mu 0 4 4157 4159 4145 4143
		f 4 -7497 7498 7500 -7502
		mu 0 4 4182 4183 4184 4185
		f 4 7420 7451 -7453 -7447
		mu 0 4 4159 4161 4147 4145
		f 4 -7422 7449 7453 -7452
		mu 0 4 4161 4160 4146 4147
		f 4 -7397 7454 7456 -7456
		mu 0 4 4149 4148 4186 4187
		f 4 7422 7457 -7459 -7455
		mu 0 4 4148 4135 4188 4186
		f 4 7424 7459 -7461 -7458
		mu 0 4 4135 4134 4189 4188
		f 4 -7424 7455 7461 -7460
		mu 0 4 4134 4149 4187 4189
		f 4 -7419 7462 7464 -7464
		mu 0 4 4160 4158 4190 4191
		f 4 7444 7465 -7467 -7463
		mu 0 4 4158 4144 4192 4190
		f 4 7450 7467 -7469 -7466
		mu 0 4 4144 4146 4193 4192
		f 4 -7450 7463 7469 -7468
		mu 0 4 4146 4160 4191 4193
		f 4 7509 7502 7472 -7506
		mu 0 4 4194 4195 4196 4197
		f 4 7506 7503 -7475 -7503
		mu 0 4 4195 4198 4199 4196
		f 4 7507 7504 -7477 -7504
		mu 0 4 4198 4200 4201 4199
		f 4 7508 7505 7477 -7505
		mu 0 4 4200 4194 4197 4201
		f 4 -7465 7478 7517 -7480
		mu 0 4 4191 4190 4202 4203
		f 4 7466 7481 7516 -7479
		mu 0 4 4190 4192 4204 4202
		f 4 7468 7483 7515 -7482
		mu 0 4 4192 4193 4205 4204
		f 4 -7470 7479 7514 -7484
		mu 0 4 4193 4191 4203 4205
		f 4 -7473 7486 7488 -7488
		mu 0 4 4197 4196 4163 4162
		f 4 7474 7489 -7491 -7487
		mu 0 4 4196 4199 4164 4163
		f 4 7476 7491 -7493 -7490
		mu 0 4 4199 4201 4165 4164
		f 4 -7478 7487 7493 -7492
		mu 0 4 4201 4197 4162 4165
		f 4 -7481 7494 7496 -7496
		mu 0 4 4206 4207 4183 4182
		f 4 7482 7497 -7499 -7495
		mu 0 4 4207 4208 4184 4183
		f 4 7484 7499 -7501 -7498
		mu 0 4 4208 4209 4185 4184
		f 4 -7486 7495 7501 -7500
		mu 0 4 4209 4206 4182 4185
		f 4 7458 7473 -7507 -7471
		mu 0 4 4186 4188 4198 4195
		f 4 7460 7475 -7508 -7474
		mu 0 4 4188 4189 4200 4198
		f 4 -7462 7471 -7509 -7476
		mu 0 4 4189 4187 4194 4200
		f 4 -7457 7470 -7510 -7472
		mu 0 4 4187 4186 4195 4194
		f 4 -7515 7510 7485 -7512
		mu 0 4 4205 4203 4206 4209
		f 4 -7516 7511 -7485 -7513
		mu 0 4 4204 4205 4209 4208
		f 4 -7517 7512 -7483 -7514
		mu 0 4 4202 4204 4208 4207
		f 4 -7518 7513 7480 -7511
		mu 0 4 4203 4202 4207 4206
		f 4 -7403 7518 7520 -7520
		mu 0 4 4152 4149 4210 4211
		f 4 7423 7521 -7523 -7519
		mu 0 4 4149 4134 4212 4210
		f 4 7431 7523 -7525 -7522
		mu 0 4 4134 4138 4213 4212
		f 4 -7431 7519 7525 -7524
		mu 0 4 4138 4152 4211 4213
		f 4 -7415 7526 7528 -7528
		mu 0 4 4158 4156 4214 4215
		f 4 7439 7529 -7531 -7527
		mu 0 4 4156 4142 4216 4214
		f 4 7445 7531 -7533 -7530
		mu 0 4 4142 4144 4217 4216
		f 4 -7445 7527 7533 -7532
		mu 0 4 4144 4158 4215 4217
		f 4 -7407 7534 7536 -7536
		mu 0 4 4154 4152 4218 4219
		f 4 7430 7537 -7539 -7535
		mu 0 4 4152 4138 4220 4218
		f 4 7435 7539 -7541 -7538
		mu 0 4 4138 4140 4221 4220
		f 4 -7411 7535 7543 -7543
		mu 0 4 4156 4154 4219 4222
		f 4 7440 7544 -7546 -7540
		mu 0 4 4140 4142 4223 4221
		f 4 -7440 7542 7546 -7545
		mu 0 4 4142 4156 4222 4223
		f 4 -7521 7547 7549 -7549
		mu 0 4 4211 4210 4224 4225
		f 4 7522 7550 -7552 -7548
		mu 0 4 4210 4212 4226 4224
		f 4 7524 7552 -7554 -7551
		mu 0 4 4212 4213 4227 4226
		f 4 -7526 7548 7554 -7553
		mu 0 4 4213 4211 4225 4227
		f 4 -7529 7555 7557 -7557
		mu 0 4 4215 4214 4228 4229
		f 4 7530 7558 -7560 -7556
		mu 0 4 4214 4216 4230 4228
		f 4 7532 7560 -7562 -7559
		mu 0 4 4216 4217 4231 4230
		f 4 -7534 7556 7562 -7561
		mu 0 4 4217 4215 4229 4231
		f 4 -7550 7563 7565 -7565
		mu 0 4 4225 4224 4167 4166
		f 4 7551 7566 -7568 -7564
		mu 0 4 4224 4226 4168 4167
		f 4 7553 7568 -7570 -7567
		mu 0 4 4226 4227 4169 4168
		f 4 -7555 7564 7570 -7569
		mu 0 4 4227 4225 4166 4169
		f 4 -7558 7571 7573 -7573
		mu 0 4 4229 4228 4179 4178
		f 4 7559 7574 -7576 -7572
		mu 0 4 4228 4230 4180 4179
		f 4 7561 7576 -7578 -7575
		mu 0 4 4230 4231 4181 4180
		f 4 -7563 7572 7578 -7577
		mu 0 4 4231 4229 4178 4181
		f 4 -7537 7579 7581 -7581
		mu 0 4 4219 4218 4232 4233
		f 4 7538 7582 -7584 -7580
		mu 0 4 4218 4220 4234 4232
		f 4 7540 7584 -7586 -7583
		mu 0 4 4220 4221 4235 4234
		f 4 -7542 7580 7586 -7585
		mu 0 4 4221 4219 4233 4235
		f 4 -7544 7587 7589 -7589
		mu 0 4 4222 4219 4236 4237
		f 4 7541 7590 -7592 -7588
		mu 0 4 4219 4221 4238 4236
		f 4 7545 7592 -7594 -7591
		mu 0 4 4221 4223 4239 4238
		f 4 -7547 7588 7594 -7593
		mu 0 4 4223 4222 4237 4239
		f 4 -7582 7595 7597 -7597
		mu 0 4 4233 4232 4240 4241
		f 4 7583 7598 -7600 -7596
		mu 0 4 4232 4234 4242 4240
		f 4 7585 7600 -7602 -7599
		mu 0 4 4234 4235 4243 4242
		f 4 -7587 7596 7602 -7601
		mu 0 4 4235 4233 4241 4243
		f 4 -7590 7603 7605 -7605
		mu 0 4 4237 4236 4244 4245
		f 4 7591 7606 -7608 -7604
		mu 0 4 4236 4238 4246 4244
		f 4 7593 7608 -7610 -7607
		mu 0 4 4238 4239 4247 4246
		f 4 -7595 7604 7610 -7609
		mu 0 4 4239 4237 4245 4247
		f 4 -7598 7611 7613 -7613
		mu 0 4 4241 4240 4171 4170
		f 4 7599 7614 -7616 -7612
		mu 0 4 4240 4242 4172 4171
		f 4 7601 7616 -7618 -7615
		mu 0 4 4242 4243 4173 4172
		f 4 -7603 7612 7618 -7617
		mu 0 4 4243 4241 4170 4173
		f 4 -7606 7619 7621 -7621
		mu 0 4 4245 4244 4175 4174
		f 4 7607 7622 -7624 -7620
		mu 0 4 4244 4246 4176 4175
		f 4 7609 7624 -7626 -7623
		mu 0 4 4246 4247 4177 4176
		f 4 -7611 7620 7626 -7625
		mu 0 4 4247 4245 4174 4177
		f 4 7693 -7629 -7650 -7672
		mu 0 4 4248 4249 4092 4091
		f 4 -7651 7628 7694 -7630
		mu 0 4 4093 4092 4249 4250
		f 4 -7652 7629 7695 7674
		mu 0 4 4094 4093 4250 4251
		f 4 7696 -7632 -7653 -7675
		mu 0 4 4251 4252 4095 4094
		f 4 -7654 7631 7697 -7633
		mu 0 4 4096 4095 4252 4253
		f 4 -7655 7632 7698 7677
		mu 0 4 4097 4096 4253 4254
		f 4 7699 7678 -7656 -7678
		mu 0 4 4255 4256 4099 4098
		f 4 7700 7679 -7657 -7679
		mu 0 4 4256 4257 4100 4099
		f 4 7701 -7637 -7658 -7680
		mu 0 4 4257 4258 4104 4100
		f 4 7702 7681 -7659 7636
		mu 0 4 4258 4259 4105 4104
		f 4 7703 -7639 -7660 -7682
		mu 0 4 4259 4260 4107 4105
		f 4 7704 7683 -7661 7638
		mu 0 4 4261 4262 4110 4109
		f 4 7705 7684 -7662 -7684
		mu 0 4 4262 4263 4113 4110
		f 4 -7663 -7685 7706 -7642
		mu 0 4 4116 4113 4263 4264
		f 4 7707 7686 -7664 7641
		mu 0 4 4264 4265 4117 4116
		f 4 7708 7687 -7665 -7687
		mu 0 4 4265 4266 4119 4117
		f 4 -7666 -7688 7709 -7645
		mu 0 4 4122 4119 4266 4267
		f 4 -7667 7644 7710 -7646
		mu 0 4 4126 4125 4268 4269
		f 4 -7668 7645 7711 7690
		mu 0 4 4128 4126 4269 4270
		f 4 -7669 -7691 7712 -7648
		mu 0 4 4131 4128 4270 4271
		f 4 -7670 7647 7713 -7649
		mu 0 4 4132 4131 4271 4272
		f 4 -7671 7648 7714 7671
		mu 0 4 4133 4132 4272 4273
		f 4 6802 -7673 -7694 -6812
		mu 0 4 3927 3891 4249 4248
		f 4 -7695 7672 6902 -7674
		mu 0 4 4250 4249 3891 3780
		f 4 -7696 7673 6866 6812
		mu 0 4 4251 4250 3780 3783
		f 4 6803 -7676 -7697 -6813
		mu 0 4 3783 3912 4252 4251
		f 4 -7698 7675 6884 -7677
		mu 0 4 4253 4252 3912 3784
		f 4 -7699 7676 6920 6813
		mu 0 4 4254 4253 3784 3787
		f 4 6828 -7700 -6814 -6823
		mu 0 4 3786 4256 4255 3787
		f 4 6839 -7701 -6829 -6835
		mu 0 4 3819 4257 4256 3786
		f 4 -7681 -7702 -6840 -7069
		mu 0 4 3836 4258 4257 3819
		f 4 6951 -7703 7680 -6938
		mu 0 4 3839 4259 4258 3836
		f 4 -7683 -7704 -6952 -6811
		mu 0 4 3939 4260 4259 3839
		f 4 6923 -7705 7682 -6914
		mu 0 4 4274 4262 4261 4275
		f 4 6887 -7706 -6924 -6878
		mu 0 4 4276 4263 4262 4274
		f 4 -7707 -6888 -6802 -7686
		mu 0 4 4264 4263 4276 4277
		f 4 6869 -7708 7685 -6860
		mu 0 4 4278 4265 4264 4277
		f 4 6905 -7709 -6870 -6896
		mu 0 4 4279 4266 4265 4278
		f 4 -7710 -6906 -6801 -7689
		mu 0 4 4267 4266 4279 4280
		f 4 -7711 7688 6808 -7690
		mu 0 4 4269 4268 3933 3929
		f 4 -7712 7689 6931 7090
		mu 0 4 4270 4269 3929 3930
		f 4 -7713 -7091 7074 -7692
		mu 0 4 4271 4270 3930 3928
		f 4 -7714 7691 6832 -7693
		mu 0 4 4272 4271 3928 3926
		f 4 -7715 7692 6820 6811
		mu 0 4 4273 4272 3926 3927
		f 4 7657 7716 -7718 -7716
		mu 0 4 4100 4104 4102 4101
		f 3 -7308 7718 -7717
		mu 0 3 4104 4103 4102
		f 3 -7636 7715 7719
		mu 0 3 4057 4100 4101
		f 3 -7647 7720 7721
		mu 0 3 4127 4128 4129
		f 4 7668 7722 -7724 -7721
		mu 0 4 4128 4131 4130 4129
		f 3 -7313 7724 -7723
		mu 0 3 4131 4088 4130
		f 4 7725 7736 -7727 -7736
		mu 0 4 4281 4282 4283 4284
		f 4 7726 7738 -7728 -7738
		mu 0 4 4284 4283 4285 4286
		f 4 7727 7740 -7729 -7740
		mu 0 4 4286 4285 4287 4288
		f 4 7728 7742 -7730 -7742
		mu 0 4 4288 4287 4289 4290
		f 4 7729 7744 -7731 -7744
		mu 0 4 4290 4289 4291 4292
		f 4 7730 7746 -7732 -7746
		mu 0 4 4292 4291 4293 4294
		f 4 7731 7748 -7733 -7748
		mu 0 4 4294 4293 4295 4296
		f 4 7732 7750 -7734 -7750
		mu 0 4 4296 4295 4297 4298
		f 4 7733 7752 -7735 -7752
		mu 0 4 4298 4297 4299 4300
		f 4 -7755 -7753 7755 -7737
		mu 0 4 4282 4301 4302 4283
		f 4 -7756 -7751 7756 -7739
		mu 0 4 4283 4302 4303 4285
		f 4 -7757 -7749 7757 -7741
		mu 0 4 4285 4303 4304 4287
		f 4 -7758 -7747 -7745 -7743
		mu 0 4 4287 4304 4305 4289
		f 4 7753 7735 -7759 7751
		mu 0 4 4306 4281 4284 4307
		f 4 7758 7737 -7760 7749
		mu 0 4 4307 4284 4286 4308
		f 4 7759 7739 -7761 7747
		mu 0 4 4308 4286 4288 4309
		f 4 7760 7741 7743 7745
		mu 0 4 4309 4288 4290 4310
		f 4 7761 7772 -7763 -7772
		mu 0 4 4311 4312 4313 4314
		f 4 7762 7774 -7764 -7774
		mu 0 4 4314 4313 4315 4316
		f 4 7763 7776 -7765 -7776
		mu 0 4 4316 4315 4317 4318
		f 4 7764 7778 -7766 -7778
		mu 0 4 4318 4317 4319 4320
		f 4 7765 7780 -7767 -7780
		mu 0 4 4320 4319 4321 4322
		f 4 7766 7782 -7768 -7782
		mu 0 4 4322 4321 4323 4324
		f 4 7767 7784 -7769 -7784
		mu 0 4 4324 4323 4325 4326
		f 4 7768 7786 -7770 -7786
		mu 0 4 4326 4325 4327 4328
		f 4 7769 7788 -7771 -7788
		mu 0 4 4328 4327 4329 4330
		f 4 -7791 -7789 7791 -7773
		mu 0 4 4312 4331 4332 4313
		f 4 -7792 -7787 7792 -7775
		mu 0 4 4313 4332 4333 4315
		f 4 -7793 -7785 7793 -7777
		mu 0 4 4315 4333 4334 4317
		f 4 -7794 -7783 -7781 -7779
		mu 0 4 4317 4334 4335 4319
		f 4 7789 7771 -7795 7787
		mu 0 4 4336 4311 4314 4337
		f 4 7794 7773 -7796 7785
		mu 0 4 4337 4314 4316 4338
		f 4 7795 7775 -7797 7783
		mu 0 4 4338 4316 4318 4339
		f 4 7796 7777 7779 7781
		mu 0 4 4339 4318 4320 4340
		f 4 7797 7808 -7799 -7808
		mu 0 4 4341 4342 4343 4344
		f 4 7798 7810 -7800 -7810
		mu 0 4 4344 4343 4345 4346
		f 4 7799 7812 -7801 -7812
		mu 0 4 4346 4345 4347 4348
		f 4 7800 7814 -7802 -7814
		mu 0 4 4348 4347 4349 4350
		f 4 7801 7816 -7803 -7816
		mu 0 4 4350 4349 4351 4352
		f 4 7802 7818 -7804 -7818
		mu 0 4 4352 4351 4353 4354
		f 4 7803 7820 -7805 -7820
		mu 0 4 4354 4353 4355 4356
		f 4 7804 7822 -7806 -7822
		mu 0 4 4356 4355 4357 4358
		f 4 7805 7824 -7807 -7824
		mu 0 4 4358 4357 4359 4360
		f 4 -7827 -7825 7827 -7809
		mu 0 4 4342 4361 4362 4343
		f 4 -7828 -7823 7828 -7811
		mu 0 4 4343 4362 4363 4345
		f 4 -7829 -7821 7829 -7813
		mu 0 4 4345 4363 4364 4347
		f 4 -7830 -7819 -7817 -7815
		mu 0 4 4347 4364 4365 4349
		f 4 7825 7807 -7831 7823
		mu 0 4 4366 4341 4344 4367
		f 4 7830 7809 -7832 7821
		mu 0 4 4367 4344 4346 4368
		f 4 7831 7811 -7833 7819
		mu 0 4 4368 4346 4348 4369
		f 4 7832 7813 7815 7817
		mu 0 4 4369 4348 4350 4370
		f 4 7833 7844 -7835 -7844
		mu 0 4 4371 4372 4373 4374
		f 4 7834 7846 -7836 -7846
		mu 0 4 4374 4373 4375 4376
		f 4 7835 7848 -7837 -7848
		mu 0 4 4376 4375 4377 4378
		f 4 7836 7850 -7838 -7850
		mu 0 4 4378 4377 4379 4380
		f 4 7837 7852 -7839 -7852
		mu 0 4 4380 4379 4381 4382
		f 4 7838 7854 -7840 -7854
		mu 0 4 4382 4381 4383 4384
		f 4 7839 7856 -7841 -7856
		mu 0 4 4384 4383 4385 4386
		f 4 7840 7858 -7842 -7858
		mu 0 4 4386 4385 4387 4388
		f 4 7841 7860 -7843 -7860
		mu 0 4 4388 4387 4389 4390
		f 4 -7863 -7861 7863 -7845
		mu 0 4 4372 4391 4392 4373
		f 4 -7864 -7859 7864 -7847
		mu 0 4 4373 4392 4393 4375
		f 4 -7865 -7857 7865 -7849
		mu 0 4 4375 4393 4394 4377
		f 4 -7866 -7855 -7853 -7851
		mu 0 4 4377 4394 4395 4379
		f 4 7861 7843 -7867 7859
		mu 0 4 4396 4371 4374 4397
		f 4 7866 7845 -7868 7857
		mu 0 4 4397 4374 4376 4398
		f 4 7867 7847 -7869 7855
		mu 0 4 4398 4376 4378 4399
		f 4 7868 7849 7851 7853
		mu 0 4 4399 4378 4380 4400
		f 4 7869 7880 -7871 -7880
		mu 0 4 4401 4402 4403 4404
		f 4 7870 7882 -7872 -7882
		mu 0 4 4404 4403 4405 4406
		f 4 7871 7884 -7873 -7884
		mu 0 4 4406 4405 4407 4408
		f 4 7872 7886 -7874 -7886
		mu 0 4 4408 4407 4409 4410
		f 4 7873 7888 -7875 -7888
		mu 0 4 4410 4409 4411 4412
		f 4 7874 7890 -7876 -7890
		mu 0 4 4412 4411 4413 4414
		f 4 7875 7892 -7877 -7892
		mu 0 4 4414 4413 4415 4416
		f 4 7876 7894 -7878 -7894
		mu 0 4 4416 4415 4417 4418
		f 4 7877 7896 -7879 -7896
		mu 0 4 4418 4417 4419 4420
		f 4 -7899 -7897 7899 -7881
		mu 0 4 4402 4421 4422 4403
		f 4 -7900 -7895 7900 -7883
		mu 0 4 4403 4422 4423 4405
		f 4 -7901 -7893 7901 -7885
		mu 0 4 4405 4423 4424 4407
		f 4 -7902 -7891 -7889 -7887
		mu 0 4 4407 4424 4425 4409
		f 4 7897 7879 -7903 7895
		mu 0 4 4426 4401 4404 4427
		f 4 7902 7881 -7904 7893
		mu 0 4 4427 4404 4406 4428
		f 4 7903 7883 -7905 7891
		mu 0 4 4428 4406 4408 4429
		f 4 7904 7885 7887 7889
		mu 0 4 4429 4408 4410 4430
		f 4 7905 7916 -7907 -7916
		mu 0 4 4431 4432 4433 4434
		f 4 7906 7918 -7908 -7918
		mu 0 4 4434 4433 4435 4436
		f 4 7907 7920 -7909 -7920
		mu 0 4 4436 4435 4437 4438
		f 4 7908 7922 -7910 -7922
		mu 0 4 4438 4437 4439 4440
		f 4 7909 7924 -7911 -7924
		mu 0 4 4440 4439 4441 4442
		f 4 7910 7926 -7912 -7926
		mu 0 4 4442 4441 4443 4444
		f 4 7911 7928 -7913 -7928
		mu 0 4 4444 4443 4445 4446
		f 4 7912 7930 -7914 -7930
		mu 0 4 4446 4445 4447 4448
		f 4 7913 7932 -7915 -7932
		mu 0 4 4448 4447 4449 4450
		f 4 -7935 -7933 7935 -7917
		mu 0 4 4432 4451 4452 4433
		f 4 -7936 -7931 7936 -7919
		mu 0 4 4433 4452 4453 4435
		f 4 -7937 -7929 7937 -7921
		mu 0 4 4435 4453 4454 4437
		f 4 -7938 -7927 -7925 -7923
		mu 0 4 4437 4454 4455 4439
		f 4 7933 7915 -7939 7931
		mu 0 4 4456 4431 4434 4457
		f 4 7938 7917 -7940 7929
		mu 0 4 4457 4434 4436 4458
		f 4 7939 7919 -7941 7927
		mu 0 4 4458 4436 4438 4459
		f 4 7940 7921 7923 7925
		mu 0 4 4459 4438 4440 4460
		f 4 7941 7952 -7943 -7952
		mu 0 4 4461 4462 4463 4464
		f 4 7942 7954 -7944 -7954
		mu 0 4 4464 4463 4465 4466
		f 4 7943 7956 -7945 -7956
		mu 0 4 4466 4465 4467 4468
		f 4 7944 7958 -7946 -7958
		mu 0 4 4468 4467 4469 4470
		f 4 7945 7960 -7947 -7960
		mu 0 4 4470 4469 4471 4472
		f 4 7946 7962 -7948 -7962
		mu 0 4 4472 4471 4473 4474
		f 4 7947 7964 -7949 -7964
		mu 0 4 4474 4473 4475 4476
		f 4 7948 7966 -7950 -7966
		mu 0 4 4476 4475 4477 4478
		f 4 7949 7968 -7951 -7968
		mu 0 4 4478 4477 4479 4480
		f 4 -7971 -7969 7971 -7953
		mu 0 4 4462 4481 4482 4463
		f 4 -7972 -7967 7972 -7955
		mu 0 4 4463 4482 4483 4465
		f 4 -7973 -7965 7973 -7957
		mu 0 4 4465 4483 4484 4467
		f 4 -7974 -7963 -7961 -7959
		mu 0 4 4467 4484 4485 4469
		f 4 7969 7951 -7975 7967
		mu 0 4 4486 4461 4464 4487
		f 4 7974 7953 -7976 7965
		mu 0 4 4487 4464 4466 4488
		f 4 7975 7955 -7977 7963
		mu 0 4 4488 4466 4468 4489
		f 4 7976 7957 7959 7961
		mu 0 4 4489 4468 4470 4490
		f 4 7977 7988 -7979 -7988
		mu 0 4 4491 4492 4493 4494
		f 4 7978 7990 -7980 -7990
		mu 0 4 4494 4493 4495 4496
		f 4 7979 7992 -7981 -7992
		mu 0 4 4496 4495 4497 4498
		f 4 7980 7994 -7982 -7994
		mu 0 4 4498 4497 4499 4500
		f 4 7981 7996 -7983 -7996
		mu 0 4 4500 4499 4501 4502
		f 4 7982 7998 -7984 -7998
		mu 0 4 4502 4501 4503 4504
		f 4 7983 8000 -7985 -8000
		mu 0 4 4504 4503 4505 4506
		f 4 7984 8002 -7986 -8002
		mu 0 4 4506 4505 4507 4508
		f 4 7985 8004 -7987 -8004
		mu 0 4 4508 4507 4509 4510
		f 4 -8007 -8005 8007 -7989
		mu 0 4 4492 4511 4512 4493
		f 4 -8008 -8003 8008 -7991
		mu 0 4 4493 4512 4513 4495
		f 4 -8009 -8001 8009 -7993
		mu 0 4 4495 4513 4514 4497
		f 4 -8010 -7999 -7997 -7995
		mu 0 4 4497 4514 4515 4499
		f 4 8005 7987 -8011 8003
		mu 0 4 4516 4491 4494 4517
		f 4 8010 7989 -8012 8001
		mu 0 4 4517 4494 4496 4518
		f 4 8011 7991 -8013 7999
		mu 0 4 4518 4496 4498 4519
		f 4 8012 7993 7995 7997
		mu 0 4 4519 4498 4500 4520
		f 4 8016 8015 -8015 -8014
		mu 0 4 4521 4522 4523 4524
		f 4 8019 8018 -8018 -8016
		mu 0 4 4522 4525 4526 4523
		f 4 8022 8021 -8021 -8019
		mu 0 4 4525 4527 4528 4526
		f 4 8025 8024 -8024 -8022
		mu 0 4 4527 4529 4530 4528
		f 4 8028 8027 -8027 -8025
		mu 0 4 4529 4531 4532 4530
		f 4 8031 8030 -8030 -8028
		mu 0 4 4531 4533 4534 4532
		f 4 8034 8033 -8033 -8031
		mu 0 4 4533 4535 4536 4534
		f 4 8037 8036 -8036 -8034
		mu 0 4 4535 4537 4538 4536
		f 4 8040 8039 -8039 -8037
		mu 0 4 4537 4539 4540 4538
		f 4 8014 -8043 8038 8041
		mu 0 4 4524 4523 4541 4542
		f 4 8017 -8044 8035 8042
		mu 0 4 4523 4526 4543 4541
		f 4 8020 -8045 8032 8043
		mu 0 4 4526 4528 4544 4543
		f 4 8023 8026 8029 8044
		mu 0 4 4528 4530 4545 4544
		f 4 -8041 8046 -8017 -8046
		mu 0 4 4546 4547 4522 4521
		f 4 -8038 8047 -8020 -8047
		mu 0 4 4547 4548 4525 4522
		f 4 -8035 8048 -8023 -8048
		mu 0 4 4548 4549 4527 4525
		f 4 -8032 -8029 -8026 -8049
		mu 0 4 4549 4550 4529 4527
		f 4 8052 8051 -8051 -8050
		mu 0 4 4551 4552 4553 4554
		f 4 8055 8054 -8054 -8052
		mu 0 4 4552 4555 4556 4553
		f 4 8058 8057 -8057 -8055
		mu 0 4 4555 4557 4558 4556
		f 4 8061 8060 -8060 -8058
		mu 0 4 4557 4559 4560 4558
		f 4 8064 8063 -8063 -8061
		mu 0 4 4559 4561 4562 4560
		f 4 8067 8066 -8066 -8064
		mu 0 4 4561 4563 4564 4562
		f 4 8070 8069 -8069 -8067
		mu 0 4 4563 4565 4566 4564
		f 4 8073 8072 -8072 -8070
		mu 0 4 4565 4567 4568 4566
		f 4 8076 8075 -8075 -8073
		mu 0 4 4567 4569 4570 4568
		f 4 8050 -8079 8074 8077
		mu 0 4 4554 4553 4571 4572
		f 4 8053 -8080 8071 8078
		mu 0 4 4553 4556 4573 4571
		f 4 8056 -8081 8068 8079
		mu 0 4 4556 4558 4574 4573
		f 4 8059 8062 8065 8080
		mu 0 4 4558 4560 4575 4574
		f 4 -8077 8082 -8053 -8082
		mu 0 4 4576 4577 4552 4551
		f 4 -8074 8083 -8056 -8083
		mu 0 4 4577 4578 4555 4552
		f 4 -8071 8084 -8059 -8084
		mu 0 4 4578 4579 4557 4555
		f 4 -8068 -8065 -8062 -8085
		mu 0 4 4579 4580 4559 4557
		f 4 8088 8087 -8087 -8086
		mu 0 4 4581 4582 4583 4584
		f 4 8091 8090 -8090 -8088
		mu 0 4 4582 4585 4586 4583
		f 4 8094 8093 -8093 -8091
		mu 0 4 4585 4587 4588 4586
		f 4 8097 8096 -8096 -8094
		mu 0 4 4587 4589 4590 4588
		f 4 8100 8099 -8099 -8097
		mu 0 4 4589 4591 4592 4590
		f 4 8103 8102 -8102 -8100
		mu 0 4 4591 4593 4594 4592
		f 4 8106 8105 -8105 -8103
		mu 0 4 4593 4595 4596 4594
		f 4 8109 8108 -8108 -8106
		mu 0 4 4595 4597 4598 4596
		f 4 8112 8111 -8111 -8109
		mu 0 4 4597 4599 4600 4598
		f 4 8086 -8115 8110 8113
		mu 0 4 4584 4583 4601 4602
		f 4 8089 -8116 8107 8114
		mu 0 4 4583 4586 4603 4601
		f 4 8092 -8117 8104 8115
		mu 0 4 4586 4588 4604 4603
		f 4 8095 8098 8101 8116
		mu 0 4 4588 4590 4605 4604
		f 4 -8113 8118 -8089 -8118
		mu 0 4 4606 4607 4582 4581
		f 4 -8110 8119 -8092 -8119
		mu 0 4 4607 4608 4585 4582
		f 4 -8107 8120 -8095 -8120
		mu 0 4 4608 4609 4587 4585
		f 4 -8104 -8101 -8098 -8121
		mu 0 4 4609 4610 4589 4587
		f 4 8124 8123 -8123 -8122
		mu 0 4 4611 4612 4613 4614
		f 4 8127 8126 -8126 -8124
		mu 0 4 4612 4615 4616 4613
		f 4 8130 8129 -8129 -8127
		mu 0 4 4615 4617 4618 4616
		f 4 8133 8132 -8132 -8130
		mu 0 4 4617 4619 4620 4618
		f 4 8136 8135 -8135 -8133
		mu 0 4 4619 4621 4622 4620
		f 4 8139 8138 -8138 -8136
		mu 0 4 4621 4623 4624 4622
		f 4 8142 8141 -8141 -8139
		mu 0 4 4623 4625 4626 4624
		f 4 8145 8144 -8144 -8142
		mu 0 4 4625 4627 4628 4626
		f 4 8148 8147 -8147 -8145
		mu 0 4 4627 4629 4630 4628
		f 4 8122 -8151 8146 8149
		mu 0 4 4614 4613 4631 4632
		f 4 8125 -8152 8143 8150
		mu 0 4 4613 4616 4633 4631
		f 4 8128 -8153 8140 8151
		mu 0 4 4616 4618 4634 4633
		f 4 8131 8134 8137 8152
		mu 0 4 4618 4620 4635 4634
		f 4 -8149 8154 -8125 -8154
		mu 0 4 4636 4637 4612 4611
		f 4 -8146 8155 -8128 -8155
		mu 0 4 4637 4638 4615 4612
		f 4 -8143 8156 -8131 -8156
		mu 0 4 4638 4639 4617 4615
		f 4 -8140 -8137 -8134 -8157
		mu 0 4 4639 4640 4619 4617
		f 4 8160 8159 -8159 -8158
		mu 0 4 4641 4642 4643 4644
		f 4 8163 8162 -8162 -8160
		mu 0 4 4642 4645 4646 4643
		f 4 8166 8165 -8165 -8163
		mu 0 4 4645 4647 4648 4646
		f 4 8169 8168 -8168 -8166
		mu 0 4 4647 4649 4650 4648
		f 4 8172 8171 -8171 -8169
		mu 0 4 4649 4651 4652 4650
		f 4 8175 8174 -8174 -8172
		mu 0 4 4651 4653 4654 4652
		f 4 8178 8177 -8177 -8175
		mu 0 4 4653 4655 4656 4654
		f 4 8181 8180 -8180 -8178
		mu 0 4 4655 4657 4658 4656
		f 4 8184 8183 -8183 -8181
		mu 0 4 4657 4659 4660 4658
		f 4 8158 -8187 8182 8185
		mu 0 4 4644 4643 4661 4662
		f 4 8161 -8188 8179 8186
		mu 0 4 4643 4646 4663 4661
		f 4 8164 -8189 8176 8187
		mu 0 4 4646 4648 4664 4663
		f 4 8167 8170 8173 8188
		mu 0 4 4648 4650 4665 4664
		f 4 -8185 8190 -8161 -8190
		mu 0 4 4666 4667 4642 4641
		f 4 -8182 8191 -8164 -8191
		mu 0 4 4667 4668 4645 4642
		f 4 -8179 8192 -8167 -8192
		mu 0 4 4668 4669 4647 4645
		f 4 -8176 -8173 -8170 -8193
		mu 0 4 4669 4670 4649 4647
		f 4 8196 8195 -8195 -8194
		mu 0 4 4671 4672 4673 4674
		f 4 8199 8198 -8198 -8196
		mu 0 4 4672 4675 4676 4673
		f 4 8202 8201 -8201 -8199
		mu 0 4 4675 4677 4678 4676
		f 4 8205 8204 -8204 -8202
		mu 0 4 4677 4679 4680 4678
		f 4 8208 8207 -8207 -8205
		mu 0 4 4679 4681 4682 4680
		f 4 8211 8210 -8210 -8208
		mu 0 4 4681 4683 4684 4682
		f 4 8214 8213 -8213 -8211
		mu 0 4 4683 4685 4686 4684
		f 4 8217 8216 -8216 -8214
		mu 0 4 4685 4687 4688 4686
		f 4 8220 8219 -8219 -8217
		mu 0 4 4687 4689 4690 4688
		f 4 8194 -8223 8218 8221
		mu 0 4 4674 4673 4691 4692
		f 4 8197 -8224 8215 8222
		mu 0 4 4673 4676 4693 4691
		f 4 8200 -8225 8212 8223
		mu 0 4 4676 4678 4694 4693
		f 4 8203 8206 8209 8224
		mu 0 4 4678 4680 4695 4694
		f 4 -8221 8226 -8197 -8226
		mu 0 4 4696 4697 4672 4671
		f 4 -8218 8227 -8200 -8227
		mu 0 4 4697 4698 4675 4672
		f 4 -8215 8228 -8203 -8228
		mu 0 4 4698 4699 4677 4675
		f 4 -8212 -8209 -8206 -8229
		mu 0 4 4699 4700 4679 4677
		f 4 8232 8231 -8231 -8230
		mu 0 4 4701 4702 4703 4704
		f 4 8235 8234 -8234 -8232
		mu 0 4 4702 4705 4706 4703
		f 4 8238 8237 -8237 -8235
		mu 0 4 4705 4707 4708 4706
		f 4 8241 8240 -8240 -8238
		mu 0 4 4707 4709 4710 4708
		f 4 8244 8243 -8243 -8241
		mu 0 4 4709 4711 4712 4710
		f 4 8247 8246 -8246 -8244
		mu 0 4 4711 4713 4714 4712
		f 4 8250 8249 -8249 -8247
		mu 0 4 4713 4715 4716 4714
		f 4 8253 8252 -8252 -8250
		mu 0 4 4715 4717 4718 4716
		f 4 8256 8255 -8255 -8253
		mu 0 4 4717 4719 4720 4718
		f 4 8230 -8259 8254 8257
		mu 0 4 4704 4703 4721 4722
		f 4 8233 -8260 8251 8258
		mu 0 4 4703 4706 4723 4721
		f 4 8236 -8261 8248 8259
		mu 0 4 4706 4708 4724 4723
		f 4 8239 8242 8245 8260
		mu 0 4 4708 4710 4725 4724
		f 4 -8257 8262 -8233 -8262
		mu 0 4 4726 4727 4702 4701
		f 4 -8254 8263 -8236 -8263
		mu 0 4 4727 4728 4705 4702
		f 4 -8251 8264 -8239 -8264
		mu 0 4 4728 4729 4707 4705
		f 4 -8248 -8245 -8242 -8265
		mu 0 4 4729 4730 4709 4707
		f 4 8268 8267 -8267 -8266
		mu 0 4 4731 4732 4733 4734
		f 4 8271 8270 -8270 -8268
		mu 0 4 4732 4735 4736 4733
		f 4 8274 8273 -8273 -8271
		mu 0 4 4735 4737 4738 4736
		f 4 8277 8276 -8276 -8274
		mu 0 4 4737 4739 4740 4738
		f 4 8280 8279 -8279 -8277
		mu 0 4 4739 4741 4742 4740
		f 4 8283 8282 -8282 -8280
		mu 0 4 4741 4743 4744 4742
		f 4 8286 8285 -8285 -8283
		mu 0 4 4743 4745 4746 4744
		f 4 8289 8288 -8288 -8286
		mu 0 4 4745 4747 4748 4746
		f 4 8292 8291 -8291 -8289
		mu 0 4 4747 4749 4750 4748
		f 4 8266 -8295 8290 8293
		mu 0 4 4734 4733 4751 4752
		f 4 8269 -8296 8287 8294
		mu 0 4 4733 4736 4753 4751
		f 4 8272 -8297 8284 8295
		mu 0 4 4736 4738 4754 4753
		f 4 8275 8278 8281 8296
		mu 0 4 4738 4740 4755 4754
		f 4 -8293 8298 -8269 -8298
		mu 0 4 4756 4757 4732 4731
		f 4 -8290 8299 -8272 -8299
		mu 0 4 4757 4758 4735 4732
		f 4 -8287 8300 -8275 -8300
		mu 0 4 4758 4759 4737 4735
		f 4 -8284 -8281 -8278 -8301
		mu 0 4 4759 4760 4739 4737;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface58";
	rename -uid "C6F76B5D-498C-8405-0ABB-64A354DFDD6B";
	setAttr ".rp" -type "double3" 0 7.537327651977539 1.9661742015420576 ;
	setAttr ".sp" -type "double3" 0 7.537327651977539 1.9661742015420576 ;
createNode transform -n "transform39" -p "|polySurface58";
	rename -uid "144564FC-40F6-6616-74D8-80AA253CA0C8";
	setAttr ".v" no;
createNode mesh -n "polySurface58Shape" -p "transform39";
	rename -uid "D7B97EB3-483E-776D-3C96-96A1903CAFB3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface60";
	rename -uid "A38E48BA-4F05-9C31-6522-3793A16B4875";
	setAttr ".rp" -type "double3" 0 0.02003376553897919 0.50428882332768921 ;
	setAttr ".sp" -type "double3" 0 0.02003376553897919 0.50428882332768921 ;
createNode mesh -n "polySurface58Shape" -p "polySurface60";
	rename -uid "80FA69B4-4082-F31E-DCC4-1284C8AE37C3";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50540450844701457 0.5000000522704795 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B04D52B5-40C6-A227-6361-6DB6DA14792E";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A00B679F-4EA6-FC01-EF0B-06B81922D41C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0F641EF6-4DAC-2FD4-7E26-E6B23C4F9906";
createNode displayLayerManager -n "layerManager";
	rename -uid "94D4D2DA-4174-BCFF-EC3F-5FA4C5D4AD3A";
createNode displayLayer -n "defaultLayer";
	rename -uid "39E88175-49D7-0D15-5D96-6FA42CF89D16";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "679376D9-4F83-2002-0A52-B2A5A242C023";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3FA136DA-446E-F776-8B01-2D96283852D5";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "455A8B6D-445F-C1F0-39B1-7B9E83EFAAC4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 324\n            -height 374\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 323\n            -height 373\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 324\n            -height 373\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 691\n            -height 791\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 691\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 691\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5BED5656-4704-A784-1D58-5298DDA7E6C0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "36A97E3F-4323-95CC-3726-02A0B9B43D47";
	setAttr ".c" -type "float3" 1 0.97579998 0.60780001 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "265CDA4A-4F5D-2388-AAD5-CAB79BE10A46";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "55CAF60F-4348-A1A8-3FA0-10B9816BC321";
createNode lambert -n "lambert3";
	rename -uid "852174B3-49B2-DC3D-7634-75A6FCB31F8A";
	setAttr ".c" -type "float3" 1 0.97579998 0.60780001 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "F844EC6C-4CCF-6C35-97BF-16903AFDB263";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 23 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "2CAB4EF4-4955-06F3-FAB7-4AB46D45A925";
createNode lambert -n "lambert4";
	rename -uid "FA324D78-4B0E-5CF2-F2AD-D5B71E0F634E";
createNode shadingEngine -n "lambert4SG";
	rename -uid "C0C327DC-416E-4984-19F3-79A01FEB5BF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "3671CCDE-4F0F-150D-41D0-1481F82D4450";
createNode lambert -n "lambert5";
	rename -uid "901C240A-4C95-85E2-5C42-2AA5DFCB4B31";
	setAttr ".c" -type "float3" 1 0.97579998 0.60780001 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "50B40C2F-4685-B472-C063-388B2A0C681E";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 19 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "7C9EAD9F-43A9-FE4D-4460-BFB575BC357A";
createNode groupId -n "groupId1";
	rename -uid "F992BEB8-4F32-D661-3F37-2F9CBB3BEECD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "A2A3C3C5-42BC-B006-8EE1-B18CC3952745";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "C74BE896-4EFF-F756-0AB6-DB86BAB33E89";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "6F0013B4-4BFD-D266-D80C-319430BA7B72";
	setAttr ".ic" 37;
	setAttr -s 37 ".out";
createNode groupId -n "groupId4";
	rename -uid "EE7C02E6-42BF-6D30-F284-E7A21073694B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "324916DD-40AD-E299-E3A4-B38135C730DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId5";
	rename -uid "5C2E47F4-4077-A950-8FD2-D3964D57AA62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3FCF0945-41D8-C619-A85B-58819B3C983E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId6";
	rename -uid "175F8337-4CAE-D6AC-E32F-83A2E51CF0B6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "1BA26342-4CDE-734A-3071-9A8CA46B9D44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId7";
	rename -uid "361A6E85-4A11-8C06-6111-5F80532968F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "C1D2996A-4A4E-A734-BF4E-25B830E23D70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId8";
	rename -uid "910B743D-4081-6AE4-D84E-79BF71329918";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "E2512CA3-46C9-A22B-C87C-CEB4FBF735EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId9";
	rename -uid "1FD9FB26-42C3-DD00-DE92-0FBA97647D12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "88F54609-45BA-7C7C-6F75-06A02924F935";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId10";
	rename -uid "A674C47F-4CC5-38E6-5AEB-D4BFE9EEE03C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "EA71503E-42E3-AAC6-3515-3D829E082E06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId11";
	rename -uid "943C622C-415A-412E-A4F4-62815B5C8A05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "B8672F4B-4C26-4D13-529E-3BB8DAB9F211";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId12";
	rename -uid "B85BDC73-4981-8A69-C38E-48A2F8E6356E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "704241A3-4C32-626A-AFC0-86926EB43401";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId13";
	rename -uid "D384082F-4110-7A3F-BBD5-05B6E63F0426";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "607C46BA-44D8-D5A5-31C0-E29E3F0039E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId14";
	rename -uid "3AD44D02-45E8-FA19-C631-FCA64A50133C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "27C51279-4412-1CDA-33B0-1E8E51727566";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId15";
	rename -uid "A05F203E-4B09-2559-430F-E4BFC75B0931";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "D41CB9E1-4087-52D8-F11B-5AAD6659BC24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId16";
	rename -uid "0EA45D65-4341-876B-5A35-D9AC853508FB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "EAF3C42B-43EE-F2C7-710A-C0B644E44557";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId17";
	rename -uid "97A11052-4E26-8B3E-4B0E-64B21766686E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "E60A536D-48F0-03BC-2475-009142A123FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId18";
	rename -uid "AA10E520-4B82-F1D6-CDF2-94A55E8678F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "B9E78A43-480C-C598-E4F1-CDB9CD430264";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId19";
	rename -uid "FE548D95-4B7A-F708-432F-118FF058817F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "2A229695-431D-2CC5-7D21-5786A81EF591";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId20";
	rename -uid "ABF7EE67-4BC6-1E47-388E-E9A236BFFA4C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "17976845-4D4B-EB89-78E0-79BC065355ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId21";
	rename -uid "A49A0634-48C4-11C4-037A-D0B67CEC5C04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "CC95E50F-4F41-0EE6-1159-83B72023E6BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId22";
	rename -uid "BD3275BE-4D50-EC34-71BD-EEBB4F066354";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "80D1274B-4FCA-D8EA-0E46-31B511999A22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId23";
	rename -uid "9B42A12C-4EE5-80F7-21D4-C38306D095A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "4380A418-4456-93FE-26D6-3DA5C16AE3D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId24";
	rename -uid "86CE53B6-4E0E-D4ED-E081-73990C6B25D4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "02A0D29B-4EB0-8818-2A4F-EEA6392D408E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:467]";
createNode groupId -n "groupId25";
	rename -uid "D581ED87-40DB-3371-0A69-C79BA8B3F332";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "97267949-471F-EC51-42F2-CE9B56AB7D58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId26";
	rename -uid "0E82834C-4B97-DC28-4A62-EFBB5D2238C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "CA328A73-487F-9E96-8BB7-6FBA4208BD7E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId27";
	rename -uid "63D92CEE-4518-A5C9-F4E4-09A51893FAD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "247EB1C9-4E32-AEB4-3393-F98255D1CD08";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId28";
	rename -uid "F3453BD8-4FCB-D434-0EC4-65AEEB1F40E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "1D8D4E01-4EF8-8CA7-67AD-80ADA833BC3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId29";
	rename -uid "8779CC7D-40F1-69E7-A4DC-75AFDF104F1C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "006F8A0F-4D36-DEB6-64A4-BEB71558BC43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId30";
	rename -uid "390C3995-4A4D-A6A6-8D32-86811B28909C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "9B3B23E5-49D2-CD7E-9AA0-97A6833B7945";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId31";
	rename -uid "695C216B-4898-9B40-3851-AFBE0259A640";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "4A0E1123-4690-4D5B-D873-69AA9D2E1A33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId32";
	rename -uid "4818BF84-4B60-C47B-83E1-4887B1DD9EE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "053C33F2-4976-C9F5-17D8-5D9312C84A3A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId33";
	rename -uid "3B7D123A-4326-C0B5-C3F0-3DA5400D9594";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "74708572-495F-1A60-BA7E-84AA77917212";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId34";
	rename -uid "27928FD5-4983-AEDB-CF4B-A3ADBE003A1B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "3AA052D4-4489-069D-7174-7AB153945788";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId35";
	rename -uid "48C9965A-4F9F-E527-B316-4E9EA0F16065";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "73DC7B92-42B7-5A09-AA0D-AEB33BBB0CCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId36";
	rename -uid "F9F3A0A4-491E-6A4F-E7BA-DF912ADEC054";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "B59F8967-439F-C5C9-23AA-9DB1C5F780CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId37";
	rename -uid "80A00063-4307-6BCC-84A8-4B87DF9A9265";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "2CE918FB-4553-78AB-35AF-EFA1E2A43F56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId38";
	rename -uid "B53CECB3-4AE9-9DCA-B459-F6851E51E0C5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "D691CA03-4DBF-243C-266F-AE936582713A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId39";
	rename -uid "F145FD04-456C-12EB-556A-089EB4953501";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "91AC51FB-4096-F947-737D-DFB49ED369F6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId40";
	rename -uid "A14DAC16-404D-1178-9108-3E8E2DB13935";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "BD316F58-4E88-B3FA-B26C-B996305BBE8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode polyUnite -n "polyUnite1";
	rename -uid "2F990FC1-4B52-D837-37C6-F7947C8A3FBE";
	setAttr -s 36 ".ip";
	setAttr -s 36 ".im";
createNode groupId -n "groupId41";
	rename -uid "A7565AD9-4625-B50A-6505-54A6C52D7393";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "42A4BC31-4CFE-92EB-DCED-149080ADCD5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:16]" "f[177:210]" "f[691:741]" "f[902:935]" "f[1564:1580]" "f[2221:2237]" "f[2398:2414]" "f[2575:2608]" "f[3249:3265]" "f[3426:3442]" "f[3763:3779]";
createNode groupId -n "groupId42";
	rename -uid "056E40F8-4044-5AD4-0CBB-4CAEBBB823F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "8818E0AA-418A-04D3-7C4B-29A2CB77A8C6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[17:176]" "f[211:690]" "f[742:901]" "f[936:1095]" "f[1581:2220]" "f[2238:2397]" "f[2415:2574]" "f[2609:3248]" "f[3266:3425]" "f[3443:3762]";
createNode groupId -n "groupId43";
	rename -uid "5207ECB6-4130-A029-63BC-09A8F0521508";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "522E1338-4F83-8E3F-F657-DE82081F1C93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1096:1563]";
createNode polyUnite -n "polyUnite2";
	rename -uid "EC4A4995-4073-C83A-01FE-25A79739D36D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId44";
	rename -uid "590D0D17-4B17-492E-58EE-E9B577FF4DCA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "8F148BCA-40D0-4878-0786-9D8F86FCC464";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:16]" "f[177:210]" "f[691:741]" "f[902:935]" "f[1564:1580]" "f[2221:2237]" "f[2398:2414]" "f[2575:2608]" "f[3249:3265]" "f[3426:3442]" "f[3763:3779]";
createNode groupId -n "groupId45";
	rename -uid "C31F801D-45D6-31AA-2AEA-BBAC2D2818EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "AEAEDEA2-45D8-8100-8A61-12A4B1352ADA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[17:176]" "f[211:690]" "f[742:901]" "f[936:1095]" "f[1581:2220]" "f[2238:2397]" "f[2415:2574]" "f[2609:3248]" "f[3266:3425]" "f[3443:3762]" "f[3780:3939]";
createNode groupId -n "groupId46";
	rename -uid "A9E4B99B-477F-998B-4935-D09519C400B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "25654EEE-497C-0500-EF5C-458986EC6985";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1096:1563]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "AF4627E2-4791-9AE2-405A-BBBC8A264E87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3939]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 24.397211914062499 24.397211914062499 24.397211914062499 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "1C61ED70-4E49-DEAE-283C-F3BD430EF788";
	setAttr ".uopa" yes;
	setAttr -s 6353 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.030410036 -0.014596641 0.030594543
		 -0.014885247 0.031014636 -0.014941394 0.031015232 -0.014652789 0.030691609 -0.015167058
		 0.030966356 -0.015200257 0.03073369 -0.015434802 0.030885801 -0.015452981 0.030702338
		 -0.01569742 0.030791923 -0.015698552 0.030702338 -0.015735745 0.030791923 -0.015734613
		 0.030860975 -0.011348307 0.031049266 -0.011292577 0.031026229 -0.011039078 0.030817196
		 -0.011099339 0.031257942 -0.011273444 0.031257942 -0.011018276 0.031005457 -0.010735273
		 0.030777648 -0.010798812 0.030711576 -0.011435032 0.030651346 -0.011193275 0.031466648
		 -0.011292577 0.031489655 -0.011039078 0.031257942 -0.010713339 0.031026229 -0.010497749
		 0.030817196 -0.010554075 0.030596867 -0.010897875 0.030615643 -0.011544406 0.030544862
		 -0.011311591 0.031654909 -0.011348307 0.031698659 -0.011099339 0.031510457 -0.010735273
		 0.031257942 -0.010478318 0.031804338 -0.011435032 0.031864569 -0.011193275 0.031738266
		 -0.010798812 0.031489655 -0.010497749 0.031257942 -0.010329008 0.031069174 -0.010344386
		 0.031900272 -0.011544406 0.031971052 -0.011311591 0.031919047 -0.010897875 0.031698659
		 -0.010554075 0.03144671 -0.010344386 0.031257942 -0.010034561 0.031026229 -0.01005286
		 0.031489655 -0.01005286 0.031257942 -0.0097208023 0.031005457 -0.0097399354 0.030898914
		 -0.01038897 0.030817196 -0.010105968 0.031617001 -0.01038897 0.031698659 -0.010105968
		 0.031510457 -0.0097399354 0.031257942 -0.0094681382 0.031026229 -0.0094850063 0.030777648
		 -0.0097956061 0.03076376 -0.010458469 0.030651346 -0.010188699 0.031752154 -0.010458469
		 0.031864569 -0.010188699 0.031738266 -0.0097956061 0.031489655 -0.0094850063 0.031257942
		 -0.0092704892 0.031049266 -0.009285152 0.030817196 -0.0095340014 0.030596867 -0.0098822713
		 0.030677006 -0.010545969 0.030544862 -0.010292947 0.031838909 -0.010545969 0.031971052
		 -0.010292947 0.031919047 -0.0098822713 0.031698659 -0.0095340014 0.031466648 -0.009285152
		 0.030860975 -0.0093277693 0.030651346 -0.0096102953 0.031864569 -0.0096102953 0.031654909
		 -0.0093277693 0.040955797 -0.0089286566 0.041183591 -0.0088650584 0.041144013 -0.0085380077
		 0.04093501 -0.0085943341 0.04093501 -0.0091884732 0.041144013 -0.0091281533 0.041364387
		 -0.0087660551 0.041309878 -0.0084502101 0.041062325 -0.0082390308 0.040892035 -0.0082836151
		 0.040703267 -0.0089505315 0.040703267 -0.0086137652 0.040912002 -0.0093805194 0.041100234
		 -0.009324789 0.040703267 -0.0092092156 0.041197509 -0.0081695318 0.040703267 -0.0082989931
		 0.040450752 -0.0089286566 0.040471569 -0.0085943341 0.040703267 -0.0093997121 0.040471569
		 -0.0091884732 0.041416407 -0.0083396435 0.041284233 -0.0080820322 0.04093501 -0.0081061125
		 0.040703267 -0.0081244111 0.040514514 -0.0082836151 0.040222973 -0.0088650584 0.040262535
		 -0.0085380077 0.040494576 -0.0093805194 0.040262535 -0.0091281533 0.040955797 -0.0078271031
		 0.040703267 -0.0078462958 0.040471569 -0.0081061125 0.040344208 -0.0082390308 0.040042207
		 -0.0087660551 0.04009667 -0.0084502101 0.040306315 -0.009324789 0.041143999 -0.0080530047
		 0.041183591 -0.0077714324 0.04093501 -0.0074829459 0.040703267 -0.007499814 0.040450752
		 -0.0078271031 0.04020907 -0.0081695318 0.041309878 -0.0079702735 0.041364387 -0.0076848269
		 0.041143999 -0.0074339509 0.040912002 -0.0071976185 0.040703267 -0.0072123408 0.040471554
		 -0.0074829459 0.040262535 -0.0080530047 0.040222958 -0.0077714324 0.039990172 -0.0083396435
		 0.0401223 -0.0080820322 0.041309878 -0.007357657 0.041100234 -0.0071550012 0.040494576
		 -0.0071976185 0.04026255 -0.0074339509 0.04009667 -0.0079702735 0.040042207 -0.0076848269
		 0.041249663 -0.0070886612 0.040306315 -0.0071550012 0.04009667 -0.007357657 0.041416407
		 -0.0072615743 0.041345611 -0.0070050955 0.040156901 -0.0070886612 0.039990172 -0.0072615743
		 0.040060937 -0.0070050955 0.01558508 -0.0097573996 0.014979854 -0.0097926855 0.01498045
		 -0.010100782 0.015400603 -0.010065436 0.01502873 -0.010390103 0.015303507 -0.010369241
		 0.015109256 -0.01067555 0.015261367 -0.010664165 0.015203133 -0.010956585 0.015292779
		 -0.01095587 0.042463422 -0.017137825 0.042311266 -0.01714927 0.042279899 -0.017407358
		 0.0423695 -0.017406642 0.042543933 -0.016873538 0.04226917 -0.0168944 0.042592213
		 -0.016613066 0.042172119 -0.016648412 0.042592794 -0.016371369 0.041987613 -0.016406715
		 0.042124704 -0.0071979165 0.041936412 -0.0071552396 0.041892663 -0.0074341297 0.042101696
		 -0.0074831247 0.041787013 -0.0070887804 0.041726768 -0.0073577166 0.041853085 -0.0077715516
		 0.042080909 -0.0078272223 0.042333424 -0.0072125793 0.042333424 -0.0075000525 0.041691095
		 -0.0070050955 0.041620269 -0.0072614551 0.041672289 -0.0076847672 0.041892663 -0.0080529451
		 0.042101696 -0.0081061125 0.042333424 -0.0078464746 0.0425421 -0.0071979165 0.042565078
		 -0.0074831247 0.041726768 -0.0079701543 0.042333424 -0.0081244707 0.042585924 -0.0078272223
		 0.042730376 -0.0071552396 0.042774126 -0.0074341297 0.042144641 -0.0082834363 0.042333424
		 -0.0082988143 0.042565078 -0.0081061125 0.042813718 -0.0077715516 0.042879805 -0.0070887804
		 0.042940006 -0.0073577166 0.042101696 -0.0085941553 0.042333424 -0.0086135864 0.042522192
		 -0.0082834363 0.042774126 -0.0080529451 0.042994484 -0.0076847672 0.042975739 -0.0070050955
		 0.043046504 -0.0072614551 0.041974351 -0.0082387924 0.041892663 -0.0085377693 0.042080909
		 -0.0089283586 0.042333424 -0.0089502931 0.042565078 -0.0085941553 0.042940006 -0.0079701543
		 0.041839197 -0.0081692338 0.041726768 -0.0084498525 0.041853085 -0.0088647008 0.042101696
		 -0.009188056 0.042333424 -0.0092087984 0.042585924 -0.0089283586 0.042692482 -0.0082387924
		 0.042774126 -0.0085377693 0.041752413 -0.008081615 0.041620269 -0.0083391666 0.041672289
		 -0.0087655783 0.041892663 -0.0091276765 0.042124704 -0.0093799233 0.042333424 -0.009399116
		 0.042565078 -0.009188056 0.042813718 -0.0088647008 0.042827591 -0.0081692338 0.042940006
		 -0.0084498525 0.041936412 -0.009324193 0.0425421 -0.0093799233 0.042774126 -0.0091276765
		 0.042994484 -0.0087655783 0.042914376 -0.008081615 0.043046504 -0.0083391666 0.042730376
		 -0.009324193 0.030054346 -0.0097948313 0.029826537 -0.0097391009 0.029805735 -0.010051966
		 0.030014768 -0.010105133 0.030014768 -0.0095333457 0.029805735 -0.0094843507 0.029574051
		 -0.0097199082 0.029574051 -0.010033607 0.029762819 -0.010343492 0.02993311 -0.010388136
		 0.030235127 -0.009881556 0.030180648 -0.010187924 0.029971018 -0.0093272328 0.029782727
		 -0.0092845559 0.029574051 -0.009467423 0.030180648 -0.0096097589 0.029321507 -0.0097391009;
	setAttr ".uvtk[250:499]" 0.029342309 -0.010051966 0.029574051 -0.010328054
		 0.030068234 -0.010457695 0.029574051 -0.0092698932 0.029342309 -0.0094843507 0.029093698
		 -0.0097948313 0.029133275 -0.010105133 0.029385284 -0.010343492 0.029574051 -0.010477185
		 0.029805735 -0.010496616 0.030287161 -0.010292292 0.030155018 -0.010545254 0.029365316
		 -0.0092845559 0.029133275 -0.0095333457 0.028912917 -0.009881556 0.028967395 -0.010187924
		 0.029214993 -0.010388076 0.029342309 -0.010496616 0.029574051 -0.010712147 0.029826537
		 -0.010734022 0.029177025 -0.0093272328 0.028967395 -0.0096097589 0.02907981 -0.010457695
		 0.029321507 -0.010734022 0.029574051 -0.011016965 0.029805735 -0.011037767 0.030014768
		 -0.010553002 0.030054346 -0.010797679 0.028860882 -0.010292292 0.028993085 -0.010545313
		 0.029133275 -0.010553002 0.029093698 -0.010797679 0.029342309 -0.011037767 0.029574051
		 -0.011272013 0.029782727 -0.011291206 0.030014768 -0.011098087 0.029133275 -0.011098087
		 0.029365316 -0.011291206 0.029971018 -0.011346996 0.030235127 -0.010896802 0.030180648
		 -0.011192083 0.028912917 -0.010896802 0.028967395 -0.011192083 0.029177025 -0.011346996
		 0.030120447 -0.01143378 0.029027656 -0.01143378 0.030287161 -0.011310518 0.030216351
		 -0.011543274 0.028860882 -0.011310518 0.028931692 -0.011543274 0.032055512 -0.0067618489
		 0.031867251 -0.0067332983 0.031823501 -0.0070203543 0.032032534 -0.0070538521 0.031717822
		 -0.0066888332 0.031657621 -0.0069681406 0.031783924 -0.0073722005 0.032011703 -0.0074111223
		 0.032264218 -0.0067717433 0.032264218 -0.0070654154 0.031603143 -0.007311523 0.031823501
		 -0.0076848269 0.032032534 -0.007722795 0.032264218 -0.007424593 0.032472923 -0.0067618489
		 0.032495931 -0.0070538521 0.031657621 -0.0076257586 0.031905159 -0.0079061389 0.03207545
		 -0.0079385042 0.032264218 -0.007735908 0.032516733 -0.0074111223 0.032661214 -0.0067332983
		 0.032704964 -0.0070203543 0.031823501 -0.0082094669 0.032032534 -0.0082508922 0.032264218
		 -0.0079496503 0.032495931 -0.007722795 0.032744542 -0.0073722005 0.032810643 -0.0066888332
		 0.032870844 -0.0069681406 0.031770036 -0.007855773 0.031657621 -0.0081448555 0.031783924
		 -0.0085551143 0.032011703 -0.0086026788 0.032264218 -0.0082651973 0.032452986 -0.0079385042
		 0.032704964 -0.0076848269 0.032925323 -0.007311523 0.031683251 -0.007792294 0.031551108
		 -0.0080634952 0.031603143 -0.0084810853 0.031823501 -0.0088529587 0.032032534 -0.008898735
		 0.032264218 -0.0086190701 0.032495931 -0.0082508922 0.032623276 -0.0079061389 0.032870844
		 -0.0076257586 0.031657621 -0.0087817311 0.031867251 -0.0090803504 0.032055512 -0.0091230869
		 0.032264218 -0.0089145303 0.032516733 -0.0086026788 0.032704964 -0.0082094669 0.031717822
		 -0.009013772 0.032264218 -0.0091378093 0.032495931 -0.008898735 0.032744542 -0.0085551143
		 0.03275843 -0.007855773 0.032870844 -0.0081448555 0.032472923 -0.0091230869 0.032704964
		 -0.0088530183 0.032925323 -0.0084810853 0.032845214 -0.007792294 0.032977358 -0.0080634952
		 0.032661214 -0.0090803504 0.032870844 -0.0087817311 0.032810643 -0.009013772 0.046034399
		 -0.0069463849 0.045825362 -0.0069128275 0.045846161 -0.0071973205 0.046073973 -0.0072363019
		 0.04599065 -0.0067156553 0.045802344 -0.0066871047 0.045593642 -0.0069013238 0.045593642
		 -0.0071839094 0.045825362 -0.0075223446 0.046034399 -0.0075603127 0.046200279 -0.0069985986
		 0.046254754 -0.0072969198 0.045593642 -0.0066772699 0.046140082 -0.0067601204 0.045361973
		 -0.0069128275 0.045341142 -0.0071973205 0.045593642 -0.0075092912 0.045782406 -0.007813096
		 0.045952696 -0.0078454614 0.046200279 -0.0076194406 0.045384936 -0.0066871047 0.04515294
		 -0.0069463849 0.045113355 -0.0072362423 0.045361973 -0.0075223446 0.045593634 -0.00780195
		 0.045825362 -0.0080035329 0.046034399 -0.0080450177 0.046087865 -0.0078958273 0.04519666
		 -0.0067156553 0.044987053 -0.0069985986 0.044932574 -0.0072969198 0.04515294 -0.0075603127
		 0.045404874 -0.007813096 0.045593642 -0.0079892874 0.045846161 -0.0082738996 0.046073973
		 -0.0083214641 0.046306778 -0.0076939464 0.046174634 -0.0079593062 0.045047253 -0.0067601204
		 0.044987053 -0.0076194406 0.045234576 -0.0078454614 0.045361973 -0.0080035329 0.045593642
		 -0.0082575679 0.045825362 -0.0085938573 0.046034399 -0.0086395741 0.046200279 -0.0081095695
		 0.046254754 -0.008395493 0.045099467 -0.0078958273 0.04515294 -0.0080450177 0.045341142
		 -0.0082738996 0.045593642 -0.0085780621 0.045802344 -0.0088585019 0.04599065 -0.008901298
		 0.046200279 -0.0087108612 0.044880524 -0.0076939464 0.045012668 -0.0079593062 0.045113355
		 -0.0083214641 0.045361973 -0.0085938573 0.045593642 -0.0088438392 0.046140082 -0.0089678168
		 0.044987053 -0.0081095695 0.044932559 -0.008395493 0.04515294 -0.0086395741 0.045384929
		 -0.0088585019 0.046306778 -0.0088006258 0.046235997 -0.0090517402 0.044987053 -0.0087108612
		 0.04519666 -0.008901298 0.045047246 -0.0089678168 0.044880524 -0.0088006258 0.044951305
		 -0.0090517402 0.034469113 -0.0043641329 0.034280851 -0.0043504238 0.034237102 -0.0046384931
		 0.034446135 -0.00465554 0.034131423 -0.004329145 0.034071222 -0.0046119094 0.034197524
		 -0.0049959421 0.034425333 -0.0050170422 0.034677818 -0.0043688416 0.034677818 -0.0046613812
		 0.034016743 -0.0049629807 0.034237102 -0.0053321123 0.034446135 -0.0053538084 0.034677818
		 -0.0050243139 0.034886524 -0.0043641329 0.034909531 -0.00465554 0.034071222 -0.0052983165
		 0.03431876 -0.0055835247 0.034489051 -0.0056026578 0.034677818 -0.005361259 0.034930363
		 -0.0050170422 0.035074815 -0.0043504238 0.035118565 -0.0046384931 0.034183636 -0.0055536032
		 0.034237102 -0.0058835149 0.034446135 -0.0059089065 0.034677818 -0.0056092739 0.034909531
		 -0.0053538084 0.035158142 -0.0049958825 0.035224244 -0.004329145 0.035284445 -0.0046119094
		 0.034071222 -0.005843997 0.034197524 -0.006239295 0.034425333 -0.0062693954 0.034677818
		 -0.0059176087 0.034866586 -0.0056026578 0.035118565 -0.0053321123 0.035338923 -0.0049629807
		 0.034016743 -0.0061923265 0.034237102 -0.0065647364 0.034446135 -0.0065946579 0.034677818
		 -0.0062797666 0.034909531 -0.0059088469 0.035036907 -0.0055835247 0.035284445 -0.0052983165
		 0.034071222 -0.0065180659 0.034280851 -0.0068174005 0.034469113 -0.0068459511 0.034677818
		 -0.0066049099 0.034930363 -0.0062693954 0.035118565 -0.0058835149 0.03517203 -0.0055536628
		 0.034131423 -0.0067728162 0.034677818 -0.0068557858 0.034909531 -0.0065946579 0.035158142
		 -0.006239295 0.035284445 -0.005843997 0.034886524 -0.0068459511 0.035118565 -0.0065646768
		 0.035338923 -0.0061923265 0.035074815 -0.0068174005 0.035284445 -0.0065180659;
	setAttr ".uvtk[500:749]" 0.035224244 -0.0067728162 0.036370143 -0.009576261
		 0.036181882 -0.009562552 0.036204889 -0.0098087788 0.036413923 -0.0098258257 0.035973176
		 -0.0095578432 0.035973176 -0.0098029375 0.036225691 -0.010115862 0.036453471 -0.010137022
		 0.036519572 -0.0095975399 0.036579773 -0.0098524094 0.035764471 -0.009562552 0.035741463
		 -0.0098087788 0.035973176 -0.01010865 0.036204889 -0.010444999 0.036413923 -0.010466695
		 0.036634251 -0.010169923 0.03557618 -0.009576261 0.03553243 -0.0098258257 0.035720661
		 -0.010115862 0.035973176 -0.010437489 0.036161944 -0.010727644 0.036332235 -0.010746777
		 0.036579773 -0.010500491 0.035426781 -0.0095975399 0.03536655 -0.0098524094 0.035492852
		 -0.010137022 0.035741463 -0.010444999 0.035973176 -0.010720968 0.036204889 -0.010950804
		 0.036413923 -0.010976195 0.036467388 -0.010776639 0.035312071 -0.010169923 0.03553243
		 -0.010466695 0.035784408 -0.010727644 0.035973176 -0.010942042 0.036225691 -0.011247456
		 0.036453471 -0.011277616 0.036579773 -0.011015654 0.03536655 -0.010500491 0.035614118
		 -0.010746777 0.035741463 -0.010950804 0.035973176 -0.011237085 0.036204889 -0.011575639
		 0.036413923 -0.011605501 0.036634251 -0.011324584 0.035478964 -0.010776639 0.03553243
		 -0.010976195 0.035720661 -0.011247516 0.035973176 -0.011565268 0.036181882 -0.011844873
		 0.036370143 -0.011873484 0.036579773 -0.011652112 0.03536655 -0.011015654 0.035492852
		 -0.011277676 0.035741463 -0.01157558 0.035973176 -0.011835039 0.036519572 -0.011918008
		 0.035312071 -0.011324584 0.03553243 -0.011605501 0.035764471 -0.011844873 0.03536655
		 -0.011652112 0.03557618 -0.011873484 0.035426781 -0.011918008 0.018891171 -0.012518585
		 0.018892959 -0.012608111 0.018951073 -0.012608111 0.018952921 -0.012518585 0.018570319
		 -0.012584805 0.018629149 -0.012584805 0.01862736 -0.01249522 0.018572107 -0.01249522
		 0.036929682 -0.013875186 0.036997065 -0.014063537 0.03723295 -0.01404047 0.037159488
		 -0.013831437 0.037020281 -0.014272213 0.037258253 -0.014272213 0.037512794 -0.014019668
		 0.037434623 -0.013791919 0.036824718 -0.013725817 0.037045076 -0.013665557 0.036997065
		 -0.014480948 0.03723295 -0.014503956 0.037539735 -0.014272213 0.037711188 -0.01404047
		 0.037641212 -0.013831437 0.03731285 -0.013611138 0.036929682 -0.01466918 0.037159488
		 -0.01471293 0.037512794 -0.014524758 0.037735298 -0.014272213 0.036824718 -0.014818609
		 0.037045076 -0.014878869 0.037434623 -0.014752567 0.037711188 -0.014503956 0.03731285
		 -0.014933348 0.037641212 -0.01471293 0.025217131 -0.0098243952 0.025295332 -0.010052204
		 0.025595322 -0.010012627 0.025525346 -0.0098035932 0.025000468 -0.0098035932 0.02507396
		 -0.010012627 0.025417045 -0.010232985 0.025704339 -0.010178506 0.025882438 -0.0099309683
		 0.025826588 -0.0097606778 0.025190189 -0.0095719099 0.025501266 -0.0095719099 0.024975196
		 -0.0095719099 0.025969401 -0.010066092 0.025807336 -0.0095719099 0.025217131 -0.0093194246
		 0.025525346 -0.0093402267 0.024822667 -0.0095719099 0.024845913 -0.0097806454 0.025000468
		 -0.0093402267 0.025841668 -0.01028502 0.026079014 -0.010152876 0.025826588 -0.009383142
		 0.025295332 -0.0090915561 0.025595322 -0.0091311336 0.024845913 -0.009363234 0.02507396
		 -0.0091311336 0.025882438 -0.0092128515 0.025417045 -0.0089108348 0.025704339 -0.0089652538
		 0.025969401 -0.0090776682 0.025841668 -0.0088587999 0.026079014 -0.0089909434 0.032338068
		 -0.012404084 0.032393917 -0.012574315 0.032678887 -0.0125314 0.032611802 -0.012322366
		 0.03241314 -0.012763143 0.032702014 -0.012763143 0.032971665 -0.012510598 0.032900557
		 -0.012282789 0.032251105 -0.012268901 0.032507315 -0.012156487 0.032393917 -0.012951851
		 0.032678887 -0.012994826 0.032996163 -0.012763143 0.033190325 -0.0125314 0.033126965
		 -0.012322366 0.032789811 -0.012102008 0.032141492 -0.012182117 0.032375649 -0.012050033
		 0.032338068 -0.013122141 0.032611802 -0.0132038 0.032971665 -0.013015628 0.03321214
		 -0.012763143 0.033359006 -0.012554407 0.033303306 -0.012366116 0.032251105 -0.013257325
		 0.032507315 -0.013369739 0.032900557 -0.013243437 0.033190325 -0.012994826 0.033378199
		 -0.012763143 0.032141492 -0.013344049 0.032375649 -0.013476253 0.032789811 -0.013424218
		 0.033126965 -0.0132038 0.033359006 -0.012971818 0.033303306 -0.01316011 0.033844188
		 -0.013017058 0.033915296 -0.013244927 0.03422986 -0.01320529 0.03416647 -0.012996256
		 0.033605203 -0.012996256 0.033672288 -0.01320529 0.034026042 -0.013425648 0.034328535
		 -0.01337117 0.034493521 -0.01316154 0.03443782 -0.012973249 0.03381969 -0.012764573
		 0.034144655 -0.012764573 0.033582076 -0.012764573 0.034580275 -0.013310969 0.034418628
		 -0.012764573 0.033844188 -0.012512088 0.03416647 -0.01253289 0.033605203 -0.01253289
		 0.0344529 -0.013477683 0.03468959 -0.013406932 0.03443782 -0.012555838 0.033915296
		 -0.012284219 0.03422983 -0.012323797 0.033672288 -0.012323797 0.034493521 -0.012367547
		 0.034026042 -0.012103498 0.034328535 -0.012157917 0.034580275 -0.012218177 0.0344529
		 -0.012051463 0.03468959 -0.012122214 0.014681473 -0.011089206 0.01486595 -0.011397302
		 0.015286043 -0.011432588 0.015286699 -0.011124551 0.014962986 -0.011701107 0.015237764
		 -0.011721909 0.015005127 -0.011996031 0.015157238 -0.012007415 0.014973715 -0.012287676
		 0.01506336 -0.012288392 0.041275069 -0.017155528 0.041368961 -0.017424285 0.041458547
		 -0.01742506 0.041427165 -0.017166972 0.041194528 -0.016891241 0.041469291 -0.016912103
		 0.041146234 -0.016630769 0.041566342 -0.016666114 0.041145638 -0.016389072 0.041750863
		 -0.016424417 0.018709853 -0.0091314316 0.018791333 -0.0093404651 0.019059971 -0.0092588067
		 0.018994525 -0.0090885162 0.01843448 -0.0091522932 0.0185249 -0.0093800426 0.01891835
		 -0.0095063448 0.019161835 -0.0093939304 0.01868172 -0.0088997483 0.018971995 -0.0088997483
		 0.018665865 -0.0095608234 0.018403247 -0.0088997483 0.019078329 -0.0096128583 0.019290224
		 -0.0094807148 0.018709853 -0.0086680651 0.018994525 -0.0087109804 0.01843448 -0.0086472034
		 0.018791333 -0.0084590316 0.019059971 -0.0085406899 0.0185249 -0.0084194541 0.01891835
		 -0.0082931519 0.019161835 -0.0084055662 0.018665865 -0.0082386136 0.019078329 -0.0081866384
		 0.019290224 -0.0083187819 0.026513174 -0.010913014 0.02657856 -0.011083364 0.026850298
		 -0.01104039 0.026771262 -0.010831356 0.026601091 -0.011272073 0.026877537 -0.011272073
		 0.027116373 -0.011019588 0.027031973 -0.010791779 0.02641125 -0.010777891;
	setAttr ".uvtk[750:999]" 0.026648119 -0.010665536 0.02657856 -0.0114609 0.026850298
		 -0.011503816 0.027145401 -0.011272073 0.026900485 -0.010610998 0.026282862 -0.010691106
		 0.026493028 -0.010558963 0.026513174 -0.011631131 0.026771262 -0.011712849 0.027116373
		 -0.011524618 0.027320579 -0.011272073 0.027294472 -0.01104039 0.02641125 -0.011766315
		 0.026648119 -0.011878729 0.027031973 -0.011752427 0.027294472 -0.011503816 0.026282862
		 -0.011853099 0.026493028 -0.011985242 0.026900485 -0.011933208 0.036146775 -0.014503121
		 0.036222592 -0.014712155 0.036465034 -0.014668405 0.036397949 -0.014480114 0.035853609
		 -0.014523983 0.03593801 -0.014751732 0.036340669 -0.014878035 0.036569521 -0.014817834
		 0.036120638 -0.014271438 0.036374822 -0.014271438 0.036069468 -0.014932513 0.035824522
		 -0.014271438 0.036146775 -0.014039755 0.036397949 -0.014062762 0.035632059 -0.014271438
		 0.035659298 -0.014503121 0.035853609 -0.014018893 0.036222592 -0.013830662 0.036465034
		 -0.013874412 0.035659298 -0.014039755 0.03593801 -0.013791084 0.036340669 -0.013664782
		 0.036569521 -0.013725042 0.036069438 -0.013610363 0.040663332 0.011512488 0.041392535
		 0.012925461 0.040582582 0.013244346 0.040422097 0.011973292 0.041420475 0.010784805
		 0.042317793 0.01226595 0.042114109 0.014454596 0.041209549 0.014744766 0.039892077
		 0.013069063 0.039868236 0.012125045 0.040232629 0.011255771 0.042435169 0.010360822
		 0.043049559 0.01183109 0.042929709 0.013302542 0.041130245 0.010233968 0.042410985
		 0.01516512 0.04152216 0.015492845 0.043889888 0.0097437352 0.044300221 0.010731906
		 0.043326482 0.01286009 0.042264909 0.0097597986 0.043698311 0.014444917 0.042730376
		 0.015782919 0.041843086 0.016093064 0.041115448 0.015740782 0.040743485 0.014924146
		 0.044676811 0.0094097555 0.045093283 0.0104146 0.044797972 0.011926085 0.043650769
		 0.0091760904 0.043429255 0.013108015 0.043145403 0.013463303 0.043913245 0.015115783
		 0.043104142 0.016326986 0.042283371 0.016516909 0.041540965 0.016442467 0.046085119
		 0.009835422 0.045822587 0.0091946274 0.045520157 0.011442214 0.044437721 0.0088438094
		 0.044645771 0.013876051 0.044303127 0.013893954 0.043745071 0.014288507 0.04379794
		 0.015811447 0.043406367 0.016781945 0.042144343 0.017451033 0.046560749 0.010959089
		 0.045646593 0.0087555349 0.046802424 0.0096089244 0.045965485 0.012507975 0.045339003
		 0.013220862 0.043403566 0.0085891187 0.044190519 0.0082602799 0.044916496 0.014530577
		 0.044681065 0.014694542 0.044107124 0.015240878 0.043983661 0.016027149 0.047065742
		 0.012143299 0.047281917 0.010745794 0.045435347 0.0083075464 0.046333648 0.013393752
		 0.045624562 0.013904199 0.045117535 0.015116721 0.044891253 0.01546672 0.047236495
		 0.01278843 0.04767745 0.011934295 0.046520155 0.013941243 0.045873702 0.014500387
		 0.045215949 0.016131051 0.044688828 0.01670138 0.04727893 0.013116002 0.047780644
		 0.012632355 0.046714395 0.014508419 0.046131313 0.015116937 0.045421794 0.015716225
		 0.047353096 0.013494551 0.038899168 0.013244346 0.03808926 0.012925461 0.038818434
		 0.011512488 0.039059684 0.011973292 0.038272187 0.014744766 0.037367657 0.014454596
		 0.037163958 0.01226595 0.038061276 0.010784805 0.039249152 0.011255771 0.039613545
		 0.012125045 0.039589703 0.013069063 0.037959591 0.015492845 0.037070766 0.01516512
		 0.036552027 0.013302542 0.036432192 0.01183109 0.037046596 0.010360822 0.038351551
		 0.010233968 0.037638679 0.016093064 0.036751404 0.015782919 0.035783455 0.014444917
		 0.038738266 0.014924146 0.038366303 0.015740782 0.036155269 0.01286009 0.035181537
		 0.010731906 0.035591885 0.0097437352 0.037216887 0.0097597986 0.037198409 0.016516909
		 0.036377594 0.016326986 0.03556855 0.015115783 0.037940815 0.016442467 0.036336347
		 0.013463303 0.03605254 0.013108015 0.034683809 0.011926085 0.034388468 0.0104146
		 0.034804955 0.0094097555 0.035830989 0.0091760904 0.037337437 0.017451033 0.036075428
		 0.016781945 0.035683826 0.015811447 0.035736695 0.014288507 0.035178646 0.013893954
		 0.034836009 0.013876051 0.033961639 0.011442214 0.033396646 0.009835422 0.033659205
		 0.0091946274 0.035044059 0.0088438094 0.034965649 0.016090296 0.035374656 0.015240878
		 0.034800723 0.014694542 0.034565255 0.014530577 0.034142777 0.013220862 0.033516273
		 0.012507975 0.032921001 0.010959089 0.032679364 0.0096089244 0.033835158 0.0087555349
		 0.0360782 0.0085891187 0.03529124 0.0082602799 0.033857211 0.013904199 0.034364238
		 0.015116721 0.034590527 0.01546672 0.033148125 0.013393752 0.032416001 0.012143299
		 0.032199875 0.010745794 0.034046426 0.0083075464 0.033608064 0.014500387 0.032961622
		 0.013941243 0.032245263 0.01278843 0.031804308 0.011934295 0.034059986 0.015716225
		 0.033350453 0.015116937 0.0327674 0.014508419 0.032202855 0.013116002 0.031701133
		 0.012632355 0.032128647 0.013494551 0.020814016 -0.0067126155 0.021165565 -0.007553041
		 0.021673158 -0.0083325505 0.021592692 -0.0065189004 0.021532431 -0.0084309578 0.019712999
		 -0.0080619454 0.020220593 -0.0072824955 0.020572141 -0.0064420104 0.019793466 -0.0062482953
		 0.019853726 -0.0081603527 0.019184783 -0.0069127083 0.018800095 -0.0067520142 0.018323198
		 -0.0078932643 0.018707946 -0.0080539584 0.019471064 -0.0062276125 0.017634109 -0.0067520142
		 0.01724942 -0.0069127083 0.017726257 -0.0080539584 0.018111005 -0.0078932643 0.016963139
		 -0.0062276125 0.040688649 0.0019741058 0.041474938 0.0018506646 0.040914491 0.0027582645
		 0.040142313 0.002548039 0.040563554 0.0017802119 0.041259214 0.0016649365 0.042149141
		 0.0025558472 0.041578814 0.003082931 0.042298421 -8.3327293e-05 0.042658284 0.00027319789
		 0.043159604 0.00038379431 0.042603105 -0.0005427599 0.04300867 -0.00011187792 0.043370038
		 -0.00039923191 0.042011499 -0.00048279762 0.042312726 -0.00077867508 0.043040678
		 -0.00068640709 0.041592076 -0.0007494092 0.041849643 -0.0010024309 0.041170269 -0.0010276437
		 0.041344106 -0.001247406 0.040585399 -0.0014051795 0.040647984 -0.0014666915 0.032424435
		 -0.00017404556 0.032227829 0.0021609962 0.031534567 0.0028162301 0.030215338 0.0018002689
		 0.029963329 0.0035660863 0.02864404 0.0045820475 0.027950838 0.0039268434 0.027754202
		 0.0015918016 0.033357665 -0.00031542778 0.033573374 -0.00050109625 0.034756735 0.0010763407
		 0.034396842 0.0014328659 0.034247592 -0.0012062788 0.03525807 0.00096574426;
	setAttr ".uvtk[1000:1249]" 0.035107121 0.0014614463 0.034701571 0.0018922687
		 0.035468474 0.0017487705 0.035139129 0.0020359159 0.034411177 0.0021282136 0.034109965
		 0.0018323362 0.033948109 0.0023519397 0.033690527 0.0020989478 0.033442542 0.0025969744
		 0.033268675 0.002377212 0.03274639 0.0028162301 0.032683805 0.0027547479 0.037224516
		 -0.0070030093 0.03644146 -0.0072134733 0.037093595 -0.0078491569 0.037388816 -0.007605195
		 0.037349656 -0.0082951188 0.037590727 -0.0080800056 0.03765358 -0.0088360906 0.037835702
		 -0.0086567998 0.037958428 -0.0094202757 0.038011953 -0.0093668103 0.039786294 -0.0072139502
		 0.039003238 -0.0070035458 0.038838938 -0.0076056719 0.039134189 -0.0078496933 0.038636997
		 -0.0080804825 0.038878098 -0.0082955956 0.038392082 -0.0086572766 0.038574174 -0.0088365674
		 0.038215831 -0.0093672872 0.038269326 -0.0094207525 0.03794606 -0.015169978 0.037204579
		 -0.015479863 0.037653461 -0.015831411 0.038076803 -0.015654504 0.037999198 -0.016124308
		 0.038179889 -0.016048849 0.038130775 -0.016259909 0.038201883 -0.016230226 0.039403096
		 -0.015479863 0.038661614 -0.015169978 0.038530871 -0.015654504 0.038954243 -0.015831411
		 0.038427755 -0.016048849 0.038608477 -0.016124308 0.038405791 -0.016230226 0.038476899
		 -0.016259909 0.031402156 -0.017135024 0.031711981 -0.016393542 0.031438157 -0.016335428
		 0.031232104 -0.016828716 0.031212166 -0.01633966 0.031079724 -0.016652405 0.031078532
		 -0.016370475 0.031012848 -0.016525507 0.030971721 -0.016385138 0.030951753 -0.016432226
		 0.032683507 -0.01707691 0.032373652 -0.016335487 0.03220357 -0.016641796 0.032409653
		 -0.017135024 0.032051846 -0.016817868 0.032184318 -0.017130554 0.031984642 -0.016944826
		 0.032050326 -0.017099917 0.031923339 -0.017038226 0.031943277 -0.017085314 0.017919615
		 -0.012584805 0.017981425 -0.012584805 0.017979577 -0.01249522 0.017921463 -0.01249522
		 0.019763783 -0.0092378259 0.019855157 -0.0094467998 0.020098045 -0.009365201 0.020024434
		 -0.0091948509 0.019528881 -0.0092586279 0.019629672 -0.0094864368 0.019997373 -0.0096127391
		 0.020212725 -0.0095003247 0.019732311 -0.0090061426 0.019999102 -0.0090061426 0.01978673
		 -0.0096672177 0.019494072 -0.0090061426 0.020176604 -0.0097192526 0.020357147 -0.0095870495
		 0.019763783 -0.0087743998 0.020024434 -0.0088173151 0.019528881 -0.0087535977 0.019855157
		 -0.0085653663 0.020098045 -0.0086470842 0.019629672 -0.0085257888 0.019997373 -0.0083994865
		 0.020212665 -0.0085119009 0.01978673 -0.0083450079 0.020176604 -0.008292973 0.020357147
		 -0.0084251165 0.020820096 -0.0089176297 0.020893708 -0.0090879202 0.021145061 -0.0090450048
		 0.021055713 -0.0088359714 0.020919099 -0.0092767477 0.021175817 -0.0092767477 0.021377161
		 -0.0090242028 0.021281198 -0.0087963939 0.020705476 -0.008782506 0.020916596 -0.0086700916
		 0.020893708 -0.0094655156 0.021145061 -0.0095083714 0.021410182 -0.0092767477 0.021131828
		 -0.008615613 0.020560995 -0.0086957216 0.020741299 -0.0085635781 0.020820096 -0.0096358061
		 0.021055713 -0.0097174048 0.021377161 -0.009529233 0.020705476 -0.0097708702 0.020916596
		 -0.0098833442 0.021281198 -0.0097570419 0.020560995 -0.0098577142 0.020741299 -0.0099897981
		 0.021131828 -0.0099377632 0.035231367 -0.014062762 0.03529875 -0.013874412 0.035056993
		 -0.013830662 0.034980848 -0.014039755 0.035403714 -0.013724983 0.035175577 -0.013664782
		 0.034773394 -0.013791084 0.034688637 -0.014018893 0.035208151 -0.014271438 0.034954622
		 -0.014271438 0.034905389 -0.013610363 0.03465943 -0.014271438 0.035231367 -0.014480114
		 0.034980848 -0.014503121 0.034495667 -0.014039755 0.034468338 -0.014271438 0.034688637
		 -0.014523983 0.03529875 -0.014668405 0.035056993 -0.014712155 0.034495667 -0.014503121
		 0.034773394 -0.014751732 0.035403714 -0.014817834 0.035175577 -0.014878035 0.034905389
		 -0.014932513 0.028013185 -0.011712849 0.028092518 -0.011503816 0.027821317 -0.0114609
		 0.027755633 -0.011631131 0.028273001 -0.011752427 0.028357759 -0.011524618 0.028119877
		 -0.011272073 0.027843907 -0.011272073 0.027889565 -0.011878729 0.027653351 -0.011766315
		 0.028386906 -0.011272073 0.028140977 -0.011933208 0.028092518 -0.01104039 0.027821317
		 -0.011083364 0.027733818 -0.011985242 0.027524486 -0.011853099 0.028534606 -0.011503816
		 0.028560832 -0.011272073 0.028357759 -0.011019588 0.028013185 -0.010831356 0.027755633
		 -0.010913014 0.028534606 -0.01104039 0.028273001 -0.010791779 0.027889565 -0.010665536
		 0.027653351 -0.010777891 0.028140977 -0.010610998 0.027733818 -0.010558963 0.027524486
		 -0.010691106 0.022203878 -0.0091118813 0.022269562 -0.0089415908 0.022001579 -0.0088599324
		 0.021919742 -0.0090689659 0.022371784 -0.0088064671 0.022129074 -0.0086940527 0.02173622
		 -0.0088203549 0.021645382 -0.0090481043 0.022181228 -0.0093006492 0.021891549 -0.0093006492
		 0.022500709 -0.0087196827 0.022289649 -0.0085875392 0.021877602 -0.0086395144 0.021614149
		 -0.0093006492 0.022203878 -0.0094894171 0.021919742 -0.0095323324 0.021645442 -0.0095531344
		 0.022269562 -0.0096597075 0.022001579 -0.0097413659 0.02173622 -0.0097809434 0.022371784
		 -0.0097948909 0.022129074 -0.0099072456 0.021877602 -0.0099617243 0.022500709 -0.0098816156
		 0.022289649 -0.010013759 0.047528893 -0.013754845 0.047584575 -0.013566494 0.04732094
		 -0.013522744 0.047257535 -0.013731778 0.047671333 -0.013417065 0.047419596 -0.013356864
		 0.047006369 -0.013483167 0.046935245 -0.013711035 0.047509693 -0.013963521 0.047235705
		 -0.013963521 0.047780644 -0.013321161 0.04754395 -0.013250411 0.047117099 -0.013302445
		 0.046763346 -0.013522744 0.046696279 -0.013731778 0.04691074 -0.013963521 0.047528893
		 -0.014172256 0.047257535 -0.014195204 0.046673145 -0.013963521 0.046935268 -0.014216006
		 0.047584575 -0.014360487 0.047320925 -0.014404237 0.046696279 -0.014195204 0.047006369
		 -0.014443815 0.047671333 -0.014509916 0.047419596 -0.014570117 0.046763353 -0.014404237
		 0.047117095 -0.014624596 0.047780644 -0.01460582 0.04754395 -0.01467663 0.045936439
		 -0.014746249 0.046007525 -0.01451844 0.045714788 -0.014497638 0.045647673 -0.014706671
		 0.04616284 -0.014706671 0.0462262 -0.014497638 0.046032045 -0.014265895 0.045737877
		 -0.014265895 0.045429789 -0.014454722 0.045373946 -0.014625013 0.045825679 -0.01492703
		 0.045543201 -0.014872551 0.046339162 -0.014662921 0.046394881 -0.01447463 0.046248041
		 -0.014265895 0.046007544 -0.01401341 0.045714788 -0.014034271 0.045449026 -0.014265895
		 0.045286968 -0.014760137 0.046414074 -0.014265895 0.0462262 -0.014034271;
	setAttr ".uvtk[1250:1499]" 0.045936439 -0.01378566 0.045647673 -0.013825178 0.045429789
		 -0.014077187 0.045411512 -0.014979064 0.045177363 -0.014846921 0.046394881 -0.014057219
		 0.04616284 -0.013825178 0.045825679 -0.013604879 0.045543201 -0.013659358 0.045373946
		 -0.013906837 0.046339162 -0.013868988 0.045286968 -0.013771713 0.045411512 -0.013552785
		 0.045177363 -0.013684928 0.029768661 -0.012200236 0.02982451 -0.012029946 0.029537395
		 -0.011948228 0.029467419 -0.012157261 0.029911473 -0.011894822 0.029646412 -0.011782408
		 0.029237345 -0.01190865 0.029159203 -0.012136459 0.029749408 -0.012389004 0.029443279
		 -0.012389004 0.030021086 -0.011808038 0.029783741 -0.011675894 0.029359117 -0.01172787
		 0.029015973 -0.011948228 0.02894254 -0.012157261 0.029132262 -0.012389004 0.029768661
		 -0.012577772 0.029467419 -0.012620687 0.028917208 -0.012389004 0.029159203 -0.012641549
		 0.02982451 -0.012748063 0.029537395 -0.012829721 0.028787985 -0.012180269 0.02876474
		 -0.012389004 0.02894254 -0.012620687 0.029237345 -0.012869358 0.029911473 -0.012883246
		 0.029646412 -0.012995601 0.028787985 -0.01259768 0.029016033 -0.012829721 0.029359117
		 -0.013050079 0.030021086 -0.012969971 0.029783741 -0.013102114 0.03212373 -0.014750302
		 0.032201931 -0.014522493 0.031922057 -0.014501691 0.031848624 -0.014710724 0.032330349
		 -0.014710724 0.032400325 -0.014501691 0.032228872 -0.014269948 0.031947389 -0.014269948
		 0.031686172 -0.014478683 0.031618789 -0.014666975 0.032001987 -0.014931083 0.031734183
		 -0.014876544 0.032424435 -0.014269948 0.032201931 -0.014017463 0.031922057 -0.014038265
		 0.031709418 -0.014269948 0.031513825 -0.014816344 0.032400325 -0.014038265 0.03212373
		 -0.013789654 0.031848624 -0.013829231 0.031686172 -0.014061272 0.032330349 -0.013829231
		 0.032001987 -0.013608873 0.031734183 -0.013663352 0.031618789 -0.013872981 0.031513825
		 -0.013723612 0.017595783 -0.01249522 0.017597631 -0.012584805 0.017655745 -0.012584805
		 0.017657593 -0.01249522 0.036440954 -0.0068461299 0.036629215 -0.0068176389 0.036672965
		 -0.0065648556 0.036463931 -0.0065947771 0.036778644 -0.0067731738 0.036838844 -0.006518364
		 0.036712542 -0.0062393546 0.036484763 -0.0062693954 0.036232248 -0.0068559647 0.036232248
		 -0.0066050291 0.036893323 -0.0061925054 0.036672965 -0.0058835745 0.036463931 -0.0059088469
		 0.036232248 -0.0062797666 0.036023542 -0.0068461299 0.036000535 -0.0065947175 0.036838844
		 -0.0058441162 0.036591306 -0.0055835843 0.036421016 -0.0056027174 0.036232248 -0.0059176087
		 0.035979703 -0.0062693954 0.035835251 -0.0068176389 0.035791501 -0.0065648556 0.03672646
		 -0.005553782 0.036672965 -0.0053320527 0.036463931 -0.0053536892 0.036232248 -0.0056093335
		 0.036000535 -0.0059088469 0.035751924 -0.0062393546 0.035685822 -0.0067732334 0.035625622
		 -0.006518364 0.036838844 -0.0052983761 0.036712542 -0.0049958229 0.036484763 -0.0050168633
		 0.036232248 -0.0053611398 0.03604348 -0.0056027174 0.035791501 -0.0058835745 0.035571143
		 -0.0061925054 0.036893323 -0.0049630404 0.036672965 -0.0046383739 0.036463931 -0.0046553612
		 0.036232248 -0.0050241351 0.036000535 -0.0053536892 0.03587319 -0.0055835843 0.035625622
		 -0.0058441162 0.036838844 -0.0046119094 0.036629215 -0.0043503642 0.036440954 -0.0043639541
		 0.036232248 -0.0046612024 0.035979703 -0.0050168633 0.035791501 -0.0053320527 0.035738036
		 -0.005553782 0.036778644 -0.004329145 0.036232248 -0.0043686628 0.036000535 -0.0046553612
		 0.035751924 -0.0049958229 0.035625622 -0.0052983761 0.036023542 -0.0043639541 0.035791501
		 -0.0046383739 0.035571143 -0.0049630404 0.035835251 -0.0043503642 0.035625622 -0.0046119094
		 0.035685822 -0.004329145 0.037130579 -0.011869311 0.03731887 -0.01184082 0.037295863
		 -0.011571527 0.037086859 -0.011601388 0.037527576 -0.011830986 0.037527576 -0.011561215
		 0.037275061 -0.011243343 0.037047252 -0.011273444 0.03698118 -0.011913776 0.03692095
		 -0.01164788 0.037736282 -0.01184082 0.037759289 -0.011571527 0.037527576 -0.011233032
		 0.037295863 -0.010946572 0.037086859 -0.010971904 0.036866471 -0.011320233 0.037924543
		 -0.011869311 0.037968323 -0.011601388 0.037780091 -0.011243403 0.037527576 -0.01093781
		 0.037338808 -0.010723233 0.037168518 -0.010742426 0.03692095 -0.011011302 0.038073972
		 -0.011913776 0.038134173 -0.01164788 0.0380079 -0.011273444 0.037759289 -0.010946572
		 0.037527576 -0.010716677 0.037295863 -0.010440767 0.037086859 -0.010462344 0.037033364
		 -0.010772169 0.038188651 -0.011320233 0.037968323 -0.010971904 0.037716344 -0.010723233
		 0.037527576 -0.010433257 0.037275061 -0.01011163 0.037047252 -0.01013267 0.03692098
		 -0.01049602 0.038134173 -0.011011302 0.037886634 -0.010742426 0.037759289 -0.010440767
		 0.037527576 -0.010104358 0.037295863 -0.0098044276 0.037086859 -0.0098214149 0.036866471
		 -0.010165393 0.038021788 -0.010772169 0.037968323 -0.010462344 0.037780091 -0.01011157
		 0.037527576 -0.0097985864 0.03731887 -0.0095581412 0.037130579 -0.0095717907 0.03692098
		 -0.0098478794 0.038134173 -0.01049602 0.03800787 -0.01013267 0.037759289 -0.0098044276
		 0.037527576 -0.0095534325 0.03698118 -0.0095930099 0.038188651 -0.010165393 0.037968323
		 -0.0098214149 0.037736282 -0.0095581412 0.038134173 -0.0098478794 0.037924543 -0.0095717907
		 0.038073972 -0.0095930099 0.01727505 -0.01249522 0.017276779 -0.012584805 0.017332032
		 -0.012584805 0.01733382 -0.01249522 0.016948119 -0.012585044 0.017009988 -0.012585044
		 0.017008141 -0.012495458 0.016949967 -0.012495458 0.043566547 -0.0092063546 0.043754824
		 -0.0091637373 0.043731809 -0.0088989735 0.043522798 -0.0089446306 0.043963529 -0.0091490746
		 0.043963529 -0.0088832378 0.043710984 -0.0085789561 0.043483227 -0.0086263418 0.043417111
		 -0.0092726946 0.043356925 -0.0090156198 0.044172242 -0.0091637373 0.044195227 -0.0088989735
		 0.043963529 -0.0085626245 0.043731809 -0.0083082914 0.043522798 -0.0083495975 0.043302447
		 -0.0087001324 0.043321162 -0.0093563795 0.043250397 -0.0091051459 0.044360511 -0.0092063546
		 0.044404261 -0.008944571 0.044216067 -0.0085789561 0.043963529 -0.0082940459 0.043774731
		 -0.008117497 0.043604441 -0.0081496835 0.043356925 -0.0084139109 0.044509947 -0.0092727542
		 0.044570148 -0.0090156198 0.044443846 -0.0086263418 0.044195227 -0.0083082914 0.043963529
		 -0.0081063509 0.043731809 -0.0078268051 0.043522798 -0.0078645945 0.044605874 -0.0093563795
		 0.044676639 -0.0091051459 0.044624619 -0.0087001324 0.044404253 -0.0083495975 0.044152305
		 -0.008117497 0.043963529 -0.0078137517 0.043710984 -0.0075016618;
	setAttr ".uvtk[1500:1749]" 0.043483227 -0.0075404644 0.043469332 -0.0081999302
		 0.043356925 -0.0079234838 0.044570148 -0.0084139705 0.044322588 -0.0081497431 0.044195227
		 -0.0078268051 0.043963529 -0.0074883103 0.043731809 -0.00721699 0.043522798 -0.007250309
		 0.043302447 -0.0076009035 0.04338254 -0.0082631707 0.043250397 -0.0079976916 0.044404253
		 -0.0078645945 0.044216067 -0.0075016618 0.043963529 -0.0072054863 0.043754824 -0.0069909692
		 0.043566547 -0.0070194006 0.043356925 -0.0073022842 0.044457734 -0.0081999302 0.044570148
		 -0.0079234838 0.044443846 -0.0075404644 0.044195227 -0.00721699 0.043963529 -0.006981194
		 0.043417111 -0.0070636868 0.044544503 -0.0082631707 0.044676639 -0.0079976916 0.044624619
		 -0.0076008439 0.044404253 -0.007250309 0.044172242 -0.0069909692 0.044570148 -0.0073022842
		 0.044360511 -0.0070194006 0.044509947 -0.0070636868 0.030886665 -0.0086014867 0.031114444
		 -0.0085541606 0.031074837 -0.0082083344 0.030865803 -0.0082496405 0.030865803 -0.0088979006
		 0.031074837 -0.008852303 0.031295195 -0.0084803104 0.031240717 -0.0081439614 0.030993208
		 -0.0079050064 0.030822858 -0.0079372525 0.03063415 -0.0086178184 0.03063415 -0.0082638264
		 0.030842826 -0.0091225505 0.031031117 -0.0090799332 0.031240717 -0.0087812543 0.03063415
		 -0.0089136362 0.031128302 -0.0078548193 0.031074837 -0.0076833367 0.030865803 -0.0077211857
		 0.03063415 -0.007948339 0.030381605 -0.0086014867 0.030402437 -0.0082496405 0.031180516
		 -0.0090135932 0.03063415 -0.0091372132 0.030402437 -0.0088979006 0.03134723 -0.0080628991
		 0.031215087 -0.0077915788 0.031114444 -0.007370472 0.030886665 -0.0074092746 0.03063415
		 -0.0077341795 0.030445352 -0.0079372525 0.030153826 -0.0085541606 0.030193403 -0.0082083344
		 0.030425414 -0.0091225505 0.030193403 -0.008852303 0.031240717 -0.007624507 0.031295195
		 -0.0073100328 0.031074837 -0.0070185065 0.030865803 -0.0070518851 0.03063415 -0.007422626
		 0.030402437 -0.0077211857 0.030275062 -0.0079050064 0.029973045 -0.0084803104 0.030027524
		 -0.0081439614 0.030237153 -0.0090799332 0.030027524 -0.0087812543 0.031240717 -0.0069665313
		 0.031031117 -0.0067314506 0.030842826 -0.006759882 0.03063415 -0.0070633888 0.030381605
		 -0.0074092746 0.030193403 -0.0076833367 0.030139938 -0.0078548193 0.030087724 -0.0090135932
		 0.031180516 -0.0066871643 0.03063415 -0.0067696571 0.030402437 -0.0070518851 0.030153826
		 -0.007370472 0.02992101 -0.0080628991 0.030053154 -0.0077915788 0.030425414 -0.0067598224
		 0.030193403 -0.0070185065 0.030027524 -0.007624507 0.029973045 -0.0073100328 0.030237153
		 -0.006731391 0.030027524 -0.0069665313 0.030087724 -0.0066871643 0.041104138 -0.0068677068
		 0.041292444 -0.0068539977 0.041336209 -0.0065824986 0.04112716 -0.0065957904 0.041441843
		 -0.0068327188 0.041502073 -0.0065616965 0.041375771 -0.0062376857 0.041147977 -0.0062496662
		 0.040895462 -0.0068724155 0.040895462 -0.0066003799 0.041556552 -0.0062190294 0.041336209
		 -0.0058808327 0.04112716 -0.0058894753 0.040895462 -0.0062537789 0.040686727 -0.0068677068
		 0.040663734 -0.0065957904 0.041502073 -0.005867362 0.04125452 -0.0055916905 0.04108423
		 -0.0055972338 0.040895462 -0.0058924556 0.040642947 -0.0062496662 0.040498465 -0.0068539977
		 0.040454745 -0.0065824986 0.041389659 -0.0055831671 0.041336209 -0.0053165555 0.041127175
		 -0.0053214431 0.040895462 -0.0055991411 0.040663734 -0.0058894753 0.040415123 -0.0062376857
		 0.040349066 -0.0068327188 0.040288836 -0.0065616965 0.041502073 -0.0053089857 0.041375771
		 -0.0049653649 0.041147977 -0.0049681067 0.040895462 -0.005323112 0.040706694 -0.0055972338
		 0.040454745 -0.0058808327 0.040234357 -0.0062190294 0.041556552 -0.0049610734 0.041336209
		 -0.0046113729 0.041127175 -0.0046115518 0.040895462 -0.0049690604 0.040663734 -0.0053214431
		 0.040536404 -0.0055916905 0.040288836 -0.005867362 0.041502073 -0.0046111345 0.041292444
		 -0.0043296814 0.041104138 -0.0043280721 0.040895462 -0.0046116114 0.040642947 -0.0049681067
		 0.040454745 -0.0053165555 0.040401235 -0.0055831671 0.041441843 -0.0043320656 0.040895462
		 -0.0043275356 0.040663734 -0.0046115518 0.040415123 -0.0049653649 0.040288836 -0.0053089857
		 0.040686727 -0.0043280721 0.040454745 -0.0046113729 0.040234357 -0.0049610734 0.040498465
		 -0.0043296814 0.040288836 -0.0046111345 0.040349066 -0.0043320656 0.045161694 -0.011537552
		 0.04534997 -0.011523843 0.045326985 -0.011256754 0.045117944 -0.011270106 0.045558676
		 -0.011519134 0.045558676 -0.011252165 0.045306154 -0.01092875 0.045078367 -0.010940731
		 0.045012251 -0.01155889 0.044952065 -0.011290908 0.045767378 -0.011523843 0.045790367
		 -0.011256754 0.045558676 -0.010924637 0.045326985 -0.010613203 0.045117944 -0.010621846
		 0.044897564 -0.010959387 0.045955654 -0.011537552 0.0459994 -0.011270106 0.045811202
		 -0.01092875 0.045558676 -0.010610223 0.045369908 -0.010362923 0.045199588 -0.010368466
		 0.044952065 -0.010635316 0.046105087 -0.01155889 0.046165284 -0.011290908 0.046038978
		 -0.010940731 0.045790367 -0.010613203 0.045558676 -0.010361075 0.045326985 -0.010095656
		 0.045117944 -0.010100543 0.045064472 -0.010377049 0.046219755 -0.010959387 0.0459994
		 -0.010621846 0.04574744 -0.010362923 0.045558676 -0.010093987 0.045306161 -0.0097708106
		 0.045078367 -0.0097735524 0.044952065 -0.010108113 0.046165284 -0.010635316 0.045917742
		 -0.010368466 0.045790371 -0.010095656 0.045558676 -0.0097698569 0.045326985 -0.0094488263
		 0.045117944 -0.0094489455 0.044897564 -0.009777844 0.046052869 -0.010377049 0.0459994
		 -0.010100543 0.045811195 -0.0097708106 0.045558676 -0.0094487071 0.04534997 -0.009188354
		 0.045161694 -0.0091868043 0.044952065 -0.0094492435 0.046165284 -0.010108113 0.046038982
		 -0.0097735524 0.045790371 -0.0094488263 0.045558676 -0.0091888905 0.045012251 -0.0091844201
		 0.046219755 -0.009777844 0.0459994 -0.0094489455 0.045767386 -0.009188354 0.046165284
		 -0.0094492435 0.045955658 -0.0091868043 0.046105087 -0.0091844201 0.04315412 -0.015154064
		 0.043338656 -0.015429556 0.043758735 -0.015492857 0.043759324 -0.015217364 0.043435663
		 -0.01569742 0.043710433 -0.015734792 0.043477781 -0.015949428 0.043629915 -0.015969872
		 0.043446392 -0.016195536 0.04353603 -0.016196847 0.043446392 -0.016238749 0.04353603
		 -0.016237438 0.042241141 -0.0043280721 0.042052865 -0.0043296814 0.04200913 -0.0046113729
		 0.042218149 -0.0046115518 0.041903436 -0.0043320656 0.041843235 -0.0046111345 0.041969538
		 -0.0049653649 0.042197332 -0.0049681067 0.042449847 -0.0043275356 0.042449847 -0.0046116114
		 0.041788727 -0.0049610734 0.04200913 -0.0053165555 0.042218149 -0.0053214431;
	setAttr ".uvtk[1750:1999]" 0.042449847 -0.0049690604 0.042658553 -0.0043280721
		 0.042681545 -0.0046115518 0.041843235 -0.0053089857 0.042090788 -0.0055917501 0.042261079
		 -0.0055972338 0.042449847 -0.005323112 0.042702362 -0.0049681067 0.042846859 -0.0043296814
		 0.042890579 -0.0046113729 0.04195565 -0.0055831671 0.04200913 -0.0058808327 0.042218149
		 -0.0058894753 0.042449847 -0.0055991411 0.042681545 -0.0053214431 0.042930186 -0.0049653649
		 0.042996243 -0.0043320656 0.043056488 -0.0046111345 0.041843235 -0.005867362 0.041969538
		 -0.0062376857 0.042197332 -0.0062496066 0.042449847 -0.0058924556 0.042638615 -0.0055972338
		 0.042890579 -0.0053165555 0.043110952 -0.0049610734 0.041788727 -0.0062190294 0.04200913
		 -0.0065824389 0.042218149 -0.0065957904 0.042449847 -0.0062537789 0.042681545 -0.0058894753
		 0.042808905 -0.0055917501 0.043056488 -0.0053089857 0.041843235 -0.0065616965 0.042052865
		 -0.0068539977 0.042241141 -0.0068677068 0.042449847 -0.0066003799 0.042702347 -0.0062496066
		 0.042890579 -0.0058808327 0.042944044 -0.0055831671 0.041903436 -0.0068327188 0.042449847
		 -0.0068724155 0.042681545 -0.0065957904 0.042930186 -0.0062376857 0.043056488 -0.005867362
		 0.042658553 -0.0068677068 0.042890579 -0.0065824389 0.043110952 -0.0062190294 0.042846859
		 -0.0068539977 0.043056488 -0.0065616965 0.042996258 -0.0068327188 0.04751654 -0.0091868043
		 0.047328271 -0.009188354 0.047351256 -0.0094487667 0.047560286 -0.0094490051 0.047119558
		 -0.0091888905 0.047119558 -0.0094487071 0.047372051 -0.0097708106 0.047599863 -0.0097735524
		 0.047665946 -0.0091844201 0.047726169 -0.0094491839 0.046910852 -0.009188354 0.046887837
		 -0.0094487667 0.047119558 -0.0097698569 0.047351256 -0.010095656 0.047560286 -0.010100484
		 0.047780644 -0.009777844 0.046722554 -0.0091868043 0.046678837 -0.0094490051 0.046867043
		 -0.0097708106 0.047119558 -0.010093927 0.047308326 -0.010362923 0.047478624 -0.010368466
		 0.047726169 -0.010108113 0.046573151 -0.0091844201 0.046512928 -0.0094491839 0.046639226
		 -0.0097735524 0.046887837 -0.010095656 0.047119565 -0.010361075 0.047351256 -0.010613203
		 0.047560286 -0.010621846 0.047613759 -0.010377049 0.046458453 -0.009777844 0.046678837
		 -0.010100484 0.046930794 -0.010362923 0.047119558 -0.010610223 0.047372054 -0.01092875
		 0.047599867 -0.010940731 0.047726169 -0.010635316 0.046512924 -0.010108113 0.046760499
		 -0.010368466 0.046887837 -0.010613203 0.047119558 -0.010924637 0.047351256 -0.011256814
		 0.047560286 -0.011270106 0.047780644 -0.010959387 0.046625338 -0.010377049 0.046678837
		 -0.010621846 0.046867043 -0.01092875 0.047119558 -0.011252165 0.047328267 -0.011523843
		 0.04751654 -0.011537552 0.047726169 -0.011290848 0.046512924 -0.010635316 0.046639226
		 -0.010940731 0.046887837 -0.011256814 0.047119558 -0.011519134 0.047665946 -0.01155889
		 0.046458453 -0.010959387 0.046678837 -0.011270106 0.046910856 -0.011523843 0.046512928
		 -0.011290848 0.046722554 -0.011537552 0.046573151 -0.01155889 0.045824032 -0.015111685
		 0.045218848 -0.015175045 0.045219406 -0.015450537 0.045639552 -0.015387237 0.045267716
		 -0.015692413 0.045542456 -0.0156551 0.045348257 -0.015927494 0.04550036 -0.015907049
		 0.045442149 -0.016154468 0.04553175 -0.016153216 0.04553175 -0.01619637 0.045442149
		 -0.016195059 0.023199335 -0.0097413659 0.023288921 -0.0095323324 0.023038343 -0.0094894171
		 0.022964492 -0.0096597075 0.023423567 -0.0097809434 0.023519829 -0.0095531344 0.023319796
		 -0.0093006492 0.023063794 -0.0093006492 0.023059741 -0.0099072456 0.022849455 -0.0097948909
		 0.023553029 -0.0093006492 0.023273662 -0.0099617243 0.023288921 -0.0090689659 0.023038343
		 -0.0091118813 0.022883788 -0.010013759 0.022704557 -0.0098816156 0.023519829 -0.0090481043
		 0.023199335 -0.0088599324 0.022964492 -0.0089415908 0.023423567 -0.0088203549 0.023059741
		 -0.0086940527 0.022849455 -0.0088064671 0.023273662 -0.0086395144 0.022883788 -0.0085875392
		 0.022704557 -0.0087196827 0.024285033 -0.0091142654 0.024358884 -0.0089439154 0.024116889
		 -0.008862257 0.024025276 -0.0090712905 0.024473861 -0.0088087916 0.024259523 -0.0086963773
		 0.023892835 -0.0088226795 0.023791745 -0.0090504885 0.024259582 -0.0093029737 0.023993686
		 -0.0093029737 0.024618819 -0.0087220073 0.02443935 -0.0085898638 0.02405037 -0.0086418986
		 0.023756877 -0.0093029737 0.024285033 -0.0094918013 0.024025276 -0.0095347166 0.023791745
		 -0.0095555186 0.024358884 -0.0096620321 0.024116889 -0.0097437501 0.023892835 -0.0097833276
		 0.024473861 -0.0097972155 0.024259523 -0.0099096298 0.02405037 -0.0099640489 0.024618819
		 -0.0098839998 0.02443935 -0.010016084 0.033008412 -0.015063703 0.032403186 -0.015119851
		 0.032403782 -0.015408516 0.032823876 -0.015352368 0.032452092 -0.015667319 0.032726809
		 -0.015634179 0.032532617 -0.015920043 0.032684729 -0.015901923 0.032626495 -0.016165674
		 0.03271611 -0.016164541 0.03271611 -0.016202807 0.032626495 -0.016201675 0.026537791
		 -0.015250504 0.026746824 -0.015340865 0.02678974 -0.015092313 0.026619449 -0.015017807
		 0.026371911 -0.015109777 0.026484326 -0.014901936 0.026317373 -0.015320361 0.026498213
		 -0.015471578 0.026265398 -0.014932334 0.026397541 -0.014755845 0.025531128 -0.015335858
		 0.025740162 -0.015245497 0.025658503 -0.015012801 0.025488213 -0.015087306 0.025906041
		 -0.015104711 0.025793627 -0.014896929 0.025779739 -0.015466571 0.02596052 -0.015315294
		 0.026012555 -0.014927328 0.025880411 -0.014750838 0.021084026 -0.013073325 0.021254316
		 -0.013147771 0.021336034 -0.012908161 0.021127 -0.012815893 0.021389499 -0.013263702
		 0.021501854 -0.013051987 0.021476224 -0.013409793 0.021608427 -0.013233185 0.022215322
		 -0.013147771 0.022385612 -0.013073325 0.022342637 -0.012815893 0.022133663 -0.01290822
		 0.022080138 -0.013263702 0.021967724 -0.013051987 0.021993414 -0.013409793 0.02186127
		 -0.013233185 0.019218877 -0.012608171 0.019276813 -0.012608171 0.019275084 -0.012518585
		 0.019220605 -0.012518585 0.035004541 -0.015121579 0.034399316 -0.015065193 0.034583852
		 -0.015353322 0.035003945 -0.015409768 0.034680888 -0.015634716 0.034955665 -0.015668035
		 0.034722999 -0.015901864 0.03487514 -0.015920162 0.034691617 -0.016163945 0.034781232
		 -0.016165078 0.034691617 -0.01620239 0.034781232 -0.016201198 0.020349815 -0.013409793
		 0.020558789 -0.013317466 0.020477131 -0.013077796 0.020306841 -0.013152182 0.020724669
		 -0.013173759 0.020612255 -0.012961924 0.020831183 -0.01299262 0.020699039 -0.012815893
		 0.019801989 -0.013291061 0.020011082 -0.013383329 0.020053998 -0.013125777;
	setAttr ".uvtk[2000:2249]" 0.019883707 -0.013051391 0.019636109 -0.013147295
		 0.019748524 -0.012935519 0.019529656 -0.012966216 0.019661799 -0.012789428 0.028173819
		 -0.01632303 0.028344169 -0.016248643 0.028301194 -0.015999973 0.028092161 -0.016090274
		 0.028038695 -0.016438901 0.027926281 -0.016231 0.028052583 -0.015869081 0.027871802
		 -0.016020238 0.027951971 -0.016584992 0.027819827 -0.016408265 0.027042583 -0.015135407
		 0.027212873 -0.015209854 0.027294531 -0.014977038 0.027085558 -0.014886737 0.027348056
		 -0.015325725 0.027460411 -0.015117764 0.027434781 -0.015471697 0.027566925 -0.015295029
		 0.027514949 -0.014907062 0.027334109 -0.014755845 0.018847123 -0.011220634 0.018241957
		 -0.011173964 0.018426493 -0.011474311 0.018846586 -0.011521041 0.018523529 -0.011768997
		 0.018798307 -0.011796594 0.01856561 -0.012052 0.018717781 -0.01206708 0.018534258
		 -0.012330711 0.018623844 -0.012331605 0.018534258 -0.01236254 0.018623844 -0.012361646
		 0.024587587 -0.01290226 0.02440311 -0.012623668 0.023983017 -0.012639403 0.023982361
		 -0.012917995 0.024306014 -0.012343168 0.024031296 -0.012352467 0.024263933 -0.012058735
		 0.024111822 -0.012063801 0.024295345 -0.011772871 0.0242057 -0.011773229 0.024263814
		 -0.011350691 0.024263218 -0.011042595 0.023843125 -0.011058331 0.023658589 -0.011366427
		 0.024214938 -0.010742843 0.023940161 -0.010752141 0.024134412 -0.01044476 0.023982301
		 -0.010449886 0.024040535 -0.010148764 0.02395089 -0.010149062 0.044092253 -0.016652167
		 0.04367213 -0.016619921 0.043720454 -0.016885519 0.043995202 -0.016904593 0.044276752
		 -0.016403615 0.043671533 -0.016371369 0.043800972 -0.017154694 0.043953091 -0.017165124
		 0.043894872 -0.017427981 0.04398445 -0.017428577 0.01726903 -0.0098615289 0.016663805
		 -0.0098292828 0.016848341 -0.010138333 0.017268434 -0.010170639 0.016945377 -0.010443628
		 0.017220095 -0.010462642 0.016987517 -0.010740697 0.017139629 -0.010751128 0.016956106
		 -0.011034846 0.017045692 -0.011035502 0.024782971 -0.01520288 0.024971202 -0.015271187
		 0.025014952 -0.015031576 0.024805918 -0.014954448 0.025120631 -0.015377581 0.025180832
		 -0.01515168 0.02523531 -0.014884472 0.025054529 -0.014750838 0.024334624 -0.013570964
		 0.024522915 -0.013502717 0.024499908 -0.013254225 0.024290875 -0.013331354 0.024185196
		 -0.013677299 0.024124995 -0.013451457 0.024251297 -0.013050616 0.024070516 -0.013184249
		 0.030714616 -0.012830853 0.030794904 -0.01262182 0.030525133 -0.012578905 0.030458733
		 -0.012749195 0.03082256 -0.012390137 0.030548021 -0.012390137 0.030589566 -0.012996733
		 0.03035529 -0.012884378 0.030794904 -0.012158394 0.030525133 -0.012201369 0.030838057
		 -0.013051212 0.030971721 -0.012870431 0.030431971 -0.013103247 0.030224934 -0.012971103
		 0.030714616 -0.01194942 0.030458733 -0.012031078 0.030589566 -0.011783481 0.03035529
		 -0.011895955 0.030971721 -0.011909783 0.030838057 -0.011729002 0.030431971 -0.011677027
		 0.030224934 -0.01180917 0.031637415 -0.012201369 0.031703845 -0.012031078 0.031437799
		 -0.01194942 0.031355068 -0.012158394 0.031807289 -0.011895955 0.031566635 -0.01178354
		 0.031614557 -0.012390137 0.031326577 -0.012390137 0.031937614 -0.01180917 0.031728968
		 -0.011677027 0.031318471 -0.011729002 0.031175569 -0.011909842 0.031637415 -0.012578905
		 0.031355068 -0.01262182 0.031703845 -0.012749195 0.031437799 -0.012830853 0.031807289
		 -0.012884378 0.031566635 -0.012996733 0.031175569 -0.012870431 0.031318471 -0.013051212
		 0.031937614 -0.012971103 0.031728968 -0.013103247 0.018305257 -0.012584805 0.018303528
		 -0.01249522 0.01824905 -0.01249522 0.018247321 -0.012584805 0.020740703 -0.012610078
		 0.020740166 -0.01230973 0.020320073 -0.01235646 0.020135537 -0.012656868 0.020691887
		 -0.012034178 0.020417109 -0.012061775 0.020611301 -0.011763692 0.02045919 -0.011778772
		 0.020517424 -0.011499107 0.020427838 -0.011500061 0.020517424 -0.011469185 0.020427838
		 -0.011468232 0.035507217 -0.012555838 0.035564288 -0.012367606 0.035302714 -0.012323797
		 0.035237864 -0.01253289 0.035653189 -0.012218177 0.035403743 -0.012157977 0.03499122
		 -0.012284279 0.034918532 -0.012512088 0.035487548 -0.012764573 0.035215512 -0.012764573
		 0.035765186 -0.012122214 0.035531059 -0.012051463 0.035104468 -0.012103498 0.034893468
		 -0.012764573 0.035507217 -0.012973249 0.035237864 -0.012996256 0.034918532 -0.013017058
		 0.035564288 -0.01316154 0.035302714 -0.01320529 0.03499122 -0.013244867 0.035653189
		 -0.013310969 0.035403743 -0.01337117 0.035104468 -0.013425648 0.035765186 -0.013406873
		 0.035531059 -0.013477683 0.03672789 -0.013244092 0.036800578 -0.013016284 0.036510542
		 -0.012995481 0.036441997 -0.013204515 0.036950007 -0.013204515 0.037014887 -0.012995481
		 0.036825642 -0.012763798 0.036534145 -0.012763798 0.036226735 -0.012952507 0.036169723
		 -0.013122797 0.036614642 -0.013424873 0.036335275 -0.013370395 0.037122801 -0.013160765
		 0.037179843 -0.012972474 0.037037238 -0.012763798 0.036800578 -0.012511253 0.036510542
		 -0.012532055 0.036246344 -0.012763798 0.036080942 -0.01325798 0.037199512 -0.012763798
		 0.037014887 -0.012532055 0.03672789 -0.012283444 0.036441997 -0.012323022 0.036226735
		 -0.01257503 0.036200747 -0.013476908 0.035969064 -0.013344705 0.037179843 -0.012555063
		 0.036950007 -0.012323022 0.036614642 -0.012102664 0.036335275 -0.012157142 0.036169723
		 -0.01240474 0.037122801 -0.012366831 0.036080942 -0.012269557 0.036200747 -0.012050688
		 0.035969064 -0.012182772 0.03800796 -0.01257658 0.038064942 -0.01240629 0.037779644
		 -0.012324631 0.037708238 -0.012533605 0.038153753 -0.012271166 0.037890807 -0.012158751
		 0.037483081 -0.012285054 0.03740339 -0.012512863 0.03798829 -0.012765348 0.037683651
		 -0.012765348 0.038265601 -0.012184381 0.038030908 -0.012052238 0.037607178 -0.012104213
		 0.03800796 -0.012954116 0.037708238 -0.012997031 0.038064972 -0.013124406 0.037779614
		 -0.013206124 0.03740339 -0.013017833 0.037483081 -0.013245702 0.038153753 -0.01325959
		 0.037890807 -0.013372004 0.037607178 -0.013426423 0.038265601 -0.013346314 0.038030908
		 -0.013478458 0.034158215 -0.014751732 0.034237906 -0.014523983 0.033961132 -0.014503121
		 0.033886328 -0.014712155 0.033727571 -0.014480174 0.033658996 -0.014668405 0.034034118
		 -0.014932513 0.033769801 -0.014878035 0.033986911 -0.014271438 0.033751205 -0.014271438
		 0.033552185 -0.014817834 0.033961132 -0.014039755 0.033727571 -0.014062762;
	setAttr ".uvtk[2250:2499]" 0.033886328 -0.013830662 0.033658996 -0.013874412
		 0.034237906 -0.014018893 0.034158215 -0.013791144 0.033769801 -0.013664782 0.033552185
		 -0.013725042 0.034034118 -0.013610363 0.03901653 0.0060679018 0.038882747 0.0070113838
		 0.03752701 0.0070088506 0.037630931 0.0060679018 0.040126324 0.0060679018 0.039992526
		 0.0070113838 0.038734362 0.0078876317 0.037472352 0.0075531602 0.03752701 0.0051269233
		 0.038882747 0.0051244199 0.039844155 0.0079189539 0.039992526 0.0051244199 0.036868975
		 0.0081276298 0.036561951 0.0066487789 0.038734362 0.0042481422 0.037472352 0.0045826137
		 0.039844155 0.00421682 0.036561951 0.005486995 0.036868975 0.0040081441 0.039125934
		 0.0032155812 0.038432166 0.0034508407 0.023778513 -0.012079954 0.023663595 -0.011499107
		 0.02288498 -0.011786997 0.022685185 -0.012079954 0.023663595 -0.012660801 0.02288498
		 -0.012372971 0.030592069 0.008215785 0.030562505 0.0076461732 0.030666932 0.0077871978
		 0.030653074 0.0082645714 0.030271247 0.0080175102 0.030241683 0.0074478984 0.030624762
		 0.0087048709 0.030680463 0.0086745024 0.03030394 0.0085065961 0.029830053 0.0075035989
		 0.030905291 0.0064321458 0.030643687 0.0090055913 0.030764982 0.0089265406 0.030322865
		 0.0088073313 0.029660478 0.0070405602 0.030570701 0.0055276453 0.030846283 0.0099029243
		 0.030461594 0.0099029243 0.029224411 0.0057103336 0.030104771 0.0047241449 0.032476798
		 0.0046360493 0.032509491 0.0041468441 0.032565221 0.0041772723 0.032537803 0.0045872927
		 0.032155976 0.0048343241 0.032188669 0.004345119 0.032528415 0.0038459897 0.032649711
		 0.0039251447 0.032447234 0.0052058101 0.032551661 0.0050648153 0.032126412 0.0054040849
		 0.032207593 0.0040442646 0.03279005 0.0064196587 0.031714812 0.0053482056 0.032731071
		 0.0029488504 0.032329097 0.0029488504 0.032455459 0.0073241293 0.031545237 0.0058112144
		 0.03198956 0.0081276596 0.031109139 0.0071414709 0.020338073 -0.010698318 0.02037783
		 -0.010164797 0.020340338 -0.010199487 0.020305291 -0.010669887 0.020341292 -0.0098518729
		 0.020308211 -0.0099236369 0.020227209 -0.010240972 0.020197764 -0.010635972 0.020273343
		 -0.010935247 0.020248309 -0.010878801 0.020200208 -0.010009348 0.020149902 -0.010811329
		 0.020163193 -0.011064649 0.020151153 -0.010992885 0.020068303 -0.010907173 0.020895913
		 -0.011022568 0.020856217 -0.010488927 0.020823434 -0.010517359 0.020858482 -0.010987818
		 0.020791546 -0.010251939 0.020766452 -0.010308385 0.020715907 -0.010551274 0.020745352
		 -0.010946333 0.020859435 -0.011335552 0.020826295 -0.011263788 0.020681337 -0.010122478
		 0.020669237 -0.010194302 0.020668045 -0.010375798 0.020718351 -0.011178076 0.020586446
		 -0.010279953 0.021225765 0.016553415 0.020001426 0.016306233 0.020001426 0.01517155
		 0.021225765 0.015418749 0.021225765 0.017451024 0.020001426 0.017203799 0.020106927
		 0.013785645 0.021225765 0.014032878 0.022521213 0.016233664 0.022521213 0.015098989
		 0.022521213 0.017050313 0.022521213 0.013713129 0.02381672 0.015418749 0.02381672
		 0.016553415 0.02381672 0.017451024 0.021225765 0.013245903 0.022521213 0.012926161
		 0.02381672 0.014032878 0.025040999 0.016306233 0.025040999 0.01517155 0.025040999
		 0.017203799 0.021089211 0.012001082 0.022521213 0.011521533 0.02381672 0.013245903
		 0.024935558 0.013785645 0.02106984 0.010390595 0.022521213 0.010172561 0.023953274
		 0.012001082 0.020416096 0.011789829 0.020298913 0.01063402 0.023972586 0.010390595
		 0.024743572 0.01063402 0.024626389 0.011789829 0.014815226 0.0065809786 0.014963582
		 0.0056734085 0.017250136 0.0056734085 0.017257825 0.0065809786 0.015681818 0.0046721697
		 0.017430082 0.0050399601 0.017702296 0.0059779882 0.017706707 0.0064961314 0.014681473
		 0.0075244904 0.017179981 0.0075244904 0.017829552 0.0051407218 0.01790221 0.0056542754
		 0.018033162 0.0057053566 0.018149331 0.0059961975 0.018032864 0.0061942935 0.018052474
		 0.0064154565 0.017564192 0.0067185163 0.017596856 0.0075244904 0.014815226 0.0084679723
		 0.017257825 0.0084679723 0.018218473 0.0062020719 0.018176332 0.0063007772 0.018184081
		 0.0063878298 0.017740503 0.0069203675 0.017752185 0.0073414147 0.017564192 0.0083304346
		 0.014963582 0.0093755275 0.017250136 0.0093755275 0.018249407 0.0063038468 0.018255189
		 0.0063942075 0.017867342 0.0070264935 0.017873123 0.0072352588 0.018090084 0.0075244904
		 0.018065587 0.0073414147 0.017751828 0.0077037513 0.017740265 0.0081286132 0.017706707
		 0.0085527897 0.017702296 0.0090710074 0.015681818 0.010376796 0.017430082 0.010008991
		 0.017960623 0.0070991814 0.017962411 0.0071626008 0.018028572 0.0072352588 0.018065229
		 0.0077037513 0.017873004 0.0078117847 0.017867222 0.0080224872 0.018052474 0.0086334646
		 0.018032864 0.0088546574 0.018033162 0.0093435943 0.018149331 0.0090527534 0.01790221
		 0.0093946308 0.017829552 0.0099081993 0.01800777 0.0071036518 0.018009618 0.0071626008
		 0.018028393 0.0078117847 0.017962351 0.0078857541 0.017960623 0.0079497993 0.018184081
		 0.0086610913 0.018176332 0.0087481737 0.018218473 0.008846879 0.018009558 0.0078857541
		 0.018007711 0.0079452991 0.018255189 0.0086547434 0.018249407 0.0087451041 0.038942292
		 -0.0015023947 0.03920573 -0.00036919117 0.036825374 -0.00036919117 0.036770269 -0.0015023947
		 0.039469406 -0.0013630986 0.039732829 -0.00019222498 0.039410278 0.00072649121 0.036920384
		 0.00072649121 0.036083892 -0.00025528669 0.035987243 -0.0011767149 0.039937392 0.00072649121
		 0.03920573 0.0018221736 0.036825374 0.0018221736 0.036178902 0.00072649121 0.035733894
		 -0.00015074015 0.035700098 -0.0010926127 0.039732829 0.0016452074 0.038942292 0.0029554069
		 0.036770269 0.0029554069 0.036083892 0.0017083287 0.035811737 0.00072649121 0.039469406
		 0.0028161108 0.035987243 0.0026296973 0.035733894 0.0016037524 0.035700098 0.002545625
		 0.0270852 -0.0082172155 0.027168408 -0.009688735 0.028603211 -0.010426342 0.026771322
		 -0.0079885125 0.02685453 -0.006516993 0.025336519 -0.00872612 0.02539672 -0.01348877
		 0.024791494 -0.013473094 0.02479209 -0.013751686 0.025212184 -0.013767421 0.02484037
		 -0.014038622 0.025115147 -0.014047921 0.024920896 -0.014327228 0.025073007 -0.014332354
		 0.025014773 -0.01461786 0.025104418 -0.014618218 0.023421898 -0.010162115 0.022816673
		 -0.010146439 0.023001149 -0.010454476 0.023421243 -0.010470212 0.023098186 -0.010760725
		 0.023372963 -0.010770023 0.023140326 -0.01106298 0.023292437 -0.011068046;
	setAttr ".uvtk[2500:2749]" 0.023108914 -0.011363804 0.02319856 -0.011364102 0.039115459
		 -0.012556612 0.039159656 -0.012368381 0.038882121 -0.012324631 0.038831398 -0.012533605
		 0.039228424 -0.012218952 0.038961068 -0.012158751 0.038546816 -0.012285054 0.038489297
		 -0.012512863 0.03910026 -0.012765348 0.038813934 -0.012765348 0.03931509 -0.012122989
		 0.039060578 -0.012052238 0.038636371 -0.012104213 0.038469478 -0.012765348 0.039115459
		 -0.012974024 0.038831398 -0.012997031 0.038489327 -0.013017833 0.039159641 -0.013162374
		 0.038882121 -0.013206124 0.038546816 -0.013245702 0.039228424 -0.013311744 0.038961068
		 -0.013372004 0.038636342 -0.013426423 0.039315075 -0.013407648 0.039060578 -0.013478458
		 0.040271342 -0.013245702 0.040328816 -0.013017833 0.040017843 -0.012997031 0.039963052
		 -0.013206124 0.040529191 -0.013206124 0.0405799 -0.012997031 0.040348634 -0.012765348
		 0.040036708 -0.012765348 0.039726704 -0.012954116 0.039680734 -0.013124406 0.040181786
		 -0.013426423 0.039877713 -0.013372004 0.040732279 -0.013162315 0.040776446 -0.012974024
		 0.040597364 -0.012765348 0.040450215 -0.013372004 0.040328801 -0.012512863 0.040017843
		 -0.012533605 0.039742529 -0.012765348 0.039609164 -0.01325959 0.040791661 -0.012765348
		 0.0405799 -0.012533605 0.040271342 -0.012284994 0.039963052 -0.012324631 0.039726675
		 -0.01257658 0.039770186 -0.013478458 0.039518982 -0.013346314 0.040776446 -0.012556612
		 0.040529206 -0.012324631 0.040181771 -0.012104213 0.039877713 -0.012158751 0.039680734
		 -0.01240629 0.040732294 -0.012368381 0.040450215 -0.012158751 0.039609164 -0.012271166
		 0.039770171 -0.012052238 0.039518982 -0.012184381 0.042100161 -0.012560666 0.042146116
		 -0.012390375 0.041848138 -0.012308717 0.041790143 -0.012517691 0.042217687 -0.012255192
		 0.041938439 -0.012142777 0.04152374 -0.01226908 0.041458428 -0.012496889 0.042084366
		 -0.012749374 0.04177013 -0.012749374 0.042307884 -0.012168467 0.042052284 -0.012036264
		 0.0416255 -0.012088299 0.041265115 -0.012308717 0.041203231 -0.012517691 0.041435882
		 -0.012749374 0.042100161 -0.012938201 0.041790143 -0.012981117 0.041072369 -0.012352407
		 0.041015238 -0.012540698 0.041181922 -0.012749374 0.041458413 -0.013001919 0.042146131
		 -0.013108432 0.041848138 -0.01319015 0.040995538 -0.012749374 0.041203231 -0.012981117
		 0.04152374 -0.013229728 0.042217687 -0.013243616 0.041938439 -0.01335603 0.041015223
		 -0.012958109 0.041265115 -0.01319015 0.041625515 -0.013410509 0.042307854 -0.0133304
		 0.042052269 -0.013462484 0.041072369 -0.0131464 0.043257862 -0.013229728 0.043323219
		 -0.013001919 0.043021783 -0.012981117 0.042959899 -0.01319015 0.043345749 -0.012749434
		 0.043043137 -0.012749434 0.042769954 -0.012958109 0.042712808 -0.0131464 0.043156087
		 -0.013410509 0.042863518 -0.01335603 0.043323219 -0.012496889 0.043021783 -0.012517691
		 0.042789623 -0.012749434 0.042623863 -0.013295829 0.043257862 -0.01226908 0.042959899
		 -0.012308717 0.042769954 -0.012540698 0.042742044 -0.013462484 0.042511731 -0.013391733
		 0.043156087 -0.012088299 0.042863518 -0.012142777 0.042712823 -0.012352407 0.042623863
		 -0.012203038 0.042742044 -0.012036264 0.042511731 -0.012107074 0.039549753 -0.0068657398
		 0.039738029 -0.0068507791 0.039781779 -0.0065805316 0.039572746 -0.0065952539 0.039887458
		 -0.0068275332 0.039947674 -0.0065575838 0.039821371 -0.00623703 0.039593562 -0.0062505007
		 0.039341047 -0.0068708658 0.039341047 -0.0066003203 0.040002167 -0.0062159896 0.039781779
		 -0.0058799386 0.039572746 -0.0058899522 0.039341047 -0.0062551498 0.039132342 -0.0068657398
		 0.039109319 -0.0065952539 0.039947674 -0.0058642626 0.039700121 -0.0055896044 0.039529815
		 -0.0055962801 0.039341047 -0.0058934093 0.039088532 -0.0062505007 0.03894408 -0.0068507791
		 0.038900301 -0.0065805316 0.039835259 -0.0055792928 0.039781779 -0.0053161979 0.039572746
		 -0.0053224564 0.039341047 -0.0055985451 0.039109334 -0.0058899522 0.038860723 -0.00623703
		 0.038794652 -0.0068275332 0.038734451 -0.0065575838 0.039947674 -0.0053064227 0.039821371
		 -0.0049659014 0.039593562 -0.0049701929 0.039341047 -0.0053246617 0.039152279 -0.0055962801
		 0.038900301 -0.0058799386 0.038679942 -0.0062159896 0.040002167 -0.0049592257 0.039781779
		 -0.0046112537 0.039572746 -0.0046128631 0.039341047 -0.0049716234 0.039109334 -0.0053224564
		 0.038981989 -0.005589664 0.038734451 -0.0058642626 0.039947674 -0.0046088099 0.039738029
		 -0.0043287873 0.039549753 -0.0043284893 0.039341047 -0.0046133995 0.039088532 -0.0049701929
		 0.038900301 -0.0053161979 0.038846835 -0.0055792928 0.039887458 -0.0043292046 0.039341047
		 -0.0043283701 0.039109334 -0.0046128631 0.038860723 -0.0049659014 0.038734451 -0.0053064227
		 0.039132342 -0.0043284893 0.038900301 -0.0046112537 0.038679942 -0.0049592257 0.038944051
		 -0.0043287873 0.038734451 -0.0046088099 0.038794652 -0.0043292046 0.043607287 -0.011838019
		 0.043795533 -0.011823118 0.043772578 -0.011555552 0.043563522 -0.011570275 0.044004254
		 -0.011817932 0.044004254 -0.011550486 0.043751724 -0.01122725 0.043523937 -0.011240661
		 0.043457836 -0.011861265 0.043397635 -0.011593223 0.04421296 -0.011823118 0.044235945
		 -0.011555552 0.044004254 -0.011222601 0.043772578 -0.010912895 0.043563522 -0.010922968
		 0.043343157 -0.011261702 0.044401251 -0.011838019 0.044445008 -0.011570275 0.044256769
		 -0.01122725 0.044004254 -0.010909498 0.043815479 -0.010664701 0.043645181 -0.010671318
		 0.043397635 -0.010938644 0.044550695 -0.011861265 0.044610888 -0.011593223 0.044484593
		 -0.011240661 0.044235945 -0.010912895 0.044004254 -0.010662436 0.043772578 -0.010395885
		 0.043563522 -0.010402143 0.043510079 -0.010681689 0.044665352 -0.011261702 0.044445008
		 -0.010922968 0.044193022 -0.010664701 0.044004254 -0.010393679 0.043751724 -0.010070324
		 0.043523937 -0.010074556 0.043397635 -0.010411918 0.044610888 -0.010938644 0.044363335
		 -0.010671318 0.044235967 -0.010395885 0.044004254 -0.010068834 0.043772578 -0.0097492337
		 0.043563522 -0.009750843 0.043343157 -0.010081232 0.044498451 -0.010681689 0.044445001
		 -0.010402143 0.044256769 -0.010070324 0.044004254 -0.0097486973 0.043795533 -0.0094897151
		 0.043607287 -0.0094894171 0.043397635 -0.0097532272 0.044610888 -0.010411918 0.044484593
		 -0.010074556 0.044235967 -0.0097492337 0.044004254 -0.0094898343 0.043457836 -0.0094889998
		 0.044665359 -0.010081232 0.044445008 -0.009750843 0.04421296 -0.0094897151 0.044610888
		 -0.0097532272 0.044401251 -0.0094894171 0.044550695 -0.0094889998;
	setAttr ".uvtk[2750:2999]" 0.033224806 -0.014666975 0.033156529 -0.014478683
		 0.032922372 -0.014501691 0.032996848 -0.014710724 0.033132985 -0.014269948 0.032896712
		 -0.014269948 0.032644823 -0.014522493 0.032724127 -0.014750302 0.033331171 -0.014816344
		 0.033112839 -0.014876604 0.033156529 -0.014061272 0.032922372 -0.014038265 0.032847658
		 -0.014931083 0.033224806 -0.013872981 0.032996848 -0.013829231 0.033331171 -0.013723612
		 0.033112839 -0.013663352 0.032724127 -0.013789654 0.032644823 -0.014017463 0.032847658
		 -0.013608873 0.044411778 -0.012454569 0.04433246 -0.012226701 0.044035047 -0.012266338
		 0.044106074 -0.012475371 0.044208966 -0.012045979 0.043924421 -0.012100399 0.043749265
		 -0.012347996 0.043805972 -0.012518287 0.043660931 -0.012212873 0.044130571 -0.012707055
		 0.04382553 -0.012707055 0.043784991 -0.011993945 0.043549597 -0.012126088 0.044106089
		 -0.012938797 0.043805972 -0.012895823 0.044035025 -0.013147771 0.043749258 -0.013066113
		 0.044332452 -0.013187408 0.044411778 -0.01295954 0.043924421 -0.013313711 0.043660924
		 -0.013201237 0.044208974 -0.01336813 0.043784991 -0.013420165 0.043549597 -0.013288021
		 0.045648098 -0.013066113 0.045591377 -0.012895823 0.045307264 -0.012938797 0.045375444
		 -0.013147771 0.045571841 -0.012707055 0.045283757 -0.012707055 0.045016527 -0.01295954
		 0.04508882 -0.013187408 0.045736421 -0.013201237 0.04548163 -0.013313711 0.045591377
		 -0.012518287 0.045307264 -0.012475371 0.04499162 -0.012707055 0.044801094 -0.012938797
		 0.044865608 -0.013147771 0.045201451 -0.01336813 0.045847751 -0.013288021 0.045615397
		 -0.013420165 0.045648098 -0.012347996 0.045375444 -0.012266338 0.045016527 -0.012454569
		 0.044778869 -0.012707055 0.044635177 -0.01291579 0.044691943 -0.013104022 0.045736421
		 -0.012212873 0.045481615 -0.012100399 0.04508882 -0.012226701 0.044801094 -0.012475371
		 0.044615664 -0.012707055 0.045847751 -0.012126088 0.045615397 -0.011993945 0.045201451
		 -0.012045979 0.044865608 -0.012266338 0.044635199 -0.012498379 0.044691943 -0.012310088
		 0.046897978 -0.012152135 0.046825673 -0.011924326 0.046513416 -0.011963904 0.046577889
		 -0.012172937 0.046713047 -0.011743546 0.046412922 -0.011798024 0.046251278 -0.012007654
		 0.046308015 -0.012195885 0.04692287 -0.012404621 0.0466001 -0.012404621 0.046162948
		 -0.011858225 0.046327561 -0.012404621 0.046897959 -0.012657106 0.046577889 -0.012636304
		 0.046286378 -0.011691511 0.046051614 -0.011762261 0.046308015 -0.012613297 0.046825673
		 -0.012884974 0.04651339 -0.012845397 0.046251278 -0.012801588 0.046713062 -0.013065696
		 0.046412922 -0.013011277 0.046162948 -0.012951016 0.046286378 -0.013117731 0.046051614
		 -0.01304698 0.040446445 -0.01174742 0.040634722 -0.01170367 0.040611744 -0.011439621
		 0.040402681 -0.011486471 0.040843457 -0.01168865 0.040843457 -0.011423469 0.040590942
		 -0.011120617 0.040363133 -0.011169434 0.040297046 -0.011815608 0.040236816 -0.011559486
		 0.041052133 -0.01170367 0.041075125 -0.011439621 0.040843457 -0.011103809 0.040611744
		 -0.010852456 0.040402681 -0.010895073 0.040182337 -0.01124537 0.040201098 -0.011901379
		 0.040130317 -0.011651456 0.041240394 -0.01174742 0.041284174 -0.011486471 0.041095972
		 -0.011120617 0.040843457 -0.010837734 0.040654689 -0.010664582 0.040484369 -0.010697842
		 0.040236816 -0.010961413 0.041389838 -0.011815608 0.041450024 -0.011559486 0.041323721
		 -0.011169434 0.041075125 -0.010852456 0.040843457 -0.010653079 0.040611744 -0.010373533
		 0.040402681 -0.010412693 0.041485786 -0.011901379 0.041556537 -0.011651456 0.041504517
		 -0.01124537 0.041284174 -0.010895073 0.04103221 -0.010664582 0.040843457 -0.010360062
		 0.040590942 -0.010049164 0.040363133 -0.010089338 0.040349215 -0.010749698 0.040236816
		 -0.010473609 0.041450024 -0.010961413 0.0412025 -0.010697901 0.041075125 -0.010373533
		 0.040843457 -0.010035276 0.040611744 -0.0097666383 0.040402681 -0.0098012686 0.040182337
		 -0.010152042 0.040262476 -0.010815024 0.040130317 -0.01055032 0.041284159 -0.010412633
		 0.041095972 -0.010049164 0.040843457 -0.0097546577 0.040634722 -0.0095425844 0.040446445
		 -0.0095722079 0.040236816 -0.00985533 0.041337624 -0.010749757 0.041450024 -0.010473609
		 0.041323736 -0.010089338 0.041075125 -0.0097666383 0.040843457 -0.0095323324 0.040297046
		 -0.0096183419 0.041424423 -0.010815024 0.041556537 -0.01055032 0.041504517 -0.010151982
		 0.041284174 -0.0098012686 0.041052133 -0.0095425844 0.041450024 -0.00985533 0.041240409
		 -0.0095722079 0.041389838 -0.0096184015 0.03414686 -0.008898437 0.034374669 -0.0088496804
		 0.034335092 -0.008505106 0.034126058 -0.0085476637 0.034126058 -0.0091921091 0.034335092
		 -0.0091452003 0.03455545 -0.0087737441 0.034500971 -0.008438766 0.034253404 -0.0082018971
		 0.034083113 -0.0082351565 0.033894345 -0.0089152455 0.033894345 -0.008562386 0.034103051
		 -0.0094142556 0.034291342 -0.0093705058 0.034500971 -0.0090722442 0.033894345 -0.009208262
		 0.034388557 -0.0081500411 0.034335092 -0.0079829693 0.034126058 -0.0080220699 0.033894345
		 -0.0082466006 0.03364183 -0.008898437 0.033662632 -0.0085476637 0.033894345 -0.0094293356
		 0.033662632 -0.0091921091 0.034607485 -0.0083551407 0.034475312 -0.0080847144 0.034374669
		 -0.0076723695 0.03414686 -0.0077126026 0.033894345 -0.0080355406 0.033705577 -0.0082351565
		 0.033414021 -0.0088496804 0.033453628 -0.008505106 0.03368564 -0.0094142556 0.033453628
		 -0.0091452003 0.034500971 -0.0079220533 0.03455545 -0.007609725 0.034335092 -0.0073212981
		 0.034126058 -0.007355988 0.033894345 -0.0077264905 0.033662632 -0.0080220699 0.033535287
		 -0.0082018971 0.03323324 -0.0087737441 0.033287719 -0.008438766 0.033497378 -0.0093705058
		 0.033287719 -0.0090722442 0.034500971 -0.0072672367 0.034291342 -0.0070345998 0.034103051
		 -0.0070642233 0.033894345 -0.0073679686 0.03364183 -0.0077126026 0.033453628 -0.0079829693
		 0.033400133 -0.0081500411 0.034440771 -0.0069884062 0.033894345 -0.0070744753 0.033662632
		 -0.007355988 0.033414021 -0.0076723695 0.033181235 -0.0083551407 0.033313379 -0.0080847144
		 0.03368564 -0.0070642233 0.033453628 -0.0073212981 0.033287719 -0.0079220533 0.03323324
		 -0.007609725 0.033497378 -0.0070345998 0.033287719 -0.0072672367 0.033347949 -0.0069884658
		 0.037000701 -0.016146779 0.037000105 -0.015858591 0.036579981 -0.015914977 0.036395505
		 -0.016203165 0.036951795 -0.015600324 0.036677077 -0.015633583 0.036871269 -0.015348196
		 0.036719158 -0.015366435 0.036777362 -0.015103281 0.036687776 -0.015104413;
	setAttr ".uvtk[3000:3249]" 0.036777362 -0.015067101 0.036687776 -0.015065908
		 0.044744931 -0.014034271 0.044662222 -0.013825178 0.044396177 -0.013906837 0.044462584
		 -0.014077127 0.044533387 -0.013659358 0.044292733 -0.013771713 0.044773452 -0.014265954
		 0.044485472 -0.014265954 0.044924445 -0.013785601 0.044781514 -0.013604879 0.044371054
		 -0.013552785 0.044162415 -0.013684928 0.044744931 -0.014497638 0.044462584 -0.014454722
		 0.044662222 -0.014706671 0.044396169 -0.014625013 0.044533387 -0.014872551 0.044292733
		 -0.014760137 0.044781506 -0.01492703 0.044924445 -0.014746249 0.044371054 -0.014979064
		 0.044162415 -0.014846921 0.043719165 -0.014667332 0.043652713 -0.014497042 0.043382943
		 -0.014540017 0.043463245 -0.014748991 0.043629877 -0.014308274 0.043355301 -0.014308274
		 0.043822572 -0.014802456 0.043588303 -0.01491487 0.043652713 -0.014119506 0.043382943
		 -0.014076591 0.043206155 -0.014788628 0.043339789 -0.014969409 0.043952912 -0.01488924
		 0.043745875 -0.015021384 0.043719165 -0.013949215 0.043463245 -0.013867557 0.043822557
		 -0.013814092 0.043588303 -0.013701677 0.043952912 -0.013727307 0.043745875 -0.013595164
		 0.043339789 -0.013647199 0.04320614 -0.01382798 0.023381069 -0.013216615 0.023590103
		 -0.013139486 0.023546353 -0.012899816 0.023358062 -0.012968123 0.023755983 -0.013019383
		 0.023695782 -0.012793481 0.02362968 -0.013420224 0.023810461 -0.013286591 0.022865966
		 -0.013161898 0.023074999 -0.013238966 0.023098007 -0.012990534 0.022909716 -0.012922227
		 0.022700086 -0.013041794 0.022760347 -0.012815893 0.022645608 -0.013308942 0.022826388
		 -0.013442636 0.026205793 -0.014602482 0.026021317 -0.01432389 0.025601164 -0.014339566
		 0.025600567 -0.014618218 0.025924221 -0.014043391 0.025649503 -0.014052629 0.02588214
		 -0.013758957 0.025729969 -0.013764083 0.025913492 -0.013473094 0.025823906 -0.013473392
		 0.022579923 -0.011348367 0.022579268 -0.01104027 0.022159174 -0.011056006 0.021974698
		 -0.011364102 0.022530988 -0.010740519 0.02225627 -0.010749757 0.022450462 -0.010442436
		 0.022298351 -0.010447502 0.022356585 -0.010146439 0.022266939 -0.010146737 0.043250278
		 -0.017147839 0.043153197 -0.016895354 0.042878449 -0.016914427 0.042830184 -0.017180085
		 0.043111131 -0.016634881 0.042958975 -0.016645312 0.043434784 -0.017396331 0.042829588
		 -0.017428577 0.043142483 -0.016371369 0.043052897 -0.016372025 0.016427055 -0.010931313
		 0.016426459 -0.010622203 0.016006365 -0.010654509 0.015821829 -0.010963619 0.016378179
		 -0.0103302 0.016103402 -0.010349274 0.016297594 -0.010041714 0.016145542 -0.010052145
		 0.016203716 -0.0097573996 0.016114131 -0.0097579956 0.027014866 -0.013493836 0.026409701
		 -0.0134781 0.026410237 -0.013756692 0.02683039 -0.013772428 0.026458576 -0.014043629
		 0.026733294 -0.014052927 0.026539102 -0.014332235 0.026691213 -0.014337301 0.02663298
		 -0.014622927 0.026722565 -0.014623225 0.021737888 -0.010162115 0.021132722 -0.010146439
		 0.021317258 -0.010454476 0.021737352 -0.010470212 0.021414295 -0.010760725 0.021689072
		 -0.010770023 0.021456376 -0.01106298 0.021608546 -0.011068046 0.021425024 -0.011363804
		 0.021514609 -0.011364102 0.033280119 -0.0065459013 0.033468381 -0.0065162182 0.03351216
		 -0.0062652826 0.033303127 -0.0062965155 0.033617809 -0.0064698458 0.03367804 -0.0062167048
		 0.033551738 -0.0059417486 0.033323929 -0.0059732795 0.033071414 -0.0065561533 0.033071414
		 -0.0063072443 0.033732519 -0.0058926344 0.03351216 -0.0055864453 0.033303127 -0.0056130886
		 0.033071414 -0.0059841275 0.032862708 -0.0065459013 0.032839701 -0.0062965155 0.03367804
		 -0.0055449009 0.033430472 -0.0052859187 0.033260182 -0.0053061247 0.033071414 -0.0056223273
		 0.032818899 -0.0059732795 0.032674417 -0.0065162182 0.032630667 -0.0062652826 0.033565626
		 -0.0052543879 0.03351216 -0.0050366521 0.033303127 -0.0050596595 0.033071414 -0.0053130984
		 0.032839701 -0.0056130886 0.03259109 -0.0059417486 0.032525018 -0.0064698458 0.032464787
		 -0.0062167048 0.033784524 -0.005492568 0.03365238 -0.0052146912 0.03367804 -0.0050008297
		 0.033551738 -0.004701972 0.033323929 -0.0047245622 0.033071414 -0.0050675869 0.032882646
		 -0.0053061843 0.032630667 -0.0055864453 0.032410309 -0.0058926344 0.033732519 -0.0046668649
		 0.03351216 -0.0043447018 0.033303127 -0.00436306 0.033071414 -0.0047323704 0.032839701
		 -0.0050596595 0.032712355 -0.0052859187 0.032464787 -0.0055449009 0.03367804 -0.0043160915
		 0.033468381 -0.0040564537 0.033280119 -0.0040713549 0.033071414 -0.0043693781 0.032818899
		 -0.0047245622 0.032630667 -0.0050366521 0.032577202 -0.0052543879 0.033617809 -0.0040332675
		 0.033071414 -0.0040764809 0.032839701 -0.00436306 0.03259109 -0.0047020316 0.032464787
		 -0.0050008297 0.032358304 -0.005492568 0.032490447 -0.0052146912 0.032862708 -0.0040713549
		 0.032630667 -0.0043447018 0.032410309 -0.0046668649 0.032674417 -0.0040564537 0.032464787
		 -0.0043160915 0.032525018 -0.0040332675 0.03402178 -0.01187253 0.034210071 -0.011842728
		 0.034187064 -0.011573553 0.03397803 -0.011604786 0.034418777 -0.011832535 0.034418777
		 -0.011562824 0.034166232 -0.011245847 0.033938453 -0.011277318 0.033872351 -0.011918843
		 0.03381215 -0.011653364 0.034627482 -0.011842728 0.03465046 -0.011573553 0.034418777
		 -0.011234939 0.034187064 -0.010950923 0.03397803 -0.010977566 0.033757672 -0.011326492
		 0.034815744 -0.01187253 0.034859493 -0.011604786 0.034671292 -0.011245787 0.034418777
		 -0.010941744 0.034230009 -0.010730088 0.034059688 -0.010750353 0.03381215 -0.011019111
		 0.034965172 -0.011918843 0.035025373 -0.011653364 0.034899071 -0.011277378 0.03465046
		 -0.010950923 0.034418777 -0.010723174 0.034187064 -0.010446608 0.03397803 -0.010469615
		 0.035079852 -0.011326492 0.034859493 -0.010977566 0.034607545 -0.010730088 0.034418777
		 -0.010438681 0.034166232 -0.010117531 0.033938453 -0.010140061 0.033924565 -0.010781884
		 0.03381215 -0.010505438 0.035025373 -0.011019111 0.034777835 -0.010750353 0.03465046
		 -0.010446608 0.034418777 -0.010109782 0.034187064 -0.0098118782 0.03397803 -0.009830296
		 0.033757672 -0.010175228 0.034859493 -0.010469615 0.034671292 -0.010117531 0.034418777
		 -0.0098056197 0.034210071 -0.0095670819 0.03402178 -0.0095819831 0.03381215 -0.0098589063
		 0.034912959 -0.010781884 0.035025373 -0.010505438 0.034899071 -0.010140061 0.03465046
		 -0.0098118782 0.034418777 -0.0095619559 0.033872351 -0.0096051097 0.035079852 -0.010175228
		 0.034859493 -0.009830296 0.034627482 -0.0095670819 0.035025373 -0.0098589063;
	setAttr ".uvtk[3250:3499]" 0.034815744 -0.0095819831 0.034965172 -0.0096051097
		 0.035733178 -0.0093480349 0.03592144 -0.0093781948 0.035965189 -0.0090916753 0.035756186
		 -0.0090564489 0.036070868 -0.0094251633 0.036131099 -0.0091466904 0.036004797 -0.0087410212
		 0.035776988 -0.0087001324 0.035524473 -0.009337604 0.035524473 -0.00904423 0.036185578
		 -0.0088046789 0.035965189 -0.0084314942 0.035756186 -0.0083917975 0.035524473 -0.0086860657
		 0.035315767 -0.0093480349 0.03529276 -0.0090564489 0.036131099 -0.0084933043 0.035883531
		 -0.0082138777 0.035713241 -0.0081800818 0.035524473 -0.0083780885 0.035271958 -0.0087001324
		 0.035127506 -0.0093781948 0.035083756 -0.0090916753 0.035965189 -0.0079106688 0.035756186
		 -0.0078675151 0.035524473 -0.0081684589 0.03529276 -0.0083917975 0.035044149 -0.0087410212
		 0.034978077 -0.0094252229 0.034917876 -0.0091466904 0.036018685 -0.008266449 0.036131099
		 -0.0079779625 0.036004797 -0.0075666308 0.035776988 -0.0075172782 0.035524473 -0.0078526139
		 0.035335705 -0.0081800818 0.035083756 -0.0084314942 0.034863368 -0.0088046789 0.036105439
		 -0.0083327293 0.036237583 -0.0080626607 0.036185578 -0.0076435804 0.035965189 -0.0072723031
		 0.035756186 -0.0072249174 0.035524473 -0.0075002313 0.03529276 -0.0078675151 0.035165414
		 -0.0082138777 0.034917876 -0.0084933043 0.036131099 -0.0073462129 0.03592144 -0.00704813
		 0.035733178 -0.0070039034 0.035524473 -0.0072085261 0.035271958 -0.0075172782 0.035083756
		 -0.0079106688 0.035524473 -0.0069886446 0.03529276 -0.0072249174 0.035044149 -0.0075666308
		 0.035030261 -0.008266449 0.034917876 -0.0079779625 0.035315767 -0.0070039034 0.035083756
		 -0.0072723031 0.034863368 -0.0076435804 0.034943506 -0.0083327293 0.034811363 -0.0080626607
		 0.035127506 -0.00704813 0.034917876 -0.0073462129 0.038718745 -0.011650741 0.038927779
		 -0.011686087 0.038906977 -0.011404514 0.038679197 -0.011363685 0.038762525 -0.011879027
		 0.038950786 -0.011909187 0.039159477 -0.011698246 0.039159477 -0.011418641 0.038927779
		 -0.011080444 0.038718745 -0.011040747 0.038552895 -0.011595786 0.038498417 -0.011300027
		 0.039159477 -0.011919618 0.038613096 -0.011831999 0.039391205 -0.011686087 0.039412007
		 -0.011404514 0.039159477 -0.011094153 0.038970724 -0.010789275 0.038800433 -0.010755539
		 0.038552895 -0.010978937 0.039368197 -0.011909187 0.039600223 -0.011650741 0.039639816
		 -0.011363685 0.039391205 -0.011080444 0.039159477 -0.010800958 0.038927779 -0.010602772
		 0.038718745 -0.010559559 0.03866528 -0.010702908 0.039556473 -0.011879027 0.039766118
		 -0.011595786 0.039820611 -0.011300027 0.039600223 -0.011040747 0.03934826 -0.010789275
		 0.039159477 -0.010617614 0.038906977 -0.010335684 0.038679197 -0.010286331 0.038446382
		 -0.010900974 0.038578525 -0.010636628 0.039705902 -0.011831999 0.039766118 -0.010978937
		 0.03951855 -0.010755539 0.039391205 -0.010602772 0.039159477 -0.010352731 0.038927779
		 -0.010017216 0.038718745 -0.0099698305 0.038552895 -0.010492325 0.038498417 -0.010209382
		 0.039653704 -0.010702908 0.039600223 -0.010559559 0.039412007 -0.010335684 0.039159477
		 -0.010033548 0.038950786 -0.0097534657 0.038762525 -0.009709239 0.038552895 -0.0098958611
		 0.039872631 -0.010900974 0.039740473 -0.010636687 0.039639816 -0.010286331 0.039391205
		 -0.010017216 0.039159477 -0.0097686648 0.038613096 -0.0096402764 0.039766118 -0.010492325
		 0.039820611 -0.010209441 0.039600223 -0.0099698305 0.039368197 -0.0097534657 0.038446382
		 -0.0098028183 0.038517162 -0.0095534325 0.039766118 -0.0098958611 0.039556473 -0.009709239
		 0.039705902 -0.0096402764 0.039872631 -0.0098028183 0.039801836 -0.0095534325 0.041227341
		 -0.014721215 0.041170597 -0.014532924 0.040918276 -0.014555931 0.040979713 -0.014764965
		 0.041151062 -0.014324188 0.040897116 -0.014324188 0.040616184 -0.014576733 0.040681049
		 -0.014804542 0.04131569 -0.014870644 0.041075423 -0.014930844 0.041170597 -0.014115512
		 0.040918276 -0.014092565 0.040593863 -0.014324188 0.040782049 -0.014985323 0.041427001
		 -0.014966547 0.041196018 -0.015037358 0.041227341 -0.013927281 0.040979713 -0.013883471
		 0.040616184 -0.014071703 0.04131569 -0.013777792 0.041075408 -0.013717592 0.040681049
		 -0.013843894 0.041427001 -0.013681889 0.041196018 -0.013611138 0.040782049 -0.013663173
		 0.042516246 -0.014055729 0.042451397 -0.01382798 0.042126298 -0.013867557 0.042183802
		 -0.014076591 0.04277277 -0.014076591 0.042711318 -0.013867557 0.042350382 -0.013647199
		 0.042036653 -0.013701677 0.041827977 -0.013949215 0.041873574 -0.014119506 0.042538583
		 -0.014308274 0.04220362 -0.014308274 0.042961881 -0.014099598 0.042905137 -0.013911307
		 0.042793915 -0.014308274 0.041757002 -0.013814092 0.04188925 -0.014308274 0.042516261
		 -0.014560819 0.042183802 -0.014540017 0.042981416 -0.014308274 0.04277277 -0.014540017
		 0.041923702 -0.013595164 0.041667551 -0.013727307 0.041873574 -0.014497042 0.042451397
		 -0.014788628 0.042126283 -0.014748991 0.042961881 -0.014517009 0.042711288 -0.014748991
		 0.041827977 -0.014667332 0.042350397 -0.014969409 0.042036653 -0.01491493 0.042905137
		 -0.014705241 0.041757017 -0.014802456 0.041923702 -0.015021384 0.041667551 -0.01488924
		 0.040165544 -0.014683247 0.040119976 -0.014513016 0.039828718 -0.014555931 0.039883047
		 -0.014764965 0.040104285 -0.014324188 0.039810002 -0.014324188 0.039517179 -0.014576733
		 0.039574161 -0.014804542 0.040236548 -0.01481843 0.039967671 -0.014930844 0.040119976
		 -0.01413542 0.039828718 -0.014092565 0.039497539 -0.014324188 0.039265022 -0.014555931
		 0.039315239 -0.014764965 0.039662912 -0.014985323 0.040325984 -0.014905214 0.040074304
		 -0.015037358 0.040165558 -0.01396513 0.039883047 -0.013883471 0.039517179 -0.014071703
		 0.039247707 -0.014324188 0.039067551 -0.014532924 0.039111257 -0.014721215 0.03939347
		 -0.014930844 0.040236548 -0.013830066 0.039967671 -0.013717651 0.039574161 -0.013843894
		 0.039265022 -0.014092565 0.039052472 -0.014324188 0.040325984 -0.013743222 0.040074304
		 -0.013611138 0.039662912 -0.013663173 0.039315253 -0.013883471 0.039067551 -0.014115512
		 0.03939347 -0.013717592 0.039111257 -0.013927281 0.038816705 -0.014071703 0.038759723
		 -0.013843894 0.038423792 -0.013883471 0.038474008 -0.014092565 0.038670972 -0.013663173
		 0.03834556 -0.013717651 0.038145855 -0.013927281 0.038189605 -0.014115512 0.038836345
		 -0.014324188 0.038491294 -0.014324188 0.038077757 -0.013777792 0.038204655 -0.014324188
		 0.038816705 -0.014576733 0.038474008 -0.014555931 0.038247004 -0.013611138;
	setAttr ".uvtk[3500:3749]" 0.037991956 -0.013681889 0.038189605 -0.014532924
		 0.038759723 -0.014804542 0.038423792 -0.014764965 0.038145885 -0.014721215 0.038670972
		 -0.014985323 0.03834556 -0.014930844 0.038077757 -0.014870644 0.038247004 -0.015037358
		 0.037991956 -0.014966547 0.031596169 -0.0065152049 0.03178446 -0.0065305829 0.03182821
		 -0.0062422752 0.031619176 -0.0062233806 0.031933889 -0.0065544844 0.031994089 -0.0062717795
		 0.031867787 -0.0058850646 0.031639978 -0.0058618784 0.031387463 -0.0065099001 0.031387463
		 -0.0062168837 0.032048568 -0.0059210658 0.03182821 -0.0055510402 0.031619176 -0.0055274963
		 0.031387463 -0.005853951 0.031178758 -0.0065152049 0.03115578 -0.0062233806 0.031994089
		 -0.005587697 0.031746522 -0.0053026676 0.031576231 -0.0052819848 0.031387463 -0.0055193901
		 0.031134948 -0.0058618784 0.030990526 -0.0065305829 0.030946776 -0.0062422752 0.031881675
		 -0.0053348541 0.03182821 -0.0050019026 0.031619176 -0.0049747229 0.031387463 -0.0052748919
		 0.03115578 -0.0055274963 0.030907199 -0.005885005 0.030841067 -0.0065544844 0.030780897
		 -0.0062717795 0.031994089 -0.0050442815 0.031867787 -0.0046468377 0.031639978 -0.0046147108
		 0.031387463 -0.0049653649 0.031198695 -0.0052819848 0.030946776 -0.0055510402 0.030726418
		 -0.0059210658 0.03196843 -0.0053753853 0.032100603 -0.0050976276 0.032048568 -0.004696846
		 0.03182821 -0.0043240786 0.031619176 -0.0042923093 0.031387463 -0.0046036839 0.03115578
		 -0.0049747229 0.031028435 -0.0053026676 0.030780897 -0.005587697 0.031994089 -0.0043734312
		 0.03178446 -0.0040738583 0.031596169 -0.0040436983 0.031387463 -0.0042814016 0.031134948
		 -0.0046147108 0.030946776 -0.0050019026 0.030893281 -0.0053348541 0.031933889 -0.0041208863
		 0.031387463 -0.0040332675 0.03115578 -0.0042923093 0.030907199 -0.0046468377 0.030780897
		 -0.0050442815 0.031178758 -0.0040436983 0.030946776 -0.0043240786 0.030726418 -0.004696846
		 0.030806527 -0.0053753853 0.030674383 -0.0050976276 0.030990526 -0.0040739179 0.030780897
		 -0.0043734908 0.030841097 -0.0041209459 0.03246738 -0.011896729 0.032655641 -0.011912048
		 0.032632664 -0.011667788 0.03242363 -0.011648893 0.032864347 -0.011917353 0.032864347
		 -0.011674345 0.032611832 -0.011362851 0.032384053 -0.011339724 0.032317951 -0.011872768
		 0.032257751 -0.011619449 0.033073053 -0.011912048 0.03309606 -0.011667788 0.032864347
		 -0.011370838 0.032632664 -0.011033773 0.03242363 -0.01101023 0.032203272 -0.011303663
		 0.033261344 -0.01189667 0.033305094 -0.011648893 0.033116892 -0.011362851 0.032864347
		 -0.01104188 0.032675579 -0.010749936 0.032505289 -0.010729253 0.032257751 -0.010973573
		 0.033410773 -0.011872768 0.033470973 -0.011619449 0.033344671 -0.011339724 0.03309606
		 -0.011033773 0.032864347 -0.010757029 0.032632664 -0.010530114 0.03242363 -0.010502875
		 0.032370165 -0.010697067 0.033525452 -0.011303663 0.033305094 -0.01101023 0.033053145
		 -0.010749936 0.032864347 -0.010539472 0.032611832 -0.010235965 0.032384053 -0.010203779
		 0.033470973 -0.010973573 0.033223435 -0.010729194 0.03309606 -0.010530114 0.032864347
		 -0.010246992 0.032632664 -0.0099083185 0.03242363 -0.0098766088 0.032257751 -0.010460556
		 0.032203272 -0.01015383 0.033358559 -0.010697007 0.033305094 -0.010502875 0.033116892
		 -0.010235965 0.032864347 -0.0099192262 0.032655641 -0.0096392035 0.03246738 -0.009608984
		 0.032257751 -0.009827137 0.033344671 -0.010203779 0.03309606 -0.0099083185 0.032864347
		 -0.0096495748 0.032317951 -0.0095619559 0.033470973 -0.010460496 0.033525452 -0.01015377
		 0.033305094 -0.0098765492 0.033073053 -0.0096391439 0.033470973 -0.009827137 0.033261344
		 -0.009608984 0.033410773 -0.0095619559 0.037995353 -0.0068700314 0.038183644 -0.0068702102
		 0.038227364 -0.0065873861 0.038018361 -0.0065853596 0.038333043 -0.006870389 0.038393274
		 -0.0065906048 0.038266972 -0.0062325597 0.038039163 -0.0062277913 0.037786648 -0.0068700314
		 0.037786648 -0.0065846443 0.038447753 -0.0062400699 0.038227364 -0.0058826208 0.038018361
		 -0.0058758259 0.037786648 -0.006226182 0.037577912 -0.0068700314 0.037554935 -0.0065853596
		 0.038393274 -0.0058931112 0.038145706 -0.0056097507 0.037975416 -0.0056027174 0.037786648
		 -0.0058735013 0.037534133 -0.0062277913 0.037389651 -0.0068702102 0.037345901 -0.0065873861
		 0.03828083 -0.005620718 0.038227364 -0.0053190589 0.038018361 -0.0053085685 0.037786648
		 -0.0056002736 0.037554935 -0.0058758259 0.037306324 -0.0062325597 0.037240252 -0.006870389
		 0.037180021 -0.0065906048 0.038393274 -0.0053354502 0.038266972 -0.0049619079 0.038039163
		 -0.0049479008 0.037786648 -0.0053049326 0.03759785 -0.0056027174 0.037345901 -0.0058826208
		 0.037125543 -0.0062400699 0.038447753 -0.0049837232 0.038227364 -0.0046188235 0.038018361
		 -0.0046036243 0.037786648 -0.0049430728 0.037554935 -0.0053085685 0.037427559 -0.0056097507
		 0.037180021 -0.0058931112 0.038393274 -0.0046424866 0.038183644 -0.0043490529 0.037995353
		 -0.0043336749 0.037786648 -0.0045984387 0.037534133 -0.0049479008 0.037345901 -0.0053190589
		 0.037292436 -0.005620718 0.038333043 -0.0043729544 0.037786648 -0.0043283701 0.037554935
		 -0.0046036243 0.037306324 -0.0049619079 0.037180021 -0.0053354502 0.037577912 -0.0043336749
		 0.037345901 -0.0046188235 0.037125543 -0.0049837232 0.037389651 -0.0043490529 0.037180021
		 -0.0046424866 0.037240252 -0.0043729544 0.042052865 -0.011903465 0.042241126 -0.011903584
		 0.042218149 -0.011644423 0.04200913 -0.011642337 0.042449847 -0.011903644 0.042449847
		 -0.011645138 0.042197347 -0.01132369 0.041969538 -0.011318862 0.041903436 -0.011903226
		 0.04184325 -0.011639178 0.042658553 -0.011903584 0.04268156 -0.011644423 0.042449847
		 -0.0113253 0.042218149 -0.010997951 0.04200913 -0.010991216 0.041788727 -0.011311412
		 0.042846844 -0.011903465 0.042890579 -0.011642337 0.042702362 -0.01132369 0.042449847
		 -0.011000276 0.042261094 -0.010728598 0.042090788 -0.010721564 0.04184325 -0.010980666
		 0.042996243 -0.011903226 0.043056473 -0.011639178 0.042930171 -0.011318862 0.042681545
		 -0.010997951 0.042449847 -0.010730982 0.042218149 -0.010481 0.04200913 -0.01047051
		 0.04195565 -0.010710597 0.043110952 -0.011311412 0.042890579 -0.010991216 0.042638615
		 -0.010728538 0.042449847 -0.010484636 0.042197347 -0.010167181 0.041969538 -0.010153174
		 0.04184325 -0.010454118 0.043056473 -0.010980666 0.042808905 -0.010721564 0.04268156
		 -0.010481 0.042449847 -0.010172009 0.042218149 -0.0098387003 0.04200913 -0.0098235011
		 0.041788727 -0.010131359 0.042944059 -0.010710597 0.042890579 -0.01047051;
	setAttr ".uvtk[3750:3999]" 0.042702362 -0.010167181 0.042449847 -0.0098439455
		 0.042241126 -0.0095710754 0.042052865 -0.0095556974 0.04184325 -0.0097998977 0.043056473
		 -0.010454118 0.042930171 -0.010153174 0.04268156 -0.0098387003 0.042449847 -0.0095763803
		 0.041903436 -0.009531796 0.043110952 -0.010131359 0.042890579 -0.0098235011 0.042658553
		 -0.0095710754 0.043056473 -0.0097998977 0.042846844 -0.0095556974 0.042996258 -0.009531796
		 0.030206159 -0.015383244 0.029956117 -0.015199959 0.029635027 -0.01544708 0.029748157
		 -0.015735745 0.029714838 -0.015009999 0.029513136 -0.01516521 0.029491916 -0.014805853
		 0.029372886 -0.014897525 0.029275671 -0.014596581 0.02922596 -0.014634907 0.046074703
		 -0.016193509 0.046268832 -0.01596725 0.046196971 -0.015911937 0.046027906 -0.016157508
		 0.046472318 -0.015748143 0.046356667 -0.015659153 0.046683665 -0.015535116 0.046508476
		 -0.01540035 0.046933733 -0.015351892 0.046621576 -0.015111685 0.02321513 0.0020137429
		 0.023368374 0.0021230578 0.023191407 0.0023358762 0.02301909 0.002217561 0.023538306
		 0.0022442341 0.023382381 0.0024670362 0.022982135 0.0026105344 0.022791579 0.0024857521
		 0.023093477 0.0019269884 0.022882357 0.0021236539 0.023708239 0.0023654103 0.023573413
		 0.0025982261 0.023193374 0.002748847 0.02281411 0.0029121935 0.022636726 0.0028015971
		 0.022640303 0.0023867488 0.023404673 0.0028871596 0.023010686 0.0030347705 0.023745671
		 0.0027165413 0.023595288 0.0030119419 0.023207322 0.0031573772 0.022868887 0.0032668114
		 0.022706941 0.0031698048 0.023384705 0.0032679737 0.023030773 0.0033638179 0.02273114
		 0.0035013258 0.022530332 0.0033857524 0.022932008 0.0036168694 0.022565201 0.0037972927
		 0.02234365 0.0036762059 0.022786811 0.0039183497 0.022405878 0.0040968359 0.022200122
		 0.0039902627 0.022349134 0.0032815337 0.022143736 0.0035670102 0.023113206 0.003721118
		 0.022986785 0.0040275455 0.022611633 0.0042033792 0.022282973 0.0043394268 0.022095934
		 0.0042467415 0.022014514 0.0038941503 0.022797242 0.0042995214 0.022469953 0.0044320822
		 0.022638634 0.0045157075 0.022944525 0.0043757856 0.022772506 0.0045820475 0.021765247
		 0.004239291 0.021595314 0.0043604672 0.021439388 0.004137665 0.021630362 0.004006505
		 0.021425381 0.0044816434 0.021248415 0.0042688251 0.021250442 0.0038558543 0.021461681
		 0.0037175417 0.021272078 0.0045909584 0.021076098 0.0043871701 0.021039143 0.0039941669
		 0.021067694 0.0035699308 0.02126433 0.003447324 0.021802679 0.00388816 0.021652237
		 0.0035927594 0.021150485 0.0046777129 0.020939305 0.0044810772 0.020848587 0.0041189492
		 0.020871058 0.0036925077 0.020925835 0.0033378899 0.021087781 0.0032408834 0.021441653
		 0.0033367574 0.020697251 0.0042179525 0.020693675 0.003803134 0.020763949 0.0034349263
		 0.020788148 0.0031033754 0.020989016 0.0029878318 0.02058734 0.0032189488 0.020622209
		 0.0028074384 0.020843819 0.0026863813 0.020400599 0.0029284954 0.020462885 0.0025078654
		 0.020668641 0.0024013221 0.021170154 0.0028836131 0.021043733 0.0025771856 0.020406142
		 0.0033231676 0.020200685 0.0030376911 0.020257071 0.0026144385 0.020339921 0.0022653043
		 0.020526901 0.0021726191 0.02085419 0.0023051798 0.020071521 0.002710551 0.020152941
		 0.0023579597 0.020695642 0.0020889938 0.021001533 0.0022289157 0.020829514 0.0020226538
		 0.025453761 -0.013118505 0.025987402 -0.013340414 0.026021913 -0.013032377 0.025647834
		 -0.012876809 0.026066735 -0.012728572 0.025831714 -0.01263082 0.026132897 -0.012433648
		 0.025994197 -0.012375951 0.026206866 -0.012141943 0.026148871 -0.012117863 0.021556571
		 -0.012683213 0.02161105 -0.012660623 0.021511331 -0.012379587 0.021427587 -0.012414455
		 0.021422461 -0.01209414 0.021287754 -0.012150168 0.021342829 -0.011804819 0.021138743
		 -0.011889696 0.021308258 -0.011496723 0.02094467 -0.011647999 0.033668861 -0.015065134
		 0.033212289 -0.015419483 0.033463076 -0.015601695 0.033783123 -0.015353382 0.033705071
		 -0.015790761 0.033906177 -0.015634716 0.033928797 -0.015993953 0.034047469 -0.015901923
		 0.034145877 -0.01620239 0.034195438 -0.016163945 0.045699392 -0.017372489 0.045745999
		 -0.017408669 0.045941036 -0.017183185 0.045869358 -0.017127573 0.046145365 -0.016964912
		 0.046030104 -0.016875446 0.046357583 -0.01675272 0.046182934 -0.016617179 0.046608392
		 -0.016570508 0.046297193 -0.01632899 0.019778505 0.0042037368 0.019591525 0.0042965412
		 0.019468442 0.0040540397 0.019674137 0.0039473772 0.019404605 0.0043893456 0.019262806
		 0.004160732 0.01930888 0.003754586 0.01953043 0.0036334097 0.019235924 0.0044730902
		 0.019077256 0.0042569935 0.019087389 0.003875792 0.019142762 0.0034587383 0.01934351
		 0.0033430755 0.019859686 0.0038511157 0.019730285 0.003524065 0.019102111 0.0045395195
		 0.018929973 0.0043333769 0.018887535 0.0039851367 0.018942013 0.0035744309 0.019004896
		 0.0032243133 0.019166782 0.0031272173 0.019524649 0.0032387078 0.018760875 0.0036787689
		 0.01884307 0.0033214688 0.018862918 0.0029923916 0.019059494 0.0028696656 0.018666342
		 0.0031151175 0.018679991 0.0027065873 0.018891171 0.0025681555 0.018468872 0.0028450489
		 0.018490866 0.0024248958 0.01868178 0.0022936165 0.019236758 0.00275895 0.019081727
		 0.0024432242 0.018489078 0.0032258332 0.018278375 0.0029699504 0.018299952 0.0025562048
		 0.018334761 0.0022022128 0.018504634 0.0020809174 0.018854037 0.0021751523 0.018127754
		 0.0026746392 0.018164948 0.0023234785 0.018657878 0.0019714832 0.019232884 0.0023441017
		 0.01899071 0.0020811558 0.018779472 0.0018846691 0.017292991 0.0019510984 0.017461553
		 0.0020348132 0.017319813 0.0022634268 0.017134205 0.0021671653 0.017648533 0.0021276176
		 0.017525449 0.0023701191 0.017144337 0.0025483668 0.016944483 0.0024390221 0.017159119
		 0.0018846393 0.016986981 0.0020907819 0.017835453 0.002220422 0.017731145 0.0024768114
		 0.017365888 0.0026695728 0.016999021 0.0028497279 0.016817883 0.0027453899 0.017587438
		 0.0027907789 0.01719977 0.0029654205 0.017916694 0.0025730431 0.017787293 0.0029001236
		 0.017400518 0.0030810833 0.017061904 0.0031998456 0.016900018 0.0031027198 0.017581597
		 0.003185451 0.01722379 0.0032969713 0.016919926 0.0034317672 0.016723409 0.0033090413
		 0.017116442 0.0035544932 0.016737059 0.0037175715 0.01652582 0.0035791397 0.016948238
		 0.0038560331 0.016547874 0.003999263 0.01635696 0.003867954 0.016546085 0.0031983554
		 0.016335323 0.0034542084 0.017293707 0.0036652088 0.017138734 0.0039809346;
	setAttr ".uvtk[4000:4249]" 0.016738787 0.0041305423 0.016391769 0.0042219758
		 0.016221896 0.0041006804 0.016184703 0.0037495196 0.016910985 0.0042490065 0.016561642
		 0.0043432415 0.017289892 0.0040800571 0.017047659 0.004343003 0.016714826 0.0044526756
		 0.01683642 0.0045394897 0.034793451 -0.0015754104 0.034613743 -0.0015193224 0.034551159
		 -0.0017889738 0.034749553 -0.0018547177 0.034414485 -0.0014571548 0.034331217 -0.0017160773
		 0.034458742 -0.0021216869 0.034673318 -0.0021981001 0.034215257 -0.0013949871 0.034111276
		 -0.0016431212 0.034220889 -0.0020369291 0.034319952 -0.00243783 0.034515277 -0.0025123358
		 0.034035519 -0.0013389587 0.033912882 -0.0015773773 0.033983007 -0.0019521713 0.034103468
		 -0.0023552775 0.034179464 -0.0026788712 0.034337476 -0.0027423501 0.03376843 -0.0018756986
		 0.033886984 -0.0022727251 0.034004316 -0.0026084781 0.034670249 -0.0025714636 0.034462884
		 -0.0027927756 0.03369166 -0.0021982193 0.033829138 -0.002538085 0.033900663 -0.0028598905
		 0.034114107 -0.0029501319 0.033687249 -0.0027697086 0.033765152 -0.0031709671 0.033995524
		 -0.0032743812 0.033671156 -0.002474606 0.033494696 -0.0026883483 0.03353478 -0.003067553
		 0.033622786 -0.0034790039 0.033831999 -0.0035785437 0.03430663 -0.0030314922 0.034203336
		 -0.003367722 0.033545747 -0.0024242401 0.0333419 -0.0026237965 0.033326969 -0.0029742718
		 0.033413544 -0.0033794641 0.033503756 -0.0037235022 0.033690616 -0.0038164854 0.034020737
		 -0.0036683083 0.033224776 -0.0032896399 0.033316925 -0.0036305189 0.033859178 -0.0039004087
		 0.035808101 -0.004196465 0.035987839 -0.0041404366 0.035883859 -0.0038923025 0.035685435
		 -0.0039580464 0.036187068 -0.004078269 0.03610377 -0.0038193464 0.03575556 -0.0035832524
		 0.035540983 -0.0036597252 0.036386296 -0.0040161014 0.036323711 -0.0037464499 0.035993442
		 -0.0034984946 0.035659537 -0.0032626987 0.035464242 -0.0033372045 0.036566034 -0.0039600134
		 0.036522135 -0.0036806464 0.036231294 -0.0034137368 0.035876021 -0.0031801462 0.036445901
		 -0.0033373237 0.036092535 -0.0030975938 0.035776868 -0.0029269457 0.03560172 -0.0029972792
		 0.036287829 -0.003023088 0.035952047 -0.0028565526 0.035673246 -0.0026754737 0.035459802
		 -0.0027657151 0.036110029 -0.0027930737 0.03588666 -0.0025852919 0.035537705 -0.002364397
		 0.035307333 -0.0024678707 0.035443708 -0.0030608177 0.035267279 -0.0028470755 0.036442831
		 -0.0029639602 0.036235437 -0.0027426481 0.035768077 -0.0022610426 0.035395339 -0.0020564198
		 0.035186097 -0.0021559596 0.035099521 -0.002561152 0.03531833 -0.0031111836 0.035114452
		 -0.0029116273 0.036079213 -0.0025039315 0.035975918 -0.0021677017 0.035604581 -0.0019568801
		 0.035276338 -0.0018119216 0.035089478 -0.0019049048 0.034997359 -0.0022457838 0.035793319
		 -0.0018671155 0.035463169 -0.0017189384 0.035631731 -0.001635015 0.046846382 -0.0014086962
		 0.04666004 -0.0013818145 0.046640988 -0.0016579628 0.046847329 -0.0016914606 0.046453457
		 -0.0013520122 0.046412297 -0.0016208291 0.046602543 -0.0020011067 0.046826534 -0.0020425916
		 0.046246868 -0.0013222694 0.046183575 -0.001583755 0.046354216 -0.0019551516 0.046515636
		 -0.00233531 0.046720304 -0.0023778677 0.04606054 -0.0012953877 0.045977265 -0.0015502572
		 0.046105914 -0.0019091964 0.046288781 -0.0022881031 0.046415135 -0.0025955439 0.046581246
		 -0.002633214 0.045881923 -0.0018677115 0.046061948 -0.0022408962 0.046231065 -0.0025538206
		 0.046393618 -0.0028737187 0.04659665 -0.0029235482 0.045857303 -0.0021983385 0.046046939
		 -0.0025120974 0.046168584 -0.0028185248 0.046327986 -0.0032126904 0.046547927 -0.0032718778
		 0.045880836 -0.0024744868 0.045943547 -0.0027633309 0.04608411 -0.0031471252 0.046214756
		 -0.0035389066 0.046415363 -0.0035976768 0.04574053 -0.0027135015 0.045840248 -0.0030815601
		 0.045992378 -0.0034738183 0.04611288 -0.0037962794 0.046292588 -0.003852427 0.04562027
		 -0.0030224323 0.045770008 -0.00340873 0.04591367 -0.0037341118 0.04556942 -0.0033499599
		 0.045714427 -0.0036719441 0.045534685 -0.0036158562 0.046993874 -0.006542027 0.047180228
		 -0.0065152049 0.047116905 -0.0062537193 0.046910565 -0.0062872171 0.047386788 -0.0064854026
		 0.047345597 -0.0062165856 0.047039274 -0.005928278 0.046815284 -0.0059697032 0.04759337
		 -0.0064556003 0.047574319 -0.0061795115 0.047287546 -0.0058822632 0.046995275 -0.0055965781
		 0.046790633 -0.0056391358 0.047779743 -0.0064287782 0.047780659 -0.0061460137 0.047535844
		 -0.0058363676 0.047222137 -0.0055493712 0.046980262 -0.0053253174 0.046814196 -0.0053629279
		 0.047759857 -0.0057948828 0.047448967 -0.0055021644 0.047164366 -0.0052835941 0.046876907
		 -0.0050741434 0.046673898 -0.0051239133 0.047653608 -0.005459547 0.047348466 -0.0052418709
		 0.047101915 -0.0050189495 0.046773579 -0.0047558546 0.046553604 -0.004815042 0.04751455
		 -0.0052042603 0.047326948 -0.004963696 0.04701744 -0.0046902895 0.046703339 -0.0044287443
		 0.046502747 -0.0044874549 0.047529951 -0.0049139261 0.047261305 -0.0046247244 0.046925709
		 -0.004363656 0.046647757 -0.0041654706 0.046468049 -0.0042216182 0.04748125 -0.0045655966
		 0.047148056 -0.0042985082 0.046846971 -0.004103303 0.047348678 -0.0042397976 0.047046211
		 -0.0040411353 0.047225948 -0.0039850473 0.017655388 -0.011173964 0.01715745 -0.011467338
		 0.017383054 -0.011680007 0.017732099 -0.011474311 0.017599121 -0.011898279 0.017818406
		 -0.011768997 0.01779516 -0.012128234 0.017924622 -0.012052 0.017983988 -0.01236254
		 0.018038109 -0.012330711 0.027218774 -0.014589071 0.027269617 -0.014619052 0.027434424
		 -0.014370561 0.027356282 -0.014324546 0.027609363 -0.014128149 0.027483657 -0.01405406
		 0.027792886 -0.013890684 0.027602449 -0.013778448 0.028018489 -0.013678074 0.02767916
		 -0.0134781 0.029669955 -0.014154732 0.02964665 -0.013848543 0.029395834 -0.013805032
		 0.029270783 -0.014085531 0.029646054 -0.013546288 0.029498056 -0.013520598 0.029704228
		 -0.014462829 0.029134765 -0.014364123 0.029653803 -0.013245463 0.029591992 -0.013234794
		 0.019433215 -0.0098619461 0.019468442 -0.010158002 0.019557789 -0.010142505 0.01949133
		 -0.0098518729 0.019492105 -0.010456085 0.019635871 -0.01043117 0.019505873 -0.010755837
		 0.019723728 -0.010718048 0.019471601 -0.011063933 0.019859686 -0.01099664 0.027973607
		 -0.012117863 0.027432337 -0.012320518 0.027617648 -0.01256901 0.027997032 -0.012426972
		 0.027792528 -0.012821436 0.028030887 -0.012732208 0.027945772 -0.013081968 0.028086439
		 -0.013029337 0.028091088 -0.01334548 0.028149858 -0.013323426 0.015490547 -0.012270272
		 0.0155458 -0.012290895 0.015665069 -0.012017667 0.015580073 -0.011985898;
	setAttr ".uvtk[4250:4499]" 0.015795305 -0.011748493 0.015658632 -0.011697352
		 0.01593484 -0.011482894 0.015727773 -0.011405349 0.016120091 -0.011234343 0.015751258
		 -0.011096299 0.016165212 -0.0060949326 0.016299203 -0.0059627295 0.016090646 -0.0057806969
		 0.01593937 -0.0059248805 0.016447738 -0.005816102 0.016258493 -0.0056208372 0.015840486
		 -0.0055426955 0.015672103 -0.0056961179 0.016596273 -0.0056694746 0.016426221 -0.0054610372
		 0.016027167 -0.0053725839 0.015626743 -0.005271554 0.015469149 -0.0054088831 0.016730264
		 -0.0055372119 0.016577557 -0.0053168535 0.01621379 -0.0052025318 0.015801385 -0.0051193237
		 0.016382173 -0.0050490499 0.015976086 -0.0049670935 0.015624538 -0.004912734 0.015480056
		 -0.0050342083 0.016133621 -0.0048297048 0.01576902 -0.0047912002 0.015451327 -0.0047030449
		 0.015271381 -0.0048489571 0.015631333 -0.0045570731 0.015240565 -0.0044371486 0.015041009
		 -0.0045918226 0.015440181 -0.0042824745 0.015035644 -0.0041666627 0.014849439 -0.0043045282
		 0.015109077 -0.0049806237 0.014860883 -0.0047313571 0.015793696 -0.0044254065 0.015620187
		 -0.00414294 0.015221909 -0.0040287971 0.014875844 -0.0039466619 0.014705911 -0.0040678382
		 0.014681414 -0.0044288635 0.015389934 -0.0039044619 0.015045777 -0.0038254857 0.015763119
		 -0.0040321946 0.01552327 -0.0038057566 0.01519908 -0.0037161708 0.015320733 -0.003629446
		 0.018983081 -0.0041871667 0.01884909 -0.004054904 0.018678978 -0.0042633414 0.018830314
		 -0.0044075251 0.018700495 -0.0039082766 0.018511191 -0.0041035414 0.018466547 -0.0045218468
		 0.01863493 -0.0046752691 0.018551961 -0.0037616491 0.018343464 -0.0039436817 0.018279865
		 -0.0043517947 0.018228844 -0.0047573447 0.018386379 -0.0048946738 0.018417969 -0.003629446
		 0.018192068 -0.0037994981 0.018093243 -0.0041816831 0.018054143 -0.0046051145 0.01792486
		 -0.0040282607 0.017879501 -0.0044528246 0.017877296 -0.0048117042 0.018021777 -0.0049331784
		 0.017721906 -0.0043154955 0.017732814 -0.0046901703 0.017704085 -0.0050213337 0.017884031
		 -0.0051673055 0.017524198 -0.0048754215 0.017493322 -0.00528723 0.017692938 -0.0054419041
		 0.017293707 -0.005132556 0.017288461 -0.0055577159 0.017474666 -0.0056955814 0.018046394
		 -0.0052989721 0.017872944 -0.0055814981 0.017361775 -0.0047437549 0.017113701 -0.0049930215
		 0.017102197 -0.0054198503 0.017128602 -0.0057777166 0.017298535 -0.0058988929 0.017642692
		 -0.0058199167 0.016934171 -0.0052955151 0.016958669 -0.0056565404 0.017451778 -0.0060082078
		 0.018015817 -0.0056922436 0.017776027 -0.005918622 0.017573431 -0.0060949326 0.02523531
		 -0.011418283 0.025041237 -0.011176586 0.024667159 -0.011332154 0.02470167 -0.011640251
		 0.024857417 -0.010930598 0.024622336 -0.011028349 0.024694875 -0.010675788 0.024556175
		 -0.010733485 0.024540201 -0.01041764 0.024482206 -0.01044178 0.021869436 -0.012683213
		 0.021998361 -0.012414455 0.021914616 -0.012379587 0.021814898 -0.012660623 0.022138193
		 -0.012150168 0.022003427 -0.01209414 0.022287205 -0.011889696 0.022083059 -0.011804819
		 0.022481278 -0.011647999 0.02211763 -0.011496723 0.019548967 -0.012385905 0.019625679
		 -0.012085557 0.019276634 -0.011879861 0.01905103 -0.012092471 0.019711986 -0.011790812
		 0.019492701 -0.011661589 0.019818142 -0.011507809 0.01968874 -0.011431575 0.019931689
		 -0.011229157 0.019877568 -0.011197329 0.028222337 -0.01462543 0.028359845 -0.014890015
		 0.028437987 -0.014843941 0.02827318 -0.014595509 0.02848722 -0.015160501 0.028612927
		 -0.015086412 0.028606012 -0.015436053 0.028796449 -0.015323818 0.028682724 -0.015736461
		 0.029022053 -0.015536427 0.02539517 -0.0059351921 0.025562957 -0.0060593486 0.025726691
		 -0.0058422089 0.02554287 -0.0057010651 0.025730744 -0.0061835051 0.025910452 -0.0059832931
		 0.025936261 -0.0055753589 0.025739446 -0.0054171681 0.02588208 -0.0062955022 0.026076213
		 -0.0061106086 0.026133075 -0.0057335496 0.026151732 -0.0053132176 0.025974348 -0.0051641464
		 0.02537705 -0.0055737495 0.025561824 -0.0052744746 0.026002124 -0.0063843727 0.02620776
		 -0.0062116385 0.026310697 -0.0058762431 0.026329115 -0.0054623485 0.026328579 -0.0051066279
		 0.026186243 -0.0049826503 0.025814369 -0.0050296187 0.026451603 -0.0059894919 0.026489094
		 -0.0055968761 0.026470855 -0.0052306652 0.026509061 -0.0049031973 0.026337102 -0.0047479272
		 0.026681021 -0.005058527 0.026739195 -0.0046539307 0.026555613 -0.0044806004 0.026922837
		 -0.004827261 0.026974872 -0.00440979 0.026809946 -0.0042470098 0.026181951 -0.0046077967
		 0.026389971 -0.0043241978 0.026836112 -0.0051985979 0.027088478 -0.0049836636 0.027139798
		 -0.0045725703 0.027167574 -0.0042179227 0.027021661 -0.0040687323 0.026661113 -0.0041002035
		 0.027288571 -0.004719317 0.027313545 -0.0043671131 0.026889995 -0.0039340854 0.027445152
		 -0.0045017004 0.029212132 -0.0079957247 0.029363528 -0.0078837276 0.02918376 -0.0076835155
		 0.029018 -0.0078108311 0.029531255 -0.0077595711 0.029367581 -0.0075424314 0.028961137
		 -0.0074337721 0.028783575 -0.0075764656 0.029092029 -0.0080845952 0.028886452 -0.0079118609
		 0.029699042 -0.0076354146 0.029551342 -0.0074012876 0.029157951 -0.0072755814 0.028765157
		 -0.007162571 0.028605118 -0.007297039 0.02864261 -0.0076897144 0.029354766 -0.0071173906
		 0.028942481 -0.0070134401 0.029717103 -0.007273972 0.029532328 -0.0069746971 0.029119864
		 -0.0068643689 0.028765634 -0.0068068504 0.028623357 -0.0069308877 0.029279843 -0.0067298412
		 0.02890797 -0.0066828728 0.02858521 -0.0066034198 0.028413251 -0.0067586899 0.02875717
		 -0.0064480901 0.028355017 -0.0063540936 0.028171375 -0.0065274835 0.0285386 -0.0061807632
		 0.028119341 -0.0061100125 0.027954414 -0.0062727332 0.0282581 -0.0068988204 0.028005734
		 -0.0066838264 0.028912261 -0.0063080192 0.028704241 -0.0060244203 0.028284267 -0.0059472322
		 0.027926639 -0.0059181452 0.027780727 -0.0060673356 0.027805641 -0.0064195395 0.028433099
		 -0.005800426 0.028072551 -0.0057688951 0.02764906 -0.0062019229 0.028204218 -0.0056343079
		 0.033863202 0.0069033206 0.032993928 0.0069033206 0.033952788 0.0056078434 0.034628406
		 0.0056078434 0.034454778 0.0081276596 0.033585533 0.0081276596 0.032993928 0.0043123662
		 0.033863202 0.0043123662 0.035707399 0.0065966845 0.036358044 0.0056078434 0.035398796
		 0.0080071986 0.033585533 0.0030880272 0.034454778 0.0030880272 0.035707399 0.0046190023
		 0.035398796 0.0032084882 0.026925102 0.017304307 0.026918069 0.016172927 0.028376475
		 0.016319927 0.028376475 0.017451033 0.026154116 0.017271541 0.026052788 0.01613469
		 0.026921585 0.015023753 0.028376475 0.015161432 0.029834822 0.016172927;
	setAttr ".uvtk[4500:4749]" 0.029827848 0.017304307 0.026086524 0.014946193 0.026935175
		 0.014297597 0.028376475 0.014394574 0.029831365 0.015023753 0.030700162 0.01613469
		 0.030598775 0.017271541 0.02613236 0.014248058 0.027190343 0.013188362 0.028376475
		 0.013042346 0.029817775 0.014297597 0.030666366 0.014946193 0.026442304 0.013385922
		 0.027432993 0.012025908 0.028376475 0.011701271 0.029562548 0.013188362 0.03062053
		 0.014248058 0.026444986 0.012372047 0.027432993 0.011408508 0.028376475 0.011088312
		 0.029319957 0.012025908 0.030310586 0.013385922 0.025618151 0.012939259 0.025939837
		 0.013764471 0.026472166 0.011763558 0.027432993 0.010842398 0.028376475 0.010552198
		 0.029319957 0.011408508 0.030307934 0.012372047 0.026495233 0.011164233 0.027457789
		 0.01034762 0.028376475 0.010035574 0.029319957 0.010842398 0.030280724 0.011763558
		 0.031134769 0.012939259 0.030813083 0.013764471 0.026286855 0.010749429 0.029295161
		 0.01034762 0.030257717 0.011164233 0.025603667 0.011763737 0.025299981 0.011413768
		 0.030466065 0.010749429 0.031149223 0.011763737 0.031452909 0.011413768 0.017768219
		 0.012293145 0.017433956 0.012375355 0.017458513 0.012021944 0.017653659 0.012117773
		 0.017838731 0.01268813 0.017482534 0.012678832 0.017354801 0.012357146 0.017384067
		 0.011936262 0.017632201 0.012865424 0.01777406 0.012919769 0.017412618 0.012718529
		 0.017312422 0.012341857 0.017345563 0.011864468 0.017590895 0.012940735 0.017759815
		 0.013005495 0.017377988 0.012751788 0.017580286 0.013003826 0.017771795 0.013077274
		 0.017831221 0.013170518 0.017447963 0.013082907 0.017349258 0.013980202 0.017380789
		 0.013980202 0.01793547 0.012797147 0.017859176 0.01276432 0.017831221 0.01478973
		 0.017447904 0.014877342 0.017821863 0.012160569 0.017763928 0.012230828 0.017771795
		 0.014883049 0.017580166 0.014956497 0.018276587 0.01178886 0.017913595 0.013531141
		 0.017637268 0.011877894 0.017609194 0.0119939 0.017935529 0.015163191 0.017859176
		 0.015196063 0.017759815 0.014954843 0.017590836 0.015019588 0.018097177 0.011050791
		 0.01909323 0.011816218 0.018791452 0.013468564 0.017253712 0.011723474 0.017821983
		 0.015799943 0.017764047 0.015729696 0.01777406 0.015040547 0.017632201 0.015094951
		 0.017377928 0.015208647 0.017412558 0.015241884 0.016596749 0.010509446 0.019794896
		 0.011920467 0.019631937 0.01339934 0.017913595 0.014429264 0.018276587 0.016171586
		 0.017637327 0.01608273 0.017609313 0.015966725 0.017838731 0.015272282 0.017482474
		 0.015281588 0.017312303 0.015618652 0.017354682 0.015603356 0.018791452 0.014491901
		 0.01909323 0.016144253 0.018097177 0.016909659 0.017253652 0.016237166 0.017345563
		 0.016096141 0.017768279 0.015667342 0.017433897 0.015585113 0.017383948 0.016024336
		 0.019631937 0.014561124 0.019794896 0.016039956 0.016596749 0.017451033 0.017458454
		 0.015938628 0.017653778 0.015842833 0.041061461 -0.001635015 0.04076843 -0.0017185211
		 0.040729463 -0.0035321712 0.041061461 -0.0035467744 0.04061237 -0.0036305785 0.041061461
		 -0.0041949153 0.041393429 -0.0035321712 0.041354433 -0.0017185211 0.039878473 -0.003608644
		 0.04025194 -0.0037129521 0.041510493 -0.0036305785 0.042244494 -0.0036087632 0.04187116
		 -0.0037129521 0.027624264 0.0096176416 0.028031662 0.0091328174 0.029020503 0.0099029243
		 0.027925089 0.0096629411 0.027135029 0.0095393956 0.026621178 0.008984983 0.026158109
		 0.0085791349 0.027568653 0.0084183812 0.024827912 0.0075355172 0.026126161 0.0074687004
		 0.025819317 0.0063188374 0.026788011 0.0063803196 0.023841754 0.0070838034 0.025083497
		 0.0057696998 0.026480451 0.0058484972 0.027331904 0.0058559179 0.025833681 0.0054684281
		 0.027441099 0.0047146976 0.018459037 0.010039926 0.019447878 0.0092284977 0.019855395
		 0.0097134113 0.01955469 0.0097586811 0.020858422 0.0090806633 0.020344451 0.0096351504
		 0.019910946 0.0085140467 0.021321431 0.0086748004 0.021353438 0.0075643659 0.022651687
		 0.0076311827 0.020691589 0.0064759851 0.021660224 0.0064145029 0.020147637 0.0059515834
		 0.020999089 0.0059441626 0.023637846 0.0071794689 0.022396043 0.0058653653 0.0200385
		 0.0048103631 0.021645859 0.0055640936 0.022869483 -0.008179903 0.02345039 -0.0084548593
		 0.023810461 -0.0068359375 0.022869483 -0.0065189004 0.021928564 -0.0068359375 0.022288635
		 -0.0084548593 0.04310964 0.0038573444 0.044520117 0.0035487711 0.044057138 0.0042632222
		 0.042646617 0.0042631924 0.042614594 0.0052128732 0.04131636 0.0053068101 0.042038172
		 0.0036820769 0.041133702 0.0044828057 0.043276474 0.0063012838 0.042307824 0.00652349
		 0.040330172 0.0055977702 0.043820329 0.0069864094 0.042968914 0.0069938302 0.04157199
		 0.0069118738 0.043929569 0.0081276596 0.042322129 0.0073738992 0.043590717 -0.0011627674
		 0.045001194 -0.00085413456 0.045464255 -0.00044828653 0.044053718 -0.00044828653
		 0.04607264 -0.0010294318 0.04697711 -0.00022870302 0.046794459 0.00059530139 0.045496263
		 0.00050136447 0.047780648 0.00088626146 0.04580304 0.0018119812 0.044834353 0.0015897453
		 0.046538863 0.0022003651 0.045141913 0.0022823215 0.044290513 0.0022749007 0.045788698
		 0.0026623905 0.044181272 0.003416121 0.0246941 -0.0066439509 0.024780884 -0.0073148012
		 0.025069848 -0.0074712038 0.024889782 -0.0065189004 0.024906412 -0.0084572434 0.025105789
		 -0.0082964301 0.024371341 -0.0073148012 0.024458125 -0.0066439509 0.024262443 -0.0065189004
		 0.024082318 -0.0074712038 0.024245813 -0.0084572434 0.024046436 -0.0082964301 0.01981093
		 -0.0040669441 0.019301012 -0.003629446 0.019359484 -0.0042315722 0.019679382 -0.004357338
		 0.019328788 -0.0047063828 0.019605413 -0.0048204064 0.019249097 -0.0052831769 0.019491211
		 -0.005325973 0.01919277 -0.0059931278 0.019254997 -0.0060221553 0.019186929 -0.0060466528
		 0.019293681 -0.0060846806 0.020524755 -0.0036603808 0.020014778 -0.0040978789 0.020146385
		 -0.0043882728 0.020466223 -0.004262507 0.020220354 -0.0048513412 0.02049692 -0.0047373176
		 0.020334497 -0.0053569674 0.020576611 -0.0053141117 0.02057083 -0.0060530305 0.020632938
		 -0.0060240626 0.020532086 -0.006115675 0.020638838 -0.0060775876 0.014915422 -0.0073907971
		 0.015354589 -0.0072343349 0.015235618 -0.0068124533 0.014866367 -0.0068498254 0.014942005
		 -0.0078367591 0.015455559 -0.0076537728 0.014883593 -0.0062276125 0.014776841 -0.0062656403
		 0.014681473 -0.0093955398 0.015195027 -0.009578526 0.015221551 -0.0091325641;
	setAttr ".uvtk[4750:4999]" 0.014782384 -0.0089761019 0.015270606 -0.0085915923
		 0.014901355 -0.0085542798 0.015360132 -0.0080074072 0.01525338 -0.0079693794 0.040548861
		 -0.015668392 0.039606988 -0.015169978 0.039720237 -0.015654504 0.040258005 -0.015939057
		 0.039822623 -0.016048849 0.040052176 -0.016115367 0.03986004 -0.016230226 0.039950371
		 -0.016256452 0.041694611 -0.015169978 0.040752754 -0.015668392 0.041043594 -0.015939057
		 0.041581377 -0.015654504 0.041249469 -0.016115367 0.041479006 -0.016048849 0.041351244
		 -0.016256452 0.041441575 -0.016230226 0.016426578 -0.0079820752 0.016750887 -0.0071048141
		 0.016166344 -0.0071048141 0.016152695 -0.0078638792 0.016426578 -0.0062276125 0.016152695
		 -0.0063458085 0.015955523 -0.0072879195 0.015926734 -0.0076791644 0.01592733 -0.0065304637
		 0.015956357 -0.0069255829 0.015807346 -0.0073940158 0.0157931 -0.0075880885 0.015793338
		 -0.0066215992 0.015807763 -0.0068175197 0.01569058 -0.0074667335 0.015686229 -0.0075256824
		 0.015686348 -0.0066840053 0.015690699 -0.0067435503 0.026067331 0.0035417676 0.025937453
		 0.0022470355 0.026428774 0.0022470355 0.027502194 0.0045820475 0.025855675 0.0015918016
		 0.025542155 0.0022470355 0.025412276 0.0035417676 0.023977473 0.0045820475 0.025050834
		 0.0022470355 0.025623932 0.0015918016 0.02889277 -0.013542831 0.028493598 -0.013612032
		 0.028618589 -0.013892531 0.028869405 -0.01384902 0.028927043 -0.013234794 0.02835758
		 -0.013333499 0.028720871 -0.014176965 0.028868869 -0.014151335 0.028814808 -0.014462829
		 0.028876618 -0.0144521 0.018785492 -0.010947466 0.018843666 -0.010957539 0.018910125
		 -0.010666907 0.018820718 -0.01065141 0.018988207 -0.010378242 0.018844441 -0.010353386
		 0.019076064 -0.010091364 0.018858209 -0.010053635 0.019212022 -0.0098127723 0.018823937
		 -0.0097455382 0.018657401 -0.00054913759 0.018842652 -0.00064522028 0.018969968 -0.00040489435
		 0.018766239 -0.00029462576 0.019027963 -0.00074130297 0.019173756 -0.00051522255
		 0.019134834 -0.00010830164 0.01891543 1.6778708e-05 0.019195035 -0.00082796812 0.019357577
		 -0.0006147027 0.01935412 -0.00023341179 0.019306079 0.00018456578 0.019107476 0.00030377507
		 0.018582419 -0.000195086 0.018717542 0.0001296103 0.019327715 -0.00089675188 0.019503489
		 -0.00069367886 0.019552067 -0.00034624338 0.0195048 6.5356493e-05 0.019448116 0.00041651726
		 0.019287959 0.00051647425 0.018928185 0.00041130185 0.019684032 -4.2140484e-05 0.019608214
		 0.00031656027 0.019594148 0.00064590573 0.019399837 0.00077208877 0.019788519 0.0005197525
		 0.019782022 0.00092846155 0.019573346 0.0010705888 0.019990757 0.00078630447 0.019976094
		 0.0012067556 0.019787565 0.0013414025 0.01922448 0.00088590384 0.019385055 0.0011988282
		 0.019963816 0.00040593743 0.020178989 0.00065806508 0.020164743 0.0010721087 0.020136073
		 0.001426667 0.019968465 0.0015509427 0.019617453 0.001462847 0.020334795 0.00095066428
		 0.020303801 0.0013024211 0.019817188 0.001663059 0.019235626 0.0013006032 0.019482449
		 0.0015592575 0.019697085 0.0017520189 0.021678463 -0.00078564882 0.021845594 -0.00069892406
		 0.021699741 -0.00047284365 0.02151598 -0.0005723834 0.022030905 -0.00060284138 0.021903589
		 -0.00036257505 0.021519378 -0.00019103289 0.02132149 -0.00030392408 0.021545842 -0.00085437298
		 0.021370068 -0.00065129995 0.022216156 -0.00050675869 0.022107318 -0.00025224686
		 0.021738783 -6.5982342e-05 0.021368757 0.00010770559 0.021189466 1.7881393e-07 0.021958128
		 5.9127808e-05 0.021567419 0.00022691488 0.022291139 -0.0001527667 0.022155955 0.0001719594
		 0.021766141 0.00034609437 0.021425441 0.00045886636 0.021265343 0.00035887957 0.021945372
		 0.00045365095 0.021585599 0.00055882335 0.02127941 0.00068825483 0.021085039 0.0005621016
		 0.021473721 0.00081443787 0.021091476 0.00097078085 0.0208828 0.00082862377 0.021300212
		 0.0011129379 0.020897403 0.0012491047 0.020708814 0.0011144578 0.020909742 0.00044825673
		 0.020694509 0.00070041418 0.021649018 0.00092825294 0.021488503 0.0012411773 0.021085933
		 0.0013837218 0.020737424 0.0014690161 0.020569757 0.0013447404 0.020538703 0.00099298358
		 0.021256045 0.0015051961 0.020905092 0.0015932918 0.021637931 0.0013429523 0.021391049
		 0.0016015768 0.021056369 0.0017053783 0.021176413 0.0017943382 0.021856025 -0.0037991405
		 0.022041932 -0.003769815 0.021978691 -0.0035003424 0.021771625 -0.0035292506 0.022248104
		 -0.0037373304 0.022208169 -0.0034683347 0.021914199 -0.0031611323 0.02168794 -0.0031875968
		 0.022454277 -0.0037048459 0.022437647 -0.003436327 0.022164956 -0.0031318069 0.021898583
		 -0.0028162003 0.021690503 -0.0028359294 0.022640243 -0.0036755204 0.022644654 -0.0034074187
		 0.022415772 -0.0031024218 0.022129253 -0.002794385 0.021917835 -0.0025378466 0.021748021
		 -0.0025509 0.022642031 -0.0030759573 0.022359923 -0.0027725101 0.022106007 -0.0025234222
		 0.021856323 -0.0022657514 0.021647587 -0.0022780299 0.022568002 -0.0027528405 0.022294238
		 -0.0025089383 0.022087589 -0.0022521019 0.02181901 -0.0019224882 0.021591321 -0.0019308329
		 0.022463992 -0.0024958849 0.022318855 -0.0022384524 0.022071376 -0.0019131899 0.021830872
		 -0.0015773773 0.021621898 -0.0015804768 0.022527531 -0.0022261143 0.022323683 -0.001903832
		 0.022062615 -0.0015739799 0.02185227 -0.0013014078 0.021663979 -0.0013008118 0.022551313
		 -0.0018954873 0.022294238 -0.0015705824 0.022061005 -0.0013020039 0.022503272 -0.0015674829
		 0.022269681 -0.0013026595 0.022457972 -0.001303196 0.020300403 -0.0034040809 0.02048637
		 -0.0034333467 0.020503059 -0.0031648278 0.020296052 -0.0031359792 0.020692542 -0.0034658909
		 0.020732477 -0.0031968951 0.020524874 -0.0028309822 0.020298675 -0.0028045177 0.020898715
		 -0.0034983754 0.020962015 -0.0032289028 0.020775691 -0.0028603673 0.020580724 -0.0025010705
		 0.020372644 -0.0024813414 0.021084681 -0.0035277009 0.021169022 -0.0032578111 0.021026507
		 -0.0028896928 0.020811394 -0.0025228858 0.020646408 -0.0022374988 0.020476654 -0.0022244453
		 0.021252766 -0.0029161572 0.021042123 -0.0025447607 0.02083464 -0.0022519827 0.020621791
		 -0.0019669533 0.020413116 -0.0019546747 0.021250144 -0.0025644898 0.021022871 -0.002266407
		 0.020853058 -0.0019806027 0.020616964 -0.0016323924 0.020389333 -0.0016239882 0.021192685
		 -0.0022794604 0.021084383 -0.0019943118 0.02086933 -0.0016416907 0.020646408 -0.0012990832
		 0.020437434 -0.0012960434 0.021293059 -0.0020065904 0.021121696 -0.0016509891 0.020878091
		 -0.0013025403 0.020670965 -0.00103122 0.020482734 -0.0010317564 0.021349326 -0.0016593933
		 0.021109775 -0.0013059378 0.020879641 -0.0010305643 0.021318808 -0.0013090372 0.021088377
		 -0.0010299683;
	setAttr ".uvtk[5000:5249]" 0.021276668 -0.0010293722 0.024615541 -0.0063862801
		 0.024747804 -0.0062522292 0.024536863 -0.006072998 0.024387375 -0.0062191486 0.024894372
		 -0.0061036348 0.024702504 -0.005910933 0.024283543 -0.005838275 0.024117246 -0.0059939623
		 0.025040939 -0.0059551001 0.024868146 -0.0057489276 0.0244679 -0.0056657791 0.024066225
		 -0.0055699944 0.023910478 -0.0057094097 0.025173202 -0.0058211088 0.025017574 -0.005602777
		 0.024652317 -0.0054932237 0.02423884 -0.0054154396 0.024818614 -0.0053375959 0.024411514
		 -0.0052609444 0.024059251 -0.0052112341 0.023916438 -0.0053346157 0.024567261 -0.0051215291
		 0.024202183 -0.0050878525 0.023883358 -0.0050038099 0.023705378 -0.0051521659 0.024061397
		 -0.0048555136 0.023669079 -0.0047407746 0.023471549 -0.0048980713 0.023866609 -0.004583478
		 0.023460642 -0.0044730306 0.023276225 -0.0046133399 0.023544744 -0.0052859783 0.023293331
		 -0.0050399899 0.024221972 -0.0047217607 0.024044767 -0.0044415593 0.023645058 -0.0043327212
		 0.023297921 -0.004255116 0.023129597 -0.0043785572 0.023109868 -0.0047398806 0.023811415
		 -0.0042061806 0.023466185 -0.0041317344 0.024186209 -0.0043289065 0.02394338 -0.0041056871
		 0.023618057 -0.0040203929 0.023738518 -0.0039320588 0.020842686 -0.0058211088 0.020974949
		 -0.0059551001 0.021147743 -0.0057489276 0.020998314 -0.005602777 0.021121517 -0.0061036348
		 0.021313444 -0.005910933 0.021363571 -0.0054932237 0.021197274 -0.0053375959 0.021268144
		 -0.0062522292 0.021479085 -0.006072998 0.021547988 -0.0056657791 0.021604374 -0.0052609444
		 0.021448627 -0.0051215291 0.021400407 -0.0063862801 0.021628514 -0.006219089 0.021732345
		 -0.0058383346 0.021777049 -0.0054154396 0.021898642 -0.0059939623 0.021949664 -0.0055699944
		 0.021956638 -0.0052112341 0.021813765 -0.0050878525 0.022105411 -0.0057094097 0.02209945
		 -0.0053346157 0.022132531 -0.0050038099 0.021954551 -0.0048555136 0.02231057 -0.0051521659
		 0.02234681 -0.0047407746 0.02214928 -0.004583478 0.022544339 -0.0048980713 0.022555247
		 -0.0044730306 0.02237083 -0.0043327212 0.021793917 -0.0047217607 0.021971121 -0.0044415593
		 0.022471145 -0.0052859783 0.022722557 -0.0050399899 0.022739664 -0.0046133399 0.022718027
		 -0.004255116 0.022549704 -0.0041317344 0.022204474 -0.0042061806 0.02290602 -0.0047398806
		 0.022886291 -0.0043785572 0.022397831 -0.0040203929 0.02182968 -0.0043289065 0.022072449
		 -0.0041057467 0.02227737 -0.0039320588 0.02345635 -0.0011000633 0.023623899 -0.0010142326
		 0.023479775 -0.00077790022 0.02329208 -0.00086992979 0.023809686 -0.00091904402 0.023687854
		 -0.00067591667 0.023312703 -0.00047570467 0.023105994 -0.00057142973 0.023323372
		 -0.0011681914 0.023143128 -0.00094288588 0.023995414 -0.000823915 0.023895875 -0.00057393312
		 0.023541883 -0.0003696084 0.023190334 -0.00015282631 0.022998765 -0.00023645163 0.023771003
		 -0.00026351213 0.023402706 -6.0141087e-05 0.02408357 -0.00048196316 0.023977712 -0.00016784668
		 0.023615077 3.2514334e-05 0.023296192 0.00019004941 0.023121849 0.00011762977 0.023806706
		 0.00011610985 0.023470476 0.00026246905 0.02319409 0.00044211745 0.022978559 0.00035700202
		 0.023627773 0.00032779574 0.02340962 0.00052720308 0.023072973 0.00075906515 0.022836104
		 0.00067153573 0.022964552 5.2303076e-05 0.022784129 0.00028026104 0.023958698 0.00018247962
		 0.023752585 0.00037965178 0.023309842 0.00084656477 0.02295889 0.0010786057 0.022739843
		 0.0010031462 0.022622421 0.00059258938 0.0228398 4.4703484e-07 0.022629812 0.00021934509
		 0.023603991 0.00060394406 0.023523524 0.00092551112 0.023177937 0.0011540949 0.022872582
		 0.0013365149 0.022674099 0.0012720525 0.022542194 0.00093504786 0.023375586 0.0012221932
		 0.023071125 0.0014009774 0.022495046 0.0012138784 0.023250178 0.0014591515 0.024375632
		 -0.000823915 0.02456136 -0.00091904402 0.024683192 -0.00067591667 0.024475172 -0.00057393312
		 0.024747148 -0.0010142326 0.024891272 -0.00077790022 0.024829164 -0.0003696084 0.024599984
		 -0.00026351213 0.024914697 -0.0011000633 0.025078967 -0.00086992979 0.025058284 -0.00047570467
		 0.024968341 -6.0141087e-05 0.02475591 3.2514334e-05 0.024287477 -0.00048196316 0.024393275
		 -0.00016784668 0.025047675 -0.0011681914 0.025227919 -0.00094288588 0.025265053 -0.00057142973
		 0.025180653 -0.00015282631 0.025074854 0.00019004941 0.024900511 0.00026246905 0.0245644
		 0.00011610985 0.025372222 -0.00023645163 0.025249198 0.00011762977 0.025176957 0.00044211745
		 0.024961486 0.00052720308 0.024743274 0.00032779574 0.025392488 0.00035700202 0.025298074
		 0.00075906515 0.025061205 0.00084656477 0.024412349 0.00018247962 0.024618462 0.00037965178
		 0.025406435 5.2303076e-05 0.025586918 0.00028026104 0.025534943 0.00067153573 0.025412157
		 0.0010786355 0.025193051 0.0011540949 0.024767056 0.00060394406 0.024847522 0.00092551112
		 0.025531247 4.4703484e-07 0.025741175 0.00021934509 0.025748625 0.00059258938 0.025631204
		 0.0010031462 0.025498465 0.0013365149 0.025299922 0.0014009774 0.024995461 0.0012221932
		 0.025828853 0.00093504786 0.025696948 0.0012720525 0.025120869 0.0014591515 0.025876001
		 0.0012138784 0.03566502 -0.01620239 0.035779282 -0.015914202 0.035459206 -0.015665829
		 0.035208449 -0.015848041 0.035902336 -0.015632808 0.03570123 -0.015476823 0.036043629
		 -0.01536566 0.035924956 -0.015273511 0.036191598 -0.015103638 0.036142036 -0.015065193
		 0.044533573 -0.016407549 0.044703588 -0.016652465 0.04477524 -0.016596854 0.044580206
		 -0.016371369 0.044864282 -0.016904593 0.044979572 -0.016815126 0.04501716 -0.0171628
		 0.045191787 -0.017027318 0.0451314 -0.017450988 0.045442566 -0.01720953 0.0200295
		 -0.0014696717 0.019859627 -0.0013484955 0.019699767 -0.0015684962 0.019885972 -0.0017063618
		 0.019689634 -0.0012273192 0.019513503 -0.0014306307 0.019494846 -0.0018389821 0.019694462
		 -0.0019936562 0.019536391 -0.0011180043 0.019345537 -0.0013062954 0.01929529 -0.0016842484
		 0.019284025 -0.0021048188 0.019464031 -0.0022507906 0.020053998 -0.0018306971 0.019874528
		 -0.0021331906 0.019414738 -0.00103122 0.019212201 -0.0012075901 0.019115224 -0.001544714
		 0.019104078 -0.0019589067 0.019110873 -0.002314508 0.019255415 -0.0024360418 0.019626334
		 -0.0023824573 0.018972293 -0.0014339685 0.018941775 -0.00182724 0.018966392 -0.0021930337
		 0.018934026 -0.0025210977 0.019108728 -0.0026733279 0.018759385 -0.0023688674 0.018708304
		 -0.0027744174 0.018894926 -0.0029444695 0.018521622 -0.0026043057 0.018476978 -0.0030226707
		 0.018644705 -0.0031824708 0.019266263 -0.002810657 0.019063309 -0.0030979514 0.01860179
		 -0.0022315383 0.018353239 -0.0024508834 0.01830925 -0.0028628707 0.018287674 -0.0032179356;
	setAttr ".uvtk[5250:5499]" 0.018436208 -0.0033645034 0.018796101 -0.0033266544
		 0.018157855 -0.0027186871 0.018139139 -0.0030713081 0.0185702 -0.0034967661 0.018005148
		 -0.0029390454 0.017269567 -0.0034100413 0.01742287 -0.0033007264 0.017246678 -0.0030973554
		 0.017078653 -0.0032217503 0.017592743 -0.0031795502 0.017432883 -0.0029595494 0.017028466
		 -0.0028437376 0.016848341 -0.0029832721 0.017147854 -0.0034967661 0.016945317 -0.0033203959
		 0.017762676 -0.0030583739 0.017619148 -0.0028216839 0.017228022 -0.0026890635 0.016837254
		 -0.002569139 0.016674891 -0.0027008057 0.016705528 -0.0030940175 0.017427638 -0.0025343299
		 0.01701726 -0.0024231672 0.017787114 -0.002697289 0.017607704 -0.0023947954 0.017197147
		 -0.0022771955 0.016844049 -0.0022134781 0.016699567 -0.0023349524 0.01735957 -0.0021455288
		 0.016988531 -0.0020920038 0.016667202 -0.0020068884 0.016492561 -0.0021591187 0.016841903
		 -0.0018546581 0.016441479 -0.0017535686 0.016254798 -0.0019236803 0.016628101 -0.0015835166
		 0.016210154 -0.0015053153 0.016042367 -0.001665175 0.016334966 -0.0022965074 0.016086414
		 -0.0020771027 0.016999438 -0.001717329 0.016796485 -0.0014300942 0.016377881 -0.0013455153
		 0.01602079 -0.0013101101 0.015872255 -0.0014567375 0.01589103 -0.0018093586 0.016529277
		 -0.0012013316 0.016169384 -0.0011634827 0.015738264 -0.0015889406 0.016303375 -0.00103122
		 0.031224355 -0.014155865 0.03120099 -0.013849676 0.030950204 -0.013806164 0.030825183
		 -0.014086664 0.031200454 -0.013547421 0.031052455 -0.013521731 0.031258628 -0.014464021
		 0.030689195 -0.014365315 0.031208202 -0.013246655 0.031146362 -0.013235867 0.018137828
		 -0.0098393559 0.018173113 -0.010135353 0.018262461 -0.010119855 0.018196002 -0.0098292828
		 0.018196717 -0.010433435 0.018340543 -0.010408521 0.018210545 -0.010733247 0.018428341
		 -0.010695457 0.018176273 -0.011041343 0.018564358 -0.01097405 0.043907285 -0.0068485141
		 0.04408709 -0.0067925453 0.043985352 -0.0065351129 0.043784723 -0.0065937042 0.044286333
		 -0.0067304969 0.044207759 -0.0064701438 0.043872379 -0.006208837 0.043652341 -0.0062678456
		 0.044485591 -0.0066684484 0.044430196 -0.0064051747 0.044116244 -0.0061433911 0.043806918
		 -0.0058698058 0.04360389 -0.0059194565 0.044665359 -0.0066124797 0.044630848 -0.0063465834
		 0.044360161 -0.0060780048 0.044032015 -0.0058147311 0.043785602 -0.0055915713 0.043619469
		 -0.0056291223 0.044580184 -0.0060189962 0.04425706 -0.0057596564 0.043969706 -0.0055500269
		 0.043685257 -0.0053312778 0.04348059 -0.0053737164 0.044460103 -0.0057100058 0.044153862
		 -0.0055084229 0.043912113 -0.0052842498 0.04359857 -0.004997015 0.043374553 -0.005038321
		 0.044319943 -0.0054708719 0.044139028 -0.0052371621 0.043846913 -0.0049512386 0.043560341
		 -0.0046538711 0.043353975 -0.0046872497 0.044343695 -0.0051947236 0.044095263 -0.0049054623
		 0.043789081 -0.0046169162 0.043541476 -0.0043777227 0.043355107 -0.0044044256 0.044319287
		 -0.0048641562 0.044017829 -0.0045799613 0.043748051 -0.0043480396 0.044224158 -0.0045465827
		 0.043954656 -0.0043184161 0.044141039 -0.0042916536 0.046219762 -0.0042238235 0.046040021
		 -0.0041678548 0.045984592 -0.0044311285 0.046185248 -0.0044897199 0.04584074 -0.0041058064
		 0.045762189 -0.0043661594 0.045914568 -0.0047582984 0.04613458 -0.004817307 0.045641482
		 -0.0040437579 0.045539752 -0.0043011904 0.045670673 -0.0046929121 0.045811463 -0.0050765872
		 0.046014506 -0.0051262379 0.045461699 -0.0039877295 0.045339145 -0.004242599 0.045426786
		 -0.0046274662 0.045586407 -0.0050215125 0.045708258 -0.0053278804 0.04587435 -0.0053654313
		 0.045206748 -0.0045684576 0.045361325 -0.0049664974 0.045524113 -0.0052862763 0.045693427
		 -0.0055990815 0.045898102 -0.00564152 0.045158289 -0.0049168468 0.045339979 -0.0052446723
		 0.04546655 -0.0055520535 0.045649663 -0.005930841 0.04587369 -0.005972147 0.045173876
		 -0.005207181 0.045239694 -0.0055050254 0.045401342 -0.005885005 0.045572259 -0.0062563419
		 0.045778595 -0.0062897205 0.04503499 -0.0054625869 0.045153007 -0.0058392286 0.045343488
		 -0.0062193871 0.045509085 -0.0065178275 0.045695439 -0.00654459 0.044928983 -0.0057979226
		 0.045114748 -0.0061824322 0.045302488 -0.006488204 0.044908412 -0.0061490536 0.045095876
		 -0.0064585805 0.044909537 -0.006431818 0.027002111 -0.01334548 0.027025536 -0.01303637
		 0.026646093 -0.012894273 0.026460841 -0.013142884 0.027059391 -0.012731135 0.026821032
		 -0.012641907 0.027114943 -0.012434006 0.026974216 -0.012381315 0.027178362 -0.012139857
		 0.027119592 -0.012117863 0.016323999 -0.011188805 0.016413525 -0.011473179 0.016498461
		 -0.01144141 0.016379252 -0.011168182 0.016492024 -0.011761725 0.016628698 -0.011710584
		 0.016561225 -0.012053728 0.016768292 -0.011976182 0.016584709 -0.012362838 0.016953602
		 -0.012224734 0.03044714 -0.013543963 0.030047968 -0.013613224 0.030173019 -0.013893664
		 0.030423835 -0.013850212 0.030481413 -0.013235927 0.02991201 -0.013334632 0.030275241
		 -0.014178097 0.030423269 -0.014152467 0.030369207 -0.014464021 0.030430987 -0.014453292
		 0.017490163 -0.01103121 0.017548338 -0.011041343 0.017614797 -0.010750651 0.017525449
		 -0.010735214 0.017692819 -0.010462046 0.017549053 -0.010437131 0.017780676 -0.010175109
		 0.017562881 -0.010137379 0.017916694 -0.0098965168 0.017528549 -0.0098292828 0.032385573
		 -0.0039006472 0.032554254 -0.0038170218 0.032413229 -0.0035788417 0.032224342 -0.0036683083
		 0.032741264 -0.0037243366 0.03262262 -0.0034796 0.032250211 -0.0032744408 0.03204222
		 -0.003367424 0.032928243 -0.0036316514 0.032832012 -0.0033804178 0.032480732 -0.0031713843
		 0.032132104 -0.0029500127 0.031939432 -0.003031075 0.032711253 -0.0030683279 0.032345667
		 -0.0028601289 0.033020899 -0.0032908916 0.032919213 -0.0029753447 0.032559261 -0.0027702451
		 0.032242432 -0.0026085377 0.032067165 -0.0026786327 0.032751903 -0.0026891828 0.0324177
		 -0.0025384426 0.032143667 -0.0023551583 0.031927034 -0.0024374127 0.032575801 -0.0024751425
		 0.032360271 -0.0022729039 0.032026753 -0.0020366311 0.031788751 -0.0021210313 0.031909063
		 -0.0027418733 0.03173162 -0.0025115609 0.032904819 -0.0026248693 0.032701269 -0.0024249554
		 0.032264754 -0.0019522309 0.031916901 -0.0017156005 0.031696871 -0.0017881393 0.031574056
		 -0.0021971464 0.031783596 -0.00279212 0.031576529 -0.0025704503 0.032555714 -0.0021987557
		 0.03247945 -0.0018761158 0.032136962 -0.001643002 0.031834021 -0.0014565587 0.031634703
		 -0.0015184283 0.031498358 -0.0018536448 0.032335475 -0.0015775561 0.032033339 -0.0013947487
		 0.031454876 -0.0015742183 0.032213166 -0.0013389587 0.031158313 -0.00057572126;
	setAttr ".uvtk[5500:5749]" 0.030971363 -0.00048303604 0.03085275 -0.00072771311
		 0.031062081 -0.00082695484 0.030784383 -0.00039029121 0.030643359 -0.00062847137
		 0.030710831 -0.0010359287 0.030941382 -0.0011389852 0.030615702 -0.0003066659 0.030454412
		 -0.0005390048 0.030480281 -0.0009328723 0.030575797 -0.0013471842 0.03078936 -0.001437068
		 0.031250969 -0.00091642141 0.031149313 -0.0012319684 0.03027232 -0.00083988905 0.030362234
		 -0.00125736 0.030472502 -0.0015987754 0.030647799 -0.0016689301 0.030982032 -0.0015181303
		 0.030169562 -0.0011762977 0.030297294 -0.0015286803 0.030373767 -0.0018521547 0.0305904
		 -0.0019344091 0.03080593 -0.0017321706 0.030157164 -0.0017699599 0.030256882 -0.002170682
		 0.030494854 -0.0022550821 0.031134889 -0.0015825033 0.030931398 -0.0017823577 0.030139163
		 -0.0014654398 0.02996172 -0.0016957521 0.030018881 -0.0020863414 0.030147031 -0.0024917722
		 0.030367061 -0.002564311 0.030785814 -0.0020086169 0.03070958 -0.0023311973 0.030013695
		 -0.0014152527 0.029806629 -0.0016368628 0.029804185 -0.0020102262 0.029926971 -0.0024191737
		 0.030064121 -0.0027507544 0.030263439 -0.002812624 0.030565575 -0.0026297569 0.029728487
		 -0.0023536682 0.029864803 -0.0026888847 0.030443266 -0.0028684139 0.029684976 -0.0026330948
		 0.044575922 -0.0038551092 0.044754937 -0.0037967563 0.044649847 -0.0035406947 0.04445
		 -0.0036019087 0.044953376 -0.0037320852 0.044871375 -0.003472805 0.044532552 -0.003215909
		 0.044313341 -0.0032778382 0.045151785 -0.0036674142 0.045092933 -0.0034049153 0.044775553
		 -0.0031473041 0.044462651 -0.0028777719 0.044260293 -0.0029301047 0.045330815 -0.0036090612
		 0.045292795 -0.0033436418 0.045018584 -0.0030786395 0.044686966 -0.0028197169 0.045237809
		 -0.0030167699 0.044911288 -0.0027617216 0.044621207 -0.0025558472 0.044437647 -0.002599895
		 0.04511369 -0.0027093887 0.044804782 -0.0025118589 0.044560127 -0.0022908449 0.044333898
		 -0.0023409128 0.044970378 -0.0024721622 0.044786386 -0.0022408366 0.044490546 -0.0019587874
		 0.044242799 -0.0020078421 0.044272043 -0.0026395917 0.044129811 -0.0023860335 0.04527425
		 -0.0026678443 0.045101777 -0.0024406314 0.044990472 -0.0021957159 0.044738226 -0.0019097328
		 0.044428289 -0.0016252398 0.044200063 -0.0016652346 0.044019379 -0.0020521283 0.044961683
		 -0.0018654466 0.044656493 -0.0015852451 0.044383712 -0.0013569593 0.044177562 -0.0013893247
		 0.043994151 -0.0017012954 0.044862404 -0.0015491843 0.044589922 -0.001324594 0.043991543
		 -0.0014185309 0.044775926 -0.0012953877 0.042448401 -0.0039129853 0.042627394 -0.0039713383
		 0.042686284 -0.0037088394 0.042486399 -0.0036475658 0.042825818 -0.0040360093 0.042907804
		 -0.0037767291 0.042760625 -0.0033825636 0.042541414 -0.003320694 0.043024242 -0.0041006804
		 0.043129325 -0.0038446188 0.043003619 -0.0034512281 0.042867914 -0.0030656457 0.042665556
		 -0.0030133128 0.043203264 -0.0041590333 0.043329194 -0.0039058328 0.043246642 -0.0035198331
		 0.043092236 -0.0031237006 0.042974427 -0.002815783 0.042808831 -0.0027760863 0.043465883
		 -0.0035817623 0.043316558 -0.0031816959 0.04315801 -0.0028597713 0.042992845 -0.0025447607
		 0.042788774 -0.00249964 0.042504966 -0.0029717684 0.042677402 -0.0027445555 0.043518916
		 -0.0032340288 0.043341562 -0.0029038191 0.04321906 -0.002594769 0.043040976 -0.0022136569
		 0.042817503 -0.0021693707 0.043445304 -0.0026448369 0.043288693 -0.0022627115 0.043122679
		 -0.0018891692 0.042916834 -0.0018531084 0.043507136 -0.0029435158 0.043649428 -0.0026899576
		 0.04353638 -0.0023117661 0.04335092 -0.0019291639 0.043189317 -0.0016285181 0.043003306
		 -0.0015993118 0.043759838 -0.0023560524 0.043579146 -0.0019691586 0.043395489 -0.0016608834
		 0.043785051 -0.0020052195 0.043601647 -0.0016932487 0.043787658 -0.001722455 0.026079908
		 -0.00091791153 0.026258603 -0.00097715855 0.026325956 -0.00070863962 0.026128724
		 -0.00063937902 0.026456729 -0.0010428429 0.026544586 -0.00078547001 0.026424184 -0.00037765503
		 0.026210979 -0.00029742718 0.026654854 -0.0011084676 0.026763156 -0.00086224079 0.026660576
		 -0.00046658516 0.026568547 -6.3955784e-05 0.026374593 1.3947487e-05 0.026833549 -0.0011677146
		 0.026960388 -0.00093150139 0.026896909 -0.00055551529 0.026783541 -0.00015032291
		 0.026713267 0.0001745522 0.026556388 0.00024083257 0.027110115 -0.00063574314 0.026998535
		 -0.00023669004 0.026887134 0.00010108948 0.026220635 7.5787306e-05 0.026431933 0.00029343367
		 0.027192488 -0.00031465292 0.02706106 2.7626753e-05 0.026995197 0.00035065413 0.026783362
		 0.00044459105 0.027207032 0.00025671721 0.027136162 0.00065928698 0.026907697 0.00076675415
		 0.02721788 -3.862381e-05 0.027398065 0.0001719892 0.027364686 0.0005518198 0.027283981
		 0.00096473098 0.027076498 0.0010679364 0.026592329 0.00052934885 0.026701525 0.00086370111
		 0.027342394 -9.1254711e-05 0.027549699 0.00010472536 0.027570859 0.00045490265 0.027491406
		 0.00086149573 0.027407244 0.0012071133 0.027222112 0.0013033748 0.026889399 0.0011610389
		 0.027678564 0.00076839328 0.027592435 0.0011108518 0.02705504 0.0013902187 0.026740864
		 0.0012349486 0.026922479 0.0014591515 0.028727427 -0.0011677146 0.028906122 -0.0011084676
		 0.02879782 -0.00086224079 0.028600588 -0.00093150139 0.029104248 -0.0010428429 0.02901645
		 -0.00078547001 0.028664127 -0.00055551529 0.028450921 -0.00063574314 0.029302374
		 -0.00097715855 0.02923502 -0.00070863962 0.028900459 -0.00046658516 0.028562441 -0.00023669004
		 0.028368488 -0.00031465292 0.029481068 -0.00091791153 0.029432252 -0.00063937902
		 0.029136792 -0.00037765503 0.028777435 -0.00015032291 0.029349998 -0.00029742718
		 0.028992429 -6.3955784e-05 0.028673843 0.00010108948 0.028499976 2.7626753e-05 0.029186442
		 1.3947487e-05 0.028847709 0.0001745522 0.028565779 0.00035065413 0.028354004 0.00025671721
		 0.029004589 0.00024083257 0.028777614 0.00044462085 0.028424814 0.00065928698 0.02819629
		 0.0005518198 0.028343096 -3.862381e-05 0.028162912 0.0001719892 0.029340342 7.5787306e-05
		 0.029129103 0.00029343367 0.028653339 0.00076675415 0.028276995 0.00096473098 0.028069571
		 0.00086149573 0.027990177 0.00045490265 0.028218582 -9.1254711e-05 0.028011277 0.00010472536
		 0.028968707 0.00052934885 0.028859451 0.00086370111 0.028484479 0.0010679364 0.028153732
		 0.0012071133 0.027968541 0.0011108518 0.027882472 0.00076839328 0.028671637 0.0011610687
		 0.028338924 0.0013034046 0.028505936 0.0013902485 0.028820112 0.0012349486 0.028638557
		 0.0014591515 0.027030483 -0.0038009882 0.027216807 -0.0037741065 0.027157083 -0.003503859
		 0.026949719 -0.0035299659 0.027423397 -0.0037443638 0.027386978 -0.0034748316 0.027097061
		 -0.0031638145 0.026870504 -0.0031872988 0.027629986 -0.0037145615;
	setAttr ".uvtk[5750:5999]" 0.027616873 -0.0034458637 0.027348235 -0.0031377673
		 0.027086034 -0.0028187037 0.026877716 -0.0028356314 0.027816311 -0.0036876798 0.027824238
		 -0.0034196973 0.027599409 -0.0031117201 0.027317002 -0.0027998686 0.027108923 -0.002540648
		 0.02693899 -0.0025514364 0.027826026 -0.0030881763 0.027547911 -0.0027810931 0.027297333
		 -0.0025286674 0.027050987 -0.0022677183 0.026842192 -0.0022772551 0.027756289 -0.0027641058
		 0.027485684 -0.0025166869 0.027282491 -0.0022571087 0.027018264 -0.0019239783 0.026790515
		 -0.0019293427 0.027655676 -0.0025058985 0.027513936 -0.0022464991 0.02727069 -0.0019180179
		 0.027034715 -0.0015790462 0.026825681 -0.0015794039 0.027722731 -0.0022369623 0.027523115
		 -0.0019120574 0.027266458 -0.0015787482 0.027059749 -0.0013033748 0.026871517 -0.0013003349
		 0.027750865 -0.0019066334 0.027498141 -0.0015783906 0.027268425 -0.0013067722 0.027707174
		 -0.001578033 0.0274771 -0.0013101697 0.027665332 -0.0013132095 0.026520982 -0.0014141202
		 0.026334658 -0.0013872385 0.026321545 -0.0016559958 0.02652891 -0.0016821027 0.026128069
		 -0.0013574958 0.02609165 -0.0016269684 0.026304081 -0.0019901395 0.026530638 -0.0020136237
		 0.025921479 -0.0013276935 0.025861755 -0.0015980005 0.026052907 -0.0019640923 0.026252583
		 -0.0023207068 0.026460961 -0.0023376942 0.025735155 -0.0013008118 0.02565439 -0.0015718341
		 0.025801733 -0.001938045 0.026021615 -0.0023019314 0.026190415 -0.0025851727 0.026360348
		 -0.0025959611 0.025575176 -0.0019145012 0.025790706 -0.0022831559 0.026002005 -0.0025731921
		 0.026218608 -0.0028553009 0.026427403 -0.0028648973 0.025582388 -0.0022661686 0.025813594
		 -0.0025612116 0.025987163 -0.0028446913 0.026227847 -0.0031898022 0.026455536 -0.0031951666
		 0.025643662 -0.0025503635 0.025755659 -0.0028341413 0.025975361 -0.0031838417 0.026202813
		 -0.003523469 0.026411846 -0.003523767 0.025546864 -0.0028245449 0.025722936 -0.0031778216
		 0.02597107 -0.0035231113 0.026181772 -0.0037916303 0.026370004 -0.0037885904 0.025495186
		 -0.0031724572 0.025739387 -0.0035227537 0.025973096 -0.0037950277 0.025530353 -0.0035223961
		 0.025764421 -0.0037984252 0.02557613 -0.003801465 0.042950213 -0.015841126 0.042682722
		 -0.015684545 0.042388648 -0.015963197 0.042530745 -0.016238689 0.042423278 -0.015520215
		 0.042238533 -0.015695333 0.042180613 -0.01534003 0.042071581 -0.015443385 0.041944042
		 -0.015154064 0.041898504 -0.015197217 0.039968148 -0.017409146 0.040184438 -0.017203987
		 0.040118605 -0.017141581 0.039925322 -0.017368555 0.040409282 -0.017006874 0.040303379
		 -0.0169065 0.040641353 -0.016816676 0.040480927 -0.016664624 0.040908888 -0.016660035
		 0.040623024 -0.016389072 0.030335709 -0.0030010343 0.030147448 -0.0030040741 0.030172482
		 -0.0032797456 0.030381516 -0.0032801032 0.029938772 -0.0030074716 0.029940799 -0.003279388
		 0.030188933 -0.0036246777 0.030416682 -0.0036300421 0.029730096 -0.0030108094 0.029709056
		 -0.0032790303 0.029936507 -0.0036187172 0.03015621 -0.0039684176 0.030365005 -0.0039779544
		 0.029541865 -0.0030139089 0.029500023 -0.0032787323 0.029684082 -0.0036126971 0.029924706
		 -0.003957808 0.030098274 -0.0042412877 0.030268207 -0.0042521358 0.029456332 -0.0036073327
		 0.029693261 -0.0039471984 0.029909864 -0.0042293072 0.030121163 -0.004519403 0.030329481
		 -0.0045363307 0.029484466 -0.003937602 0.029721513 -0.0042173266 0.029890195 -0.0045005679
		 0.030110136 -0.0048645139 0.030336693 -0.0048879981 0.029551521 -0.0042065382 0.029659286
		 -0.0044817924 0.029858962 -0.004838407 0.030050114 -0.0052044988 0.030257478 -0.0052306652
		 0.029450968 -0.0044648051 0.029607788 -0.0048124194 0.029820219 -0.0051755309 0.02999039
		 -0.0054748058 0.030176714 -0.0055016875 0.029381171 -0.0047888756 0.029590324 -0.0051465034
		 0.0297838 -0.0054450631 0.029382959 -0.0051203966 0.029577211 -0.0054152608 0.029390886
		 -0.0053883791 0.028246537 -0.0037881136 0.028434768 -0.0037911534 0.028413728 -0.0035229921
		 0.028204694 -0.0035232902 0.028643444 -0.0037945509 0.028645411 -0.0035226345 0.028388694
		 -0.0031893253 0.028161004 -0.0031946898 0.02885212 -0.0037979484 0.028877154 -0.0035222769
		 0.028641179 -0.0031833649 0.028397933 -0.0028548241 0.028189138 -0.0028644204 0.029040352
		 -0.0038009882 0.029086187 -0.0035219193 0.028893605 -0.0031773448 0.028629377 -0.0028442144
		 0.028426126 -0.0025846958 0.028256193 -0.0025954843 0.029121354 -0.0031719804 0.028860822
		 -0.0028336644 0.028614536 -0.0025727153 0.028363958 -0.00232023 0.02815558 -0.0023372173
		 0.029069677 -0.0028240681 0.028802946 -0.0025607347 0.028594866 -0.0023014545 0.02831246
		 -0.0019896626 0.028085843 -0.0020131469 0.028972879 -0.0025498867 0.028825834 -0.0022826791
		 0.028563634 -0.0019636154 0.028294995 -0.001655519 0.028087631 -0.0016816258 0.029034153
		 -0.0022656918 0.028814808 -0.0019375682 0.028524891 -0.0016264915 0.028281882 -0.0013867617
		 0.028095558 -0.0014136434 0.029041365 -0.0019140244 0.028754786 -0.0015975237 0.028488472
		 -0.0013570189 0.02896215 -0.0015713573 0.028695062 -0.0013272166 0.028881386 -0.0013003349
		 0.043963194 -0.015841126 0.044382684 -0.016238689 0.044524781 -0.015963197 0.044230729
		 -0.015684545 0.044674955 -0.015695333 0.044490196 -0.015520215 0.044841893 -0.015443385
		 0.044732854 -0.01534003 0.04501494 -0.015197217 0.044969395 -0.015154064 0.039635479
		 -0.017412663 0.039678305 -0.017372072 0.039485008 -0.017145097 0.039419174 -0.017207503
		 0.039300233 -0.016910017 0.039194331 -0.01701045 0.039122716 -0.016668081 0.03896226
		 -0.016820192 0.038980588 -0.016392589 0.038694754 -0.016663551 0.015906766 -0.00081026554
		 0.016058639 -0.00069892406 0.015878752 -0.00048846006 0.015708044 -0.00060904026
		 0.016226903 -0.00057548285 0.016068056 -0.00035476685 0.015665904 -0.00021654367
		 0.015477017 -0.0003438592 0.015786305 -0.00089859962 0.015572563 -0.00070476532 0.016395226
		 -0.00045210123 0.016257301 -0.00022107363 0.015875354 -7.545948e-05 0.015493944 8.2820654e-05
		 0.015318051 -3.0100346e-05 0.015327051 -0.00044482946 0.016084805 6.5624714e-05 0.015688911
		 0.00020802021 0.016428009 -0.00010049343 0.016273692 0.00019291043 0.015883878 0.00033318996
		 0.015544012 0.00043815374 0.015383378 0.00033900142 0.016059771 0.00044611096 0.015704647
		 0.00053730607 0.015403226 0.00067082047 0.015203908 0.00055262446 0.015602544 0.00078901649
		 0.015233412 0.00096458197 0.015013412 0.00084060431 0.015453354 0.0010885298 0.015070096
		 0.0012620091 0.014865771 0.001152724 0.01502414 0.00044602156 0.014814928 0.00072875619
		 0.015782312 0.00089561939 0.015651837 0.0012003779 0.01527442 0.0013712645 0.014943972
		 0.0015029311;
	setAttr ".uvtk[6000:6249]" 0.014758244 0.0014078021 0.014681473 0.0010541677
		 0.015458718 0.0014698207 0.01512976 0.0015980899 0.015297368 0.0016838908 0.015605047
		 0.0015480518 0.015430346 0.0017520189 0.016664758 -0.00045210123 0.016833082 -0.00057548285
		 0.016991928 -0.00035476685 0.016802683 -0.00022107363 0.017001346 -0.00069892406
		 0.017181113 -0.00048846006 0.01718457 -7.545948e-05 0.01697512 6.5624714e-05 0.017153159
		 -0.00081020594 0.017351881 -0.00060904026 0.017394021 -0.00021654367 0.017371073
		 0.00020802021 0.017176047 0.00033318996 0.016631916 -0.00010049343 0.016786233 0.00019291043
		 0.017273679 -0.00089859962 0.017487362 -0.00070476532 0.017582908 -0.0003438592 0.017565981
		 8.2850456e-05 0.017515972 0.00043815374 0.017355338 0.00053730607 0.017000213 0.00044611096
		 0.017732874 -0.00044482946 0.017741933 -3.0100346e-05 0.017676547 0.00033900142 0.017656699
		 0.00067082047 0.01745744 0.00078901649 0.017856017 0.00055262446 0.017826512 0.00096458197
		 0.017606571 0.0010885298 0.018046513 0.00084060431 0.017989829 0.0012620091 0.017785564
		 0.0013712645 0.017277613 0.00089564919 0.017408147 0.0012003779 0.018035784 0.00044602156
		 0.018244997 0.00072875619 0.018194214 0.0011527538 0.018115953 0.0015029311 0.017930225
		 0.0015980899 0.017601207 0.0014698207 0.018378511 0.0010541677 0.01830174 0.0014078021
		 0.017762616 0.0016838908 0.017454937 0.0015480518 0.017629638 0.0017520189 0.036769912
		 -0.0040686131 0.036955759 -0.004098773 0.03697969 -0.0038229823 0.036773965 -0.0037858486
		 0.037161782 -0.0041321516 0.037207708 -0.0038641095 0.037024185 -0.0034805536 0.036800966
		 -0.0034351945 0.037367806 -0.0041655898 0.037435725 -0.0039052963 0.037271634 -0.0035309196
		 0.03711693 -0.0031479597 0.036913082 -0.0031018257 0.037553653 -0.0041957498 0.037641421
		 -0.0039423704 0.037519082 -0.0035812259 0.037342921 -0.0031991601 0.037222013 -0.002889514
		 0.03705664 -0.0028489828 0.037742302 -0.0036266446 0.037568912 -0.0032503605 0.037405357
		 -0.0029344559 0.03777279 -0.0032965541 0.037588701 -0.0029794574 0.037472472 -0.0026709437
		 0.037248448 -0.0026117563 0.037754074 -0.0030199885 0.037696466 -0.0027300715 0.037562713
		 -0.0023438334 0.037320063 -0.0022739768 0.037898585 -0.0027834773 0.037805393 -0.0024137497
		 0.037660196 -0.0020188689 0.037439004 -0.0019498467 0.037046328 -0.0025584102 0.037101135
		 -0.0022109747 0.037885353 -0.003052175 0.038058951 -0.0028258562 0.038024291 -0.0024767518
		 0.037881389 -0.0020878911 0.037743494 -0.0017599463 0.037545398 -0.001694262 0.037239477
		 -0.0018875599 0.038080946 -0.0021501184 0.03794162 -0.0018256307 0.037366703 -0.001635015
		 0.038120285 -0.0018848777 0.038890854 -0.0041957498 0.039076701 -0.0041655898 0.039008781
		 -0.0039052963 0.038803056 -0.0039423704 0.039282709 -0.0041321516 0.039236799 -0.0038641095
		 0.038925394 -0.0035812259 0.038702175 -0.0036266446 0.039488733 -0.004098773 0.039464816
		 -0.0038229823 0.039172858 -0.0035309196 0.038875595 -0.0032503605 0.038671747 -0.0032965541
		 0.03967458 -0.0040686131 0.039670527 -0.0037858486 0.039420307 -0.0034805536 0.039101556
		 -0.0031991601 0.038855806 -0.0029794574 0.038690403 -0.0030199885 0.039643541 -0.0034351945
		 0.039327532 -0.0031479597 0.03903915 -0.0029344559 0.038748011 -0.0027301311 0.038545921
		 -0.0027834773 0.03953141 -0.0031018257 0.039222494 -0.002889514 0.038972035 -0.0026709437
		 0.038639113 -0.0024136901 0.038420215 -0.0024767518 0.038559154 -0.003052175 0.038385525
		 -0.0028258562 0.039387867 -0.0028489828 0.039196059 -0.0026117563 0.038881764 -0.0023438334
		 0.038563117 -0.0020878911 0.038363591 -0.0021501184 0.039124429 -0.0022739768 0.03878431
		 -0.0020188689 0.038502917 -0.0018256307 0.038324192 -0.0018849373 0.039398164 -0.0025584102
		 0.039343357 -0.0022109747 0.039005473 -0.0019498467 0.038701013 -0.0017599463 0.039205015
		 -0.0018875599 0.038899109 -0.001694262 0.039077833 -0.001635015 0.03121911 -0.015850306
		 0.031677112 -0.016202807 0.031790212 -0.015914202 0.031469151 -0.015667081 0.031912133
		 -0.015632331 0.031710401 -0.015477121 0.032052383 -0.015364587 0.031933323 -0.015272975
		 0.032199308 -0.015101969 0.032149568 -0.015063703 0.047733903 -0.017407954 0.04778067
		 -0.017372012 0.047611602 -0.017126441 0.047539741 -0.017181695 0.04745191 -0.016873598
		 0.047336288 -0.016962647 0.0473001 -0.016614795 0.047124907 -0.01674962 0.047187001
		 -0.016326189 0.046874873 -0.016566396 0.024245337 -0.003798306 0.024433628 -0.0037985444
		 0.024413481 -0.0035224557 0.024204507 -0.0035184622 0.024642363 -0.0037988424 0.024645165
		 -0.003526926 0.02440311 -0.0031773448 0.02417548 -0.0031679273 0.024851039 -0.0037991405
		 0.024876788 -0.0035313368 0.024655417 -0.0031877756 0.024441913 -0.0028342605 0.024233297
		 -0.0028209686 0.02503933 -0.0037994385 0.025085822 -0.0035353899 0.024907723 -0.0031981468
		 0.024673179 -0.0028489232 0.024504617 -0.0025624037 0.024334922 -0.0025485754 0.025135294
		 -0.0032075644 0.024904385 -0.0028635859 0.024692789 -0.0025776625 0.024486616 -0.0022839904
		 0.024278656 -0.0022633076 0.025113001 -0.0028768182 0.024880961 -0.0025929809 0.024717227
		 -0.002306819 0.024503782 -0.0019391179 0.024277642 -0.0019115806 0.025050655 -0.0026067495
		 0.024947837 -0.0023297071 0.02475442 -0.0019695759 0.024569765 -0.0016001463 0.024362877
		 -0.001570344 0.025155798 -0.0023503304 0.025005117 -0.0020000339 0.024799123 -0.0016332269
		 0.024634257 -0.0013309717 0.02444841 -0.0013008118 0.025231257 -0.0020275116 0.025028422
		 -0.0016662478 0.024840251 -0.0013644099 0.02523531 -0.0016960502 0.025046304 -0.0013977885
		 0.025232151 -0.0014279485 0.023076132 -0.0037994385 0.023264423 -0.0037991405 0.023238674
		 -0.0035313368 0.0230297 -0.0035353303 0.023473158 -0.0037988424 0.023470357 -0.003526926
		 0.023207799 -0.0031982064 0.022980168 -0.0032075644 0.023681834 -0.0037985444 0.02370204
		 -0.0035224557 0.023460105 -0.0031877756 0.023211136 -0.0028635859 0.023002461 -0.0028768182
		 0.023870125 -0.0037982464 0.023911014 -0.0035184622 0.023712412 -0.0031773448 0.023442343
		 -0.0028489232 0.023234561 -0.0025929809 0.023064807 -0.0026067495 0.023939982 -0.0031679273
		 0.023673609 -0.0028342605 0.023422673 -0.0025776625 0.023167685 -0.0023297071 0.022959664
		 -0.0023503304 0.023882166 -0.0028209686 0.023610845 -0.0025624037 0.023398235 -0.002306819
		 0.023110345 -0.0020000339 0.022884265 -0.0020275116 0.023780599 -0.0025485754 0.023628846
		 -0.0022839904 0.023361042 -0.0019695759 0.02308704 -0.0016662478 0.022880152 -0.0016960502
		 0.023836866 -0.0022633076 0.023611739 -0.0019391179 0.023316398 -0.0016332269 0.023069218
		 -0.0013977885;
	setAttr ".uvtk[6250:6352]" 0.022883371 -0.0014279485 0.023837879 -0.0019115806
		 0.023545697 -0.0016001463 0.023275211 -0.0013644099 0.023752585 -0.001570344 0.023481265
		 -0.0013309717 0.023667112 -0.0013008118 0.036158606 -0.016335785 0.036159173 -0.01651901
		 0.036579296 -0.016575158 0.036763802 -0.016391933 0.036207482 -0.016732037 0.03648223
		 -0.016765177 0.036288008 -0.016951144 0.036440149 -0.016969323 0.036381885 -0.017177403
		 0.036471531 -0.017178535 0.038447753 -0.016392589 0.037842527 -0.016465306 0.037843123
		 -0.016716063 0.038263217 -0.016643345 0.037891433 -0.016928256 0.03816615 -0.01688534
		 0.037971959 -0.01713264 0.03812407 -0.017109156 0.038065836 -0.017327666 0.038155451
		 -0.017326176 0.035079852 -0.016335011 0.034474656 -0.016414344 0.034475252 -0.016639888
		 0.034895346 -0.016560614 0.034523532 -0.016823411 0.034798279 -0.016776621 0.034604087
		 -0.016998351 0.034756199 -0.016972721 0.034697965 -0.017163157 0.03478758 -0.017161548
		 0.033632681 -0.016335011 0.033817187 -0.016560614 0.03423731 -0.016639888 0.034237877
		 -0.016414344 0.033914253 -0.016776621 0.034189001 -0.016823411 0.033956364 -0.016972721
		 0.034108475 -0.016998351 0.033924982 -0.017161548 0.034014598 -0.017163157 0.030237928
		 -0.016638458 0.030740514 -0.015987754 0.030338541 -0.015868366 0.032893345 -0.016496181
		 0.033395931 -0.017146885 0.033278033 -0.016335487 0.016779795 -0.0081147552 0.01631774
		 -0.008307755 0.016478494 -0.008692503 0.01556398 -0.0092400312 0.015724733 -0.0096247196
		 0.018199399 -0.0096966028 0.017898157 -0.009118855 0.017737344 -0.0095035434 0.017144397
		 -0.0081866384 0.016983643 -0.0085713267 0.037000552 -0.016392589 0.037185088 -0.016643345
		 0.037605181 -0.016716063 0.037605777 -0.016465306 0.037282154 -0.01688534 0.037556872
		 -0.016928256 0.037324235 -0.017109156 0.037476346 -0.01713264 0.037292853 -0.017326176
		 0.037382439 -0.017327666 0.029422894 -0.015868366 0.02942349 -0.016025007 0.029843584
		 -0.016088307 0.03002806 -0.015931666 0.02947177 -0.016215265 0.029746488 -0.016252577
		 0.029552296 -0.016412318 0.029704407 -0.016432762 0.029646173 -0.016617537 0.029735819
		 -0.016618788 0.029186085 -0.015869081 0.028580919 -0.015932381 0.028765395 -0.016089022
		 0.029185548 -0.016025662 0.028862491 -0.016253293 0.029137209 -0.01621592 0.028904572
		 -0.016433477 0.029056683 -0.016413033 0.02887316 -0.016619503 0.028962806 -0.016618192
		 0.035921827 -0.016335011 0.035316631 -0.016391158 0.035501137 -0.016574383 0.035921231
		 -0.016518235 0.035598204 -0.016764402 0.035872951 -0.016731262 0.035640284 -0.016968489
		 0.035792425 -0.016950309 0.035608932 -0.017177761 0.035698518 -0.017176569;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
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
connectAttr "groupParts1.og" "polySurfaceShape1.i";
connectAttr "groupId4.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId5.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape3.i";
connectAttr "groupId6.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape4.i";
connectAttr "groupId7.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape5.i";
connectAttr "groupId8.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape6.i";
connectAttr "groupId9.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape7.i";
connectAttr "groupId10.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape8.i";
connectAttr "groupId11.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape9.i";
connectAttr "groupId12.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape10.i";
connectAttr "groupId13.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape11.i";
connectAttr "groupId14.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape12.i";
connectAttr "groupId15.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape13.i";
connectAttr "groupId16.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape14.i";
connectAttr "groupId17.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape15.i";
connectAttr "groupId18.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape16.i";
connectAttr "groupId19.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape17.i";
connectAttr "groupId20.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape18.i";
connectAttr "groupId21.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape19.i";
connectAttr "groupId22.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape20.i";
connectAttr "groupId23.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape21.i";
connectAttr "groupId24.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape22.i";
connectAttr "groupId25.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape23.i";
connectAttr "groupId26.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape24.i";
connectAttr "groupId27.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape25.i";
connectAttr "groupId28.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape26.i";
connectAttr "groupId29.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape27.i";
connectAttr "groupId30.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape28.i";
connectAttr "groupId31.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape29.i";
connectAttr "groupId32.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape30.i";
connectAttr "groupId33.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape31.i";
connectAttr "groupId34.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape32.i";
connectAttr "groupId35.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape33.i";
connectAttr "groupId36.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape34.i";
connectAttr "groupId37.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape35.i";
connectAttr "groupId38.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape36.i";
connectAttr "groupId39.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape37.i";
connectAttr "groupId40.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId1.id" "polySurface22Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurface22Shape.iog.og[0].gco";
connectAttr "groupId2.id" "polySurface22Shape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurface22Shape.iog.og[1].gco";
connectAttr "groupId3.id" "polySurface22Shape.iog.og[2].gid";
connectAttr "lambert5SG.mwc" "polySurface22Shape.iog.og[2].gco";
connectAttr "groupParts40.og" "|polySurface58|transform39|polySurface58Shape.i";
connectAttr "groupId41.id" "|polySurface58|transform39|polySurface58Shape.iog.og[0].gid"
		;
connectAttr "lambert5SG.mwc" "|polySurface58|transform39|polySurface58Shape.iog.og[0].gco"
		;
connectAttr "groupId42.id" "|polySurface58|transform39|polySurface58Shape.iog.og[1].gid"
		;
connectAttr "lambert3SG.mwc" "|polySurface58|transform39|polySurface58Shape.iog.og[1].gco"
		;
connectAttr "groupId43.id" "|polySurface58|transform39|polySurface58Shape.iog.og[2].gid"
		;
connectAttr "lambert2SG.mwc" "|polySurface58|transform39|polySurface58Shape.iog.og[2].gco"
		;
connectAttr "polyTweakUV1.out" "|polySurface60|polySurface58Shape.i";
connectAttr "groupId44.id" "|polySurface60|polySurface58Shape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "|polySurface60|polySurface58Shape.iog.og[0].gco";
connectAttr "groupId45.id" "|polySurface60|polySurface58Shape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "|polySurface60|polySurface58Shape.iog.og[1].gco";
connectAttr "groupId46.id" "|polySurface60|polySurface58Shape.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "|polySurface60|polySurface58Shape.iog.og[2].gco";
connectAttr "polyTweakUV1.uvtk[0]" "|polySurface60|polySurface58Shape.uvst[0].uvtw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurface22Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "|polySurface58|transform39|polySurface58Shape.iog.og[2]" "lambert2SG.dsm"
		 -na;
connectAttr "|polySurface60|polySurface58Shape.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId24.msg" "lambert2SG.gn" -na;
connectAttr "groupId43.msg" "lambert2SG.gn" -na;
connectAttr "groupId46.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "polySurface22Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "|polySurface58|transform39|polySurface58Shape.iog.og[1]" "lambert3SG.dsm"
		 -na;
connectAttr "|polySurface60|polySurface58Shape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "groupId5.msg" "lambert3SG.gn" -na;
connectAttr "groupId6.msg" "lambert3SG.gn" -na;
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "groupId9.msg" "lambert3SG.gn" -na;
connectAttr "groupId10.msg" "lambert3SG.gn" -na;
connectAttr "groupId11.msg" "lambert3SG.gn" -na;
connectAttr "groupId12.msg" "lambert3SG.gn" -na;
connectAttr "groupId13.msg" "lambert3SG.gn" -na;
connectAttr "groupId14.msg" "lambert3SG.gn" -na;
connectAttr "groupId15.msg" "lambert3SG.gn" -na;
connectAttr "groupId16.msg" "lambert3SG.gn" -na;
connectAttr "groupId17.msg" "lambert3SG.gn" -na;
connectAttr "groupId18.msg" "lambert3SG.gn" -na;
connectAttr "groupId19.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "groupId22.msg" "lambert3SG.gn" -na;
connectAttr "groupId23.msg" "lambert3SG.gn" -na;
connectAttr "groupId42.msg" "lambert3SG.gn" -na;
connectAttr "groupId45.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "polySurface22Shape.iog.og[2]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "|polySurface58|transform39|polySurface58Shape.iog.og[0]" "lambert5SG.dsm"
		 -na;
connectAttr "|polySurface60|polySurface58Shape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "groupId3.msg" "lambert5SG.gn" -na;
connectAttr "groupId25.msg" "lambert5SG.gn" -na;
connectAttr "groupId26.msg" "lambert5SG.gn" -na;
connectAttr "groupId27.msg" "lambert5SG.gn" -na;
connectAttr "groupId28.msg" "lambert5SG.gn" -na;
connectAttr "groupId29.msg" "lambert5SG.gn" -na;
connectAttr "groupId30.msg" "lambert5SG.gn" -na;
connectAttr "groupId31.msg" "lambert5SG.gn" -na;
connectAttr "groupId32.msg" "lambert5SG.gn" -na;
connectAttr "groupId33.msg" "lambert5SG.gn" -na;
connectAttr "groupId34.msg" "lambert5SG.gn" -na;
connectAttr "groupId35.msg" "lambert5SG.gn" -na;
connectAttr "groupId36.msg" "lambert5SG.gn" -na;
connectAttr "groupId37.msg" "lambert5SG.gn" -na;
connectAttr "groupId38.msg" "lambert5SG.gn" -na;
connectAttr "groupId39.msg" "lambert5SG.gn" -na;
connectAttr "groupId40.msg" "lambert5SG.gn" -na;
connectAttr "groupId41.msg" "lambert5SG.gn" -na;
connectAttr "groupId44.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "polySurface22Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId4.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "polySeparate1.out[5]" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "polySeparate1.out[6]" "groupParts7.ig";
connectAttr "groupId10.id" "groupParts7.gi";
connectAttr "polySeparate1.out[7]" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "polySeparate1.out[8]" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "polySeparate1.out[9]" "groupParts10.ig";
connectAttr "groupId13.id" "groupParts10.gi";
connectAttr "polySeparate1.out[10]" "groupParts11.ig";
connectAttr "groupId14.id" "groupParts11.gi";
connectAttr "polySeparate1.out[11]" "groupParts12.ig";
connectAttr "groupId15.id" "groupParts12.gi";
connectAttr "polySeparate1.out[12]" "groupParts13.ig";
connectAttr "groupId16.id" "groupParts13.gi";
connectAttr "polySeparate1.out[13]" "groupParts14.ig";
connectAttr "groupId17.id" "groupParts14.gi";
connectAttr "polySeparate1.out[14]" "groupParts15.ig";
connectAttr "groupId18.id" "groupParts15.gi";
connectAttr "polySeparate1.out[15]" "groupParts16.ig";
connectAttr "groupId19.id" "groupParts16.gi";
connectAttr "polySeparate1.out[16]" "groupParts17.ig";
connectAttr "groupId20.id" "groupParts17.gi";
connectAttr "polySeparate1.out[17]" "groupParts18.ig";
connectAttr "groupId21.id" "groupParts18.gi";
connectAttr "polySeparate1.out[18]" "groupParts19.ig";
connectAttr "groupId22.id" "groupParts19.gi";
connectAttr "polySeparate1.out[19]" "groupParts20.ig";
connectAttr "groupId23.id" "groupParts20.gi";
connectAttr "polySeparate1.out[20]" "groupParts21.ig";
connectAttr "groupId24.id" "groupParts21.gi";
connectAttr "polySeparate1.out[21]" "groupParts22.ig";
connectAttr "groupId25.id" "groupParts22.gi";
connectAttr "polySeparate1.out[22]" "groupParts23.ig";
connectAttr "groupId26.id" "groupParts23.gi";
connectAttr "polySeparate1.out[23]" "groupParts24.ig";
connectAttr "groupId27.id" "groupParts24.gi";
connectAttr "polySeparate1.out[24]" "groupParts25.ig";
connectAttr "groupId28.id" "groupParts25.gi";
connectAttr "polySeparate1.out[25]" "groupParts26.ig";
connectAttr "groupId29.id" "groupParts26.gi";
connectAttr "polySeparate1.out[26]" "groupParts27.ig";
connectAttr "groupId30.id" "groupParts27.gi";
connectAttr "polySeparate1.out[27]" "groupParts28.ig";
connectAttr "groupId31.id" "groupParts28.gi";
connectAttr "polySeparate1.out[28]" "groupParts29.ig";
connectAttr "groupId32.id" "groupParts29.gi";
connectAttr "polySeparate1.out[29]" "groupParts30.ig";
connectAttr "groupId33.id" "groupParts30.gi";
connectAttr "polySeparate1.out[30]" "groupParts31.ig";
connectAttr "groupId34.id" "groupParts31.gi";
connectAttr "polySeparate1.out[31]" "groupParts32.ig";
connectAttr "groupId35.id" "groupParts32.gi";
connectAttr "polySeparate1.out[32]" "groupParts33.ig";
connectAttr "groupId36.id" "groupParts33.gi";
connectAttr "polySeparate1.out[33]" "groupParts34.ig";
connectAttr "groupId37.id" "groupParts34.gi";
connectAttr "polySeparate1.out[34]" "groupParts35.ig";
connectAttr "groupId38.id" "groupParts35.gi";
connectAttr "polySeparate1.out[35]" "groupParts36.ig";
connectAttr "groupId39.id" "groupParts36.gi";
connectAttr "polySeparate1.out[36]" "groupParts37.ig";
connectAttr "groupId40.id" "groupParts37.gi";
connectAttr "polySurfaceShape36.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape26.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape23.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape8.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape16.o" "polyUnite1.ip[5]";
connectAttr "polySurfaceShape19.o" "polyUnite1.ip[6]";
connectAttr "polySurfaceShape24.o" "polyUnite1.ip[7]";
connectAttr "polySurfaceShape30.o" "polyUnite1.ip[8]";
connectAttr "polySurfaceShape27.o" "polyUnite1.ip[9]";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[10]";
connectAttr "polySurfaceShape34.o" "polyUnite1.ip[11]";
connectAttr "polySurfaceShape32.o" "polyUnite1.ip[12]";
connectAttr "polySurfaceShape9.o" "polyUnite1.ip[13]";
connectAttr "polySurfaceShape21.o" "polyUnite1.ip[14]";
connectAttr "polySurfaceShape22.o" "polyUnite1.ip[15]";
connectAttr "polySurfaceShape6.o" "polyUnite1.ip[16]";
connectAttr "polySurfaceShape14.o" "polyUnite1.ip[17]";
connectAttr "polySurfaceShape17.o" "polyUnite1.ip[18]";
connectAttr "polySurfaceShape10.o" "polyUnite1.ip[19]";
connectAttr "polySurfaceShape31.o" "polyUnite1.ip[20]";
connectAttr "polySurfaceShape15.o" "polyUnite1.ip[21]";
connectAttr "polySurfaceShape33.o" "polyUnite1.ip[22]";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[23]";
connectAttr "polySurfaceShape35.o" "polyUnite1.ip[24]";
connectAttr "polySurfaceShape25.o" "polyUnite1.ip[25]";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[26]";
connectAttr "polySurfaceShape12.o" "polyUnite1.ip[27]";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[28]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[29]";
connectAttr "polySurfaceShape37.o" "polyUnite1.ip[30]";
connectAttr "polySurfaceShape13.o" "polyUnite1.ip[31]";
connectAttr "polySurfaceShape29.o" "polyUnite1.ip[32]";
connectAttr "polySurfaceShape20.o" "polyUnite1.ip[33]";
connectAttr "polySurfaceShape18.o" "polyUnite1.ip[34]";
connectAttr "polySurfaceShape28.o" "polyUnite1.ip[35]";
connectAttr "polySurfaceShape36.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape26.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape23.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape8.wm" "polyUnite1.im[4]";
connectAttr "polySurfaceShape16.wm" "polyUnite1.im[5]";
connectAttr "polySurfaceShape19.wm" "polyUnite1.im[6]";
connectAttr "polySurfaceShape24.wm" "polyUnite1.im[7]";
connectAttr "polySurfaceShape30.wm" "polyUnite1.im[8]";
connectAttr "polySurfaceShape27.wm" "polyUnite1.im[9]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[10]";
connectAttr "polySurfaceShape34.wm" "polyUnite1.im[11]";
connectAttr "polySurfaceShape32.wm" "polyUnite1.im[12]";
connectAttr "polySurfaceShape9.wm" "polyUnite1.im[13]";
connectAttr "polySurfaceShape21.wm" "polyUnite1.im[14]";
connectAttr "polySurfaceShape22.wm" "polyUnite1.im[15]";
connectAttr "polySurfaceShape6.wm" "polyUnite1.im[16]";
connectAttr "polySurfaceShape14.wm" "polyUnite1.im[17]";
connectAttr "polySurfaceShape17.wm" "polyUnite1.im[18]";
connectAttr "polySurfaceShape10.wm" "polyUnite1.im[19]";
connectAttr "polySurfaceShape31.wm" "polyUnite1.im[20]";
connectAttr "polySurfaceShape15.wm" "polyUnite1.im[21]";
connectAttr "polySurfaceShape33.wm" "polyUnite1.im[22]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[23]";
connectAttr "polySurfaceShape35.wm" "polyUnite1.im[24]";
connectAttr "polySurfaceShape25.wm" "polyUnite1.im[25]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[26]";
connectAttr "polySurfaceShape12.wm" "polyUnite1.im[27]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[28]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[29]";
connectAttr "polySurfaceShape37.wm" "polyUnite1.im[30]";
connectAttr "polySurfaceShape13.wm" "polyUnite1.im[31]";
connectAttr "polySurfaceShape29.wm" "polyUnite1.im[32]";
connectAttr "polySurfaceShape20.wm" "polyUnite1.im[33]";
connectAttr "polySurfaceShape18.wm" "polyUnite1.im[34]";
connectAttr "polySurfaceShape28.wm" "polyUnite1.im[35]";
connectAttr "polyUnite1.out" "groupParts38.ig";
connectAttr "groupId41.id" "groupParts38.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId42.id" "groupParts39.gi";
connectAttr "groupParts39.og" "groupParts40.ig";
connectAttr "groupId43.id" "groupParts40.gi";
connectAttr "|polySurface58|transform39|polySurface58Shape.o" "polyUnite2.ip[0]"
		;
connectAttr "polySurfaceShape11.o" "polyUnite2.ip[1]";
connectAttr "|polySurface58|transform39|polySurface58Shape.wm" "polyUnite2.im[0]"
		;
connectAttr "polySurfaceShape11.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts41.ig";
connectAttr "groupId44.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts42.ig";
connectAttr "groupId45.id" "groupParts42.gi";
connectAttr "groupParts42.og" "groupParts43.ig";
connectAttr "groupId46.id" "groupParts43.gi";
connectAttr "groupParts43.og" "polyAutoProj1.ip";
connectAttr "|polySurface60|polySurface58Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Cabeza.ma
