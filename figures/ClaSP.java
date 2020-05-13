@ITEM=3=}end
@ITEM=0=start{
@ITEM=7=try{
@ITEM=8=catch{
@ITEM=11=}try
@ITEM=10=}catch
@ITEM=15=fail
@ITEM=2=methodCall
@ITEM=-1=*

0 -1 7 -1 8 -1 10 -1 11 -1 3 -1
0 -1 7 -1 2 -1 15 -1 8 -1 10 -1 11 -1 3 -1

start{ * try{ * catch{ * }catch * }try * }end *  1847
start{ * try{ * methodCall * fail * catch{ * }catch * }try * }end *  1470
