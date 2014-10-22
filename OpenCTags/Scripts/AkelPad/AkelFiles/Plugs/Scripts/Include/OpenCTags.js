/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
OpenCTags for AkelPad
Filename :     OpenCTags.js

Created :      2011/11/29
Created by :   HonestQiao (at) gmail.com
Instalation :
OpenCTags need to be installed in E:\\Program Files\\OpenCTags\\.
The JS (OpenCTags.js) will need to be installed in a directory named "AkelFiles\Plugs\Scripts\Include".

Note :
This script has been tested on all Windows Versions.
You may distribute this script freely, but please keep this header intact.

About OpenCTags:
See more information on the website of author : http : // www.wapm.cn /

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

var openctags_path = "E:\\Program Files\\OpenCTags\\";
var openctags_param = '-t "openctags.tags" -word "{word}" -editor "AkelPad" -sel "{sel}" -file "{file}" -line {line}';
var ctags_param = '-f "openctags.tags" --totals=yes -V -R *';

//define
if(typeof WM_USER=="undefined") WM_USER=1024;

//// AkelEdit messages

//Error notifications
if(typeof AEN_ERRSPACE=="undefined") AEN_ERRSPACE=(WM_USER + 1001);  //0x7E9

//Window notifications
if(typeof AEN_SETFOCUS=="undefined") AEN_SETFOCUS=(WM_USER + 1026);  //0x802
if(typeof AEN_KILLFOCUS=="undefined") AEN_KILLFOCUS=(WM_USER + 1027);  //0x803
if(typeof AEN_HSCROLL=="undefined") AEN_HSCROLL=(WM_USER + 1028);  //0x804
if(typeof AEN_VSCROLL=="undefined") AEN_VSCROLL=(WM_USER + 1029);  //0x805
if(typeof AEN_SETRECT=="undefined") AEN_SETRECT=(WM_USER + 1030);  //0x806
if(typeof AEN_PAINT=="undefined") AEN_PAINT=(WM_USER + 1031);  //0x807

//Text notifications
if(typeof AEN_MAXTEXT=="undefined") AEN_MAXTEXT=(WM_USER + 1050);  //0x81A
if(typeof AEN_PROGRESS=="undefined") AEN_PROGRESS=(WM_USER + 1051);  //0x81B
if(typeof AEN_MODIFY=="undefined") AEN_MODIFY=(WM_USER + 1052);  //0x81C
if(typeof AEN_SELCHANGING=="undefined") AEN_SELCHANGING=(WM_USER + 1053);  //0x81D
if(typeof AEN_SELCHANGED=="undefined") AEN_SELCHANGED=(WM_USER + 1054);  //0x81E
if(typeof AEN_TEXTCHANGING=="undefined") AEN_TEXTCHANGING=(WM_USER + 1055);  //0x81F
if(typeof AEN_TEXTINSERTBEGIN=="undefined") AEN_TEXTINSERTBEGIN=(WM_USER + 1056);  //0x820
if(typeof AEN_TEXTINSERTEND=="undefined") AEN_TEXTINSERTEND=(WM_USER + 1057);  //0x821
if(typeof AEN_TEXTDELETEBEGIN=="undefined") AEN_TEXTDELETEBEGIN=(WM_USER + 1058);  //0x822
if(typeof AEN_TEXTDELETEEND=="undefined") AEN_TEXTDELETEEND=(WM_USER + 1059);  //0x823
if(typeof AEN_TEXTCHANGED=="undefined") AEN_TEXTCHANGED=(WM_USER + 1060);  //0x824
if(typeof AEN_POINT=="undefined") AEN_POINT=(WM_USER + 1061);  //0x825

//Mouse notifications
if(typeof AEN_DROPFILES=="undefined") AEN_DROPFILES=(WM_USER + 1076);  //0x834
if(typeof AEN_DROPSOURCE=="undefined") AEN_DROPSOURCE=(WM_USER + 1077);  //0x835
if(typeof AEN_DROPTARGET=="undefined") AEN_DROPTARGET=(WM_USER + 1078);  //0x836
if(typeof AEN_LINK=="undefined") AEN_LINK=(WM_USER + 1079);  //0x837
if(typeof AEN_MARKER=="undefined") AEN_MARKER=(WM_USER + 1080);  //0x838

//RichEdit Unicode extension
if(typeof EM_REPLACESELA=="undefined") EM_REPLACESELA=(WM_USER + 1901)
if(typeof EM_REPLACESELW=="undefined") EM_REPLACESELW=(WM_USER + 1902)
if(typeof EM_GETSELTEXTA=="undefined") EM_GETSELTEXTA=(WM_USER + 1905)
if(typeof EM_GETSELTEXTW=="undefined") EM_GETSELTEXTW=(WM_USER + 1906)
if(typeof EM_GETLINEA=="undefined") EM_GETLINEA=(WM_USER + 1907)
if(typeof EM_GETLINEW=="undefined") EM_GETLINEW=(WM_USER + 1908);

//RichEdit extension
if(typeof EM_GETSEL=="undefined")               EM_GETSEL = 0x00B0
if(typeof EM_SETSEL=="undefined")               EM_SETSEL = 0x00B1
if(typeof EM_EXGETSEL=="undefined") EM_EXGETSEL=(WM_USER + 62)
if(typeof EM_EXSETSEL=="undefined") EM_EXSETSEL=(WM_USER + 55)

