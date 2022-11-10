\
\ @author: Arnold Doray
\ @date: 9 Aug 2021
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ Credential Management.
\

mem: username groupid login-ok

: reset-credentials ( -- ) 
  null username! drop 
  null groupid! drop
  false login-ok! drop
;

: credentials-ok? ( -- f ) 
    username null? -> true exit |. 
    groupid null? -> true exit |. 
    username groupid user?
    dup login-ok! drop
;

: check-credentials ( -- )
    credentials-ok? -> exit |.
    reset-credentials
;

: bad-credentials? ( -- f ) 
    credentials-ok? not
;

\ This is for tests only
: test-login ( "group" "username" -- ) 
    reset-credentials 
    username! drop 
    groupid! drop 
    credentials-ok? drop
;

\ Save user data.
: user-data! ( k v -- f ) { k v }  
    bad-credentials? -> false exit |.
    k v username groupid data! 
    true
;

\ Get user data.
: user-data@ ( -- null|tup ) 
    bad-credentials? -> null exit |.
    username groupid data@ 
;

