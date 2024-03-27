# Fetching JUCE from Git
# IF you want to instead point it to a local version, you can invoke CMake with
# -DCPM_JUCE_SOURCE="Path_To_JUCE"

include(FetchContent)

FetchContent_Declare(
        JUCE
        GIT_REPOSITORY https://github.com/juce-framework/JUCE.git
        GIT_TAG develop
)

FetchContent_MakeAvailable(JUCE)
# Adds all the module sources so they appear correctly in the IDE
set_property(GLOBAL PROPERTY USE_FOLDERS YES)
option(JUCE_ENABLE_MODULE_SOURCE_GROUPS "Enable Module Source Groups" ON)