RankHandler rk = new RankHandler();
string prize1 = rk.rankPrize(1);
system.debug('prize 1 is ' + prize1);
string prize2 = rk.rankPrize(3);
system.debug('prize 1 is ' + prize2);
string prize4 = rk.rankPrize(8);
system.debug('prize 1 is ' + prize4);
string prize12 = rk.rankPrize(31);
system.debug('prize 1 is ' + prize12);



RankHandler rc = new RankHandler();
string price1 = rc.rankPrizeSwitch(1);
system.debug('prize 1 is ' + price1);
string price2 = rc.rankPrizeSwitch(3);
system.debug('prize 1 is ' + price2);
string price4 = rc.rankPrizeSwitch(8);
system.debug('prize 1 is ' + price4);
string price12 = rc.rankPrizeSwitch(31);
system.debug('prize 1 is ' + price12);