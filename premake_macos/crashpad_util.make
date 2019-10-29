# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = clang
endif
ifeq ($(origin CXX), default)
  CXX = clang++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
INCLUDES += -I../crashpad/build/crashpad -I../crashpad/build/crashpad/third_party/mini_chromium/mini_chromium -I../crashpad/build/crashpad/compat/mac -I../crashpad/build/crashpad/compat/non_win -I../crashpad/build/crashpad/compat/non_elf -Igen
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
ALL_LDFLAGS += $(LDFLAGS)
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release)
TARGETDIR = bin/Release
TARGET = $(TARGETDIR)/libcrashpad_util.a
OBJDIR = obj/Release/crashpad_util
DEFINES += -DNDEBUG -DCRASHPAD_ZLIB_SOURCE_SYSTEM
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -std=c++14 -mmacosx-version-min=10.9

else ifeq ($(config),debug)
TARGETDIR = bin/Debug
TARGET = $(TARGETDIR)/libcrashpad_util.a
OBJDIR = obj/Debug/crashpad_util
DEFINES += -DCRASHPAD_ZLIB_SOURCE_SYSTEM
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -fPIC -g -std=c++14 -mmacosx-version-min=10.9

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

CUSTOM :=
OBJECTS :=
SOURCES :=

CUSTOM += gen/util/mach/child_port.h
CUSTOM += gen/util/mach/child_portServer.h
CUSTOM += gen/util/mach/exc.h
CUSTOM += gen/util/mach/excServer.h
CUSTOM += gen/util/mach/mach_exc.h
CUSTOM += gen/util/mach/mach_excServer.h
CUSTOM += gen/util/mach/notify.h
CUSTOM += gen/util/mach/notifyServer.h
OBJECTS += $(OBJDIR)/aligned_allocator.o
OBJECTS += $(OBJDIR)/capture_context_mac.o
OBJECTS += $(OBJDIR)/checked_address_range.o
OBJECTS += $(OBJDIR)/child_portServer.o
OBJECTS += $(OBJDIR)/child_portUser.o
OBJECTS += $(OBJDIR)/child_port_handshake.o
OBJECTS += $(OBJDIR)/child_port_server.o
OBJECTS += $(OBJDIR)/clock_mac.o
OBJECTS += $(OBJDIR)/clock_posix.o
OBJECTS += $(OBJDIR)/close_multiple.o
OBJECTS += $(OBJDIR)/close_stdio.o
OBJECTS += $(OBJDIR)/composite_mach_message_server.o
OBJECTS += $(OBJDIR)/delimited_file_reader.o
OBJECTS += $(OBJDIR)/directory_reader_posix.o
OBJECTS += $(OBJDIR)/double_fork_and_exec.o
OBJECTS += $(OBJDIR)/drop_privileges.o
OBJECTS += $(OBJDIR)/excServer.o
OBJECTS += $(OBJDIR)/excUser.o
OBJECTS += $(OBJDIR)/exc_client_variants.o
OBJECTS += $(OBJDIR)/exc_server_variants.o
OBJECTS += $(OBJDIR)/exception_behaviors.o
OBJECTS += $(OBJDIR)/exception_ports.o
OBJECTS += $(OBJDIR)/exception_types.o
OBJECTS += $(OBJDIR)/file_io.o
OBJECTS += $(OBJDIR)/file_io_posix.o
OBJECTS += $(OBJDIR)/file_reader.o
OBJECTS += $(OBJDIR)/file_seeker.o
OBJECTS += $(OBJDIR)/file_writer.o
OBJECTS += $(OBJDIR)/filesystem_posix.o
OBJECTS += $(OBJDIR)/http_body.o
OBJECTS += $(OBJDIR)/http_body_gzip.o
OBJECTS += $(OBJDIR)/http_multipart_builder.o
OBJECTS += $(OBJDIR)/http_transport.o
OBJECTS += $(OBJDIR)/http_transport_mac.o
OBJECTS += $(OBJDIR)/initialization_state_dcheck.o
OBJECTS += $(OBJDIR)/launchd.o
OBJECTS += $(OBJDIR)/lexing.o
OBJECTS += $(OBJDIR)/mac_util.o
OBJECTS += $(OBJDIR)/mach_excServer.o
OBJECTS += $(OBJDIR)/mach_excUser.o
OBJECTS += $(OBJDIR)/mach_extensions.o
OBJECTS += $(OBJDIR)/mach_message.o
OBJECTS += $(OBJDIR)/mach_message_server.o
OBJECTS += $(OBJDIR)/metrics.o
OBJECTS += $(OBJDIR)/notifyServer.o
OBJECTS += $(OBJDIR)/notifyUser.o
OBJECTS += $(OBJDIR)/notify_server.o
OBJECTS += $(OBJDIR)/paths_mac.o
OBJECTS += $(OBJDIR)/pdb_structures.o
OBJECTS += $(OBJDIR)/process_info_mac.o
OBJECTS += $(OBJDIR)/process_memory.o
OBJECTS += $(OBJDIR)/process_memory_mac.o
OBJECTS += $(OBJDIR)/process_memory_range.o
OBJECTS += $(OBJDIR)/random_string.o
OBJECTS += $(OBJDIR)/range_set.o
OBJECTS += $(OBJDIR)/reinterpret_bytes.o
OBJECTS += $(OBJDIR)/scoped_dir.o
OBJECTS += $(OBJDIR)/scoped_forbid_return.o
OBJECTS += $(OBJDIR)/scoped_mmap.o
OBJECTS += $(OBJDIR)/scoped_remove_file.o
OBJECTS += $(OBJDIR)/scoped_task_suspend.o
OBJECTS += $(OBJDIR)/semaphore_mac.o
OBJECTS += $(OBJDIR)/semaphore_posix.o
OBJECTS += $(OBJDIR)/service_management.o
OBJECTS += $(OBJDIR)/signals.o
OBJECTS += $(OBJDIR)/split_string.o
OBJECTS += $(OBJDIR)/string_file.o
OBJECTS += $(OBJDIR)/string_number_conversion.o
OBJECTS += $(OBJDIR)/strlcpy.o
OBJECTS += $(OBJDIR)/strnlen.o
OBJECTS += $(OBJDIR)/symbolic_constants_mach.o
OBJECTS += $(OBJDIR)/symbolic_constants_posix.o
OBJECTS += $(OBJDIR)/task_for_pid.o
OBJECTS += $(OBJDIR)/thread.o
OBJECTS += $(OBJDIR)/thread_log_messages.o
OBJECTS += $(OBJDIR)/thread_posix.o
OBJECTS += $(OBJDIR)/time.o
OBJECTS += $(OBJDIR)/url.o
OBJECTS += $(OBJDIR)/uuid.o
OBJECTS += $(OBJDIR)/worker_thread.o
OBJECTS += $(OBJDIR)/xattr.o
OBJECTS += $(OBJDIR)/zlib.o
SOURCES += gen/util/mach/child_portServer.c
SOURCES += gen/util/mach/child_portUser.c
SOURCES += gen/util/mach/excServer.c
SOURCES += gen/util/mach/excUser.c
SOURCES += gen/util/mach/mach_excServer.c
SOURCES += gen/util/mach/mach_excUser.c
SOURCES += gen/util/mach/notifyServer.c
SOURCES += gen/util/mach/notifyUser.c

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(CUSTOM) $(SOURCES) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking crashpad_util
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning crashpad_util
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

