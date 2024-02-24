param($mapi_rs_path)

& dotnet build

Copy-Item .\bin\Microsoft.Office.Outlook.MAPI.Win32.winmd "$mapi_rs_path\crates\update-bindings\winmd\"
Copy-Item -Recurse .\mapi-scrubbed\importlib\x64 "$mapi_rs_path\crates\mapi-sys\x64"
Copy-Item -Recurse .\mapi-scrubbed\importlib\x86 "$mapi_rs_path\crates\mapi-sys\x86"
