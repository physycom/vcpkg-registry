vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/utils
  REF 6e31b4ec885e2204cb43c5b4854dbc1d06176b51
  SHA512 73fc209f91ea29458efbf6a673ff69ac21d5af09769d8598b3b03ccfd8043572951f25b090ef1dcd470f8e15565f6b93078e0b7448f92d176744c18ff748d1f1
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