//RichEdit x64 extension
if(typeof EM_GETSEL64=="undefined") EM_GETSEL64=(WM_USER + 1951)
if(typeof EM_EXGETSEL64=="undefined") EM_EXGETSEL64=(WM_USER + 1952)
if(typeof EM_EXSETSEL64=="undefined") EM_EXSETSEL64=(WM_USER + 1953)
if(typeof EM_FINDTEXTEX64=="undefined") EM_FINDTEXTEX64=(WM_USER + 1954)
if(typeof EM_FINDTEXTEX64A=="undefined") EM_FINDTEXTEX64A=(WM_USER + 1955)
if(typeof EM_FINDTEXTEX64W=="undefined") EM_FINDTEXTEX64W=(WM_USER + 1956)
if(typeof EM_GETTEXTRANGE64=="undefined") EM_GETTEXTRANGE64=(WM_USER + 1961)
if(typeof EM_GETTEXTRANGE64A=="undefined") EM_GETTEXTRANGE64A=(WM_USER + 1962)
if(typeof EM_GETTEXTRANGE64W=="undefined") EM_GETTEXTRANGE64W=(WM_USER + 1963)
if(typeof EM_GETTEXTEX64=="undefined") EM_GETTEXTEX64=(WM_USER + 1964);

//Text retrieval and modification
if(typeof AEM_SETTEXTA=="undefined") AEM_SETTEXTA=(WM_USER + 2001)
if(typeof AEM_SETTEXTW=="undefined") AEM_SETTEXTW=(WM_USER + 2002)
if(typeof AEM_APPENDTEXTA=="undefined") AEM_APPENDTEXTA=(WM_USER + 2003)
if(typeof AEM_APPENDTEXTW=="undefined") AEM_APPENDTEXTW=(WM_USER + 2004)
if(typeof AEM_REPLACESELA=="undefined") AEM_REPLACESELA=(WM_USER + 2005)
if(typeof AEM_REPLACESELW=="undefined") AEM_REPLACESELW=(WM_USER + 2006)
if(typeof AEM_GETTEXTRANGEA=="undefined") AEM_GETTEXTRANGEA=(WM_USER + 2007)
if(typeof AEM_GETTEXTRANGEW=="undefined") AEM_GETTEXTRANGEW=(WM_USER + 2008)
if(typeof AEM_STREAMIN=="undefined") AEM_STREAMIN=(WM_USER + 2009)
if(typeof AEM_STREAMOUT=="undefined") AEM_STREAMOUT=(WM_USER + 2010)
if(typeof AEM_CANPASTE=="undefined") AEM_CANPASTE=(WM_USER + 2011)
if(typeof AEM_PASTE=="undefined") AEM_PASTE=(WM_USER + 2012)
if(typeof AEM_CUT=="undefined") AEM_CUT=(WM_USER + 2013)
if(typeof AEM_COPY=="undefined") AEM_COPY=(WM_USER + 2014)
if(typeof AEM_CHECKCODEPAGE=="undefined") AEM_CHECKCODEPAGE=(WM_USER + 2015)
if(typeof AEM_FINDTEXTA=="undefined") AEM_FINDTEXTA=(WM_USER + 2016)
if(typeof AEM_FINDTEXTW=="undefined") AEM_FINDTEXTW=(WM_USER + 2017)
if(typeof AEM_ISMATCHA=="undefined") AEM_ISMATCHA=(WM_USER + 2018)
if(typeof AEM_ISMATCHW=="undefined") AEM_ISMATCHW=(WM_USER + 2019)
if(typeof AEM_KEYDOWN=="undefined") AEM_KEYDOWN=(WM_USER + 2020)
if(typeof AEM_DRAGDROP=="undefined") AEM_DRAGDROP=(WM_USER + 2021)
if(typeof AEM_CHARAT=="undefined") AEM_CHARAT=(WM_USER + 2022)
if(typeof AEM_INPUTLANGUAGE=="undefined") AEM_INPUTLANGUAGE=(WM_USER + 2023);

//Undo and Redo
if(typeof AEM_CANUNDO=="undefined") AEM_CANUNDO=(WM_USER + 2051)
if(typeof AEM_CANREDO=="undefined") AEM_CANREDO=(WM_USER + 2052)
if(typeof AEM_UNDO=="undefined") AEM_UNDO=(WM_USER + 2053)
if(typeof AEM_REDO=="undefined") AEM_REDO=(WM_USER + 2054)
if(typeof AEM_EMPTYUNDOBUFFER=="undefined") AEM_EMPTYUNDOBUFFER=(WM_USER + 2055)
if(typeof AEM_STOPGROUPTYPING=="undefined") AEM_STOPGROUPTYPING=(WM_USER + 2056)
if(typeof AEM_BEGINUNDOACTION=="undefined") AEM_BEGINUNDOACTION=(WM_USER + 2057)
if(typeof AEM_ENDUNDOACTION=="undefined") AEM_ENDUNDOACTION=(WM_USER + 2058)
if(typeof AEM_LOCKCOLLECTUNDO=="undefined") AEM_LOCKCOLLECTUNDO=(WM_USER + 2059)
if(typeof AEM_GETUNDOLIMIT=="undefined") AEM_GETUNDOLIMIT=(WM_USER + 2060)
if(typeof AEM_SETUNDOLIMIT=="undefined") AEM_SETUNDOLIMIT=(WM_USER + 2061)
if(typeof AEM_GETMODIFY=="undefined") AEM_GETMODIFY=(WM_USER + 2062)
if(typeof AEM_SETMODIFY=="undefined") AEM_SETMODIFY=(WM_USER + 2063)
if(typeof AEM_UNDOBUFFERSIZE=="undefined") AEM_UNDOBUFFERSIZE=(WM_USER + 2064)
if(typeof AEM_ISRANGEMODIFIED=="undefined") AEM_ISRANGEMODIFIED=(WM_USER + 2065);

