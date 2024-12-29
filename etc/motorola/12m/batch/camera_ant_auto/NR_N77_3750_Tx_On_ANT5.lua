--N78_3675_TX_ON
-- Set FTM mode
local mode = ftm_send('4B0F0000'):gsub(' ', '')
if mode:len() < 18 or mode:sub(17, 18) ~= '01' then
    ftm_send('290300')
    delay(1000)
end
---set radio cofigure
ftm_send('4B0B6900010016020000000000000000000000000000060000002A000000020000000000000000000000160000000000000000000000030000000A0000000000000009000000CB000000000000000A000000110000000000000012000000030000000000000023000000FFFF00000000000024000000FFFF000000000000050000004D000000000000000600000010EB09000000000007000000A0860100000000000800000001000000000000001100000000000000000000001A000000307500000000000001000000000000000000000016000000000000000000000003000000000000000000000009000000D3000000000000000A0000001100000000000000120000000000000000000000230000000000000000000000240000000200000000000000050000004D000000000000000600000010EB09000000000007000000A0860100000000000800000001000000000000001100000000000000000000001A000000307500000000000001000000000000000000000016000000000000000000000003000000010000000000000009000000D5000000000000000A0000001300000000000000120000000000000000000000230000000100000000000000240000000200000000000000050000004D000000000000000600000010EB09000000000007000000A0860100000000000800000001000000000000001100000000000000000000001A0000003075000000000000')--RadioConfig
--set tx on
ftm_send('4B0B690003007E0022000000000000000000000000000600000008000000010000000000000000000000020000000A00000000000000030000000100000000000000040000001801000000000000050000000000000000000000070000001101000000000000080000000A000000000000000B0000000000000000000000')--TxControl:SetTxOn
delay(1000)
ftm_send('4B0B690003007E0022000000000000000000000000000600000008000000010000000000000000000000020000000A00000000000000030000000000000000000000040000001801000000000000050000000000000000000000070000001101000000000000080000000A000000000000000B0000000000000000000000')