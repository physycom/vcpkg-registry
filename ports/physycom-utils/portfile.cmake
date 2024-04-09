vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/utils
  REF 1d1c231474518e648561422849a397312f0b89c5
  SHA512 8c2be83c7d3fec0a5652fa624b0383eec4124ed174def07cdd4ef7679d2a1d438adc036cb6d23906c306918004628ab75d60174268e70323ca6a6bf323badea0
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
