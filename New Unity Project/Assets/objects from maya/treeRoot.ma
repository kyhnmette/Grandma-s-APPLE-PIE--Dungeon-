//Maya ASCII 2014 scene
//Name: treeRoot.ma
//Last modified: Mon, Apr 07, 2014 10:03:45 AM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.8.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.165154753679237 20.175049601340103 8.1531000015468305 ;
	setAttr ".r" -type "double3" 1423.199999999993 -76.799999999772368 359.99999999999045 ;
	setAttr ".rpt" -type "double3" -1.6600113028004352e-14 -1.4410198589829015e-14 2.2842352471663759e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.604597713127228;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.1076204202966515 8.5257762954416165 7.2765867558943604 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder2";
	setAttr ".rp" -type "double3" 8.05093537467841 6.5052727620781159 7.3504304557035356 ;
	setAttr ".sp" -type "double3" 8.05093537467841 6.5052727620781159 7.3504304557035356 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.7132318019866943 0.69589774310588837 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 95 ".pt";
	setAttr ".pt[0]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[1]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[2]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[3]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[4]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[9]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[10]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[11]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[17]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[21]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[22]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[23]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[24]" -type "float3" -0.087754548 0.40039375 0 ;
	setAttr ".pt[25]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[26]" -type "float3" -0.087754548 0.40039375 0 ;
	setAttr ".pt[27]" -type "float3" -0.087754548 0.40039375 0 ;
	setAttr ".pt[28]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[29]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[30]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[31]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[32]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[33]" -type "float3" 0.065681458 -0.37983799 0.59384489 ;
	setAttr ".pt[34]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[35]" -type "float3" 0.065681458 -0.37983704 0.59384489 ;
	setAttr ".pt[38]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[40]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[42]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[43]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[44]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[45]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[46]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[47]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[48]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[49]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[50]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[51]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[53]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[60]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[61]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[62]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[63]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[68]" -type "float3" -0.22189312 0.17178452 0 ;
	setAttr ".pt[69]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[70]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[71]" -type "float3" 0 0.17178452 0 ;
	setAttr ".pt[72]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[73]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[74]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[75]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[76]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[77]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[78]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[79]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[80]" -type "float3" -0.087754548 0.40039375 0 ;
	setAttr ".pt[81]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[82]" -type "float3" -0.087754548 0.40039375 0 ;
	setAttr ".pt[83]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[84]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[85]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[86]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[87]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[88]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[89]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[90]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[91]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[92]" -type "float3" -0.37574467 -0.19047204 0 ;
	setAttr ".pt[97]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[98]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[99]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[100]" -type "float3" -0.59763777 -0.36339763 0 ;
	setAttr ".pt[101]" -type "float3" -0.087754965 0.40039375 0 ;
	setAttr ".pt[105]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[106]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[107]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[108]" -type "float3" -0.22189312 0 0 ;
	setAttr ".pt[109]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[110]" -type "float3" 0 0.17178452 0 ;
	setAttr ".pt[111]" -type "float3" 0 0.17178452 0 ;
	setAttr ".pt[112]" -type "float3" -0.37691399 0.24766085 0 ;
	setAttr ".pt[113]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[114]" -type "float3" -0.15502091 0.24766085 0 ;
	setAttr ".pt[115]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[116]" -type "float3" -0.15502091 0.26818579 0 ;
	setAttr ".pt[117]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[118]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[119]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[120]" -type "float3" -0.087754965 0.40039387 0 ;
	setAttr ".pt[121]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
	setAttr ".pt[122]" -type "float3" 0.065681413 -0.3798376 0.59384477 ;
