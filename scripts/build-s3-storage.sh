#!/bin/bash -xe

BUILD_DIR="orthanc-s3-storage/build"
mkdir ${BUILD_DIR} || true
INSTALL_DIR="install"
mkdir ${BUILD_DIR}/${INSTALL_DIR} || true

pushd ${BUILD_DIR}

# Use this combination if you have orthank branch laying around
# -DUSE_SYSTEM_ORTHANC_SDK="ON" \
# -DORTHANC_FRAMEWORK_SOURCE="path" \
# -DORTHANC_FRAMEWORK_ROOT="$PWD/../../orthanc" \

# User this combination in case you want it to be downloaded
# -DUSE_SYSTEM_ORTHANC_SDK="OFF" \
# -DORTHANC_S3STORAGE_VERSION="1.3.2" \

cmake .. \
 -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" \
 -DCMAKE_BUILD_TYPE=Debug \
 -DCMAKE_CXX_STANDARD=11 \
 -DCMAKE_CXX_STANDARD_REQUIRED="ON" \
 -DALLOW_DOWNLOADS="ON" \
 -DSTANDALONE_BUILD="ON" \
 -DSTATIC_BUILD="OFF" \
 -DUSE_SYSTEM_BOOST="ON" \
 -DUSE_SYSTEM_CURL="ON" \
 -DUSE_SYSTEM_MONGOOSE="OFF" \
 -DUSE_SYSTEM_PUGIXML="OFF" \
 -DUSE_SYSTEM_GOOGLE_TEST="OFF" \
 -DUSE_SYSTEM_UUID="OFF" \
 -DUSE_SYSTEM_DCMTK="OFF" \
 -DUSE_SYSTEM_JSONCPP="OFF" \
 -DUSE_SYSTEM_ORTHANC_SDK="OFF" \
 -DORTHANC_S3STORAGE_VERSION="1.3.2" \
 #-DORTHANC_FRAMEWORK_SOURCE="path" \
 #-DORTHANC_FRAMEWORK_ROOT="$PWD/../../orthanc" \
 #-DORTHANC_FRAMEWORK_ROOT="$PWD/../../orthanc-s3-storage/Resources/Orthanc" \
