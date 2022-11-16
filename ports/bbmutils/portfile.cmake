vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO physycom/libbbmutils
  REF e219a49fbb2218fd99c99df7a79fa6a7805c9689
  SHA512 fae41ddbc9c525fce67988a50f6b301b0454f9cabf8a221eee87d74845cf67e479fc9f7c267bb24d5b0bed7575c80c608db3ee1489c7f4cd37476af12445d9d8
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
