local hmod = require("hashings").sha256
local runner = require("runner")

local hash_test_output = {
	v1 =  { "E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855" },
	v2 =  { "BA7816BF8F01CFEA414140DE5DAE2223B00361A396177A9CB410FF61F20015AD" },
	v3 =  { "F7EF53D21502321EAECB78BB405B7FF266253B4A27D89B9B8C4DA5847CDD1B9D" },
	v4 =  { "D7A8FBB307D7809469CA9ABCB0082E4F8D5651E46D3CDB762D02D0BF37C9E592" },
	v5 =  { "F506898CC7C2E092F9EB9FADAE7BA50383F5B46A2A4FE5597DBB553A78981268" },
	v6 =  { "94E419FABAC7F930810F9636354042F8C1426D2F834D4AB65C93DC1E69326B13" },
	v7 =  { "52B6419D27BD7F547CEE3B92F8C17A908B8A49601ECBEC161E5030DE1DFE9E0A" },
	v8 =  { "899987F295364060C6ABD752A7E895124B467FD7CF56B52CE22F4A684A5723F4" },
	v9 =  { "AC7E96C630650857439C5AC18603A5AA8F9154C080A05A7858FE9F5694428D7A" },
	v10 = { "AF9342E7FDF6A632CAC37A375EB9057325C9D44B608D6BE0792D6F92E0646718" },
	v11 = { "F071645658F95C502FF32EF04C678B250FB4EE41D0147E898ACEE132CDAFDC5B" },
	v12 = { "8720E03272DE2D4B660C41F52BB61597B569F576989EB895F2075BEED4DEBDAB" },
	v13 = { "77A8301D1755947925B1E03A74470BC1EE47E1669BDCCCB5700752FECDFD94BA" },
	v14 = { "466383BCB41954E34017DFF9AD661299F7992DC0AE9085C4867DDB235F236995" },
	v15 = { "778A8CA56E915E224A53BC981D235696C586F471654E5BA93E6D37DA58BF8CB6" },
	v16 = { "4A83CD2045150FEDB04E66AF0B726B84BD9685B4305CFD78C975276311549839" },
	v17 = { "20E45866084B5BB116FB0F7217FB91D67029FE7AEBA911A2160440AED1139988" },
	v18 = { "924E4CA78CA9862A93DA95E8BA3C3E7CFB7489C922916591A4170D0439D0AB7F" },
	v19 = { "6285825761D8FEC75564385B299D10A097890B987BE7C759D4F4E0BD7FCC4962" },
	v20 = { "536C4AAFD7347354BC5EE38EABA10B965097D861BCA3D416844790F5A063803C" },
	v21 = { "9C355C3A10CFCE93813A024160E32A8458BB0A979B70CA6012A48B9930B4AF12" },
	v22 = { "E830DD650DDA5C905B13F23363660EF7D65B156A7481FFE16DB4482C37012671", "09A3DC9726D905DB10FA4300BE3BC9B7698223FD14BC4C3C07D50E1880CD2A0D" },
	v23 = { "83145E41E6F4FF6CDF478BB37AE12BF39A1B096D5A576871E630880AB07A77F2", "1F39A5F8CF37EADDA2AABEFDC15DEFAC29900A1F00E2B11FA4C65A156F982BC5", "A8CCF26483555FAD76D401C0F0DB122FBDC168EC2C7C0C30469087A6CBDFE843" }
}

local hmac_test_output = {
	v1 = { "08DE329931E295683776AA9A43529BD0B275286DF3160300C49BA4E841833013" },
	v2 = { "DEEECC926FF7B20C12802D5BD3E8CE4FA9D3938A684A13BD374CE45C2EC6082C" },
	v3 = { "5BB19FC9B15D248FD102864D0AD93A9DDCAD0F44DBE52DD8E4E6BC5241ECDB2D", "2CEC83CAE3F5ABB1643EC7D75C2D805F0F5B36D07A321A122983B212394B3B7E" },
	v4 = { "391C00359D7D53FE73677831A9705F977FD3B78EED95BF054A1C3504931478E8", "418C9C485647A970E5D3EFE411CC4971AE3CD72C0A815BCAEDDB42DF75D6FF5D", "9A2A2DCCCFE14DEB195EFA1A1D18407A07C73F5DAA561892F179AE038B1A5022" }
}

runner.hash_runner("sha256", hmod, hash_test_output)
runner.hmac_runner("sha256", hmod, hmac_test_output)
