# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/arseniizxc/Desktop/coding/ACS_IHV4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/arseniizxc/Desktop/coding/ACS_IHV4/build

# Include any dependencies generated for this target.
include CMakeFiles/ACS_IHV4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ACS_IHV4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ACS_IHV4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ACS_IHV4.dir/flags.make

CMakeFiles/ACS_IHV4.dir/codegen:
.PHONY : CMakeFiles/ACS_IHV4.dir/codegen

CMakeFiles/ACS_IHV4.dir/main.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/main.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/main.cpp
CMakeFiles/ACS_IHV4.dir/main.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ACS_IHV4.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/main.cpp.o -MF CMakeFiles/ACS_IHV4.dir/main.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/main.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/main.cpp

CMakeFiles/ACS_IHV4.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/main.cpp > CMakeFiles/ACS_IHV4.dir/main.cpp.i

CMakeFiles/ACS_IHV4.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/main.cpp -o CMakeFiles/ACS_IHV4.dir/main.cpp.s

CMakeFiles/ACS_IHV4.dir/library/library.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/library/library.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/library/library.cpp
CMakeFiles/ACS_IHV4.dir/library/library.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ACS_IHV4.dir/library/library.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/library/library.cpp.o -MF CMakeFiles/ACS_IHV4.dir/library/library.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/library/library.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/library/library.cpp

CMakeFiles/ACS_IHV4.dir/library/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/library/library.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/library/library.cpp > CMakeFiles/ACS_IHV4.dir/library/library.cpp.i

CMakeFiles/ACS_IHV4.dir/library/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/library/library.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/library/library.cpp -o CMakeFiles/ACS_IHV4.dir/library/library.cpp.s

CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/task.cpp
CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o -MF CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/task.cpp

CMakeFiles/ACS_IHV4.dir/queues/task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/queues/task.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/task.cpp > CMakeFiles/ACS_IHV4.dir/queues/task.cpp.i

CMakeFiles/ACS_IHV4.dir/queues/task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/queues/task.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/task.cpp -o CMakeFiles/ACS_IHV4.dir/queues/task.cpp.s

CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/stq.cpp
CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o -MF CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/stq.cpp

CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/stq.cpp > CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.i

CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/queues/stq.cpp -o CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.s

CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/logging/logger.cpp
CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o -MF CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/logging/logger.cpp

CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/logging/logger.cpp > CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.i

CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/logging/logger.cpp -o CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.s

CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o: CMakeFiles/ACS_IHV4.dir/flags.make
CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o: /Users/arseniizxc/Desktop/coding/ACS_IHV4/dotenv/env_getter.cpp
CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o: CMakeFiles/ACS_IHV4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o -MF CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o.d -o CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o -c /Users/arseniizxc/Desktop/coding/ACS_IHV4/dotenv/env_getter.cpp

CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arseniizxc/Desktop/coding/ACS_IHV4/dotenv/env_getter.cpp > CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.i

CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arseniizxc/Desktop/coding/ACS_IHV4/dotenv/env_getter.cpp -o CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.s

# Object files for target ACS_IHV4
ACS_IHV4_OBJECTS = \
"CMakeFiles/ACS_IHV4.dir/main.cpp.o" \
"CMakeFiles/ACS_IHV4.dir/library/library.cpp.o" \
"CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o" \
"CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o" \
"CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o" \
"CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o"

# External object files for target ACS_IHV4
ACS_IHV4_EXTERNAL_OBJECTS =

ACS_IHV4: CMakeFiles/ACS_IHV4.dir/main.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/library/library.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/queues/task.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/queues/stq.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/logging/logger.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/dotenv/env_getter.cpp.o
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/build.make
ACS_IHV4: CMakeFiles/ACS_IHV4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ACS_IHV4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ACS_IHV4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ACS_IHV4.dir/build: ACS_IHV4
.PHONY : CMakeFiles/ACS_IHV4.dir/build

CMakeFiles/ACS_IHV4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ACS_IHV4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ACS_IHV4.dir/clean

CMakeFiles/ACS_IHV4.dir/depend:
	cd /Users/arseniizxc/Desktop/coding/ACS_IHV4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/arseniizxc/Desktop/coding/ACS_IHV4 /Users/arseniizxc/Desktop/coding/ACS_IHV4 /Users/arseniizxc/Desktop/coding/ACS_IHV4/build /Users/arseniizxc/Desktop/coding/ACS_IHV4/build /Users/arseniizxc/Desktop/coding/ACS_IHV4/build/CMakeFiles/ACS_IHV4.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ACS_IHV4.dir/depend
