cmake_minimum_required(VERSION 3.16)
include(${CMAKE_CURRENT_LIST_DIR}/cpp.cmake)

macro(do_project)
	do_cpp_project()
endmacro()


macro(do_src)
	cpp_pre_target()

	add_library(${CMAKE_PROJECT_NAME} SHARED ${input_files})

	install(TARGETS ${CMAKE_PROJECT_NAME}
			RUNTIME DESTINATION bin
			ARCHIVE DESTINATION libs)

	install(FILES $<TARGET_PDB_FILE:${CMAKE_PROJECT_NAME}>
			DESTINATION pdb)

	cpp_post_target()
endmacro()
