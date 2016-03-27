% primary q1
% note to run this: under Configuration, you have to select user-defined option to enable more than one solutions

%int: lo = 1; only 3 solutions
int: lo = 0;
int: hi = 9;

var lo..hi: a;
var lo..hi: b;
var lo..hi: c;
var lo..hi: d;
var lo..hi: e;
var lo..hi: f;
var lo..hi: g;
var lo..hi: h;
%int: p=1; but no need as general solution of p give you 1 as well
var lo..hi: p;
% cannot do the general p, q, r 
%      as there are 11 vars but only 10 numbers 0 ... 9
%      and definitely not with 9 numbers 1...9 if 0 is not allowed
%var lo..hi: q; 
%var lo..hi: r;      

include "alldifferent.mzn";
constraint all_different([a, b, c, d, e, f, g, h, p]);
constraint (a*10 + b) - (c*10 + d) = (e*10 +f);
constraint (e*10 + f)  + (g*10 + h) = (p*100 + p*10 + p);

%solve satisfy;

solve :: int_search([a, b, c, d, e, f, g, h, p], input_order, indomain, complete)
                  satisfy;

%output ["ab - cd = ef + gh = ppp\t\n",
output [show(a), 
            show(b), 
            " - ",      
            show(c), 
            show(d), 
            " = ",     
            show(e), 
            show(f),
            " + ", 
            show(g), 
            show(h), 
            "= ", 
            show(p),show(p),show(p),
            "\t\n"];

% http://www.hk01.com/熱話/13552/家長寫程式解小一數題-專家促讓小學生動腦作答-挑戰題助長智能?utm_content=bufferf82b4&utm_medium=social&utm_source=facebook.com&utm_campaign=buffer
% https://www.facebook.com/photo.php?fbid=10206383163957694&set=a.1117941588498.2019228.1225764204&type=3

% https://www.facebook.com/FrontlineTechWorkersConcernGroup/photos/a.907682852604782.1073741829.907020282671039/1124085797631152/?type=3&theater

% https://www.facebook.com/VJMediaHK/posts/836505283126266?comment_id=837086356401492&notif_t=like

% there is another one using minizinc, not sure I can find the links again, it is on github

% this is of course this github list of all major solution
