# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "graphical_client: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igraphical_client:/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(graphical_client_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_custom_target(_graphical_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graphical_client" "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(graphical_client
  "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graphical_client
)

### Generating Services

### Generating Module File
_generate_module_cpp(graphical_client
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graphical_client
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(graphical_client_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(graphical_client_generate_messages graphical_client_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_dependencies(graphical_client_generate_messages_cpp _graphical_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graphical_client_gencpp)
add_dependencies(graphical_client_gencpp graphical_client_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graphical_client_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(graphical_client
  "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graphical_client
)

### Generating Services

### Generating Module File
_generate_module_eus(graphical_client
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graphical_client
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(graphical_client_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(graphical_client_generate_messages graphical_client_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_dependencies(graphical_client_generate_messages_eus _graphical_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graphical_client_geneus)
add_dependencies(graphical_client_geneus graphical_client_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graphical_client_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(graphical_client
  "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graphical_client
)

### Generating Services

### Generating Module File
_generate_module_lisp(graphical_client
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graphical_client
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(graphical_client_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(graphical_client_generate_messages graphical_client_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_dependencies(graphical_client_generate_messages_lisp _graphical_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graphical_client_genlisp)
add_dependencies(graphical_client_genlisp graphical_client_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graphical_client_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(graphical_client
  "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graphical_client
)

### Generating Services

### Generating Module File
_generate_module_nodejs(graphical_client
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graphical_client
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(graphical_client_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(graphical_client_generate_messages graphical_client_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_dependencies(graphical_client_generate_messages_nodejs _graphical_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graphical_client_gennodejs)
add_dependencies(graphical_client_gennodejs graphical_client_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graphical_client_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(graphical_client
  "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graphical_client
)

### Generating Services

### Generating Module File
_generate_module_py(graphical_client
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graphical_client
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(graphical_client_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(graphical_client_generate_messages graphical_client_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/javiermg/Documents/ProyectoFinal/Proyecto/src/graphical_client/msg/Pose2D_Array.msg" NAME_WE)
add_dependencies(graphical_client_generate_messages_py _graphical_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graphical_client_genpy)
add_dependencies(graphical_client_genpy graphical_client_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graphical_client_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graphical_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graphical_client
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(graphical_client_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graphical_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graphical_client
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(graphical_client_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graphical_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graphical_client
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(graphical_client_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graphical_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graphical_client
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(graphical_client_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graphical_client)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graphical_client\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graphical_client
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(graphical_client_generate_messages_py geometry_msgs_generate_messages_py)
endif()