//Text coordinates
if(typeof AEM_EXGETSEL=="undefined") AEM_EXGETSEL=(WM_USER + 2099)
if(typeof AEM_EXSETSEL=="undefined") AEM_EXSETSEL=(WM_USER + 2100)
if(typeof AEM_GETSEL=="undefined") AEM_GETSEL=(WM_USER + 2101)
if(typeof AEM_SETSEL=="undefined") AEM_SETSEL=(WM_USER + 2102)
if(typeof AEM_GETCOLUMNSEL=="undefined") AEM_GETCOLUMNSEL=(WM_USER + 2103)
if(typeof AEM_UPDATESEL=="undefined") AEM_UPDATESEL=(WM_USER + 2104)
if(typeof AEM_GETLINENUMBER=="undefined") AEM_GETLINENUMBER=(WM_USER + 2105)
if(typeof AEM_GETINDEX=="undefined") AEM_GETINDEX=(WM_USER + 2106)
if(typeof AEM_GETLINEINDEX=="undefined") AEM_GETLINEINDEX=(WM_USER + 2107)
if(typeof AEM_INDEXUPDATE=="undefined") AEM_INDEXUPDATE=(WM_USER + 2108)
if(typeof AEM_INDEXCOMPARE=="undefined") AEM_INDEXCOMPARE=(WM_USER + 2109)
if(typeof AEM_INDEXSUBTRACT=="undefined") AEM_INDEXSUBTRACT=(WM_USER + 2110)
if(typeof AEM_INDEXOFFSET=="undefined") AEM_INDEXOFFSET=(WM_USER + 2111)
if(typeof AEM_INDEXTORICHOFFSET=="undefined") AEM_INDEXTORICHOFFSET=(WM_USER + 2112)
if(typeof AEM_RICHOFFSETTOINDEX=="undefined") AEM_RICHOFFSETTOINDEX=(WM_USER + 2113)
if(typeof AEM_GETRICHOFFSET=="undefined") AEM_GETRICHOFFSET=(WM_USER + 2114)
if(typeof AEM_GETWRAPLINE=="undefined") AEM_GETWRAPLINE=(WM_USER + 2118)
if(typeof AEM_GETUNWRAPLINE=="undefined") AEM_GETUNWRAPLINE=(WM_USER + 2119)
if(typeof AEM_GETNEXTBREAK=="undefined") AEM_GETNEXTBREAK=(WM_USER + 2120)
if(typeof AEM_GETPREVBREAK=="undefined") AEM_GETPREVBREAK=(WM_USER + 2121)
if(typeof AEM_ISDELIMITER=="undefined") AEM_ISDELIMITER=(WM_USER + 2122)
if(typeof AEM_INDEXTOCOLUMN=="undefined") AEM_INDEXTOCOLUMN=(WM_USER + 2123)
if(typeof AEM_COLUMNTOINDEX=="undefined") AEM_COLUMNTOINDEX=(WM_USER + 2124)
if(typeof AEM_INDEXINURL=="undefined") AEM_INDEXINURL=(WM_USER + 2125)
if(typeof AEM_ADDPOINT=="undefined") AEM_ADDPOINT=(WM_USER + 2141)
if(typeof AEM_DELPOINT=="undefined") AEM_DELPOINT=(WM_USER + 2142)
if(typeof AEM_GETPOINTSTACK=="undefined") AEM_GETPOINTSTACK=(WM_USER + 2143);

