vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/libbbmutils
  REF 2c248117c576183d89a8f006d5c83d9af7a42eb4
  SHA512 25760965cef5975aee1f08d428f6b0ebc3cc1f5bde16d444505c3b75436da02ba57300be790e07f58659d34ba0e04e7e0453fee319d523fecf70b5c8352244a7
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
