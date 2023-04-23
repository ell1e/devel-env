#!/bin/bash
# shellcheck disable=2034

ARCH="$(uname -m)"
if [[ "${ARCH}" == 'arm64' ]]; then
	ARCH='aarch64'
fi

M4_PACKAGE_URL='https://ftpmirror.gnu.org/m4/m4-1.4.19.tar.xz'
M4_PACKAGE_SHA256SUM='63aede5c6d33b6d9b13511cd0be2cac046f2e70fd0a07aa9573a04a82783af96'
M4_PACKAGE_NAME='m4-1.4.19.tar.xz'
M4_PACKAGE_EXTRACTED_DIR='m4-1.4.19'

AUTOCONF_PACKAGE_URL='https://ftpmirror.gnu.org/autoconf/autoconf-2.71.tar.gz'
AUTOCONF_PACKAGE_SHA256SUM='431075ad0bf529ef13cb41e9042c542381103e80015686222b8a9d4abef42a1c'
AUTOCONF_PACKAGE_NAME='autoconf-2.71.tar.gz'
AUTOCONF_PACKAGE_EXTRACTED_DIR='autoconf-2.71'

AUTOMAKE_PACKAGE_URL='https://ftpmirror.gnu.org/automake/automake-1.16.5.tar.gz'
AUTOMAKE_PACKAGE_SHA256SUM='07bd24ad08a64bc17250ce09ec56e921d6343903943e99ccf63bbf0705e34605'
AUTOMAKE_PACKAGE_NAME='automake-1.16.5.tar.gz'
AUTOMAKE_PACKAGE_EXTRACTED_DIR='automake-1.16.5'

LIBTOOL_PACKAGE_URL='https://ftpmirror.gnu.org/libtool/libtool-2.4.7.tar.gz'
LIBTOOL_PACKAGE_SHA256SUM='04e96c2404ea70c590c546eba4202a4e12722c640016c12b9b2f1ce3d481e9a8'
LIBTOOL_PACKAGE_NAME='libtool-2.4.7.tar.gz'
LIBTOOL_PACKAGE_EXTRACTED_DIR='libtool-2.4.7'

MAKE_PACKAGE_URL='https://ftpmirror.gnu.org/make/make-4.4.1.tar.gz'
MAKE_PACKAGE_SHA256SUM='dd16fb1d67bfab79a72f5e8390735c49e3e8e70b4945a15ab1f81ddb78658fb3'
MAKE_PACKAGE_NAME='make-4.4.1.tar.gz'
MAKE_PACKAGE_EXTRACTED_DIR='make-4.4.1'

PKG_CONFIG_PACKAGE_URL='https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz'
PKG_CONFIG_PACKAGE_SHA256SUM='6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591'
PKG_CONFIG_PACKAGE_NAME='pkg-config-0.29.2.tar.gz'
PKG_CONFIG_PACKAGE_EXTRACTED_DIR='pkg-config-0.29.2'

NINJA_PACKAGE_URL='https://github.com/ninja-build/ninja/archive/refs/tags/v1.11.1.tar.gz'
NINJA_PACKAGE_SHA256SUM='31747ae633213f1eda3842686f83c2aa1412e0f5691d1c14dbbcc67fe7400cea'
NINJA_PACKAGE_NAME='ninja-1.11.1.tar.gz'
NINJA_PACKAGE_EXTRACTED_DIR='ninja-1.11.1'

PATCHELF_PACKAGE_URL="https://github.com/NixOS/patchelf/releases/download/0.17.2/patchelf-0.17.2-${ARCH}.tar.gz"
if [[ "${ARCH}" == 'x86_64' ]]; then
	PATCHELF_PACKAGE_SHA256SUM='a3fb9c1de3512bc91f27cc47297d6d6cf208adee9b64ed719130da59ac13e26b'
