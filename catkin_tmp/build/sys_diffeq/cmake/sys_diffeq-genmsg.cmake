# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sys_diffeq: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isys_diffeq:/home/smladmin/catkin_tmp/src/sys_diffeq/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sys_diffeq_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv" NAME_WE)
add_custom_target(_sys_diffeq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sys_diffeq" "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sys_diffeq
  "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sys_diffeq
)

### Generating Module File
_generate_module_cpp(sys_diffeq
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sys_diffeq
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sys_diffeq_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sys_diffeq_generate_messages sys_diffeq_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv" NAME_WE)
add_dependencies(sys_diffeq_generate_messages_cpp _sys_diffeq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sys_diffeq_gencpp)
add_dependencies(sys_diffeq_gencpp sys_diffeq_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sys_diffeq_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sys_diffeq
  "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sys_diffeq
)

### Generating Module File
_generate_module_lisp(sys_diffeq
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sys_diffeq
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sys_diffeq_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sys_diffeq_generate_messages sys_diffeq_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv" NAME_WE)
add_dependencies(sys_diffeq_generate_messages_lisp _sys_diffeq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sys_diffeq_genlisp)
add_dependencies(sys_diffeq_genlisp sys_diffeq_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sys_diffeq_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sys_diffeq
  "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sys_diffeq
)

### Generating Module File
_generate_module_py(sys_diffeq
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sys_diffeq
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sys_diffeq_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sys_diffeq_generate_messages sys_diffeq_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/smladmin/catkin_tmp/src/sys_diffeq/srv/SetState.srv" NAME_WE)
add_dependencies(sys_diffeq_generate_messages_py _sys_diffeq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sys_diffeq_genpy)
add_dependencies(sys_diffeq_genpy sys_diffeq_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sys_diffeq_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sys_diffeq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sys_diffeq
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(sys_diffeq_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sys_diffeq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sys_diffeq
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(sys_diffeq_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sys_diffeq)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sys_diffeq\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sys_diffeq
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(sys_diffeq_generate_messages_py std_msgs_generate_messages_py)