//Screen coordinates
if(typeof AEM_CHARFROMGLOBALPOS=="undefined") AEM_CHARFROMGLOBALPOS=(WM_USER + 2149)
if(typeof AEM_GLOBALPOSFROMCHAR=="undefined") AEM_GLOBALPOSFROMCHAR=(WM_USER + 2150)
if(typeof AEM_CHARFROMPOS=="undefined") AEM_CHARFROMPOS=(WM_USER + 2151)
if(typeof AEM_POSFROMCHAR=="undefined") AEM_POSFROMCHAR=(WM_USER + 2152)
if(typeof AEM_GETRECT=="undefined") AEM_GETRECT=(WM_USER + 2153)
if(typeof AEM_SETRECT=="undefined") AEM_SETRECT=(WM_USER + 2154)
if(typeof AEM_GETSCROLLPOS=="undefined") AEM_GETSCROLLPOS=(WM_USER + 2155)
if(typeof AEM_SETSCROLLPOS=="undefined") AEM_SETSCROLLPOS=(WM_USER + 2156)
if(typeof AEM_SCROLL=="undefined") AEM_SCROLL=(WM_USER + 2157)
if(typeof AEM_LINESCROLL=="undefined") AEM_LINESCROLL=(WM_USER + 2158)
if(typeof AEM_SCROLLTOPOINT=="undefined") AEM_SCROLLTOPOINT=(WM_USER + 2159)
if(typeof AEM_LOCKSCROLL=="undefined") AEM_LOCKSCROLL=(WM_USER + 2161)
if(typeof AEM_GETCHARSIZE=="undefined") AEM_GETCHARSIZE=(WM_USER + 2164)
if(typeof AEM_GETSTRWIDTH=="undefined") AEM_GETSTRWIDTH=(WM_USER + 2165)
if(typeof AEM_GETCARETPOS=="undefined") AEM_GETCARETPOS=(WM_USER + 2166)
if(typeof AEM_GETCARETHORZINDENT=="undefined") AEM_GETCARETHORZINDENT=(WM_USER + 2167)
if(typeof AEM_SETCARETHORZINDENT=="undefined") AEM_SETCARETHORZINDENT=(WM_USER + 2168)
if(typeof AEM_CONVERTPOINT=="undefined") AEM_CONVERTPOINT=(WM_USER + 2169)
if(typeof AEM_POINTONMARGIN=="undefined") AEM_POINTONMARGIN=(WM_USER + 2170)
if(typeof AEM_POINTONSELECTION=="undefined") AEM_POINTONSELECTION=(WM_USER + 2171)
if(typeof AEM_POINTONURL=="undefined") AEM_POINTONURL=(WM_USER + 2172)
if(typeof AEM_LINEFROMVPOS=="undefined") AEM_LINEFROMVPOS=(WM_USER + 2173)
if(typeof AEM_VPOSFROMLINE=="undefined") AEM_VPOSFROMLINE=(WM_USER + 2174)
if(typeof AEM_GETMOUSESTATE=="undefined") AEM_GETMOUSESTATE=(WM_USER + 2175);

//Options
if(typeof AEM_CONTROLCLASS=="undefined") AEM_CONTROLCLASS=(WM_USER + 2199)
if(typeof AEM_CONTROLVERSION=="undefined") AEM_CONTROLVERSION=(WM_USER + 2200)
if(typeof AEM_GETEVENTMASK=="undefined") AEM_GETEVENTMASK=(WM_USER + 2201)
if(typeof AEM_SETEVENTMASK=="undefined") AEM_SETEVENTMASK=(WM_USER + 2202)
if(typeof AEM_GETOPTIONS=="undefined") AEM_GETOPTIONS=(WM_USER + 2203)
if(typeof AEM_SETOPTIONS=="undefined") AEM_SETOPTIONS=(WM_USER + 2204)
if(typeof AEM_GETNEWLINE=="undefined") AEM_GETNEWLINE=(WM_USER + 2205)
if(typeof AEM_SETNEWLINE=="undefined") AEM_SETNEWLINE=(WM_USER + 2206)
if(typeof AEM_GETCOLORS=="undefined") AEM_GETCOLORS=(WM_USER + 2207)
if(typeof AEM_SETCOLORS=="undefined") AEM_SETCOLORS=(WM_USER + 2208)
if(typeof AEM_GETDETECTURL=="undefined") AEM_GETDETECTURL=(WM_USER + 2209)
if(typeof AEM_SETDETECTURL=="undefined") AEM_SETDETECTURL=(WM_USER + 2210)
if(typeof AEM_GETOVERTYPE=="undefined") AEM_GETOVERTYPE=(WM_USER + 2211)
if(typeof AEM_SETOVERTYPE=="undefined") AEM_SETOVERTYPE=(WM_USER + 2212)
if(typeof AEM_GETCARETWIDTH=="undefined") AEM_GETCARETWIDTH=(WM_USER + 2213)
if(typeof AEM_SETCARETWIDTH=="undefined") AEM_SETCARETWIDTH=(WM_USER + 2214)
if(typeof AEM_GETTABSTOP=="undefined") AEM_GETTABSTOP=(WM_USER + 2215)
if(typeof AEM_SETTABSTOP=="undefined") AEM_SETTABSTOP=(WM_USER + 2216)
if(typeof AEM_GETWORDWRAP=="undefined") AEM_GETWORDWRAP=(WM_USER + 2217)
if(typeof AEM_SETWORDWRAP=="undefined") AEM_SETWORDWRAP=(WM_USER + 2218)
if(typeof AEM_GETWORDDELIMITERS=="undefined") AEM_GETWORDDELIMITERS=(WM_USER + 2219)
if(typeof AEM_SETWORDDELIMITERS=="undefined") AEM_SETWORDDELIMITERS=(WM_USER + 2220)
if(typeof AEM_GETWRAPDELIMITERS=="undefined") AEM_GETWRAPDELIMITERS=(WM_USER + 2221)
if(typeof AEM_SETWRAPDELIMITERS=="undefined") AEM_SETWRAPDELIMITERS=(WM_USER + 2222)
if(typeof AEM_GETURLLEFTDELIMITERS=="undefined") AEM_GETURLLEFTDELIMITERS=(WM_USER + 2223)
if(typeof AEM_SETURLLEFTDELIMITERS=="undefined") AEM_SETURLLEFTDELIMITERS=(WM_USER + 2224)
if(typeof AEM_GETURLRIGHTDELIMITERS=="undefined") AEM_GETURLRIGHTDELIMITERS=(WM_USER + 2225)
if(typeof AEM_SETURLRIGHTDELIMITERS=="undefined") AEM_SETURLRIGHTDELIMITERS=(WM_USER + 2226)
if(typeof AEM_GETURLPREFIXES=="undefined") AEM_GETURLPREFIXES=(WM_USER + 2227)
if(typeof AEM_SETURLPREFIXES=="undefined") AEM_SETURLPREFIXES=(WM_USER + 2228)
if(typeof AEM_GETURLMAXLENGTH=="undefined") AEM_GETURLMAXLENGTH=(WM_USER + 2229)
if(typeof AEM_SETURLMAXLENGTH=="undefined") AEM_SETURLMAXLENGTH=(WM_USER + 2230)
if(typeof AEM_GETWORDBREAK=="undefined") AEM_GETWORDBREAK=(WM_USER + 2231)
if(typeof AEM_SETWORDBREAK=="undefined") AEM_SETWORDBREAK=(WM_USER + 2232)
if(typeof AEM_GETMARKER=="undefined") AEM_GETMARKER=(WM_USER + 2233)
if(typeof AEM_SETMARKER=="undefined") AEM_SETMARKER=(WM_USER + 2234)
if(typeof AEM_GETLINEGAP=="undefined") AEM_GETLINEGAP=(WM_USER + 2235)
if(typeof AEM_SETLINEGAP=="undefined") AEM_SETLINEGAP=(WM_USER + 2236)
if(typeof AEM_GETTEXTLIMIT=="undefined") AEM_GETTEXTLIMIT=(WM_USER + 2237)
if(typeof AEM_SETTEXTLIMIT=="undefined") AEM_SETTEXTLIMIT=(WM_USER + 2238)
if(typeof AEM_GETFONT=="undefined") AEM_GETFONT=(WM_USER + 2239)
if(typeof AEM_GETALTLINE=="undefined") AEM_GETALTLINE=(WM_USER + 2240)
if(typeof AEM_SETALTLINE=="undefined") AEM_SETALTLINE=(WM_USER + 2241);

