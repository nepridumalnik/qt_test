echo off

mkdir %~dp0build
cd %~dp0

conan install .. -pr ../profiles/windows_dbg --build=missing
