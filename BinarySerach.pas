program BinarySearch;

var
    l, r, m: integer;
    ketemu: boolean;
    Data: array[1..100] of integer;  { asumsi ukuran array, bisa disesuaikan }
    x, N: integer;  { N adalah ukuran array, x adalah elemen yang dicari }

function BinarySearch(Data: array of integer; x, N: integer): integer;
begin
    l := 1;
    r := N;
    ketemu := false;
    
    while (l <= r) and (not ketemu) do
    begin
        m := (l + r) div 2;
        if Data[m] = x then
            ketemu := true
        else if x < Data[m] then
            r := m - 1
        else
            l := m + 1;
    end;

    if ketemu then
        BinarySearch := m
    else
        BinarySearch := -1;
end;

begin
    { Inisialisasi Data dan N sesuai kebutuhan }
    Data[1] := 1;
    Data[2] := 3;
    Data[3] := 5;
    Data[4] := 7;
    Data[5] := 9;
    N := 5;  { jumlah elemen dalam array }
    x := 7;  { elemen yang dicari }
    
    writeln(BinarySearch(Data, x, N));
end.