elif [[ "${ARCH}" == 'aarch64' ]]; then
	PATCHELF_PACKAGE_SHA256SUM='e5165eb592a317e1f6da0ac7fcbccf60d7fb8e5ac1f0d7336a9be51c23308b06'
fi
PATCHELF_PACKAGE_NAME="patchelf-0.17.2-${ARCH}.tar.gz"

NCURSES_PACKAGE_URL='https://ftpmirror.gnu.org/ncurses/ncurses-6.4.tar.gz'
NCURSES_PACKAGE_SHA256SUM='6931283d9ac87c5073f30b6290c4c75f21632bb4fc3603ac8100812bed248159'
NCURSES_PACKAGE_NAME='ncurses-6.4.tar.gz'
NCURSES_PACKAGE_EXTRACTED_DIR='ncurses-6.4'

READLINE_PACKAGE_URL='https://ftpmirror.gnu.org/readline/readline-8.2.tar.gz'
READLINE_PACKAGE_SHA256SUM='3feb7171f16a84ee82ca18a36d7b9be109a52c04f492a053331d7d1095007c35'
READLINE_PACKAGE_NAME='readline-8.2.tar.gz'
READLINE_PACKAGE_EXTRACTED_DIR='readline-8.2'

LIBFFI_PACKAGE_URL='https://github.com/libffi/libffi/releases/download/v3.4.4/libffi-3.4.4.tar.gz'
LIBFFI_PACKAGE_SHA256SUM='d66c56ad259a82cf2a9dfc408b32bf5da52371500b84745f7fb8b645712df676'
LIBFFI_PACKAGE_NAME='libffi-3.4.4.tar.gz'
LIBFFI_PACKAGE_EXTRACTED_DIR='libffi-3.4.4'

ZLIB_PACKAGE_URL='https://github.com/madler/zlib/releases/download/v1.2.13/zlib-1.2.13.tar.gz'
ZLIB_PACKAGE_SHA256SUM='b3a24de97a8fdbc835b9833169501030b8977031bcb54b3b3ac13740f846ab30'
ZLIB_PACKAGE_NAME='zlib-1.2.13.tar.gz'
ZLIB_PACKAGE_EXTRACTED_DIR='zlib-1.2.13'

BERKELEY_DB_PACKAGE_URL='https://download.oracle.com/berkeley-db/db-18.1.40.tar.gz'
BERKELEY_DB_PACKAGE_SHA256SUM='0cecb2ef0c67b166de93732769abdeba0555086d51de1090df325e18ee8da9c8'
BERKELEY_DB_PACKAGE_NAME='db-18.1.40.tar.gz'
BERKELEY_DB_PACKAGE_EXTRACTED_DIR='db-18.1.40'

PERL_PACKAGE_URL='https://www.cpan.org/src/5.0/perl-5.36.0.tar.gz'
PERL_PACKAGE_SHA256SUM='e26085af8ac396f62add8a533c3a0ea8c8497d836f0689347ac5abd7b7a4e00a'
PERL_PACKAGE_NAME='perl-5.36.0.tar.gz'
PERL_PACKAGE_EXTRACTED_DIR='perl-5.36.0'

OPENSSL_PACKAGE_URL='https://www.openssl.org/source/openssl-3.0.8.tar.gz'
OPENSSL_PACKAGE_SHA256SUM='6c13d2bf38fdf31eac3ce2a347073673f5d63263398f1f69d0df4a41253e4b3e'
OPENSSL_PACKAGE_NAME='openssl-3.0.8.tar.gz'
OPENSSL_PACKAGE_EXTRACTED_DIR='openssl-3.0.8'

CURL_PACKAGE_URL='https://curl.se/download/curl-8.0.1.tar.gz'
CURL_PACKAGE_SHA256SUM='5fd29000a4089934f121eff456101f0a5d09e2a3e89da1d714adf06c4be887cb'
CURL_PACKAGE_NAME='curl-8.0.1.tar.gz'
CURL_PACKAGE_EXTRACTED_DIR='curl-8.0.1'