//Draw
if(typeof AEM_SHOWSCROLLBAR=="undefined") AEM_SHOWSCROLLBAR=(WM_USER + 2351)
if(typeof AEM_UPDATESCROLLBAR=="undefined") AEM_UPDATESCROLLBAR=(WM_USER + 2352)
if(typeof AEM_UPDATECARET=="undefined") AEM_UPDATECARET=(WM_USER + 2353)
if(typeof AEM_UPDATESIZE=="undefined") AEM_UPDATESIZE=(WM_USER + 2354)
if(typeof AEM_LOCKUPDATE=="undefined") AEM_LOCKUPDATE=(WM_USER + 2355)
if(typeof AEM_LOCKERASERECT=="undefined") AEM_LOCKERASERECT=(WM_USER + 2356)
if(typeof AEM_HIDESELECTION=="undefined") AEM_HIDESELECTION=(WM_USER + 2361)
if(typeof AEM_REDRAWLINERANGE=="undefined") AEM_REDRAWLINERANGE=(WM_USER + 2362);

//Folding
if(typeof AEM_GETFOLDSTACK=="undefined") AEM_GETFOLDSTACK=(WM_USER + 2381)
if(typeof AEM_GETFOLDCOUNT=="undefined") AEM_GETFOLDCOUNT=(WM_USER + 2382)
if(typeof AEM_ADDFOLD=="undefined") AEM_ADDFOLD=(WM_USER + 2383)
if(typeof AEM_DELETEFOLD=="undefined") AEM_DELETEFOLD=(WM_USER + 2384)
if(typeof AEM_ISFOLDVALID=="undefined") AEM_ISFOLDVALID=(WM_USER + 2385)
if(typeof AEM_FINDFOLD=="undefined") AEM_FINDFOLD=(WM_USER + 2386)
if(typeof AEM_NEXTFOLD=="undefined") AEM_NEXTFOLD=(WM_USER + 2387)
if(typeof AEM_PREVFOLD=="undefined") AEM_PREVFOLD=(WM_USER + 2388)
if(typeof AEM_ISLINECOLLAPSED=="undefined") AEM_ISLINECOLLAPSED=(WM_USER + 2389)
if(typeof AEM_COLLAPSELINE=="undefined") AEM_COLLAPSELINE=(WM_USER + 2390)
if(typeof AEM_COLLAPSEFOLD=="undefined") AEM_COLLAPSEFOLD=(WM_USER + 2391)
if(typeof AEM_UPDATEFOLD=="undefined") AEM_UPDATEFOLD=(WM_USER + 2392);

//Document
if(typeof AEM_CREATEDOCUMENT=="undefined") AEM_CREATEDOCUMENT=(WM_USER + 2401)
if(typeof AEM_DELETEDOCUMENT=="undefined") AEM_DELETEDOCUMENT=(WM_USER + 2402)
if(typeof AEM_GETDOCUMENT=="undefined") AEM_GETDOCUMENT=(WM_USER + 2403)
if(typeof AEM_SETDOCUMENT=="undefined") AEM_SETDOCUMENT=(WM_USER + 2404)
if(typeof AEM_GETDOCUMENTPROC=="undefined") AEM_GETDOCUMENTPROC=(WM_USER + 2405)
if(typeof AEM_GETDOCUMENTWINDOW=="undefined") AEM_GETDOCUMENTWINDOW=(WM_USER + 2406)
if(typeof AEM_SENDMESSAGE=="undefined") AEM_SENDMESSAGE=(WM_USER + 2407);

