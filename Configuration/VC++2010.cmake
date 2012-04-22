set(MSVC_COMPATIBLE_COMPILER 1) 
set(EXTERNAL_CPP_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/Ocsfml/Include")
set(TESTS_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/Ocsfml")
set(LIB_MAKER "lib")
set(DLL_LINKER "flexlink")
set(LINK_STDLIB_STA "S []")
set(LINK_STDLIB_DYN "S []")
set(OBJ_FLAG "/Fo")
set(LIB_FLAG "/OUT:")
set(INCLUDEPATH_FLAG "/I")
set(OPTIMIZATION_LEVEL "/Ox" )
set(COMPILATION_FLAGS "A \"${OPTIMIZATION_LEVEL}\" ; A \"/MD\" ; A \"/I${EXTERNAL_CPP_INSTALL_PREFIX}\" ; A \"/EHsc\" ; A \"/c\"")
set(LINKING_LIB_FLAGS "A \"/NODEFAULTLIB\" ; A \"/LIBPATH:./build\"")
set(LINKING_DLL_FLAGS "A \"-chain\" ; A \"msvc\" ; A \"-link\" ; A \"/INCREMENTAL\" ; A \"-L./build\"")
set(MAKE_STATIC_COMMAND "make_library")
set(OBJ_EXTENSION "obj")
set(LIB_EXTENSION "lib")
set(OCSFML_LINKPATH "A \"-L${OCAML_DIR}/site-lib/ocsfml\"")
if(${CPP_DEV_MODE})
  add_definitions(
    /MD /EHsc
    )
endif()