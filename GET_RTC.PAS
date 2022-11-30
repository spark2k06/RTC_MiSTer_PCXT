uses DOS, CRT, RTC;

var
   year, month, day, DOW, hour, min, sec, sec100: Word;

begin
     year := BCD2Value(getRTCreg(RTC_year));
     if year < 50 then year := year + 2000 else year := year + 1900;
     month := BCD2Value(getRTCreg(RTC_month));
     day := BCD2Value(getRTCreg(RTC_day));
     hour := BCD2Value(getRTCreg(RTC_hour));
     min := BCD2Value(getRTCreg(RTC_minute));
     sec := BCD2Value(getRTCreg(RTC_second));
     SetDate(year, month, day);
     SetTime(Hour, min, sec, 0);
     GetDate(year, Month, Day, DOW);
     writeln('System date updated from Real Time Clock');
     writeln(day, '/', month, '/', year);
     GetTime(Hour, min, sec, sec100);
     writeln(Hour, ':', min, ':', sec);
end.