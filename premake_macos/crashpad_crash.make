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
ALL_LDFLAGS += $(LDFLAGS)
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef

ifeq ($(config),release)
TARGETDIR = bin/Release
TARGET = $(TARGETDIR)/crashpad_crash
OBJDIR = obj/Release/crashpad_crash
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -fPIC -g -std=c++14 -mmacosx-version-min=10.9
LIBS += bin/Release/libcrashpad_minichromium_base.a bin/Release/libcrashpad_util.a bin/Release/libcrashpad_client.a -framework ApplicationServices -framework CoreFoundation -framework Foundation -framework IOKit -framework Security -lbsm -lz
LDDEPS += bin/Release/libcrashpad_minichromium_base.a bin/Release/libcrashpad_util.a bin/Release/libcrashpad_client.a
define POSTBUILDCMDS
	@echo Running postbuild commands
	dsymutil bin/Release/crashpad_crash
endef

else ifeq ($(config),debug)
TARGETDIR = bin/Debug
TARGET = $(TARGETDIR)/crashpad_crash
OBJDIR = obj/Debug/crashpad_crash
DEFINES +=
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -fPIC -g -mmacosx-version-min=10.9
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -fPIC -g -std=c++14 -mmacosx-version-min=10.9
LIBS += bin/Debug/libcrashpad_minichromium_base.a bin/Debug/libcrashpad_util.a bin/Debug/libcrashpad_client.a -framework ApplicationServices -framework CoreFoundation -framework Foundation -framework IOKit -framework Security -lbsm -lz
LDDEPS += bin/Debug/libcrashpad_minichromium_base.a bin/Debug/libcrashpad_util.a bin/Debug/libcrashpad_client.a
define POSTBUILDCMDS
	@echo Running postbuild commands
	dsymutil bin/Debug/crashpad_crash
endef

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

OBJECTS :=

OBJECTS += $(OBJDIR)/crash.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking crashpad_crash
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
	@echo Cleaning crashpad_crash
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

$(OBJDIR)/crash.o: ../crashpad/examples/mac/crash.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif