# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_beagle: 5 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_beagle:/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_beagle_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
)
_generate_msg_cpp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
)
_generate_msg_cpp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
)
_generate_msg_cpp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
)
_generate_msg_cpp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_beagle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_beagle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_beagle_generate_messages robot_beagle_generate_messages_cpp)

# target for backward compatibility
add_custom_target(robot_beagle_gencpp)
add_dependencies(robot_beagle_gencpp robot_beagle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_beagle_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
)
_generate_msg_lisp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
)
_generate_msg_lisp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
)
_generate_msg_lisp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
)
_generate_msg_lisp(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_beagle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_beagle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_beagle_generate_messages robot_beagle_generate_messages_lisp)

# target for backward compatibility
add_custom_target(robot_beagle_genlisp)
add_dependencies(robot_beagle_genlisp robot_beagle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_beagle_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
)
_generate_msg_py(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
)
_generate_msg_py(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
)
_generate_msg_py(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
)
_generate_msg_py(robot_beagle
  "/home/ubeagle/GitHub/simpleRosH/src/robot_beagle/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
)

### Generating Services

### Generating Module File
_generate_module_py(robot_beagle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_beagle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_beagle_generate_messages robot_beagle_generate_messages_py)

# target for backward compatibility
add_custom_target(robot_beagle_genpy)
add_dependencies(robot_beagle_genpy robot_beagle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_beagle_generate_messages_py)


debug_message(2 "robot_beagle: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_beagle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robot_beagle_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_beagle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robot_beagle_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_beagle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robot_beagle_generate_messages_py std_msgs_generate_messages_py)
