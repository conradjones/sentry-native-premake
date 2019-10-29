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
INCLUDES += -I../crashpad/build/crashpad -I../crashpad/build/crashpad/third_party/mini_chromium/mini_chromium -I../crashpad/build/crashpad/compat/mac -I../crashpad/build/crashpad/compat/non_win -I../crashpad/build/crashpad/compat/non_elf
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
TARGET = $(TARGETDIR)/libcrashpad_minidump.a
OBJDIR = obj/Release/crashpad_minidump
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -std=c++14 -mmacosx-version-min=10.9

else ifeq ($(config),debug)
TARGETDIR = bin/Debug
TARGET = $(TARGETDIR)/libcrashpad_minidump.a
OBJDIR = obj/Debug/crashpad_minidump
DEFINES +=
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -fPIC -g -std=c++14 -mmacosx-version-min=10.9

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

OBJECTS :=

OBJECTS += $(OBJDIR)/minidump_annotation_writer.o
OBJECTS += $(OBJDIR)/minidump_byte_array_writer.o
OBJECTS += $(OBJDIR)/minidump_context_writer.o
OBJECTS += $(OBJDIR)/minidump_crashpad_info_writer.o
OBJECTS += $(OBJDIR)/minidump_exception_writer.o
OBJECTS += $(OBJDIR)/minidump_extensions.o
OBJECTS += $(OBJDIR)/minidump_file_writer.o
OBJECTS += $(OBJDIR)/minidump_handle_writer.o
OBJECTS += $(OBJDIR)/minidump_memory_info_writer.o
OBJECTS += $(OBJDIR)/minidump_memory_writer.o
OBJECTS += $(OBJDIR)/minidump_misc_info_writer.o
OBJECTS += $(OBJDIR)/minidump_module_crashpad_info_writer.o
OBJECTS += $(OBJDIR)/minidump_module_writer.o
OBJECTS += $(OBJDIR)/minidump_rva_list_writer.o
OBJECTS += $(OBJDIR)/minidump_simple_string_dictionary_writer.o
OBJECTS += $(OBJDIR)/minidump_stream_writer.o
OBJECTS += $(OBJDIR)/minidump_string_writer.o
OBJECTS += $(OBJDIR)/minidump_system_info_writer.o
OBJECTS += $(OBJDIR)/minidump_thread_id_map.o
OBJECTS += $(OBJDIR)/minidump_thread_writer.o
OBJECTS += $(OBJDIR)/minidump_unloaded_module_writer.o
OBJECTS += $(OBJDIR)/minidump_user_extension_stream_data_source.o
OBJECTS += $(OBJDIR)/minidump_user_stream_writer.o
OBJECTS += $(OBJDIR)/minidump_writable.o
OBJECTS += $(OBJDIR)/minidump_writer_util.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking crashpad_minidump
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
	@echo Cleaning crashpad_minidump
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

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

$(OBJDIR)/minidump_annotation_writer.o: ../crashpad/build/crashpad/minidump/minidump_annotation_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_byte_array_writer.o: ../crashpad/build/crashpad/minidump/minidump_byte_array_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_context_writer.o: ../crashpad/build/crashpad/minidump/minidump_context_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_crashpad_info_writer.o: ../crashpad/build/crashpad/minidump/minidump_crashpad_info_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_exception_writer.o: ../crashpad/build/crashpad/minidump/minidump_exception_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_extensions.o: ../crashpad/build/crashpad/minidump/minidump_extensions.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_file_writer.o: ../crashpad/build/crashpad/minidump/minidump_file_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_handle_writer.o: ../crashpad/build/crashpad/minidump/minidump_handle_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_memory_info_writer.o: ../crashpad/build/crashpad/minidump/minidump_memory_info_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_memory_writer.o: ../crashpad/build/crashpad/minidump/minidump_memory_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_misc_info_writer.o: ../crashpad/build/crashpad/minidump/minidump_misc_info_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_module_crashpad_info_writer.o: ../crashpad/build/crashpad/minidump/minidump_module_crashpad_info_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_module_writer.o: ../crashpad/build/crashpad/minidump/minidump_module_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_rva_list_writer.o: ../crashpad/build/crashpad/minidump/minidump_rva_list_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_simple_string_dictionary_writer.o: ../crashpad/build/crashpad/minidump/minidump_simple_string_dictionary_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_stream_writer.o: ../crashpad/build/crashpad/minidump/minidump_stream_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_string_writer.o: ../crashpad/build/crashpad/minidump/minidump_string_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_system_info_writer.o: ../crashpad/build/crashpad/minidump/minidump_system_info_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_thread_id_map.o: ../crashpad/build/crashpad/minidump/minidump_thread_id_map.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_thread_writer.o: ../crashpad/build/crashpad/minidump/minidump_thread_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_unloaded_module_writer.o: ../crashpad/build/crashpad/minidump/minidump_unloaded_module_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_user_extension_stream_data_source.o: ../crashpad/build/crashpad/minidump/minidump_user_extension_stream_data_source.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_user_stream_writer.o: ../crashpad/build/crashpad/minidump/minidump_user_stream_writer.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_writable.o: ../crashpad/build/crashpad/minidump/minidump_writable.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minidump_writer_util.o: ../crashpad/build/crashpad/minidump/minidump_writer_util.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif