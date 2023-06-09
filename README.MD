# Сборка проекта

## Условия для сборки:

1. Наличие в каталоге `C:\Users\%USERNAME%\.conan` файла `remotes.json` со следующим содержанием (важно только наличие conancenter):

```json
{
 "remotes": [
  {
   "name": "conancenter",
   "url": "https://center.conan.io",
   "verify_ssl": false
  }
 ]
}
```

2. Установлен компилятор MSVC 16.

3. Наличие установленного Python модуля `conan` версии не ниже 1.57.0.

3. Отсутствие активного proxy или VPN.

## Процесс установки:

1. Создать папку `build` и перейти в неё.

2. Вызвать `conan` с командой `install`. Если есть необходимость, передать туда путь до профиля и дополнительные флаги, например:

```bash
conan install .. -pr ../profiles/windows_dbg --build=missing
```

3. Вызвать `conan build ..`, либо `cmake ..`, а затем `cmake --build .`.

4. Для примера сборки дан скрипт build.bat.