WGET_PACKAGE_URL='https://ftpmirror.gnu.org/wget/wget2-2.0.1.tar.gz'
WGET_PACKAGE_SHA256SUM='0bb7fa03697bb5b8d05e1b5e15b863440826eb845874c4ffb5e32330f9845db1'
WGET_PACKAGE_NAME='wget2-2.0.1.tar.gz'
WGET_PACKAGE_EXTRACTED_DIR='wget2-2.0.1'

BZIP2_PACKAGE_URL='https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz'
BZIP2_PACKAGE_SHA256SUM='ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269'
BZIP2_PACKAGE_NAME='bzip2-1.0.8.tar.gz'
BZIP2_PACKAGE_EXTRACTED_DIR='bzip2-1.0.8'

XZ_PACKAGE_URL='https://tukaani.org/xz/xz-5.4.2.tar.gz'
XZ_PACKAGE_SHA256SUM='87947679abcf77cc509d8d1b474218fd16b72281e2797360e909deaee1ac9d05'
XZ_PACKAGE_NAME='xz-5.4.2.tar.gz'
XZ_PACKAGE_EXTRACTED_DIR='xz-5.4.2'

SQLITE_PACKAGE_URL='https://sqlite.org/2023/sqlite-autoconf-3410200.tar.gz'
SQLITE_PACKAGE_SHA256SUM='e98c100dd1da4e30fa460761dab7c0b91a50b785e167f8c57acc46514fae9499'
SQLITE_PACKAGE_NAME='sqlite-autoconf-3410200.tar.gz'
SQLITE_PACKAGE_EXTRACTED_DIR='sqlite-autoconf-3410200'

PYTHON_PACKAGE_URL='https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz'
PYTHON_PACKAGE_SHA256SUM='1a79f3df32265d9e6625f1a0b31c28eb1594df911403d11f3320ee1da1b3e048'
PYTHON_PACKAGE_NAME='Python-3.11.3.tgz'
PYTHON_PACKAGE_EXTRACTED_DIR='Python-3.11.3'

EXPAT_PACKAGE_URL='https://github.com/libexpat/libexpat/releases/download/R_2_5_0/expat-2.5.0.tar.gz'
EXPRT_PACKAGE_SHA256SUM='6b902ab103843592be5e99504f846ec109c1abb692e85347587f237a4ffa1033'
EXPAT_PACKAGE_NAME='expat-2.5.0.tar.gz'
EXPAT_PACKAGE_EXTRACTED_DIR='expat-2.5.0'

GIT_PACKAGE_URL='https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.40.0.tar.gz'
GIT_PACKAGE_SHA256SUM='ab37c343c0ad097282fd311ab9ca521ab3da836e5c4ed2093994f1b7f8575b09'
GIT_PACKAGE_NAME='git-2.40.0.tar.gz'
GIT_PACKAGE_EXTRACTED_DIR='git-2.40.0'

GMP_PACKAGE_URL='https://ftpmirror.gnu.org/gmp/gmp-6.2.1.tar.xz'
GMP_PACKAGE_SHA256SUM='fd4829912cddd12f84181c3451cc752be224643e87fac497b69edddadc49b4f2'
GMP_PACKAGE_NAME='gmp-6.2.1.tar.xz'
GMP_PACKAGE_EXTRACTED_DIR='gmp-6.2.1'

GDB_PACKAGE_URL='https://ftpmirror.gnu.org/gdb/gdb-13.1.tar.gz'
GDB_PACKAGE_SHA256SUM='4cc3d7143d6d54d289d227b1e7289dbc0fa4cbd46131ab87136e1ea831cf46d4'
GDB_PACKAGE_NAME='gdb-13.1.tar.gz'
GDB_PACKAGE_EXTRACTED_DIR='gdb-13.1'