//Clone
if(typeof AEM_ADDCLONE=="undefined") AEM_ADDCLONE=(WM_USER + 2421)
if(typeof AEM_DELCLONE=="undefined") AEM_DELCLONE=(WM_USER + 2422)
if(typeof AEM_GETMASTER=="undefined") AEM_GETMASTER=(WM_USER + 2423)
if(typeof AEM_GETCLONE=="undefined") AEM_GETCLONE=(WM_USER + 2424);

//Print
if(typeof AEM_STARTPRINTDOC=="undefined") AEM_STARTPRINTDOC=(WM_USER + 2451)
if(typeof AEM_PRINTPAGE=="undefined") AEM_PRINTPAGE=(WM_USER + 2452)
if(typeof AEM_ENDPRINTDOC=="undefined") AEM_ENDPRINTDOC=(WM_USER + 2453);

//Highlight
if(typeof AEM_HLCREATETHEMEA=="undefined") AEM_HLCREATETHEMEA=(WM_USER + 2501)
if(typeof AEM_HLCREATETHEMEW=="undefined") AEM_HLCREATETHEMEW=(WM_USER + 2502)
if(typeof AEM_HLGETTHEMEA=="undefined") AEM_HLGETTHEMEA=(WM_USER + 2503)
if(typeof AEM_HLGETTHEMEW=="undefined") AEM_HLGETTHEMEW=(WM_USER + 2504)
if(typeof AEM_HLGETTHEMENAMEA=="undefined") AEM_HLGETTHEMENAMEA=(WM_USER + 2505)
if(typeof AEM_HLGETTHEMENAMEW=="undefined") AEM_HLGETTHEMENAMEW=(WM_USER + 2506)
if(typeof AEM_HLGETTHEMESTACK=="undefined") AEM_HLGETTHEMESTACK=(WM_USER + 2507)
if(typeof AEM_HLTHEMEEXISTS=="undefined") AEM_HLTHEMEEXISTS=(WM_USER + 2508)
if(typeof AEM_HLSETTHEME=="undefined") AEM_HLSETTHEME=(WM_USER + 2509)
if(typeof AEM_HLDELETETHEME=="undefined") AEM_HLDELETETHEME=(WM_USER + 2510)
if(typeof AEM_HLDELETETHEMEALL=="undefined") AEM_HLDELETETHEMEALL=(WM_USER + 2511)
if(typeof AEM_HLADDDELIMITERA=="undefined") AEM_HLADDDELIMITERA=(WM_USER + 2521)
if(typeof AEM_HLADDDELIMITERW=="undefined") AEM_HLADDDELIMITERW=(WM_USER + 2522)
if(typeof AEM_HLDELETEDELIMITER=="undefined") AEM_HLDELETEDELIMITER=(WM_USER + 2523)
if(typeof AEM_HLADDWORDA=="undefined") AEM_HLADDWORDA=(WM_USER + 2531)
if(typeof AEM_HLADDWORDW=="undefined") AEM_HLADDWORDW=(WM_USER + 2532)
if(typeof AEM_HLDELETEWORD=="undefined") AEM_HLDELETEWORD=(WM_USER + 2533)
if(typeof AEM_HLADDQUOTEA=="undefined") AEM_HLADDQUOTEA=(WM_USER + 2541)
if(typeof AEM_HLADDQUOTEW=="undefined") AEM_HLADDQUOTEW=(WM_USER + 2542)
if(typeof AEM_HLDELETEQUOTE=="undefined") AEM_HLDELETEQUOTE=(WM_USER + 2543)
if(typeof AEM_HLADDMARKTEXTA=="undefined") AEM_HLADDMARKTEXTA=(WM_USER + 2551)
if(typeof AEM_HLADDMARKTEXTW=="undefined") AEM_HLADDMARKTEXTW=(WM_USER + 2552)
if(typeof AEM_HLDELETEMARKTEXT=="undefined") AEM_HLDELETEMARKTEXT=(WM_USER + 2553)
if(typeof AEM_HLADDMARKRANGE=="undefined") AEM_HLADDMARKRANGE=(WM_USER + 2561)
if(typeof AEM_HLDELETEMARKRANGE=="undefined") AEM_HLDELETEMARKRANGE=(WM_USER + 2562)
if(typeof AEM_HLGETHIGHLIGHT=="undefined") AEM_HLGETHIGHLIGHT=(WM_USER + 2571)