$(CUSTOM): | prebuild
$(SOURCES): | prebuild
ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/delimited_file_reader.o: ../crashpad/build/crashpad/util/file/delimited_file_reader.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/directory_reader_posix.o: ../crashpad/build/crashpad/util/file/directory_reader_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file_io.o: ../crashpad/build/crashpad/util/file/file_io.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file_io_posix.o: ../crashpad/build/crashpad/util/file/file_io_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file_reader.o: ../crashpad/build/crashpad/util/file/file_reader.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file_seeker.o: ../crashpad/build/crashpad/util/file/file_seeker.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file_writer.o: ../crashpad/build/crashpad/util/file/file_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/filesystem_posix.o: ../crashpad/build/crashpad/util/file/filesystem_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scoped_remove_file.o: ../crashpad/build/crashpad/util/file/scoped_remove_file.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/string_file.o: ../crashpad/build/crashpad/util/file/string_file.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/launchd.o: ../crashpad/build/crashpad/util/mac/launchd.mm
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mac_util.o: ../crashpad/build/crashpad/util/mac/mac_util.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/service_management.o: ../crashpad/build/crashpad/util/mac/service_management.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/xattr.o: ../crashpad/build/crashpad/util/mac/xattr.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
gen/util/mach/child_portUser.c: ../crashpad/build/crashpad/util/mach/child_port.defs
	@echo Processing ../crashpad/build/crashpad/util/mach/child_port.defs
	$(SILENT) mkdir -p gen/util/mach
	$(SILENT) python ../crashpad/build/crashpad/util/mach/mig.py --include ../crashpad/build/crashpad/compat/mac --sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk ../crashpad/build/crashpad/util/mach/child_port.defs gen/util/mach/child_portUser.c gen/util/mach/child_portServer.c gen/util/mach/child_port.h gen/util/mach/child_portServer.h