NEOVIM_PACKAGE_URL='https://github.com/neovim/neovim/releases/download/v0.9.0/nvim.appimage'
NEOVIM_PACKAGE_SHA256SUM='0e1e6d53c6c8055de23bdb33f60bb64af0baf11390669c1b40ecbbf2c7a34547'
NEOVIM_PACKAGE_NAME='nvim.appimage'

ZSTD_PACKAGE_URL='https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-1.5.5.tar.gz'
ZSTD_PACKAGE_SHA256SUM='9c4396cc829cfae319a6e2615202e82aad41372073482fce286fac78646d3ee4'
ZSTD_PACKAGE_NAME='zstd-1.5.5.tar.gz'
ZSTD_PACKAGE_EXTRACTED_DIR='zstd-1.5.5'

CMAKE_PACKAGE_URL="https://github.com/Kitware/CMake/releases/download/v3.26.3/cmake-3.26.3-linux-${ARCH}.tar.gz"
if [[ "${ARCH}" == 'x86_64' ]]; then
	CMAKE_PACKAGE_SHA256SUM='28d4d1d0db94b47d8dfd4f7dec969a3c747304f4a28ddd6fd340f553f2384dc2'
elif [[ "${ARCH}" == 'aarch64' ]]; then
	CMAKE_PACKAGE_SHA256SUM='7a4fbe374475db1a098b632b54e3c9180973e8a791c700deabe5408ae23ea3ce'
fi
CMAKE_PACKAGE_NAME="cmake-3.26.3-linux-${ARCH}.tar.gz"

CCACHE_PACKAGE_URL='https://github.com/ccache/ccache/releases/download/v4.7.5/ccache-4.7.5.tar.gz'
CCACHE_PACKAGE_SHA256SUM='fe304140b0c2e391e6c00fc123e7d202fa0313c569689ca67574686769ac0781'
CCACHE_PACKAGE_NAME='ccache-4.7.5.tar.gz'
CCACHE_PACKAGE_EXTRACTED_DIR='ccache-4.7.5'

LIBXML2_PACKAGE_URL='https://github.com/GNOME/libxml2/archive/refs/tags/v2.10.4.tar.gz'
LIBXML2_PACKAGE_SHA256SUM='6f6fb27f91bb65f9d7196e3c616901b3e18a7dea31ccc2ae857940b125faa780'
LIBXML2_PACKAGE_NAME='libxml2-2.10.4.tar.gz'
LIBXML2_PACKAGE_EXTRACTED_DIR='libxml2-2.10.4'

SWIG_PACKAGE_URL='https://downloads.sourceforge.net/project/swig/swig/swig-4.1.1/swig-4.1.1.tar.gz'
SWIG_PACKAGE_SHA256SUM='2af08aced8fcd65cdb5cc62426768914bedc735b1c250325203716f78e39ac9b'
SWIG_PACKAGE_NAME='swig-4.1.1.tar.gz'
SWIG_PACKAGE_EXTRACTED_DIR='swig-4.1.1'

LIBEDIT_PACKAGE_URL='https://www.thrysoee.dk/editline/libedit-20221030-3.1.tar.gz'
LIBEDIT_PACKAGE_SHA256SUM='f0925a5adf4b1bf116ee19766b7daa766917aec198747943b1c4edf67a4be2bb'
LIBEDIT_PACKAGE_NAME='libedit-20221030-3.1.tar.gz'
LIBEDIT_PACKAGE_EXTRACTED_DIR='libedit-20221030-3.1'

LLVM_PACKAGE_URL='https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.2/llvm-project-16.0.2.src.tar.xz'
LLVM_PACKAGE_SHA256SUM='6d8acae041ccd34abe144cda6eaa76210e1491f286574815b7261b3f2e58734c'
LLVM_PACKAGE_NAME='llvm-project-16.0.2.src.tar.xz'
LLVM_PACKAGE_EXTRACTED_DIR='llvm-project-16.0.2.src'
