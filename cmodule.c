/*
    gcc -shared -I/usr/local/Cellar/lua/5.3.5/include/lua5.3 -llua -o cmodule.so cmodule.c
*/


#include "stdio.h"
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

static int add(lua_State *L) {
    double x = luaL_checknumber(L, 1);
    double y = luaL_checknumber(L, 2);
    lua_pushnumber(L, x + y);
    return 1;  /* number of results */
}

static int echo(lua_State *L) {
    printf("This message comes form C.");
    return 0;
}

static const luaL_Reg myFuncs[] = { 
    {"add", add},
    {"echo", echo},
    {NULL, NULL} 
}; 

LUALIB_API int luaopen_cmodule(lua_State* L) {
    lua_newtable(L);
    luaL_setfuncs(L, myFuncs, 0);
    return 1;
}