gen/util/mach/child_portServer.c gen/util/mach/child_port.h gen/util/mach/child_portServer.h: gen/util/mach/child_portUser.c
$(OBJDIR)/child_portUser.o: gen/util/mach/child_portUser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/child_portServer.o: gen/util/mach/child_portServer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/child_port_handshake.o: ../crashpad/build/crashpad/util/mach/child_port_handshake.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/child_port_server.o: ../crashpad/build/crashpad/util/mach/child_port_server.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/composite_mach_message_server.o: ../crashpad/build/crashpad/util/mach/composite_mach_message_server.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exc_client_variants.o: ../crashpad/build/crashpad/util/mach/exc_client_variants.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exc_server_variants.o: ../crashpad/build/crashpad/util/mach/exc_server_variants.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exception_behaviors.o: ../crashpad/build/crashpad/util/mach/exception_behaviors.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exception_ports.o: ../crashpad/build/crashpad/util/mach/exception_ports.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exception_types.o: ../crashpad/build/crashpad/util/mach/exception_types.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mach_extensions.o: ../crashpad/build/crashpad/util/mach/mach_extensions.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mach_message.o: ../crashpad/build/crashpad/util/mach/mach_message.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mach_message_server.o: ../crashpad/build/crashpad/util/mach/mach_message_server.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/notify_server.o: ../crashpad/build/crashpad/util/mach/notify_server.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scoped_task_suspend.o: ../crashpad/build/crashpad/util/mach/scoped_task_suspend.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/symbolic_constants_mach.o: ../crashpad/build/crashpad/util/mach/symbolic_constants_mach.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/task_for_pid.o: ../crashpad/build/crashpad/util/mach/task_for_pid.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/capture_context_mac.o: ../crashpad/build/crashpad/util/misc/capture_context_mac.S
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/clock_mac.o: ../crashpad/build/crashpad/util/misc/clock_mac.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/clock_posix.o: ../crashpad/build/crashpad/util/misc/clock_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/initialization_state_dcheck.o: ../crashpad/build/crashpad/util/misc/initialization_state_dcheck.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/lexing.o: ../crashpad/build/crashpad/util/misc/lexing.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/metrics.o: ../crashpad/build/crashpad/util/misc/metrics.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/paths_mac.o: ../crashpad/build/crashpad/util/misc/paths_mac.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pdb_structures.o: ../crashpad/build/crashpad/util/misc/pdb_structures.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random_string.o: ../crashpad/build/crashpad/util/misc/random_string.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/range_set.o: ../crashpad/build/crashpad/util/misc/range_set.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/reinterpret_bytes.o: ../crashpad/build/crashpad/util/misc/reinterpret_bytes.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scoped_forbid_return.o: ../crashpad/build/crashpad/util/misc/scoped_forbid_return.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/time.o: ../crashpad/build/crashpad/util/misc/time.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uuid.o: ../crashpad/build/crashpad/util/misc/uuid.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/zlib.o: ../crashpad/build/crashpad/util/misc/zlib.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_body.o: ../crashpad/build/crashpad/util/net/http_body.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_body_gzip.o: ../crashpad/build/crashpad/util/net/http_body_gzip.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_multipart_builder.o: ../crashpad/build/crashpad/util/net/http_multipart_builder.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_transport.o: ../crashpad/build/crashpad/util/net/http_transport.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_transport_mac.o: ../crashpad/build/crashpad/util/net/http_transport_mac.mm
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/url.o: ../crashpad/build/crashpad/util/net/url.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/checked_address_range.o: ../crashpad/build/crashpad/util/numeric/checked_address_range.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/close_multiple.o: ../crashpad/build/crashpad/util/posix/close_multiple.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/close_stdio.o: ../crashpad/build/crashpad/util/posix/close_stdio.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/double_fork_and_exec.o: ../crashpad/build/crashpad/util/posix/double_fork_and_exec.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/drop_privileges.o: ../crashpad/build/crashpad/util/posix/drop_privileges.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process_info_mac.o: ../crashpad/build/crashpad/util/posix/process_info_mac.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scoped_dir.o: ../crashpad/build/crashpad/util/posix/scoped_dir.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scoped_mmap.o: ../crashpad/build/crashpad/util/posix/scoped_mmap.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/signals.o: ../crashpad/build/crashpad/util/posix/signals.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/symbolic_constants_posix.o: ../crashpad/build/crashpad/util/posix/symbolic_constants_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process_memory.o: ../crashpad/build/crashpad/util/process/process_memory.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process_memory_mac.o: ../crashpad/build/crashpad/util/process/process_memory_mac.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process_memory_range.o: ../crashpad/build/crashpad/util/process/process_memory_range.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/aligned_allocator.o: ../crashpad/build/crashpad/util/stdlib/aligned_allocator.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/string_number_conversion.o: ../crashpad/build/crashpad/util/stdlib/string_number_conversion.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strlcpy.o: ../crashpad/build/crashpad/util/stdlib/strlcpy.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strnlen.o: ../crashpad/build/crashpad/util/stdlib/strnlen.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/split_string.o: ../crashpad/build/crashpad/util/string/split_string.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/semaphore_mac.o: ../crashpad/build/crashpad/util/synchronization/semaphore_mac.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/semaphore_posix.o: ../crashpad/build/crashpad/util/synchronization/semaphore_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/thread.o: ../crashpad/build/crashpad/util/thread/thread.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/thread_log_messages.o: ../crashpad/build/crashpad/util/thread/thread_log_messages.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/thread_posix.o: ../crashpad/build/crashpad/util/thread/thread_posix.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/worker_thread.o: ../crashpad/build/crashpad/util/thread/worker_thread.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
gen/util/mach/excUser.c: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/exc.defs
	@echo Processing /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/exc.defs
	$(SILENT) mkdir -p gen/util/mach
	$(SILENT) python ../crashpad/build/crashpad/util/mach/mig.py --include ../crashpad/build/crashpad/compat/mac --sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/exc.defs gen/util/mach/excUser.c gen/util/mach/excServer.c gen/util/mach/exc.h gen/util/mach/excServer.h