createNode mesh -n "polySurfaceShape1" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.7132318019866943 0.69589774310588837 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.51891494 0.43876824
		 0.52328843 0.43123657 0.50304109 0.43983981 0.50751507 0.43326741 0.52019328 0.4235135
		 0.50828207 0.42632759 0.49977428 0.43476063 0.50114757 0.42744774 0.27983692 0.74037665
		 0.28644294 0.7466073 0.29128698 0.73558569 0.29578719 0.74097836 0.29263094 0.75412786
		 0.29814488 0.72837418 0.30285776 0.73631895 0.30196926 0.74733722 0.30794284 0.72269708
		 0.31243831 0.73104358 0.30910593 0.74225473 0.29435268 0.7581656 0.30627763 0.75036168
		 0.30183753 0.71506488 0.30675083 0.71151733 0.3174336 0.71813601 0.32208097 0.72481263
		 0.31788927 0.73653877 0.3145653 0.74508381 0.30384511 0.70309883 0.30713499 0.7003293
		 0.31249568 0.70886081 0.32569599 0.71363091 0.32933816 0.71728635 0.32646015 0.72979289
		 0.32194978 0.73916417 0.30513802 0.69399476 0.3073678 0.69195825 0.31062329 0.69825536
		 0.33379841 0.70209146 0.33674005 0.70503628 0.33295947 0.72162133 0.32846397 0.73218095
		 0.30577925 0.68603271 0.30735031 0.68459785 0.30958766 0.69043332 0.34477746 0.68260092
		 0.346816 0.68463308 0.33965966 0.70853955 0.33414164 0.72371143 0.30583236 0.67749274
		 0.30698344 0.67644167 0.30891448 0.68352342 0.35193452 0.6699571 0.35536703 0.66638207
		 0.34883407 0.68706334 0.30591699 0.67249215 0.30657515 0.67012346 0.30812916 0.67565441
		 0.35397741 0.66537577 0.35819271 0.66058815 0.3543455 0.67257619 0.30562055 0.67122638
		 0.30643395 0.6682775 0.30744043 0.67126381 0.35669872 0.66822076 0.30751687 0.66967475
		 0.27198738 0.66921061 0.26614672 0.66342676 0.26515642 0.68236053 0.26033837 0.67785215
		 0.25957423 0.65640104 0.25993189 0.69203877 0.25543877 0.68831223 0.25455409 0.67166173
		 0.25406808 0.69827306 0.2499131 0.69449413 0.24753064 0.68224365 0.24714983 0.70302117
		 0.24338979 0.69904029 0.24210984 0.68914407 0.24448025 0.67480242 0.25095418 0.66736066
		 0.23876178 0.70824146 0.23549712 0.70459354 0.23677039 0.69365251 0.23336798 0.68136811
		 0.23057407 0.68541449 0.23301971 0.67777818 0.2253921 0.7149384 0.22276282 0.71199208
		 0.23155296 0.70096684 0.22688895 0.68862957 0.21860331 0.68326795 0.22078454 0.68020481
		 0.20352888 0.72411621 0.20171481 0.72207439 0.21957469 0.70906782 0.23171371 0.69384259
		 0.22907144 0.6997897 0.21572632 0.68613225 0.21109885 0.68044746 0.20949495 0.68266642
		 0.18869138 0.72964513 0.18270248 0.73065174 0.19950271 0.72005332 0.2073794 0.68489534
		 0.20152932 0.68266058 0.20265937 0.68109715 0.18370891 0.73204136 0.17607546 0.73353541
		 0.18626624 0.72723114 0.20003873 0.68423104 0.19381458 0.68115556 0.19298667 0.68230093
		 0.18086362 0.72931993 0.19189471 0.68345141 0.18626595 0.68190044 0.18852413 0.68124497
		 0.18725955 0.68276793 0.1851629 0.68285483 0.18376559 0.68177181 0.17099345 0.79352313
		 0.16505587 0.79297322 0.16279066 0.80807483 0.16798699 0.80721927 0.1667887 0.81673795
		 0.16189456 0.81918961 0.16236758 0.82634896 0.16694689 0.82521927 0.16688013 0.83270121
		 0.16266835 0.83180183 0.16125584 0.83779705 0.165007 0.83922201 0.15787721 0.84664655
		 0.1547488 0.84548789 0.1397655 0.85602808 0.14204013 0.85683948 0.12685835 0.86512941
		 0.12931502 0.86237741 0.77544725 0.9286778 0.77157295 0.93078655 0.75850695 0.90981376
		 0.76128787 0.90833664 0.77705336 0.94330198 0.78174049 0.94070917 0.74964261 0.89598358
		 0.74775398 0.89033848 0.76420903 0.90833789 0.77952421 0.9287051 0.78667867 0.94076353
		 0.75298709 0.89512575 0.94891322 0.89028269 0.95144314 0.89198512 0.93697 0.91346186
		 0.93512404 0.91226661 0.95814717 0.87890291 0.95512116 0.87681276 0.92652035 0.92794943
		 0.92190498 0.93230498 0.88667643 0.8800357 0.88470209 0.88179088 0.88530993 0.87960035
		 0.88772404 0.87717485 0.88153082 0.88692284 0.88311577 0.88682276 0.88667989 0.88126367
		 0.88455963 0.8861149 0.88053071 0.89536583 0.87836725 0.89550269 0.88250148 0.89439988
		 0.87933844 0.90368932 0.8824091 0.90349525 0.88520622 0.90212405 0.88576281 0.91282099
		 0.88164842 0.91308475 0.88962835 0.91095626 0.88250136 0.92529124 0.8876037 0.92495334
		 0.89272273 0.9225648 0.89561075 0.93547672 0.88879108 0.9360705 0.3599059 0.96818781
		 0.36291656 0.97759461 0.35568336 0.97637659 0.35452545 0.96960622 0.35943598 0.98321688
		 0.35401431 0.98106384 0.4235152 0.91659695 0.41965175 0.92710078 0.41583604 0.92693752
		 0.41879892 0.9163878 0.41516298 0.93484777 0.41231114 0.93472779 0.4122746 0.9251399
		 0.41406584 0.91408521 0.41273296 0.94169152 0.41072351 0.94160688 0.40973854 0.933406
		 0.41481948 0.9042995 0.42025077 0.90930718 0.41504532 0.94948506 0.41357315 0.94942302
		 0.40891099 0.94067556 0.41743648 0.95383364 0.41742754 0.95540738 0.41224515 0.94874066
		 0.41554719 0.95333105;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1027 ".pt";
	setAttr ".pt[20]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[21]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[22]" -type "float3" -4.7683716e-07 0 -9.5367432e-07 ;
	setAttr ".pt[23]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[24]" -type "float3" -7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[25]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[26]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[27]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[28]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[29]" -type "float3" 4.7683716e-07 0 -1.937151e-07 ;
	setAttr ".pt[30]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[31]" -type "float3" -2.3841858e-07 0 1.1920929e-07 ;
	setAttr ".pt[32]" -type "float3" 2.3841858e-07 0 -1.7881393e-07 ;
	setAttr ".pt[33]" -type "float3" -1.1920929e-07 0 -5.9604645e-08 ;
	setAttr ".pt[34]" -type "float3" 5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[35]" -type "float3" 5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-08 0 -3.5762787e-07 ;
	setAttr ".pt[38]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[41]" -type "float3" 4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[42]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[43]" -type "float3" 2.3841858e-07 0 -9.5367432e-07 ;
	setAttr ".pt[44]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[45]" -type "float3" 2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[46]" -type "float3" -2.3841858e-07 0 -1.4305115e-06 ;
	setAttr ".pt[47]" -type "float3" 2.9802322e-07 0 4.7683716e-07 ;
	setAttr ".pt[48]" -type "float3" -5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[49]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[50]" -type "float3" 6.7055225e-08 0 2.3841858e-07 ;
	setAttr ".pt[53]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[54]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[55]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[56]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[57]" -type "float3" -9.5367432e-07 0 -7.0780516e-08 ;
	setAttr ".pt[58]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[59]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[60]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[206]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[207]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[208]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[209]" -type "float3" -1.4305115e-06 0 -1.1920929e-07 ;
	setAttr ".pt[460]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[461]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[462]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[463]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[464]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[465]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[466]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[467]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[468]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[469]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[470]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[471]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[472]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[473]" -type "float3" -4.7683716e-07 0 1.3411045e-07 ;
	setAttr ".pt[474]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[477]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[478]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[479]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[480]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[481]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[482]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[483]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[484]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[485]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[486]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[487]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[488]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[489]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[490]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[491]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[492]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[493]" -type "float3" 2.3841858e-07 0 2.9802322e-08 ;
	setAttr ".pt[494]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[495]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[496]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[497]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[499]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[500]" -type "float3" 2.3841858e-07 0 -2.9802322e-08 ;
	setAttr ".pt[501]" -type "float3" -2.3841858e-07 0 5.9604645e-08 ;
	setAttr ".pt[502]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[503]" -type "float3" -2.3841858e-07 0 -5.9604645e-08 ;
	setAttr ".pt[504]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[505]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[506]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[507]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[508]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[509]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[510]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[511]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[512]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[513]" -type "float3" -4.7683716e-07 0 9.5367432e-07 ;
	setAttr ".pt[514]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[515]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[516]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[517]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[518]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[519]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[520]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[521]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[522]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[523]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[524]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[525]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[526]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[528]" -type "float3" 9.5367432e-07 0 4.7683716e-07 ;
	setAttr ".pt[529]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[530]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[531]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[532]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[533]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[534]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[535]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[536]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[537]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[539]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[540]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[541]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[543]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[544]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[545]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[546]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[547]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[548]" -type "float3" -9.5367432e-07 0 -4.7683716e-07 ;
	setAttr ".pt[549]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[550]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[551]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[552]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[553]" -type "float3" -9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[554]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[555]" -type "float3" 4.7683716e-07 0 3.5762787e-07 ;
	setAttr ".pt[557]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[558]" -type "float3" 0 0 3.5762787e-07 ;
	setAttr ".pt[559]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[560]" -type "float3" -9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[564]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[565]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[566]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[567]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[568]" -type "float3" 4.7683716e-07 0 3.5762787e-07 ;
	setAttr ".pt[569]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[570]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".pt[571]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[572]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[573]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[574]" -type "float3" 9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[575]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[576]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[577]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[578]" -type "float3" -4.7683716e-07 0 -7.1525574e-07 ;
	setAttr ".pt[579]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[580]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[581]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[582]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[583]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[584]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[586]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[587]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[588]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[589]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[590]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[591]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[592]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[593]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[594]" -type "float3" -1.4305115e-06 0 -1.1920929e-07 ;
	setAttr ".pt[595]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[596]" -type "float3" 1.4305115e-06 0 -1.1920929e-07 ;
	setAttr ".pt[597]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[598]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[600]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[601]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[602]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[603]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[605]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[606]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[607]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[608]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[609]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[610]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[611]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[613]" -type "float3" -9.5367432e-07 0 4.7683716e-07 ;
	setAttr ".pt[614]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[615]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[616]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[617]" -type "float3" 4.7683716e-07 0 -7.1525574e-07 ;
	setAttr ".pt[618]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[619]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[620]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[621]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[622]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[623]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[624]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[626]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[627]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[628]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[629]" -type "float3" 4.7683716e-07 0 2.9802322e-08 ;
	setAttr ".pt[630]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[631]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[633]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[634]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[635]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[636]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[637]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[638]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[639]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[640]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[641]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[642]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[643]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[644]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[645]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[646]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[647]" -type "float3" 2.3841858e-07 0 -4.4703484e-08 ;
	setAttr ".pt[648]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[649]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[650]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[651]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[653]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[654]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[655]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[656]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[657]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[658]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[659]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[660]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[661]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[662]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[663]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[664]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[665]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[666]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[667]" -type "float3" -2.3841858e-07 0 -8.9406967e-08 ;
	setAttr ".pt[668]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[669]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[670]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[671]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[672]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[673]" -type "float3" 0 0 7.1525574e-07 ;
	setAttr ".pt[675]" -type "float3" 7.1525574e-07 0 0 ;
	setAttr ".pt[676]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[678]" -type "float3" -1.4305115e-06 0 -2.3841858e-07 ;
	setAttr ".pt[679]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[680]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[681]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[682]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[683]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[684]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[685]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[686]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[688]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[689]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[690]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[691]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[692]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[693]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[694]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[695]" -type "float3" 4.7683716e-07 0 7.1525574e-07 ;
	setAttr ".pt[696]" -type "float3" 1.4305115e-06 0 -5.9604645e-08 ;
	setAttr ".pt[697]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[698]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[699]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[700]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[702]" -type "float3" 9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[703]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[704]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[705]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[707]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[709]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[710]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[711]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[712]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[713]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[734]" -type "float3" -3.5762787e-07 0 -7.1525574e-07 ;
	setAttr ".pt[735]" -type "float3" -2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[736]" -type "float3" 4.7683716e-07 0 -7.1525574e-07 ;
	setAttr ".pt[737]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[738]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[739]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[741]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[742]" -type "float3" -9.5367432e-07 0 1.7881393e-07 ;
	setAttr ".pt[743]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".pt[744]" -type "float3" -2.3841858e-07 0 -1.1920929e-07 ;
	setAttr ".pt[745]" -type "float3" 7.1525574e-07 0 -5.9604645e-08 ;
	setAttr ".pt[746]" -type "float3" 2.3841858e-07 0 1.7881393e-07 ;
	setAttr ".pt[748]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[749]" -type "float3" 5.9604645e-08 0 -3.5762787e-07 ;
	setAttr ".pt[750]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[751]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[753]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[785]" -type "float3" 9.5367432e-07 0 4.7683716e-07 ;
	setAttr ".pt[786]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[787]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[788]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[789]" -type "float3" -7.1525574e-07 0 -4.7683716e-07 ;
	setAttr ".pt[790]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[791]" -type "float3" 2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[792]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[793]" -type "float3" 2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[794]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[795]" -type "float3" -2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[796]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[797]" -type "float3" -7.1525574e-07 0 -7.1525574e-07 ;
	setAttr ".pt[798]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[799]" -type "float3" 8.9406967e-08 0 2.3841858e-07 ;
	setAttr ".pt[800]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[801]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[802]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[803]" -type "float3" 1.1920929e-07 0 3.5762787e-07 ;
	setAttr ".pt[804]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[805]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[806]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[807]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[808]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[810]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[811]" -type "float3" -1.1920929e-07 0 2.0861626e-07 ;
	setAttr ".pt[812]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[813]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[814]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[815]" -type "float3" -2.3841858e-07 0 -1.7881393e-07 ;
	setAttr ".pt[816]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[817]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[818]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[819]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[820]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[821]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[822]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[823]" -type "float3" 1.4305115e-06 0 -1.1920929e-07 ;
	setAttr ".pt[824]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1109]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1111]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1112]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1113]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1114]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1115]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1116]" -type "float3" -9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[1616]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1617]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1619]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1620]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1621]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[1622]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1623]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[1624]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[1625]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[1626]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[1627]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[1629]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[1630]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[1631]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1632]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[1633]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1634]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[1635]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1636]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[1637]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[1638]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1639]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[1640]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1641]" -type "float3" 2.3841858e-07 0 -7.4505806e-08 ;
	setAttr ".pt[1642]" -type "float3" 0 0 2.6077032e-08 ;
	setAttr ".pt[1643]" -type "float3" 4.7683716e-07 0 -5.9604645e-08 ;
	setAttr ".pt[1644]" -type "float3" -4.7683716e-07 0 -5.9604645e-08 ;
	setAttr ".pt[1645]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1646]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1647]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1648]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1649]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1650]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1651]" -type "float3" 2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[1652]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1653]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1654]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[1655]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1656]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1657]" -type "float3" 0 0 -7.1525574e-07 ;
	setAttr ".pt[1659]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1660]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1661]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[1662]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1663]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[1664]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[1665]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[1666]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[1667]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[1669]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[1670]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[1671]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1672]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[1673]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1674]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[1675]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1676]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[1677]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[1678]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1679]" -type "float3" 0 0 -1.1175871e-07 ;
	setAttr ".pt[1680]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1681]" -type "float3" -4.7683716e-07 0 -2.9802322e-08 ;
	setAttr ".pt[1682]" -type "float3" 0 0 2.6077032e-08 ;
	setAttr ".pt[1683]" -type "float3" 4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[1684]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[1685]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1687]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1688]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1689]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1691]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1692]" -type "float3" -4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[1694]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[1695]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1696]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".pt[1697]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1698]" -type "float3" -2.3841858e-07 0 5.9604645e-08 ;
	setAttr ".pt[1699]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1700]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1701]" -type "float3" -9.5367432e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1702]" -type "float3" 2.3841858e-07 0 1.1920929e-07 ;
	setAttr ".pt[1703]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1704]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1705]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1706]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1707]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[1708]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1709]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1710]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1712]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1713]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1714]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1715]" -type "float3" -2.3841858e-07 0 -7.1525574e-07 ;
	setAttr ".pt[1716]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1717]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1718]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1720]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1721]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1722]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1723]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1724]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1725]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1727]" -type "float3" 0 0 -3.5762787e-07 ;
	setAttr ".pt[1728]" -type "float3" 4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[1729]" -type "float3" 7.1525574e-07 0 1.1920929e-07 ;
	setAttr ".pt[1730]" -type "float3" -2.3841858e-07 0 -5.9604645e-08 ;
	setAttr ".pt[1731]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1732]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1733]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1734]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1735]" -type "float3" -2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1736]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1737]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1738]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1739]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1740]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[1741]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1742]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1743]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1744]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1745]" -type "float3" 9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1746]" -type "float3" 0 0 7.1525574e-07 ;
	setAttr ".pt[1748]" -type "float3" -9.5367432e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1749]" -type "float3" 4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1750]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1752]" -type "float3" 4.7683716e-07 0 7.1525574e-07 ;
	setAttr ".pt[1753]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1754]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1755]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1756]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1757]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1758]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1759]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1760]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1761]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1762]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1763]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1764]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1767]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1768]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1770]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1771]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1772]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1774]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1775]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[1776]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1777]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1778]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1779]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1780]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1781]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1782]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1783]" -type "float3" -9.5367432e-07 0 4.7683716e-07 ;
	setAttr ".pt[1784]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1785]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1786]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1787]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1788]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1789]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1790]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1791]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1792]" -type "float3" 1.4305115e-06 0 -2.3841858e-07 ;
	setAttr ".pt[1793]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1794]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1795]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1796]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1797]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1798]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1799]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1800]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1801]" -type "float3" 1.4305115e-06 0 1.1920929e-07 ;
	setAttr ".pt[1802]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1803]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1804]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1805]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1807]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[1808]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1809]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1811]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1812]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1813]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1814]" -type "float3" 4.7683716e-07 0 -5.9604645e-08 ;
	setAttr ".pt[1815]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1816]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1817]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1818]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1820]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1821]" -type "float3" 1.4305115e-06 0 -3.5762787e-07 ;
	setAttr ".pt[1822]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1823]" -type "float3" 9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[1824]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1825]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1826]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1827]" -type "float3" -7.1525574e-07 0 -8.9406967e-08 ;
	setAttr ".pt[1828]" -type "float3" -2.3841858e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1829]" -type "float3" -4.7683716e-07 0 -5.9604645e-08 ;
	setAttr ".pt[1831]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1832]" -type "float3" 9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[1833]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1834]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1835]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1836]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1837]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1838]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1839]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1840]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1841]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1842]" -type "float3" -4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[1843]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1844]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1845]" -type "float3" -4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[1846]" -type "float3" -9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[1847]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1848]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1850]" -type "float3" -9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1851]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1853]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1854]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1855]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1856]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1857]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1858]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1859]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1860]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1861]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1862]" -type "float3" 4.7683716e-07 0 -3.5762787e-07 ;
	setAttr ".pt[1863]" -type "float3" 1.4305115e-06 0 0 ;
	setAttr ".pt[1864]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1865]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1866]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1867]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1868]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1869]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1870]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[1871]" -type "float3" -9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1874]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1875]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1878]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1879]" -type "float3" 1.4305115e-06 0 -2.3841858e-07 ;
	setAttr ".pt[1880]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1881]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1883]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1884]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1885]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1886]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[1887]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1888]" -type "float3" -1.9073486e-06 0 0 ;
	setAttr ".pt[1889]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1890]" -type "float3" 1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[1891]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1892]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1894]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1895]" -type "float3" -9.5367432e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1896]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1897]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1898]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1899]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1900]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1901]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1902]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[1903]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1904]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[1905]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1906]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1907]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[1908]" -type "float3" 4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1909]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1910]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1911]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[1912]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1913]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1914]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[1915]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1916]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1918]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[1919]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1920]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1921]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1922]" -type "float3" 4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[1923]" -type "float3" 7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1924]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1925]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1926]" -type "float3" 7.1525574e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1927]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1928]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1929]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1930]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1931]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1933]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1934]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1935]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1936]" -type "float3" -2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[1937]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1938]" -type "float3" 2.3841858e-07 0 -7.4505806e-08 ;
	setAttr ".pt[1939]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[1940]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1941]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1942]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[1943]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1945]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[1946]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1947]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1948]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1949]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[1950]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1951]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1952]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[1953]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1954]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[1955]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[1956]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[1957]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[1958]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[1960]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[1961]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[1962]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1963]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[1964]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[1965]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[1966]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1967]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[1968]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[1969]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1970]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[1971]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1972]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1973]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[1974]" -type "float3" 9.5367432e-07 0 1.7881393e-07 ;
	setAttr ".pt[1975]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[1976]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[1977]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1978]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[1979]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[1980]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[1981]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[1982]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1983]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1984]" -type "float3" -2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1985]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[1986]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[1987]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[1988]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[1989]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[1990]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[1991]" -type "float3" -4.1723251e-07 0 0 ;
	setAttr ".pt[1992]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[1993]" -type "float3" 5.9604645e-08 0 2.3841858e-07 ;
	setAttr ".pt[1994]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[1995]" -type "float3" -2.9802322e-08 0 2.3841858e-07 ;
	setAttr ".pt[1996]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[1997]" -type "float3" 5.9604645e-08 0 1.1920929e-07 ;
	setAttr ".pt[1999]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[2000]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2001]" -type "float3" 1.1920929e-07 0 -1.4901161e-08 ;
	setAttr ".pt[2002]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2003]" -type "float3" -2.3841858e-07 0 -1.4901161e-08 ;
	setAttr ".pt[2004]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2005]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2006]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2007]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[2008]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2009]" -type "float3" -2.3841858e-07 0 1.937151e-07 ;
	setAttr ".pt[2010]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2011]" -type "float3" 4.7683716e-07 0 -4.4703484e-08 ;
	setAttr ".pt[2012]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[2013]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2014]" -type "float3" -4.7683716e-07 0 -5.9604645e-08 ;
	setAttr ".pt[2016]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2017]" -type "float3" -1.4305115e-06 0 2.3841858e-07 ;
	setAttr ".pt[2018]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2019]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2020]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2021]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2022]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2023]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2025]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2026]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2027]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2028]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2029]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2030]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2032]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2033]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2034]" -type "float3" -1.9073486e-06 0 4.7683716e-07 ;
	setAttr ".pt[2035]" -type "float3" -7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2036]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2037]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2038]" -type "float3" -2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2040]" -type "float3" 7.1525574e-07 0 0 ;
	setAttr ".pt[2041]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2042]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2043]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2044]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2045]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[2046]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2047]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2048]" -type "float3" -7.1525574e-07 0 2.3841858e-07 ;
	setAttr ".pt[2050]" -type "float3" 7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2051]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2052]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2053]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2054]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2055]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[2056]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2057]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2058]" -type "float3" 9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2059]" -type "float3" -7.1525574e-07 0 2.3841858e-07 ;
	setAttr ".pt[2060]" -type "float3" -2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[2061]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2062]" -type "float3" -7.1525574e-07 0 2.3841858e-07 ;
	setAttr ".pt[2063]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2064]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2065]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2066]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2067]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2068]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2069]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2070]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2072]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2073]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2074]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2075]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[2077]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2078]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2080]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2081]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2082]" -type "float3" 1.4305115e-06 0 0 ;
	setAttr ".pt[2083]" -type "float3" 9.5367432e-07 0 -5.9604645e-08 ;
	setAttr ".pt[2084]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2085]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2086]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2087]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2088]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2089]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2090]" -type "float3" 1.4305115e-06 0 1.1920929e-07 ;
	setAttr ".pt[2091]" -type "float3" -9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[2092]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2093]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2095]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2096]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2097]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2098]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[2099]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2100]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2101]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2102]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2103]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2105]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2106]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2107]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2166]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2167]" -type "float3" 9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2168]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2169]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[2170]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2171]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2172]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[2173]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[2175]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2176]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2177]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2178]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2179]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2180]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2181]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[2182]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2183]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2184]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2185]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2308]" -type "float3" 2.7939677e-09 0 0 ;
	setAttr ".pt[2309]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2318]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2319]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2320]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2321]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2354]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2552]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[2553]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2554]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2555]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[2556]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[2558]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2559]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2560]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2561]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2562]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2563]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2564]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[2566]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2567]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2568]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2569]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2570]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2571]" -type "float3" -7.1525574e-07 0 2.3841858e-07 ;
	setAttr ".pt[2572]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2573]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2574]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2575]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[2576]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[2578]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2579]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2580]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2581]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2582]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2583]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2584]" -type "float3" 9.5367432e-07 0 -1.4901161e-08 ;
	setAttr ".pt[2585]" -type "float3" 4.7683716e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2586]" -type "float3" -2.3841858e-07 0 1.1920929e-07 ;
	setAttr ".pt[2587]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2588]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2589]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2590]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2591]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2592]" -type "float3" 0 0 -3.5762787e-07 ;
	setAttr ".pt[2593]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2594]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2595]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[2597]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[2598]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2599]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2600]" -type "float3" -7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2601]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2602]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2603]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2604]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[2605]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2606]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2607]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2608]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[2609]" -type "float3" -1.9073486e-06 0 -2.3841858e-07 ;
	setAttr ".pt[2610]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[2611]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2612]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2614]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2615]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2616]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2617]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2618]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2619]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2621]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2623]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2624]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2625]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2626]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2627]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2628]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2629]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2630]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2631]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2632]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2633]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2635]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2636]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2637]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2638]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2639]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2640]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2641]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2642]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2643]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[2644]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2645]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2646]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2647]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[2648]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2649]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2650]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2652]" -type "float3" 1.4305115e-06 0 -1.1920929e-07 ;
	setAttr ".pt[2653]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[2654]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2655]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2656]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2657]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2658]" -type "float3" 9.5367432e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2659]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2660]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2661]" -type "float3" 9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[2662]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2663]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2664]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2665]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2666]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2667]" -type "float3" -9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[2668]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2670]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2671]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[2672]" -type "float3" -9.5367432e-07 0 1.1920929e-07 ;
	setAttr ".pt[2673]" -type "float3" -4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2674]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2675]" -type "float3" 4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2676]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2677]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2678]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2679]" -type "float3" 1.4305115e-06 0 0 ;
	setAttr ".pt[2680]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2681]" -type "float3" -4.7683716e-07 0 4.7683716e-07 ;
	setAttr ".pt[2682]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2683]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2684]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2685]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2687]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2688]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2689]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2690]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2691]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2692]" -type "float3" -9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2693]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2695]" -type "float3" 9.5367432e-07 0 2.3841858e-07 ;
	setAttr ".pt[2696]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[2697]" -type "float3" 7.1525574e-07 0 0 ;
	setAttr ".pt[2698]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2699]" -type "float3" 2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[2700]" -type "float3" 4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2701]" -type "float3" -2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2702]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2703]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2704]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2705]" -type "float3" -7.1525574e-07 0 2.3841858e-07 ;
	setAttr ".pt[2706]" -type "float3" 4.7683716e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2707]" -type "float3" 2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2708]" -type "float3" -2.3841858e-07 0 2.3841858e-07 ;
	setAttr ".pt[2709]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2710]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[2711]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2712]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2713]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[2714]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[2716]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2717]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2718]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2719]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2720]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2721]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2722]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[2723]" -type "float3" -4.7683716e-07 0 8.9406967e-08 ;
	setAttr ".pt[2724]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2725]" -type "float3" -4.7683716e-07 0 -1.1920929e-07 ;
	setAttr ".pt[2726]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2727]" -type "float3" -2.3841858e-07 0 4.7683716e-07 ;
	setAttr ".pt[2728]" -type "float3" 0 0 -4.7683716e-07 ;
	setAttr ".pt[2729]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2730]" -type "float3" -7.1525574e-07 0 0 ;
	setAttr ".pt[2731]" -type "float3" 3.5762787e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2732]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2733]" -type "float3" 5.9604645e-08 0 4.7683716e-07 ;
	setAttr ".pt[2734]" -type "float3" 8.9406967e-08 0 0 ;
	setAttr ".pt[2736]" -type "float3" 5.9604645e-08 0 -1.1920929e-07 ;
	setAttr ".pt[2737]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[2738]" -type "float3" -1.1920929e-07 0 -2.9802322e-08 ;
	setAttr ".pt[2739]" -type "float3" -3.5762787e-07 0 5.9604645e-08 ;
	setAttr ".pt[2740]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2741]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2742]" -type "float3" 2.3841858e-07 0 1.15484e-07 ;
	setAttr ".pt[2743]" -type "float3" 1.4305115e-06 0 2.9802322e-08 ;
	setAttr ".pt[2744]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2745]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2746]" -type "float3" 9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2748]" -type "float3" 2.3841858e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2749]" -type "float3" -4.7683716e-07 0 -4.7683716e-07 ;
	setAttr ".pt[2750]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2751]" -type "float3" -4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2753]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2754]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[2755]" -type "float3" 2.3841858e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2757]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2758]" -type "float3" -4.7683716e-07 0 2.3841858e-07 ;
	setAttr ".pt[2759]" -type "float3" -9.5367432e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2760]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".pt[2761]" -type "float3" 7.1525574e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2762]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[2763]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2764]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2765]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2766]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2767]" -type "float3" -2.3841858e-07 0 0 ;
	setAttr ".pt[2768]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2769]" -type "float3" 4.7683716e-07 0 -2.3841858e-07 ;
	setAttr ".pt[2771]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[2772]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2773]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2774]" -type "float3" -4.7683716e-07 0 5.9604645e-08 ;
	setAttr ".pt[2775]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[2776]" -type "float3" 4.7683716e-07 0 -3.5762787e-07 ;
	setAttr ".pt[2778]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2781]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[2782]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[2783]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[2784]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[2785]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2786]" -type "float3" 4.7683716e-07 0 1.1920929e-07 ;
	setAttr ".pt[2787]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[2789]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr -s 121 ".vt[0:120]"  7.87364817 16.38776779 5.027129173 7.82103825 16.9653511 5.64790487
		 7.21165609 16.4432373 5.19425678 7.39896584 17.021457672 5.75458288 7.25792122 18.82380295 3.29877472
		 7.23099613 19.088409424 3.58986568 6.91440296 18.82060242 3.38868952 6.99383736 19.085594177 3.65128422
		 6.11147404 19.64254761 1.8480978 6.10591364 19.75138664 1.96633315 5.9669857 19.64049149 1.88515186
		 5.99413919 19.74945068 1.9946208 7.083412647 17.60976791 4.65060997 7.70291996 17.21426773 4.4852829
		 7.64455462 17.70908737 5.11190224 7.27470636 18.05191803 5.21040154 7.15201044 18.12475967 4.16490078
		 7.68637705 18.085037231 4.023087502 7.62375212 18.49253464 4.5493288 7.30511618 18.5476532 4.6334219
		 7.42453575 17.47159958 3.34424973 7.37226868 17.7775898 3.12559628 7.053197861 17.51773643 3.44329858
		 7.036011696 17.78529358 3.2149725 7.092895508 17.55891418 2.57381725 7.056903839 17.70044518 2.46053457
		 6.90051222 17.5580101 2.62513351 6.88269472 17.69947433 2.50683928 7.28733253 17.56513214 1.962538
		 7.27129841 17.6339016 1.90708661 7.19530201 17.56468582 1.98707175 7.18518162 17.6334343 1.92999005
		 7.93465042 16.68599319 5.30840063 7.5385046 16.25344658 5.019540787 7.21194077 16.76037598 5.49093866
		 7.63234329 17.043071747 5.83018589 7.75153303 16.9046669 4.81083393 7.70246363 17.3869133 5.34135294
		 7.29284716 18.95660591 3.43170905 7.16515827 17.13210106 4.96765041 7.081787109 18.77807045 3.29759216
		 7.30992365 17.61504173 5.44623518 6.9057312 18.95259857 3.53259659 7.11679363 19.13113403 3.66671491
		 6.59627819 19.31944656 2.4188838 6.57764435 19.50257874 2.62034583 5.96578121 19.79750061 1.68670523
		 6.34993792 19.31648636 2.48264265 5.88538885 19.73477554 1.64128017 6.40491056 19.49988174 2.66438317
		 5.8171792 19.79489517 1.72428632 5.89757061 19.85762215 1.769714 7.071187973 17.92124748 4.40591717
		 7.73582554 17.65659332 4.22899771 7.38557291 17.27387238 4.51291656 7.63951921 18.10560989 4.85385799
		 7.74416113 17.42701721 4.84394264 7.293293 18.33332634 4.94571114 7.46707201 17.95555115 5.23961544
		 7.13045311 17.8836956 5.0075807571 7.15117025 18.45492554 3.92938042 7.56700134 18.4580307 3.81970954
		 7.39957666 18.13333893 3.93664265 7.533638 18.78593254 4.18042946 7.70867491 18.29483414 4.32449675
		 7.24960089 18.78329849 4.25478745 7.47066975 18.58299446 4.65713501 7.18277502 18.36796761 4.46369457
		 7.56852913 17.38096809 3.88444448 7.54836607 17.86211777 3.60436964 7.45736885 17.62010956 3.21922064
		 7.092888832 17.57024384 4.011316299 7.24465656 17.44687271 3.43102479 7.11765909 17.89802551 3.71885204
		 6.98564148 17.65600204 3.34483862 7.19835377 17.82923698 3.13303518 7.21875525 17.52996445 2.93325615
		 7.16767073 17.73083687 2.77247524 7.10544968 17.62983704 2.50904036 6.94570541 17.52868271 3.0060892105
		 7.0011878014 17.53487968 2.61877298 6.92041588 17.72946167 2.8381958 6.86105251 17.62858582 2.57412195
		 6.96531391 17.72354507 2.46438885 7.18867016 17.56131172 2.18828917 7.16230202 17.6649971 2.10529709
		 7.33447504 17.5948391 1.85560703 7.047727585 17.56064606 2.22588396 7.28716803 17.551754 1.90539646
		 7.034673691 17.66428566 2.13922071 7.22358418 17.59427261 1.8851366 7.27089119 17.6373558 1.8353467
		 5.69457722 19.92506409 1.42514098 7.45036983 16.93795013 4.80515099 7.80857372 17.10782623 5.054285049
		 7.15596437 17.41153526 5.22875166 7.51416826 17.58140945 5.4778862 6.47007847 19.28742218 2.4188292
		 6.62188387 19.41148376 2.5106318 6.34250116 19.40771294 2.5824964 6.49430561 19.53177643 2.67429852
		 7.3359251 17.58847046 1.77227116 7.73235369 17.85951996 4.60578966 7.47329235 18.28891182 4.97238827
		 7.15914869 18.16274643 4.75815487 7.35366344 18.40178871 3.81736851 7.6086421 18.62245941 3.98473382
		 7.3970418 18.83930588 4.274786 7.14206314 18.61863327 4.10741997 7.63397646 17.60277748 3.72429395
		 7.33032513 17.4081955 3.99559188 7.029745579 17.75289917 3.88519669 7.33339691 17.94748306 3.61389923
		 7.23657179 17.63062286 2.84131956 7.088595867 17.49585342 2.99706268 6.88970137 17.62884903 2.93368912
		 7.037679195 17.76362228 2.77794623 7.19786692 17.61326981 2.1408329 7.1214838 17.54370117 2.22122455
		 7.018819809 17.61235046 2.18851185 7.095202446 17.6819191 2.1081214;
	setAttr -s 236 ".ed";
	setAttr ".ed[0:165]"  0 32 0 32 1 0 0 33 0 33 2 0 2 34 0 34 3 0 1 35 0 35 3 0
		 0 36 1 36 13 1 1 37 1 37 14 1 4 38 1 38 5 1 2 39 1 39 12 1 4 40 1 40 6 1 3 41 1 41 15 1
		 6 42 1 42 7 1 5 43 1 43 7 1 4 44 1 44 8 1 5 45 1 45 9 1 8 46 1 46 9 1 6 47 1 47 10 1
		 8 48 1 48 10 1 7 49 1 49 11 1 10 50 1 50 11 1 9 51 1 51 11 1 12 52 1 52 16 1 13 53 1
		 53 17 1 12 54 1 54 13 1 14 55 1 55 18 1 13 56 1 56 14 1 15 57 1 57 19 1 14 58 1 58 15 1
		 15 59 1 59 12 1 16 60 1 60 6 1 17 61 1 61 4 1 16 62 1 62 17 1 18 63 1 63 5 1 17 64 1
		 64 18 1 19 65 1 65 7 1 18 66 1 66 19 1 19 67 1 67 16 1 13 68 1 68 20 1 17 69 1 69 21 1
		 20 70 1 70 21 1 12 71 1 71 22 1 22 72 1 72 20 1 16 73 1 73 23 1 22 74 1 74 23 1 23 75 1
		 75 21 1 20 76 1 76 24 1 21 77 1 77 25 1 24 78 1 78 25 1 22 79 1 79 26 1 26 80 1 80 24 1
		 23 81 1 81 27 1 26 82 1 82 27 1 27 83 1 83 25 1 24 84 1 84 28 1 25 85 1 85 29 1 28 86 1
		 86 29 1 26 87 1 87 30 1 30 88 1 88 28 1 27 89 1 89 31 1 30 90 1 90 31 1 31 91 1 91 29 1
		 92 46 1 92 48 1 92 50 1 92 51 1 93 36 1 93 33 1 93 39 1 93 54 1 94 32 1 94 36 1 94 56 1
		 94 37 1 95 34 1 95 41 1 95 59 1 95 39 1 96 58 1 96 41 1 96 35 1 96 37 1 97 44 1 97 40 1
		 97 47 1 97 48 1 98 38 1 98 44 1 98 46 1 98 45 1 99 42 1 99 49 1 99 50 1 99 47 1 100 51 1
		 100 49 1 100 43 1 100 45 1 101 86 1 101 88 1 101 90 1 101 91 1 102 56 1 102 53 1
		 102 64 1 102 55 1 103 66 1 103 57 1;
	setAttr ".ed[166:235]" 103 58 1 103 55 1 104 59 1 104 57 1 104 67 1 104 52 1
		 105 61 1 105 62 1 105 60 1 105 40 1 106 64 1 106 61 1 106 38 1 106 63 1 107 43 1
		 107 65 1 107 66 1 107 63 1 108 67 1 108 65 1 108 42 1 108 60 1 109 53 1 109 68 1
		 109 70 1 109 69 1 110 54 1 110 71 1 110 72 1 110 68 1 111 52 1 111 73 1 111 74 1
		 111 71 1 112 62 1 112 69 1 112 75 1 112 73 1 113 70 1 113 76 1 113 78 1 113 77 1
		 114 72 1 114 79 1 114 80 1 114 76 1 115 74 1 115 81 1 115 82 1 115 79 1 116 75 1
		 116 77 1 116 83 1 116 81 1 117 78 1 117 84 1 117 86 1 117 85 1 118 80 1 118 87 1
		 118 88 1 118 84 1 119 82 1 119 89 1 119 90 1 119 87 1 120 83 1 120 85 1 120 91 1
		 120 89 1;
	setAttr -s 116 -ch 464 ".fc[0:115]" -type "polyFaces" 
		f 4 -29 32 -122 120
		mu 0 4 52 51 57 58
		f 4 33 36 -123 121
		mu 0 4 113 109 102 108
		f 4 37 -40 -124 122
		mu 0 4 102 101 107 108
		f 4 -39 -30 -121 123
		mu 0 4 63 59 52 58
		f 4 -9 2 -126 124
		mu 0 4 5 4 1 3
		f 4 3 14 -127 125
		mu 0 4 1 0 2 3
		f 4 15 44 -128 126
		mu 0 4 72 75 79 80
		f 4 45 -10 -125 127
		mu 0 4 6 7 5 3
		f 4 -1 8 -130 128
		mu 0 4 9 8 10 11
		f 4 9 48 -131 129
		mu 0 4 10 13 14 11
		f 4 49 -12 -132 130
		mu 0 4 14 18 15 11
		f 4 -11 -2 -129 131
		mu 0 4 15 12 9 11
		f 4 5 18 -134 132
		mu 0 4 66 65 67 68
		f 4 19 54 -135 133
		mu 0 4 67 70 71 68
		f 4 55 -16 -136 134
		mu 0 4 71 75 72 68
		f 4 -15 4 -133 135
		mu 0 4 72 69 66 68
		f 4 53 -20 -138 136
		mu 0 4 124 125 122 123
		f 4 -19 -8 -139 137
		mu 0 4 122 121 120 123
		f 4 -7 10 -140 138
		mu 0 4 19 12 15 20
		f 4 11 52 -137 139
		mu 0 4 15 18 26 20
		f 4 -25 16 -142 140
		mu 0 4 146 147 138 141
		f 4 17 30 -143 141
		mu 0 4 138 139 140 141
		f 4 31 -34 -144 142
		mu 0 4 140 144 145 141
		f 4 -33 -26 -141 143
		mu 0 4 145 149 146 141
		f 4 -13 24 -146 144
		mu 0 4 38 37 44 45
		f 4 25 28 -147 145
		mu 0 4 44 51 52 45
		f 4 29 -28 -148 146
		mu 0 4 52 59 53 45
		f 4 -27 -14 -145 147
		mu 0 4 53 46 38 45
		f 4 21 34 -150 148
		mu 0 4 88 87 93 94
		f 4 35 -38 -151 149
		mu 0 4 93 101 102 94
		f 4 -37 -32 -152 150
		mu 0 4 102 109 103 94
		f 4 -31 20 -149 151
		mu 0 4 103 95 88 94
		f 4 39 -36 -154 152
		mu 0 4 136 137 134 135
		f 4 -35 -24 -155 153
		mu 0 4 134 133 132 135
		f 4 -23 26 -156 154
		mu 0 4 150 151 152 153
		f 4 27 38 -153 155
		mu 0 4 152 156 157 153
		f 4 -109 -114 -158 156
		mu 0 4 55 54 60 61
		f 4 -113 116 -159 157
		mu 0 4 158 159 160 161
		f 4 117 118 -160 158
		mu 0 4 115 117 118 119
		f 4 119 -110 -157 159
		mu 0 4 64 62 55 61
		f 4 -49 42 -162 160
		mu 0 4 14 13 16 17
		f 4 43 64 -163 161
		mu 0 4 16 23 24 17
		f 4 65 -48 -164 162
		mu 0 4 24 32 25 17
		f 4 -47 -50 -161 163
		mu 0 4 25 18 14 17
		f 4 69 -52 -166 164
		mu 0 4 128 129 126 127
		f 4 -51 -54 -167 165
		mu 0 4 126 125 124 127
		f 4 -53 46 -168 166
		mu 0 4 26 18 25 33
		f 4 47 68 -165 167
		mu 0 4 25 32 40 33
		f 4 -55 50 -170 168
		mu 0 4 71 70 73 74
		f 4 51 70 -171 169
		mu 0 4 73 76 77 74
		f 4 71 -42 -172 170
		mu 0 4 77 83 78 74
		f 4 -41 -56 -169 171
		mu 0 4 78 75 71 74
		f 4 -59 -62 -174 172
		mu 0 4 180 181 182 183
		f 4 -61 56 -175 173
		mu 0 4 96 83 89 97
		f 4 57 -18 -176 174
		mu 0 4 142 139 138 143
		f 4 -17 -60 -173 175
		mu 0 4 138 147 148 143
		f 4 -65 58 -178 176
		mu 0 4 24 23 30 31
		f 4 59 12 -179 177
		mu 0 4 30 37 38 31
		f 4 13 -64 -180 178
		mu 0 4 38 46 39 31
		f 4 -63 -66 -177 179
		mu 0 4 39 32 24 31
		f 4 23 -68 -182 180
		mu 0 4 132 133 130 131
		f 4 -67 -70 -183 181
		mu 0 4 130 129 128 131
		f 4 -69 62 -184 182
		mu 0 4 40 32 39 47
		f 4 63 22 -181 183
		mu 0 4 154 151 150 155
		f 4 -71 66 -186 184
		mu 0 4 77 76 81 82
		f 4 67 -22 -187 185
		mu 0 4 81 87 88 82
		f 4 -21 -58 -188 186
		mu 0 4 88 95 89 82
		f 4 -57 -72 -185 187
		mu 0 4 89 83 77 82
		f 4 -43 72 -190 188
		mu 0 4 16 13 21 22
		f 4 73 76 -191 189
		mu 0 4 21 27 28 22
		f 4 77 -76 -192 190
		mu 0 4 28 36 29 22
		f 4 -75 -44 -189 191
		mu 0 4 29 23 16 22
		f 4 -45 78 -194 192
		mu 0 4 79 75 84 86
		f 4 79 80 -195 193
		mu 0 4 175 173 172 176
		f 4 81 -74 -196 194
		mu 0 4 172 174 177 176
		f 4 -73 -46 -193 195
		mu 0 4 177 178 179 176
		f 4 41 82 -198 196
		mu 0 4 78 83 90 85
		f 4 83 -86 -199 197
		mu 0 4 90 98 91 85
		f 4 -85 -80 -200 198
		mu 0 4 91 92 84 85
		f 4 -79 40 -197 199
		mu 0 4 84 75 78 85
		f 4 61 74 -202 200
		mu 0 4 182 181 184 185
		f 4 75 -88 -203 201
		mu 0 4 186 187 188 189
		f 4 -87 -84 -204 202
		mu 0 4 188 192 193 189
		f 4 -83 60 -201 203
		mu 0 4 193 197 198 189
		f 4 -77 88 -206 204
		mu 0 4 28 27 34 35
		f 4 89 92 -207 205
		mu 0 4 34 41 42 35
		f 4 93 -92 -208 206
		mu 0 4 42 50 43 35
		f 4 -91 -78 -205 207
		mu 0 4 43 36 28 35
		f 4 -81 94 -210 208
		mu 0 4 172 173 169 170
		f 4 95 96 -211 209
		mu 0 4 169 167 166 170
		f 4 97 -90 -212 210
		mu 0 4 166 168 171 170
		f 4 -89 -82 -209 211
		mu 0 4 171 174 172 170
		f 4 85 98 -214 212
		mu 0 4 91 98 104 100
		f 4 99 -102 -215 213
		mu 0 4 104 110 105 100
		f 4 -101 -96 -216 214
		mu 0 4 105 106 99 100
		f 4 -95 84 -213 215
		mu 0 4 99 92 91 100
		f 4 87 90 -218 216
		mu 0 4 188 187 190 191
		f 4 91 -104 -219 217
		mu 0 4 190 194 195 191
		f 4 -103 -100 -220 218
		mu 0 4 195 201 196 191
		f 4 -99 86 -217 219
		mu 0 4 196 192 188 191
		f 4 -93 104 -222 220
		mu 0 4 42 41 48 49
		f 4 105 108 -223 221
		mu 0 4 48 54 55 49
		f 4 109 -108 -224 222
		mu 0 4 55 62 56 49
		f 4 -107 -94 -221 223
		mu 0 4 56 50 42 49
		f 4 -97 110 -226 224
		mu 0 4 166 167 162 163
		f 4 111 112 -227 225
		mu 0 4 162 159 158 163
		f 4 113 -106 -228 226
		mu 0 4 158 164 165 163
		f 4 -105 -98 -225 227
		mu 0 4 165 168 166 163
		f 4 101 114 -230 228
		mu 0 4 105 110 114 112
		f 4 115 -118 -231 229
		mu 0 4 114 117 115 112
		f 4 -117 -112 -232 230
		mu 0 4 115 116 111 112
		f 4 -111 100 -229 231
		mu 0 4 111 106 105 112
		f 4 103 106 -234 232
		mu 0 4 195 194 199 200
		f 4 107 -120 -235 233
		mu 0 4 199 202 203 200
		f 4 -119 -116 -236 234
		mu 0 4 203 205 204 200
		f 4 -115 102 -233 235
		mu 0 4 204 201 195 200;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "treetexture";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/MetteKyhn/Documents/maya/projects/default//images/treemonsterUV2.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/MetteKyhn/Documents/maya/projects/default//images/treemonsterUV2.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "/Users/MetteKyhn/Documents/maya/projects/default//images/treemonsterUV4.psd";
