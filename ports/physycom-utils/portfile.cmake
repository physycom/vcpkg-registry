vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/utils
  REF ed878ab6831738a080a789fafcea0931e3027dbc
  SHA512 f89365d1d1791e5564fbbdce230b23d56b765e7329e5163ac7c110933b93e4655ce58f87ebbf6729e36661b4aa91c016b7e2b4046ab5402d6463faf1131caed4
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()
vcpkg_copy_tools(TOOL_NAMES test_combinatoric test_gnssconv test_histo AUTO_CLEAN)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