gen/util/mach/excServer.c gen/util/mach/exc.h gen/util/mach/excServer.h: gen/util/mach/excUser.c
$(OBJDIR)/excUser.o: gen/util/mach/excUser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/excServer.o: gen/util/mach/excServer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
gen/util/mach/mach_excUser.c: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/mach_exc.defs
	@echo Processing /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/mach_exc.defs
	$(SILENT) mkdir -p gen/util/mach
	$(SILENT) python ../crashpad/build/crashpad/util/mach/mig.py --include ../crashpad/build/crashpad/compat/mac --sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/mach_exc.defs gen/util/mach/mach_excUser.c gen/util/mach/mach_excServer.c gen/util/mach/mach_exc.h gen/util/mach/mach_excServer.h
gen/util/mach/mach_excServer.c gen/util/mach/mach_exc.h gen/util/mach/mach_excServer.h: gen/util/mach/mach_excUser.c
$(OBJDIR)/mach_excUser.o: gen/util/mach/mach_excUser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mach_excServer.o: gen/util/mach/mach_excServer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
gen/util/mach/notifyUser.c: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/notify.defs
	@echo Processing /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/notify.defs
	$(SILENT) mkdir -p gen/util/mach
	$(SILENT) python ../crashpad/build/crashpad/util/mach/mig.py --include ../crashpad/build/crashpad/compat/mac --sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/notify.defs gen/util/mach/notifyUser.c gen/util/mach/notifyServer.c gen/util/mach/notify.h gen/util/mach/notifyServer.h
gen/util/mach/notifyServer.c gen/util/mach/notify.h gen/util/mach/notifyServer.h: gen/util/mach/notifyUser.c
$(OBJDIR)/notifyUser.o: gen/util/mach/notifyUser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/notifyServer.o: gen/util/mach/notifyServer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif