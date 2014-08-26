let s:f = g:XPTfuncs()


XPTinclude
      \ _common/common


XPT once wrap	" #ifndef .. #define ..
XSET symbol=headerSymbol()
#pragma once
#ifndef `symbol^
#define `symbol^

`cursor^

#endif // `symbol^
