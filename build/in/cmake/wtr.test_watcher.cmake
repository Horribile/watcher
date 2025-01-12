# [test dependencies]
include(CTest)
include(FetchContent)
FetchContent_Declare(
  snitch
  GIT_REPOSITORY https://github.com/cschreib/snitch.git
  GIT_TAG        ea200a0830394f8e0ef732064f0935a77c003bd6 # Friday, January 20th, 2023 @ v1.0.0
  # GIT_TAG        8165d6c85353f9c302ce05f1c1c47dcfdc6aeb2c # Saturday, January 7th, 2023 @ main
  # GIT_TAG        f313bccafe98aaef617af3bf457d091d8d50cdcd # Tuesday, December 18th, 2022 @ v0.1.3
  # GIT_TAG        c0b6ac4efe4019e4846e8967fe21de864b0cc1ed # Friday, December 2nd, 2022 @ main
)
FetchContent_MakeAvailable(snitch)

# [test target definitions]
set(TEST_PROJECT_NAME                     "wtr.test_watcher")
set(TEST_CONCURRENT_WATCH_TARGETS_SOURCES "../../src/test_watcher/test_concurrent_watch_targets/test_concurrent_watch_targets.cpp")
set(TEST_WATCH_TARGETS_SOURCES            "../../src/test_watcher/test_watch_targets/test_watch_targets.cpp")
set(TEST_NEW_DIRECTORIES_SOURCES          "../../src/test_watcher/test_new_directories/test_new_directories.cpp")
set(TEST_SIMPLE_SOURCES                   "../../src/test_watcher/test_simple/test_simple.cpp")
set(TEST_LINK_LIBRARIES                   "${LINK_LIBRARIES}" "snitch::snitch")
set(TEST_COMPILE_OPTIONS                  "${COMPILE_OPTIONS}")
set(TEST_LINK_OPTIONS                     "${LINK_OPTIONS}")
set(TEST_INCLUDE_PATH                     "${INCLUDE_PATH}")

# [test targets]
include("${TEST_PROJECT_NAME}.test_watch_targets")
include("${TEST_PROJECT_NAME}.test_concurrent_watch_targets")
include("${TEST_PROJECT_NAME}.test_new_directories")
include("${TEST_PROJECT_NAME}.test_simple")
