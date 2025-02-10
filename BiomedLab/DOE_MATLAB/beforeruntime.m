shrugs = xlsread('baseshrug.xslx', 'A1:B(RANGE)');
rupdos = xlsread('baserupdo.xslx', 'A1:B(RANGE)');
lupdos = xlsread('baselupdo.xslx', 'A1:B(RANGE)');
rleans = xlsread('baserlean.xslx', 'A1:B(RANGE)');
lleans = xlsread('basellean.xslx', 'A1:B(RANGE)');

xlswrite('runtime.xslx', [shrugs, rupdos, lupdos, rleans, lleans]);