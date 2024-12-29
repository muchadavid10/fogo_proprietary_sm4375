--N78_3675_TX_ON
-- Set FTM mode
local mode = ftm_send('4B0F0000'):gsub(' ', '')
if mode:len() < 18 or mode:sub(17, 18) ~= '01' then
    ftm_send('290300')
    delay(1000)
end
---set radio cofigure
ftm_send('4B0B6900010056010000000000000000000000000000030000001A0000000100000000000000000000000300000000000000000000000900000051000000000000000A0000000A000000000000001200000000000000000000002300000012000000000000002400000000000000000000000300000001000000000000000900000053000000000000000A0000000300000000000000120000000000000000000000230000001300000000000000240000000000000000000000050000000700000000000000060000004E0C000000000000070000000300000000000000020000000000000000000000030000000A000000000000000900000050000000000000000A0000000A0000000000000012000000030000000000000023000000FFFF00000000000024000000FFFF000000000000050000000700000000000000060000009E52000000000000070000000300000000000000')--RadioConfig
--set tx on
ftm_send('4B0B69000300720022000000000000000000000000000300000007000000010000000000000000000000020000000A0000000000000003000000010000000000000004000000FA00000000000000050000000000000000000000070000003200000000000000080000000100000000000000')--TxControl:SetTxOn
delay(1000)
ftm_send('4B0B69000300720022000000000000000000000000000300000007000000010000000000000000000000020000000A0000000000000003000000000000000000000004000000FA00000000000000050000000000000000000000070000003200000000000000080000000100000000000000')