cmake_minimum_required(VERSION 3.16)
include(${CMAKE_CURRENT_LIST_DIR}/python.cmake)

macro(do_project)
	do_python_project()
endmacro()


macro(do_src)
	install(FILES ${source_files} DESTINATION bin/plugins)
endmacro()
