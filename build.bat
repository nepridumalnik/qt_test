echo off

mkdir %~dp0build
cd %~dp0build

conan install .. -pr ..\profiles\windows_dbg --build=missing
conan build ..

cd %~dp0