createNode place2dTexture -n "place2dTexture3";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 32;
	setAttr ".sv2" 3;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".sv1" 0;
	setAttr ".sv2" 34;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[252]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[249]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[246]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[243]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[240]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "e[264]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "e[261]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "e[258]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "e[255]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "e[252]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "vtx[140]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "vtx[138]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "vtx[134]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "vtx[132]";
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr ".tk[134]" -type "float3"  -0.0041475296 -0.16205597 -0.091152191;
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "vtx[121]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "vtx[122]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 1 "vtx[125]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "vtx[126]";
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr ".tk[123]" -type "float3"  0.022341251 0.049667358 0.12894154;
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 1 "vtx[121]";
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 1 "vtx[126]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 1 "vtx[121]";
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "vtx[122]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 1 "vtx[124]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 1 "vtx[124]";
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "vtx[123]";
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 1 "vtx[122]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 1 "vtx[124]";
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "vtx[123]";
select -ne :time1;
	setAttr ".o" 22;
	setAttr ".unw" 22;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "deleteComponent28.og" "pCylinderShape2.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file2.oc" "treetexture.c";
connectAttr "treetexture.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "treetexture.msg" "materialInfo1.m";
connectAttr "file2.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCylinderShape2.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file3.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "polySurfaceShape1.o" "polyBridgeEdge2.ip";
connectAttr "pCylinderShape2.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "pCylinderShape2.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "treetexture.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of treeRoot.ma
