vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/libgeohash
  REF 45b86ca34d31e9909e3107e90637fa15201b0333
  SHA512 3fa48eee765bdb7fa49d3c30468c689faea97a58cc170c3eda87f9362a0c4f71610eb1d81622f3e5bc1c9e69b0151e53d73786208b7961f09041e8e22af2596a
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
