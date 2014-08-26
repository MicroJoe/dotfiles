XPTemplate priority=personal

let s:f = g:XPTfuncs()

XPT inc hint=System\ wide\ include.
#include <`iostream^>


XPT Inc hint=Local\ include.
#include "`header^.hpp"


XPT cout hint=Basic\ std::cout\ statement.
std::cout << `expression^`...^ << `expression^`...^ << std::endl;
`cursor^

XPT cerr hint=Basic\ std::cerr\ statement.
std::cerr << `expression^`...^ << `expression^`...^ << std::endl;
`cursor^
