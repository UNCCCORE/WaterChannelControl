function val = saturate(value,low,high)
val = value;
flag = 0;
if isa(val,'char')
    val = str2double(val);
    flag = 1;
end
if val > high
    val = high;
end
if val < low
    val = low;
end
if flag ==1
    val = num2str(val);
end