//SendMessage define
if(typeof EM_EMPTYUNDOBUFFER=="undefined") EM_EMPTYUNDOBUFFER=205;
if(typeof EM_CANUNDO=="undefined") EM_CANUNDO=198;
if(typeof EM_GETMODIFY=="undefined") EM_GETMODIFY=184;
if(typeof EM_SETMODIFY=="undefined") EM_SETMODIFY=185;
if(typeof EM_UNDO=="undefined") EM_UNDO=199;
if(typeof EM_CANPASTE=="undefined") EM_CANPASTE=1074;
if(typeof EM_FINDTEXT=="undefined") EM_FINDTEXT=1080;
if(typeof EM_GETFIRSTVISIBLELINE=="undefined") EM_GETFIRSTVISIBLELINE=206;
if(typeof EM_GETLINECOUNT=="undefined") EM_GETLINECOUNT=186;
if(typeof EM_GETLINE=="undefined") EM_GETLINE=196;
if(typeof EM_LINEFROMCHAR=="undefined") EM_LINEFROMCHAR=201;
if(typeof EM_LINEINDEX=="undefined") EM_LINEINDEX=187;
if(typeof EM_LINELENGTH=="undefined") EM_LINELENGTH=193;
if(typeof EM_EXLINEFROMCHAR=="undefined")   EM_EXLINEFROMCHAR=1078;
if(typeof EM_LINESCROLL=="undefined") EM_LINESCROLL=182;
if(typeof EM_SCROLLCARET=="undefined") EM_SCROLLCARET=183;
if(typeof EM_SETTABSTOPS=="undefined") EM_SETTABSTOPS=203;

//Scroll Bar Constants
if(typeof SB_HORZ=="undefined")             SB_HORZ=0;
if(typeof SB_VERT=="undefined")              SB_VERT=1;
if(typeof SB_CTL=="undefined")                 SB_CTL=2;
if(typeof SB_BOTH=="undefined")              SB_BOTH=3;

//get current editor window
var hWnd = AkelPad.GetMainWnd();
var eHandle=AkelPad.GetEditWnd();

//Get current file
var pFile=AkelPad.GetEditFile(0);
var pFileName=pFile.replace(/^.+?([^\\]+)$/,'$1');
var pPath=pFile.replace(/\\+[^\\]+$/,'');

//Get selected text
var pText=AkelPad.GetSelText();

var fs = new ActiveXObject("Scripting.FileSystemObject");
var wsh = new ActiveXObject("WScript.Shell");
var wsn = new ActiveXObject("WScript.Network");

runCommand();

function BuildTag(){
	setSingleOpenFileMode();
	OpenCTag_CTagBuild(openctags_path+"ctags.exe", ctags_param, pPath);
}

function OpenTag(){
	setSingleOpenFileMode();
	OpenCTags_Location(openctags_path+"OpenCTags.exe", openctags_param, pPath, pFileName, pText, pText, GetCurrentLine(), "");
}

function OpenTagInSingleFile(){
	setSingleOpenFileMode();
	OpenCTags_Location(openctags_path+"OpenCTags.exe", openctags_param, pPath, pFileName, ":"+pText, ":"+pText, GetCurrentLine(), "");
}

function PrevTag(){
	setSingleOpenFileMode();
	OpenCTags_Location(openctags_path+"OpenCTags.exe", openctags_param, pPath, pFileName, pText, pText, GetCurrentLine(), "p");
}

function NextTag(){
	setSingleOpenFileMode();
	OpenCTags_Location(openctags_path+"OpenCTags.exe", openctags_param, pPath, pFileName, pText, pText, GetCurrentLine(), "n");
}

function OpenCTag_CTagBuild(sExec, sParam, sPath){
	try {
		if (fs.FileExists(sExec)) {
			command  = sExec + " " + sParam;
			wsh.CurrentDirectory = sPath;
			var oExec = wsh.Exec(command);
		}
		else {
			wsh.popup ("This script needs OpenCTags installed in " + openctags_path);
		}
	}
	catch(err) {
		txt = "There was an error on CTags build.\n\n";
		txt += "Error description: " + err.description + "\n\n";
		txt += "Click OK to continue.\n\n";
		wsh.popup(txt);
		return;
	}
}

function OpenCTags_Location(sExec, sParam, sPath, sFile, sWord, sSel, sLine, sAction){
	try {
		if (fs.FileExists(sExec)) {
			if(typeof sWord == "undefined") {
				sWord = "";
			}
			if(typeof sSel == "undefined") {
				sSel = "";
			}
			if(typeof sLine == "undefined") {
				sLine = 1;
			}
			if(typeof sAction == "undefined") {
				sAction = "";
			}

			if(sAction && (sAction=="p" || sAction=="n")) {
				sAction = " -action " + sAction;
			}
			else {
				sAction = "";
			}

			var myParam = sParam.replace('{word}', sWord).replace('{sel}', sSel).replace('{file}', sFile).replace('{line}', sLine)
			command  = sExec + " " + myParam+sAction;
			wsh.CurrentDirectory = sPath;
			var oExec = wsh.Exec(command);
		}
		else {
			wsh.popup ("This script needs OpenCTags installed in " + openctags_param);
		}
	}
	catch(err) {
		txt = "There was an error on OpenCTags location.\n\n";
		txt += "Error description: " + err.description + "\n\n";
		txt += "Click OK to continue.\n\n";
		wsh.popup(txt);
		return;
	}
}

function GetCurrentLine(){
	var nLineIndex;
	if (eHandle) // AkelPad running?
	{ 
		nLineIndex=AkelPad.SendMessage(eHandle,EM_LINEINDEX,-1,0);
		if(nLineIndex>=0) {
		nLineIndex = AkelPad.SendMessage(eHandle, EM_EXLINEFROMCHAR, 0, nLineIndex);
			if(nLineIndex>=0) {
				//
			}
			else
			{
				nLineIndex = 0;
			}
		}
		else {
			nLineIndex = 0;
		}
	}
	else
	{
		nLineIndex = 0;
	}
	return nLineIndex+1;
}

