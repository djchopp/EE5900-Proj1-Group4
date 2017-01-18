# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pub_sub: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipub_sub:/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pub_sub_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg" NAME_WE)
add_custom_target(_pub_sub_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pub_sub" "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pub_sub
  "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pub_sub
)

### Generating Services

### Generating Module File
_generate_module_cpp(pub_sub
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pub_sub
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pub_sub_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pub_sub_generate_messages pub_sub_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg" NAME_WE)
add_dependencies(pub_sub_generate_messages_cpp _pub_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pub_sub_gencpp)
add_dependencies(pub_sub_gencpp pub_sub_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pub_sub_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pub_sub
  "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pub_sub
)

### Generating Services

### Generating Module File
_generate_module_lisp(pub_sub
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pub_sub
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pub_sub_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pub_sub_generate_messages pub_sub_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg" NAME_WE)
add_dependencies(pub_sub_generate_messages_lisp _pub_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pub_sub_genlisp)
add_dependencies(pub_sub_genlisp pub_sub_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pub_sub_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pub_sub
  "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pub_sub
)

### Generating Services

### Generating Module File
_generate_module_py(pub_sub
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pub_sub
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pub_sub_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pub_sub_generate_messages pub_sub_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/EE5900_Repos/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg/message.msg" NAME_WE)
add_dependencies(pub_sub_generate_messages_py _pub_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pub_sub_genpy)
add_dependencies(pub_sub_genpy pub_sub_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pub_sub_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pub_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pub_sub
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pub_sub_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pub_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pub_sub
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pub_sub_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pub_sub)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pub_sub\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pub_sub
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pub_sub_generate_messages_py std_msgs_generate_messages_py)