function SetCurrentLine(nLine)
{
		try
		{
			var numLines = AkelPad.SendMessage(eHandle, EM_GETLINECOUNT, 0, 0);

			if (nLine>numLines || nLine<1)
			{
				return false;
			}
			if(numLines>nLine+10 && nLine>25) {
				var _start = AkelPad.SendMessage(eHandle, EM_LINEINDEX, nLine-1+10, 0);
				//var _end = AkelPad.SendMessage(eHandle, EM_LINEINDEX, nLine+10, 0);
				
				//AkelPad.SendMessage(eHandle, EM_SETSEL, _start, _end-1);
				AkelPad.SetSel(_start, _start);
			}
			else if(numLines<nLine+10 && nLine>25) {
				var _start = AkelPad.SendMessage(eHandle, EM_LINEINDEX, numLines-1, 0);
				//var _end = AkelPad.SendMessage(eHandle, EM_LINEINDEX, numLines, 0);
				
				//AkelPad.SendMessage(eHandle, EM_SETSEL, _start, _end-1);
				AkelPad.SetSel(_start, _start);
			}
			var _start = AkelPad.SendMessage(eHandle, EM_LINEINDEX, nLine-1, 0);
			var _end = AkelPad.SendMessage(eHandle, EM_LINEINDEX, nLine, 0);
			
			//AkelPad.SendMessage(eHandle, EM_SETSEL, _start, _end-1);
			AkelPad.SetSel(_start, _end-1);
		}
		catch(err) {
		}
}

function setSingleOpenFileMode(){
	var hMenuMain = AkelPad.SendMessage(hWnd, 1222 /*AKD_GETMAININFO*/, 21 /*MI_MENUMAIN*/, 0); 
	var nOptionState = AkelPad.SystemFunction().Call("user32::GetMenuState", hMenuMain, 4255 /*IDM_OPTIONS_SINGLEOPEN_FILE*/, 0 /*MF_BYCOMMAND*/); 

	if (! (nOptionState & 0x8 /*MF_CHECKED*/)) {
		AkelPad.Command(4255 /*IDM_OPTIONS_SINGLEOPEN_FILE*/);
	}
}

function getAction(){
	var pCommand = "";
	if (WScript.Arguments.length >=1)
		pCommand = WScript.Arguments(0);
	else
	{
		pCommand = "";
	}
	return pCommand;
}

function runCommand(){
	if(getAction()=="-l") {
		var pLine = 1;
		try
		{
			pLine = WScript.Arguments(1);
			pLine = parseInt(pLine);
		}
		catch (err)
		{
		}
		//setSingleOpenFileMode();
		SetCurrentLine(pLine);
	}
}

function ScrollLock(hWnd, bLock)
{
	AkelPad.SendMessage(hWnd, 3185 /*AEM_LOCKSCROLL*/, 3 /*SB_BOTH*/, bLock);
}

function ScrollCaret(hWnd)
{
  var lpStp;
  var dwScrollFlags=0;
  var dwScrollResult;

  if (lpStp=AkelPad.MemAlloc(_X64?32:20))  //sizeof(AESCROLLTOPOINT)
  {
    //Test scroll to caret
    dwScrollFlags=0x1|0x10|0x400|0x800 /*AESC_TEST|AESC_POINTCARET|AESC_OFFSETCHARX|AESC_OFFSETCHARY*/;
    AkelPad.MemCopy(lpStp, dwScrollFlags, 3 /*DT_DWORD*/);     //AESCROLLTOPOINT.dwFlags
    AkelPad.MemCopy(lpStp + (_X64?24:12), 1, 3 /*DT_DWORD*/);  //AESCROLLTOPOINT.nOffsetX
    AkelPad.MemCopy(lpStp + (_X64?28:16), 0, 3 /*DT_DWORD*/);  //AESCROLLTOPOINT.nOffsetY
    dwScrollResult=AkelPad.SendMessage(hWnd, 3183 /*AEM_SCROLLTOPOINT*/, 0, lpStp);

    dwScrollFlags=0x10 /*AESC_POINTCARET*/;
    if (dwScrollResult & 0x1 /*AECSE_SCROLLEDX*/)
      dwScrollFlags|=0x1000 /*AESC_OFFSETRECTDIVX*/;
    if (dwScrollResult & 0x2 /*AECSE_SCROLLEDY*/)
      dwScrollFlags|=0x2000 /*AESC_OFFSETRECTDIVY*/;

    //Scroll to caret
    AkelPad.MemCopy(lpStp, dwScrollFlags, 3 /*DT_DWORD*/);     //AESCROLLTOPOINT.dwFlags
    AkelPad.MemCopy(lpStp + (_X64?24:12), 3, 3 /*DT_DWORD*/);  //AESCROLLTOPOINT.nOffsetX
    AkelPad.MemCopy(lpStp + (_X64?28:16), 2, 3 /*DT_DWORD*/);  //AESCROLLTOPOINT.nOffsetY
    AkelPad.SendMessage(hWnd, 3183 /*AEM_SCROLLTOPOINT*/, 0, lpStp);

    AkelPad.MemFree(lpStp);
  }
}