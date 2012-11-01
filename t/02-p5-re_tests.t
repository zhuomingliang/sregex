# vim:set ft= ts=4 sw=4 et fdm=marker:

use t::SRegex 'no_plan';

run_tests();

__DATA__

=== TEST 1: re_tests:9
--- re: abc
--- s eval: "abc"



=== TEST 2: re_tests:12
--- re: abc
--- s eval: "xbc"



=== TEST 3: re_tests:13
--- re: abc
--- s eval: "axc"



=== TEST 4: re_tests:14
--- re: abc
--- s eval: "abx"



=== TEST 5: re_tests:15
--- re: abc
--- s eval: "xabcy"



=== TEST 6: re_tests:18
--- re: abc
--- s eval: "ababc"



=== TEST 7: re_tests:21
--- re: ab*c
--- s eval: "abc"



=== TEST 8: re_tests:24
--- re: ab*bc
--- s eval: "abc"



=== TEST 9: re_tests:27
--- re: ab*bc
--- s eval: "abbc"



=== TEST 10: re_tests:30
--- re: ab*bc
--- s eval: "abbbbc"



=== TEST 11: re_tests:33
--- re: .{1}
--- s eval: "abbbbc"



=== TEST 12: re_tests:36
--- re: .{3,4}
--- s eval: "abbbbc"



=== TEST 13: re_tests:42
--- re: \N {1}
--- s eval: "abbbbc"



=== TEST 14: re_tests:48
--- re: \N {3,4}
--- s eval: "abbbbc"



=== TEST 15: re_tests:51
--- re: ab{0,}bc
--- s eval: "abbbbc"



=== TEST 16: re_tests:54
--- re: ab+bc
--- s eval: "abbc"



=== TEST 17: re_tests:57
--- re: ab+bc
--- s eval: "abc"



=== TEST 18: re_tests:58
--- re: ab+bc
--- s eval: "abq"



=== TEST 19: re_tests:59
--- re: ab{1,}bc
--- s eval: "abq"



=== TEST 20: re_tests:60
--- re: ab+bc
--- s eval: "abbbbc"



=== TEST 21: re_tests:63
--- re: ab{1,}bc
--- s eval: "abbbbc"



=== TEST 22: re_tests:66
--- re: ab{1,3}bc
--- s eval: "abbbbc"



=== TEST 23: re_tests:69
--- re: ab{3,4}bc
--- s eval: "abbbbc"



=== TEST 24: re_tests:72
--- re: ab{4,5}bc
--- s eval: "abbbbc"



=== TEST 25: re_tests:73
--- re: ab?bc
--- s eval: "abbc"



=== TEST 26: re_tests:74
--- re: ab?bc
--- s eval: "abc"



=== TEST 27: re_tests:75
--- re: ab{0,1}bc
--- s eval: "abc"



=== TEST 28: re_tests:76
--- re: ab?bc
--- s eval: "abbbbc"



=== TEST 29: re_tests:77
--- re: ab?c
--- s eval: "abc"



=== TEST 30: re_tests:78
--- re: ab{0,1}c
--- s eval: "abc"



=== TEST 31: re_tests:79
--- re: ^abc$
--- s eval: "abc"



=== TEST 32: re_tests:80
--- re: ^abc$
--- s eval: "abcc"



=== TEST 33: re_tests:81
--- re: ^abc
--- s eval: "abcc"



=== TEST 34: re_tests:82
--- re: ^abc$
--- s eval: "aabc"



=== TEST 35: re_tests:83
--- re: abc$
--- s eval: "aabc"



=== TEST 36: re_tests:84
--- re: abc$
--- s eval: "aabcd"



=== TEST 37: re_tests:85
--- re: ^
--- s eval: "abc"



=== TEST 38: re_tests:86
--- re: $
--- s eval: "abc"



=== TEST 39: re_tests:87
--- re: a.c
--- s eval: "abc"



=== TEST 40: re_tests:88
--- re: a.c
--- s eval: "axc"



=== TEST 41: re_tests:89
--- re: a\Nc
--- s eval: "abc"



=== TEST 42: re_tests:90
--- re: a\N c
--- s eval: "abc"



=== TEST 43: re_tests:91
--- re: a.*c
--- s eval: "axyzc"



=== TEST 44: re_tests:92
--- re: a\N*c
--- s eval: "axyzc"



=== TEST 45: re_tests:93
--- re: a\N *c
--- s eval: "axyzc"



=== TEST 46: re_tests:94
--- re: a.*c
--- s eval: "axyzd"



=== TEST 47: re_tests:95
--- re: a\N*c
--- s eval: "axyzd"



=== TEST 48: re_tests:96
--- re: a\N *c
--- s eval: "axyzd"



=== TEST 49: re_tests:97
--- re: a[bc]d
--- s eval: "abc"



=== TEST 50: re_tests:98
--- re: a[bc]d
--- s eval: "abd"



=== TEST 51: re_tests:99
--- re: a[b]d
--- s eval: "abd"



=== TEST 52: re_tests:100
--- re: [a][b][d]
--- s eval: "abd"



=== TEST 53: re_tests:101
--- re: .[b].
--- s eval: "abd"



=== TEST 54: re_tests:102
--- re: .[b].
--- s eval: "aBd"



=== TEST 55: re_tests:105
--- re: a[b-d]e
--- s eval: "abd"



=== TEST 56: re_tests:106
--- re: a[b-d]e
--- s eval: "ace"



=== TEST 57: re_tests:107
--- re: a[b-d]
--- s eval: "aac"



=== TEST 58: re_tests:108
--- re: a[-b]
--- s eval: "a-"



=== TEST 59: re_tests:109
--- re: a[b-]
--- s eval: "a-"



=== TEST 60: re_tests:110
--- re: a[b-a]
--- s eval: "-"
--- err
[error] syntax error



=== TEST 61: re_tests:111
--- re: a[]b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 62: re_tests:112
--- re: a[
--- s eval: "-"
--- err
[error] syntax error



=== TEST 63: re_tests:113
--- re: a]
--- s eval: "a]"



=== TEST 64: re_tests:114
--- re: a[]]b
--- s eval: "a]b"



=== TEST 65: re_tests:115
--- re: a[^bc]d
--- s eval: "aed"



=== TEST 66: re_tests:116
--- re: a[^bc]d
--- s eval: "abd"



=== TEST 67: re_tests:117
--- re: a[^-b]c
--- s eval: "adc"



=== TEST 68: re_tests:118
--- re: a[^-b]c
--- s eval: "a-c"



=== TEST 69: re_tests:119
--- re: a[^]b]c
--- s eval: "a]c"



=== TEST 70: re_tests:120
--- re: a[^]b]c
--- s eval: "adc"



=== TEST 71: re_tests:121
--- re: \ba\b
--- s eval: "a-"



=== TEST 72: re_tests:122
--- re: \ba\b
--- s eval: "-a"



=== TEST 73: re_tests:123
--- re: \ba\b
--- s eval: "-a-"



=== TEST 74: re_tests:124
--- re: \by\b
--- s eval: "xy"



=== TEST 75: re_tests:125
--- re: \by\b
--- s eval: "yz"



=== TEST 76: re_tests:126
--- re: \by\b
--- s eval: "xyz"



=== TEST 77: re_tests:127
--- re: \Ba\B
--- s eval: "a-"



=== TEST 78: re_tests:128
--- re: \Ba\B
--- s eval: "-a"



=== TEST 79: re_tests:129
--- re: \Ba\B
--- s eval: "-a-"



=== TEST 80: re_tests:130
--- re: \By\b
--- s eval: "xy"



=== TEST 81: re_tests:134
--- re: \by\B
--- s eval: "yz"



=== TEST 82: re_tests:135
--- re: \By\B
--- s eval: "xyz"



=== TEST 83: re_tests:136
--- re: \w
--- s eval: "a"



=== TEST 84: re_tests:137
--- re: \w
--- s eval: "-"



=== TEST 85: re_tests:138
--- re: \W
--- s eval: "a"



=== TEST 86: re_tests:139
--- re: \W
--- s eval: "-"



=== TEST 87: re_tests:140
--- re: a\sb
--- s eval: "a b"



=== TEST 88: re_tests:141
--- re: a\sb
--- s eval: "a-b"



=== TEST 89: re_tests:142
--- re: a\Sb
--- s eval: "a b"



=== TEST 90: re_tests:143
--- re: a\Sb
--- s eval: "a-b"



=== TEST 91: re_tests:144
--- re: \d
--- s eval: "1"



=== TEST 92: re_tests:145
--- re: \d
--- s eval: "-"



=== TEST 93: re_tests:146
--- re: \D
--- s eval: "1"



=== TEST 94: re_tests:147
--- re: \D
--- s eval: "-"



=== TEST 95: re_tests:148
--- re: [\w]
--- s eval: "a"



=== TEST 96: re_tests:149
--- re: [\w]
--- s eval: "-"



=== TEST 97: re_tests:150
--- re: [\W]
--- s eval: "a"



=== TEST 98: re_tests:151
--- re: [\W]
--- s eval: "-"



=== TEST 99: re_tests:152
--- re: a[\s]b
--- s eval: "a b"



=== TEST 100: re_tests:153
--- re: a[\s]b
--- s eval: "a-b"



=== TEST 101: re_tests:154
--- re: a[\S]b
--- s eval: "a b"



=== TEST 102: re_tests:155
--- re: a[\S]b
--- s eval: "a-b"



=== TEST 103: re_tests:156
--- re: [\d]
--- s eval: "1"



=== TEST 104: re_tests:157
--- re: [\d]
--- s eval: "-"



=== TEST 105: re_tests:158
--- re: [\D]
--- s eval: "1"



=== TEST 106: re_tests:159
--- re: [\D]
--- s eval: "-"



=== TEST 107: re_tests:160
--- re: ab|cd
--- s eval: "abc"



=== TEST 108: re_tests:161
--- re: ab|cd
--- s eval: "abcd"



=== TEST 109: re_tests:162
--- re: ()ef
--- s eval: "def"



=== TEST 110: re_tests:167
--- re: *a
--- s eval: "-"
--- err
[error] syntax error



=== TEST 111: re_tests:168
--- re: (|*)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 112: re_tests:169
--- re: (*)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 113: re_tests:170
--- re: $b
--- s eval: "b"



=== TEST 114: re_tests:171
--- re: a\
--- s eval: "-"
--- err
[error] syntax error



=== TEST 115: re_tests:172
--- re: a\(b
--- s eval: "a(b"



=== TEST 116: re_tests:173
--- re: a\(*b
--- s eval: "ab"



=== TEST 117: re_tests:174
--- re: a\(*b
--- s eval: "a((b"



=== TEST 118: re_tests:175
--- re: a\\b
--- s eval: "a\\b"



=== TEST 119: re_tests:176
--- re: abc)
--- s eval: "-"
--- err
[error] syntax error



=== TEST 120: re_tests:177
--- re: (abc
--- s eval: "-"
--- err
[error] syntax error



=== TEST 121: re_tests:178
--- re: ((a))
--- s eval: "abc"



=== TEST 122: re_tests:183
--- re: (a)b(c)
--- s eval: "abc"



=== TEST 123: re_tests:186
--- re: a+b+c
--- s eval: "aabbabc"



=== TEST 124: re_tests:187
--- re: a{1,}b{1,}c
--- s eval: "aabbabc"



=== TEST 125: re_tests:188
--- re: a**
--- s eval: "-"
--- err
[error] syntax error



=== TEST 126: re_tests:189
--- re: a.+?c
--- s eval: "abcabc"



=== TEST 127: re_tests:190
--- re: (a+|b)*
--- s eval: "ab"



=== TEST 128: re_tests:195
--- re: (a+|b){0,}
--- s eval: "ab"



=== TEST 129: re_tests:196
--- re: (a+|b)+
--- s eval: "ab"



=== TEST 130: re_tests:197
--- re: (a+|b){1,}
--- s eval: "ab"



=== TEST 131: re_tests:198
--- re: (a+|b)?
--- s eval: "ab"



=== TEST 132: re_tests:199
--- re: (a+|b){0,1}
--- s eval: "ab"



=== TEST 133: re_tests:200
--- re: )(
--- s eval: "-"
--- err
[error] syntax error



=== TEST 134: re_tests:201
--- re: [^ab]*
--- s eval: "cde"



=== TEST 135: re_tests:202
--- re: abc
--- s eval: ""



=== TEST 136: re_tests:203
--- re: a*
--- s eval: ""



=== TEST 137: re_tests:204
--- re: ([abc])*d
--- s eval: "abbbcd"



=== TEST 138: re_tests:205
--- re: ([abc])*bcd
--- s eval: "abcd"



=== TEST 139: re_tests:206
--- re: a|b|c|d|e
--- s eval: "e"



=== TEST 140: re_tests:207
--- re: (a|b|c|d|e)f
--- s eval: "ef"



=== TEST 141: re_tests:212
--- re: abcd*efg
--- s eval: "abcdefg"



=== TEST 142: re_tests:213
--- re: ab*
--- s eval: "xabyabbbz"



=== TEST 143: re_tests:214
--- re: ab*
--- s eval: "xayabbbz"



=== TEST 144: re_tests:215
--- re: (ab|cd)e
--- s eval: "abcde"



=== TEST 145: re_tests:216
--- re: [abhgefdc]ij
--- s eval: "hij"



=== TEST 146: re_tests:217
--- re: ^(ab|cd)e
--- s eval: "abcde"



=== TEST 147: re_tests:218
--- re: (abc|)ef
--- s eval: "abcdef"



=== TEST 148: re_tests:219
--- re: (a|b)c*d
--- s eval: "abcd"



=== TEST 149: re_tests:220
--- re: (ab|ab*)bc
--- s eval: "abc"



=== TEST 150: re_tests:221
--- re: a([bc]*)c*
--- s eval: "abc"



=== TEST 151: re_tests:222
--- re: a([bc]*)(c*d)
--- s eval: "abcd"



=== TEST 152: re_tests:229
--- re: a([bc]+)(c*d)
--- s eval: "abcd"



=== TEST 153: re_tests:230
--- re: a([bc]*)(c+d)
--- s eval: "abcd"



=== TEST 154: re_tests:237
--- re: a[bcd]*dcdcde
--- s eval: "adcdcde"



=== TEST 155: re_tests:238
--- re: a[bcd]+dcdcde
--- s eval: "adcdcde"



=== TEST 156: re_tests:239
--- re: (ab|a)b*c
--- s eval: "abc"



=== TEST 157: re_tests:244
--- re: ((a)(b)c)(d)
--- s eval: "abcd"



=== TEST 158: re_tests:255
--- re: [a-zA-Z_][a-zA-Z0-9_]*
--- s eval: "alpha"



=== TEST 159: re_tests:256
--- re: ^a(bc+|b[eh])g|.h$
--- s eval: "abh"



=== TEST 160: re_tests:257
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "effgz"



=== TEST 161: re_tests:258
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "ij"



=== TEST 162: re_tests:259
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "effg"



=== TEST 163: re_tests:260
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "bcdd"



=== TEST 164: re_tests:261
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "reffgz"



=== TEST 165: re_tests:262
--- re: ((((((((((a))))))))))
--- s eval: "a"



=== TEST 166: re_tests:268
--- re: ((((((((((a))))))))))\041
--- s eval: "aa"



=== TEST 167: re_tests:269
--- re: ((((((((((a))))))))))\041
--- s eval: "a!"



=== TEST 168: re_tests:270
--- re: (((((((((a)))))))))
--- s eval: "a"



=== TEST 169: re_tests:271
--- re: multiple words of text
--- s eval: "uh-uh"



=== TEST 170: re_tests:272
--- re: multiple words
--- s eval: "multiple words, yeah"



=== TEST 171: re_tests:273
--- re: (.*)c(.*)
--- s eval: "abcde"



=== TEST 172: re_tests:274
--- re: \((.*), (.*)\)
--- s eval: "(a, b)"



=== TEST 173: re_tests:275
--- re: [k]
--- s eval: "ab"



=== TEST 174: re_tests:276
--- re: abcd
--- s eval: "abcd"



=== TEST 175: re_tests:277
--- re: a(bc)d
--- s eval: "abcd"



=== TEST 176: re_tests:278
--- re: a[-]?c
--- s eval: "ac"



=== TEST 177: re_tests:285
--- re: \g{1}
--- s eval: "-"
--- err
[error] syntax error



=== TEST 178: re_tests:287
--- re: \g0
--- s eval: "-"
--- err
[error] syntax error



=== TEST 179: re_tests:289
--- re: \g{0}
--- s eval: "-"
--- err
[error] syntax error



=== TEST 180: re_tests:302
--- re: (a)|(b)
--- s eval: "b"



=== TEST 181: re_tests:308
--- re: abc
--- s eval: "ABC"



=== TEST 182: re_tests:309
--- re: abc
--- s eval: "XBC"



=== TEST 183: re_tests:310
--- re: abc
--- s eval: "AXC"



=== TEST 184: re_tests:311
--- re: abc
--- s eval: "ABX"



=== TEST 185: re_tests:312
--- re: abc
--- s eval: "XABCY"



=== TEST 186: re_tests:313
--- re: abc
--- s eval: "ABABC"



=== TEST 187: re_tests:314
--- re: ab*c
--- s eval: "ABC"



=== TEST 188: re_tests:315
--- re: ab*bc
--- s eval: "ABC"



=== TEST 189: re_tests:316
--- re: ab*bc
--- s eval: "ABBC"



=== TEST 190: re_tests:317
--- re: ab*?bc
--- s eval: "ABBBBC"



=== TEST 191: re_tests:318
--- re: ab{0,}?bc
--- s eval: "ABBBBC"



=== TEST 192: re_tests:319
--- re: ab+?bc
--- s eval: "ABBC"



=== TEST 193: re_tests:320
--- re: ab+bc
--- s eval: "ABC"



=== TEST 194: re_tests:321
--- re: ab+bc
--- s eval: "ABQ"



=== TEST 195: re_tests:322
--- re: ab{1,}bc
--- s eval: "ABQ"



=== TEST 196: re_tests:323
--- re: ab+bc
--- s eval: "ABBBBC"



=== TEST 197: re_tests:324
--- re: ab{1,}?bc
--- s eval: "ABBBBC"



=== TEST 198: re_tests:325
--- re: ab{1,3}?bc
--- s eval: "ABBBBC"



=== TEST 199: re_tests:326
--- re: ab{3,4}?bc
--- s eval: "ABBBBC"



=== TEST 200: re_tests:327
--- re: ab{4,5}?bc
--- s eval: "ABBBBC"



=== TEST 201: re_tests:328
--- re: ab??bc
--- s eval: "ABBC"



=== TEST 202: re_tests:329
--- re: ab??bc
--- s eval: "ABC"



=== TEST 203: re_tests:330
--- re: ab{0,1}?bc
--- s eval: "ABC"



=== TEST 204: re_tests:331
--- re: ab??bc
--- s eval: "ABBBBC"



=== TEST 205: re_tests:332
--- re: ab??c
--- s eval: "ABC"



=== TEST 206: re_tests:333
--- re: ab{0,1}?c
--- s eval: "ABC"



=== TEST 207: re_tests:334
--- re: ^abc$
--- s eval: "ABC"



=== TEST 208: re_tests:335
--- re: ^abc$
--- s eval: "ABCC"



=== TEST 209: re_tests:336
--- re: ^abc
--- s eval: "ABCC"



=== TEST 210: re_tests:337
--- re: ^abc$
--- s eval: "AABC"



=== TEST 211: re_tests:338
--- re: abc$
--- s eval: "AABC"



=== TEST 212: re_tests:339
--- re: ^
--- s eval: "ABC"



=== TEST 213: re_tests:340
--- re: $
--- s eval: "ABC"



=== TEST 214: re_tests:341
--- re: a.c
--- s eval: "ABC"



=== TEST 215: re_tests:342
--- re: a.c
--- s eval: "AXC"



=== TEST 216: re_tests:343
--- re: a\Nc
--- s eval: "ABC"



=== TEST 217: re_tests:344
--- re: a.*?c
--- s eval: "AXYZC"



=== TEST 218: re_tests:345
--- re: a.*c
--- s eval: "AXYZD"



=== TEST 219: re_tests:346
--- re: a[bc]d
--- s eval: "ABC"



=== TEST 220: re_tests:347
--- re: a[bc]d
--- s eval: "ABD"



=== TEST 221: re_tests:348
--- re: a[b-d]e
--- s eval: "ABD"



=== TEST 222: re_tests:349
--- re: a[b-d]e
--- s eval: "ACE"



=== TEST 223: re_tests:350
--- re: a[b-d]
--- s eval: "AAC"



=== TEST 224: re_tests:351
--- re: a[-b]
--- s eval: "A-"



=== TEST 225: re_tests:352
--- re: a[b-]
--- s eval: "A-"



=== TEST 226: re_tests:353
--- re: a[b-a]
--- s eval: "-"
--- err
[error] syntax error



=== TEST 227: re_tests:354
--- re: a[]b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 228: re_tests:355
--- re: a[
--- s eval: "-"
--- err
[error] syntax error



=== TEST 229: re_tests:356
--- re: a]
--- s eval: "A]"



=== TEST 230: re_tests:357
--- re: a[]]b
--- s eval: "A]B"



=== TEST 231: re_tests:358
--- re: a[^bc]d
--- s eval: "AED"



=== TEST 232: re_tests:359
--- re: a[^bc]d
--- s eval: "ABD"



=== TEST 233: re_tests:360
--- re: a[^-b]c
--- s eval: "ADC"



=== TEST 234: re_tests:361
--- re: a[^-b]c
--- s eval: "A-C"



=== TEST 235: re_tests:362
--- re: a[^]b]c
--- s eval: "A]C"



=== TEST 236: re_tests:363
--- re: a[^]b]c
--- s eval: "ADC"



=== TEST 237: re_tests:364
--- re: ab|cd
--- s eval: "ABC"



=== TEST 238: re_tests:365
--- re: ab|cd
--- s eval: "ABCD"



=== TEST 239: re_tests:366
--- re: ()ef
--- s eval: "DEF"



=== TEST 240: re_tests:367
--- re: *a
--- s eval: "-"
--- err
[error] syntax error



=== TEST 241: re_tests:368
--- re: (|*)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 242: re_tests:369
--- re: (*)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 243: re_tests:370
--- re: $b
--- s eval: "B"



=== TEST 244: re_tests:371
--- re: a\
--- s eval: "-"
--- err
[error] syntax error



=== TEST 245: re_tests:372
--- re: a\(b
--- s eval: "A(B"



=== TEST 246: re_tests:373
--- re: a\(*b
--- s eval: "AB"



=== TEST 247: re_tests:374
--- re: a\(*b
--- s eval: "A((B"



=== TEST 248: re_tests:375
--- re: a\\b
--- s eval: "A\\B"



=== TEST 249: re_tests:376
--- re: abc)
--- s eval: "-"
--- err
[error] syntax error



=== TEST 250: re_tests:377
--- re: (abc
--- s eval: "-"
--- err
[error] syntax error



=== TEST 251: re_tests:378
--- re: ((a))
--- s eval: "ABC"



=== TEST 252: re_tests:379
--- re: (a)b(c)
--- s eval: "ABC"



=== TEST 253: re_tests:380
--- re: a+b+c
--- s eval: "AABBABC"



=== TEST 254: re_tests:381
--- re: a{1,}b{1,}c
--- s eval: "AABBABC"



=== TEST 255: re_tests:382
--- re: a**
--- s eval: "-"
--- err
[error] syntax error



=== TEST 256: re_tests:383
--- re: a.+?c
--- s eval: "ABCABC"



=== TEST 257: re_tests:384
--- re: a.*?c
--- s eval: "ABCABC"



=== TEST 258: re_tests:385
--- re: a.{0,5}?c
--- s eval: "ABCABC"



=== TEST 259: re_tests:386
--- re: (a+|b)*
--- s eval: "AB"



=== TEST 260: re_tests:387
--- re: (a+|b){0,}
--- s eval: "AB"



=== TEST 261: re_tests:388
--- re: (a+|b)+
--- s eval: "AB"



=== TEST 262: re_tests:389
--- re: (a+|b){1,}
--- s eval: "AB"



=== TEST 263: re_tests:390
--- re: (a+|b)?
--- s eval: "AB"



=== TEST 264: re_tests:391
--- re: (a+|b){0,1}
--- s eval: "AB"



=== TEST 265: re_tests:392
--- re: (a+|b){0,1}?
--- s eval: "AB"



=== TEST 266: re_tests:393
--- re: )(
--- s eval: "-"
--- err
[error] syntax error



=== TEST 267: re_tests:394
--- re: [^ab]*
--- s eval: "CDE"



=== TEST 268: re_tests:395
--- re: abc
--- s eval: ""



=== TEST 269: re_tests:396
--- re: a*
--- s eval: ""



=== TEST 270: re_tests:397
--- re: ([abc])*d
--- s eval: "ABBBCD"



=== TEST 271: re_tests:398
--- re: ([abc])*bcd
--- s eval: "ABCD"



=== TEST 272: re_tests:399
--- re: a|b|c|d|e
--- s eval: "E"



=== TEST 273: re_tests:400
--- re: (a|b|c|d|e)f
--- s eval: "EF"



=== TEST 274: re_tests:401
--- re: abcd*efg
--- s eval: "ABCDEFG"



=== TEST 275: re_tests:402
--- re: ab*
--- s eval: "XABYABBBZ"



=== TEST 276: re_tests:403
--- re: ab*
--- s eval: "XAYABBBZ"



=== TEST 277: re_tests:404
--- re: (ab|cd)e
--- s eval: "ABCDE"



=== TEST 278: re_tests:405
--- re: [abhgefdc]ij
--- s eval: "HIJ"



=== TEST 279: re_tests:406
--- re: ^(ab|cd)e
--- s eval: "ABCDE"



=== TEST 280: re_tests:407
--- re: (abc|)ef
--- s eval: "ABCDEF"



=== TEST 281: re_tests:408
--- re: (a|b)c*d
--- s eval: "ABCD"



=== TEST 282: re_tests:409
--- re: (ab|ab*)bc
--- s eval: "ABC"



=== TEST 283: re_tests:410
--- re: a([bc]*)c*
--- s eval: "ABC"



=== TEST 284: re_tests:411
--- re: a([bc]*)(c*d)
--- s eval: "ABCD"



=== TEST 285: re_tests:412
--- re: a([bc]+)(c*d)
--- s eval: "ABCD"



=== TEST 286: re_tests:413
--- re: a([bc]*)(c+d)
--- s eval: "ABCD"



=== TEST 287: re_tests:414
--- re: a[bcd]*dcdcde
--- s eval: "ADCDCDE"



=== TEST 288: re_tests:415
--- re: a[bcd]+dcdcde
--- s eval: "ADCDCDE"



=== TEST 289: re_tests:416
--- re: (ab|a)b*c
--- s eval: "ABC"



=== TEST 290: re_tests:417
--- re: ((a)(b)c)(d)
--- s eval: "ABCD"



=== TEST 291: re_tests:418
--- re: [a-zA-Z_][a-zA-Z0-9_]*
--- s eval: "ALPHA"



=== TEST 292: re_tests:419
--- re: ^a(bc+|b[eh])g|.h$
--- s eval: "ABH"



=== TEST 293: re_tests:420
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "EFFGZ"



=== TEST 294: re_tests:421
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "IJ"



=== TEST 295: re_tests:422
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "EFFG"



=== TEST 296: re_tests:423
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "BCDD"



=== TEST 297: re_tests:424
--- re: (bc+d$|ef*g.|h?i(j|k))
--- s eval: "REFFGZ"



=== TEST 298: re_tests:425
--- re: ((((((((((a))))))))))
--- s eval: "A"



=== TEST 299: re_tests:427
--- re: ((((((((((a))))))))))\041
--- s eval: "AA"



=== TEST 300: re_tests:428
--- re: ((((((((((a))))))))))\041
--- s eval: "A!"



=== TEST 301: re_tests:429
--- re: (((((((((a)))))))))
--- s eval: "A"



=== TEST 302: re_tests:430
--- re: (?:(?:(?:(?:(?:(?:(?:(?:(?:(a))))))))))
--- s eval: "A"



=== TEST 303: re_tests:431
--- re: (?:(?:(?:(?:(?:(?:(?:(?:(?:(a|b|c))))))))))
--- s eval: "C"



=== TEST 304: re_tests:432
--- re: multiple words of text
--- s eval: "UH-UH"



=== TEST 305: re_tests:433
--- re: multiple words
--- s eval: "MULTIPLE WORDS, YEAH"



=== TEST 306: re_tests:434
--- re: (.*)c(.*)
--- s eval: "ABCDE"



=== TEST 307: re_tests:435
--- re: \((.*), (.*)\)
--- s eval: "(A, B)"



=== TEST 308: re_tests:436
--- re: [k]
--- s eval: "AB"



=== TEST 309: re_tests:437
--- re: abcd
--- s eval: "ABCD"



=== TEST 310: re_tests:438
--- re: a(bc)d
--- s eval: "ABCD"



=== TEST 311: re_tests:439
--- re: a[-]?c
--- s eval: "AC"



=== TEST 312: re_tests:446
--- re: a(?:b|c|d)(.)
--- s eval: "ace"



=== TEST 313: re_tests:447
--- re: a(?:b|c|d)*(.)
--- s eval: "ace"



=== TEST 314: re_tests:448
--- re: a(?:b|c|d)+?(.)
--- s eval: "ace"



=== TEST 315: re_tests:449
--- re: a(?:b|c|d)+?(.)
--- s eval: "acdbcdbe"



=== TEST 316: re_tests:450
--- re: a(?:b|c|d)+(.)
--- s eval: "acdbcdbe"



=== TEST 317: re_tests:451
--- re: a(?:b|c|d){2}(.)
--- s eval: "acdbcdbe"



=== TEST 318: re_tests:452
--- re: a(?:b|c|d){4,5}(.)
--- s eval: "acdbcdbe"



=== TEST 319: re_tests:453
--- re: a(?:b|c|d){4,5}?(.)
--- s eval: "acdbcdbe"



=== TEST 320: re_tests:454
--- re: ((foo)|(bar))*
--- s eval: "foobar"



=== TEST 321: re_tests:455
--- re: (?
--- s eval: "-"
--- err
[error] syntax error



=== TEST 322: re_tests:456
--- re: a(?:b|c|d){6,7}(.)
--- s eval: "acdbcdbe"



=== TEST 323: re_tests:457
--- re: a(?:b|c|d){6,7}?(.)
--- s eval: "acdbcdbe"



=== TEST 324: re_tests:458
--- re: a(?:b|c|d){5,6}(.)
--- s eval: "acdbcdbe"



=== TEST 325: re_tests:459
--- re: a(?:b|c|d){5,6}?(.)
--- s eval: "acdbcdbe"



=== TEST 326: re_tests:460
--- re: a(?:b|c|d){5,7}(.)
--- s eval: "acdbcdbe"



=== TEST 327: re_tests:461
--- re: a(?:b|c|d){5,7}?(.)
--- s eval: "acdbcdbe"



=== TEST 328: re_tests:462
--- re: a(?:b|(c|e){1,2}?|d)+?(.)
--- s eval: "ace"



=== TEST 329: re_tests:463
--- re: ^(.+)?B
--- s eval: "AB"



=== TEST 330: re_tests:464
--- re: ^([^a-z])|(\^)$
--- s eval: "."



=== TEST 331: re_tests:465
--- re: ^[<>]&
--- s eval: "<&OUT"



=== TEST 332: re_tests:472
--- re: ((a{4})+)
--- s eval: "aaaaaaaaa"



=== TEST 333: re_tests:473
--- re: (((aa){2})+)
--- s eval: "aaaaaaaaaa"



=== TEST 334: re_tests:474
--- re: (((a{2}){2})+)
--- s eval: "aaaaaaaaaa"



=== TEST 335: re_tests:475
--- re: (?:(f)(o)(o)|(b)(a)(r))*
--- s eval: "foobar"



=== TEST 336: re_tests:483
--- re: (?<%)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 337: re_tests:484
--- re: (?:..)*a
--- s eval: "aba"



=== TEST 338: re_tests:485
--- re: (?:..)*?a
--- s eval: "aba"



=== TEST 339: re_tests:487
--- re: ^(){3,5}
--- s eval: "abc"



=== TEST 340: re_tests:488
--- re: ^(a+)*ax
--- s eval: "aax"



=== TEST 341: re_tests:489
--- re: ^((a|b)+)*ax
--- s eval: "aax"



=== TEST 342: re_tests:490
--- re: ^((a|bc)+)*ax
--- s eval: "aax"



=== TEST 343: re_tests:491
--- re: (a|x)*ab
--- s eval: "cab"



=== TEST 344: re_tests:492
--- re: (a)*ab
--- s eval: "cab"



=== TEST 345: re_tests:531
--- re: (?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))
--- s eval: "cabbbb"



=== TEST 346: re_tests:532
--- re: (?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))
--- s eval: "caaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"



=== TEST 347: re_tests:535
--- re: foo\w*\d{4}baz
--- s eval: "foobar1234baz"



=== TEST 348: re_tests:537
--- re: a(?{)b
--- s eval: "-"
--- err
[error] syntax error



=== TEST 349: re_tests:544
--- re: x(~~)*(?:(?:F)?)?
--- s eval: "x~~"



=== TEST 350: re_tests:552
--- re: ^(?:a?b?)*$
--- s eval: "a--"



=== TEST 351: re_tests:565
--- re: ^b
--- s eval: "a\nb\nc\n"



=== TEST 352: re_tests:566
--- re: ()^b
--- s eval: "a\nb\nc\n"



=== TEST 353: re_tests:595
--- re: (\w+:)+
--- s eval: "one:"



=== TEST 354: re_tests:599
--- re: ([\w:]+::)?(\w+)$
--- s eval: "abcd:"



=== TEST 355: re_tests:600
--- re: ([\w:]+::)?(\w+)$
--- s eval: "abcd"



=== TEST 356: re_tests:601
--- re: ([\w:]+::)?(\w+)$
--- s eval: "xy:z:::abcd"



=== TEST 357: re_tests:602
--- re: ^[^bcd]*(c+)
--- s eval: "aexycd"



=== TEST 358: re_tests:603
--- re: (a*)b+
--- s eval: "caab"



=== TEST 359: re_tests:610
--- re: (>a+)ab
--- s eval: "aaab"



=== TEST 360: re_tests:612
--- re: ([[:]+)
--- s eval: "a:[b]:"



=== TEST 361: re_tests:613
--- re: ([[=]+)
--- s eval: "a=[b]="



=== TEST 362: re_tests:614
--- re: ([[.]+)
--- s eval: "a.[b]."



=== TEST 363: re_tests:615
--- re: [a[:xyz:
--- s eval: "-"
--- err
[error] syntax error



=== TEST 364: re_tests:617
--- re: [a[:]b[:c]
--- s eval: "abc"



=== TEST 365: re_tests:651
--- re: a{37,17}
--- s eval: "-"
--- err
[error] syntax error



=== TEST 366: re_tests:652
--- re: a{37,0}
--- s eval: "-"
--- err
[error] syntax error



=== TEST 367: re_tests:654
--- re: \z
--- s eval: "a\nb\n"



=== TEST 368: re_tests:655
--- re: $
--- s eval: "a\nb\n"



=== TEST 369: re_tests:657
--- re: \z
--- s eval: "b\na\n"



=== TEST 370: re_tests:658
--- re: $
--- s eval: "b\na\n"



=== TEST 371: re_tests:660
--- re: \z
--- s eval: "b\na"



=== TEST 372: re_tests:661
--- re: $
--- s eval: "b\na"



=== TEST 373: re_tests:663
--- re: \z
--- s eval: "a\nb\n"



=== TEST 374: re_tests:664
--- re: $
--- s eval: "a\nb\n"



=== TEST 375: re_tests:666
--- re: \z
--- s eval: "b\na\n"



=== TEST 376: re_tests:667
--- re: $
--- s eval: "b\na\n"



=== TEST 377: re_tests:669
--- re: \z
--- s eval: "b\na"



=== TEST 378: re_tests:670
--- re: $
--- s eval: "b\na"



=== TEST 379: re_tests:672
--- re: a\z
--- s eval: "a\nb\n"



=== TEST 380: re_tests:673
--- re: a$
--- s eval: "a\nb\n"



=== TEST 381: re_tests:675
--- re: a\z
--- s eval: "b\na\n"



=== TEST 382: re_tests:676
--- re: a$
--- s eval: "b\na\n"



=== TEST 383: re_tests:678
--- re: a\z
--- s eval: "b\na"



=== TEST 384: re_tests:679
--- re: a$
--- s eval: "b\na"



=== TEST 385: re_tests:681
--- re: a\z
--- s eval: "a\nb\n"



=== TEST 386: re_tests:682
--- re: a$
--- s eval: "a\nb\n"



=== TEST 387: re_tests:684
--- re: a\z
--- s eval: "b\na\n"



=== TEST 388: re_tests:685
--- re: a$
--- s eval: "b\na\n"



=== TEST 389: re_tests:687
--- re: a\z
--- s eval: "b\na"



=== TEST 390: re_tests:688
--- re: a$
--- s eval: "b\na"



=== TEST 391: re_tests:690
--- re: aa\z
--- s eval: "aa\nb\n"



=== TEST 392: re_tests:691
--- re: aa$
--- s eval: "aa\nb\n"



=== TEST 393: re_tests:693
--- re: aa\z
--- s eval: "b\naa\n"



=== TEST 394: re_tests:694
--- re: aa$
--- s eval: "b\naa\n"



=== TEST 395: re_tests:696
--- re: aa\z
--- s eval: "b\naa"



=== TEST 396: re_tests:697
--- re: aa$
--- s eval: "b\naa"



=== TEST 397: re_tests:699
--- re: aa\z
--- s eval: "aa\nb\n"



=== TEST 398: re_tests:700
--- re: aa$
--- s eval: "aa\nb\n"



=== TEST 399: re_tests:702
--- re: aa\z
--- s eval: "b\naa\n"



=== TEST 400: re_tests:703
--- re: aa$
--- s eval: "b\naa\n"



=== TEST 401: re_tests:705
--- re: aa\z
--- s eval: "b\naa"



=== TEST 402: re_tests:706
--- re: aa$
--- s eval: "b\naa"



=== TEST 403: re_tests:708
--- re: aa\z
--- s eval: "ac\nb\n"



=== TEST 404: re_tests:709
--- re: aa$
--- s eval: "ac\nb\n"



=== TEST 405: re_tests:711
--- re: aa\z
--- s eval: "b\nac\n"



=== TEST 406: re_tests:712
--- re: aa$
--- s eval: "b\nac\n"



=== TEST 407: re_tests:714
--- re: aa\z
--- s eval: "b\nac"



=== TEST 408: re_tests:715
--- re: aa$
--- s eval: "b\nac"



=== TEST 409: re_tests:717
--- re: aa\z
--- s eval: "ac\nb\n"



=== TEST 410: re_tests:718
--- re: aa$
--- s eval: "ac\nb\n"



=== TEST 411: re_tests:720
--- re: aa\z
--- s eval: "b\nac\n"



=== TEST 412: re_tests:721
--- re: aa$
--- s eval: "b\nac\n"



=== TEST 413: re_tests:723
--- re: aa\z
--- s eval: "b\nac"



=== TEST 414: re_tests:724
--- re: aa$
--- s eval: "b\nac"



=== TEST 415: re_tests:726
--- re: aa\z
--- s eval: "ca\nb\n"



=== TEST 416: re_tests:727
--- re: aa$
--- s eval: "ca\nb\n"



=== TEST 417: re_tests:729
--- re: aa\z
--- s eval: "b\nca\n"



=== TEST 418: re_tests:730
--- re: aa$
--- s eval: "b\nca\n"



=== TEST 419: re_tests:732
--- re: aa\z
--- s eval: "b\nca"



=== TEST 420: re_tests:733
--- re: aa$
--- s eval: "b\nca"



=== TEST 421: re_tests:735
--- re: aa\z
--- s eval: "ca\nb\n"



=== TEST 422: re_tests:736
--- re: aa$
--- s eval: "ca\nb\n"



=== TEST 423: re_tests:738
--- re: aa\z
--- s eval: "b\nca\n"



=== TEST 424: re_tests:739
--- re: aa$
--- s eval: "b\nca\n"



=== TEST 425: re_tests:741
--- re: aa\z
--- s eval: "b\nca"



=== TEST 426: re_tests:742
--- re: aa$
--- s eval: "b\nca"



=== TEST 427: re_tests:744
--- re: ab\z
--- s eval: "ab\nb\n"



=== TEST 428: re_tests:745
--- re: ab$
--- s eval: "ab\nb\n"



=== TEST 429: re_tests:747
--- re: ab\z
--- s eval: "b\nab\n"



=== TEST 430: re_tests:748
--- re: ab$
--- s eval: "b\nab\n"



=== TEST 431: re_tests:750
--- re: ab\z
--- s eval: "b\nab"



=== TEST 432: re_tests:751
--- re: ab$
--- s eval: "b\nab"



=== TEST 433: re_tests:753
--- re: ab\z
--- s eval: "ab\nb\n"



=== TEST 434: re_tests:754
--- re: ab$
--- s eval: "ab\nb\n"



=== TEST 435: re_tests:756
--- re: ab\z
--- s eval: "b\nab\n"



=== TEST 436: re_tests:757
--- re: ab$
--- s eval: "b\nab\n"



=== TEST 437: re_tests:759
--- re: ab\z
--- s eval: "b\nab"



=== TEST 438: re_tests:760
--- re: ab$
--- s eval: "b\nab"



=== TEST 439: re_tests:762
--- re: ab\z
--- s eval: "ac\nb\n"



=== TEST 440: re_tests:763
--- re: ab$
--- s eval: "ac\nb\n"



=== TEST 441: re_tests:765
--- re: ab\z
--- s eval: "b\nac\n"



=== TEST 442: re_tests:766
--- re: ab$
--- s eval: "b\nac\n"



=== TEST 443: re_tests:768
--- re: ab\z
--- s eval: "b\nac"



=== TEST 444: re_tests:769
--- re: ab$
--- s eval: "b\nac"



=== TEST 445: re_tests:771
--- re: ab\z
--- s eval: "ac\nb\n"



=== TEST 446: re_tests:772
--- re: ab$
--- s eval: "ac\nb\n"



=== TEST 447: re_tests:774
--- re: ab\z
--- s eval: "b\nac\n"



=== TEST 448: re_tests:775
--- re: ab$
--- s eval: "b\nac\n"



=== TEST 449: re_tests:777
--- re: ab\z
--- s eval: "b\nac"



=== TEST 450: re_tests:778
--- re: ab$
--- s eval: "b\nac"



=== TEST 451: re_tests:780
--- re: ab\z
--- s eval: "ca\nb\n"



=== TEST 452: re_tests:781
--- re: ab$
--- s eval: "ca\nb\n"



=== TEST 453: re_tests:783
--- re: ab\z
--- s eval: "b\nca\n"



=== TEST 454: re_tests:784
--- re: ab$
--- s eval: "b\nca\n"



=== TEST 455: re_tests:786
--- re: ab\z
--- s eval: "b\nca"



=== TEST 456: re_tests:787
--- re: ab$
--- s eval: "b\nca"



=== TEST 457: re_tests:789
--- re: ab\z
--- s eval: "ca\nb\n"



=== TEST 458: re_tests:790
--- re: ab$
--- s eval: "ca\nb\n"



=== TEST 459: re_tests:792
--- re: ab\z
--- s eval: "b\nca\n"



=== TEST 460: re_tests:793
--- re: ab$
--- s eval: "b\nca\n"



=== TEST 461: re_tests:795
--- re: ab\z
--- s eval: "b\nca"



=== TEST 462: re_tests:796
--- re: ab$
--- s eval: "b\nca"



=== TEST 463: re_tests:798
--- re: abb\z
--- s eval: "abb\nb\n"



=== TEST 464: re_tests:799
--- re: abb$
--- s eval: "abb\nb\n"



=== TEST 465: re_tests:801
--- re: abb\z
--- s eval: "b\nabb\n"



=== TEST 466: re_tests:802
--- re: abb$
--- s eval: "b\nabb\n"



=== TEST 467: re_tests:804
--- re: abb\z
--- s eval: "b\nabb"



=== TEST 468: re_tests:805
--- re: abb$
--- s eval: "b\nabb"



=== TEST 469: re_tests:807
--- re: abb\z
--- s eval: "abb\nb\n"



=== TEST 470: re_tests:808
--- re: abb$
--- s eval: "abb\nb\n"



=== TEST 471: re_tests:810
--- re: abb\z
--- s eval: "b\nabb\n"



=== TEST 472: re_tests:811
--- re: abb$
--- s eval: "b\nabb\n"



=== TEST 473: re_tests:813
--- re: abb\z
--- s eval: "b\nabb"



=== TEST 474: re_tests:814
--- re: abb$
--- s eval: "b\nabb"



=== TEST 475: re_tests:816
--- re: abb\z
--- s eval: "ac\nb\n"



=== TEST 476: re_tests:817
--- re: abb$
--- s eval: "ac\nb\n"



=== TEST 477: re_tests:819
--- re: abb\z
--- s eval: "b\nac\n"



=== TEST 478: re_tests:820
--- re: abb$
--- s eval: "b\nac\n"



=== TEST 479: re_tests:822
--- re: abb\z
--- s eval: "b\nac"



=== TEST 480: re_tests:823
--- re: abb$
--- s eval: "b\nac"



=== TEST 481: re_tests:825
--- re: abb\z
--- s eval: "ac\nb\n"



=== TEST 482: re_tests:826
--- re: abb$
--- s eval: "ac\nb\n"



=== TEST 483: re_tests:828
--- re: abb\z
--- s eval: "b\nac\n"



=== TEST 484: re_tests:829
--- re: abb$
--- s eval: "b\nac\n"



=== TEST 485: re_tests:831
--- re: abb\z
--- s eval: "b\nac"



=== TEST 486: re_tests:832
--- re: abb$
--- s eval: "b\nac"



=== TEST 487: re_tests:834
--- re: abb\z
--- s eval: "ca\nb\n"



=== TEST 488: re_tests:835
--- re: abb$
--- s eval: "ca\nb\n"



=== TEST 489: re_tests:837
--- re: abb\z
--- s eval: "b\nca\n"



=== TEST 490: re_tests:838
--- re: abb$
--- s eval: "b\nca\n"



=== TEST 491: re_tests:840
--- re: abb\z
--- s eval: "b\nca"



=== TEST 492: re_tests:841
--- re: abb$
--- s eval: "b\nca"



=== TEST 493: re_tests:843
--- re: abb\z
--- s eval: "ca\nb\n"



=== TEST 494: re_tests:844
--- re: abb$
--- s eval: "ca\nb\n"



=== TEST 495: re_tests:846
--- re: abb\z
--- s eval: "b\nca\n"



=== TEST 496: re_tests:847
--- re: abb$
--- s eval: "b\nca\n"



=== TEST 497: re_tests:849
--- re: abb\z
--- s eval: "b\nca"



=== TEST 498: re_tests:850
--- re: abb$
--- s eval: "b\nca"



=== TEST 499: re_tests:851
--- re: (^|x)(c)
--- s eval: "ca"



=== TEST 500: re_tests:852
--- re: a*abc?xyz+pqr{3}ab{2,}xy{4,5}pq{0,6}AB{0,}zz
--- s eval: "x"



=== TEST 501: re_tests:857
--- re: foo.bart
--- s eval: "foo.bart"



=== TEST 502: re_tests:858
--- re: ^d[x][x][x]
--- s eval: "abcd\ndxxx"



=== TEST 503: re_tests:859
--- re: .X(.+)+X
--- s eval: "bbbbXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 504: re_tests:860
--- re: .X(.+)+XX
--- s eval: "bbbbXcXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 505: re_tests:861
--- re: .XX(.+)+X
--- s eval: "bbbbXXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 506: re_tests:862
--- re: .X(.+)+X
--- s eval: "bbbbXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 507: re_tests:863
--- re: .X(.+)+XX
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 508: re_tests:864
--- re: .XX(.+)+X
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 509: re_tests:865
--- re: .X(.+)+[X]
--- s eval: "bbbbXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 510: re_tests:866
--- re: .X(.+)+[X][X]
--- s eval: "bbbbXcXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 511: re_tests:867
--- re: .XX(.+)+[X]
--- s eval: "bbbbXXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 512: re_tests:868
--- re: .X(.+)+[X]
--- s eval: "bbbbXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 513: re_tests:869
--- re: .X(.+)+[X][X]
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 514: re_tests:870
--- re: .XX(.+)+[X]
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 515: re_tests:871
--- re: .[X](.+)+[X]
--- s eval: "bbbbXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 516: re_tests:872
--- re: .[X](.+)+[X][X]
--- s eval: "bbbbXcXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 517: re_tests:873
--- re: .[X][X](.+)+[X]
--- s eval: "bbbbXXcXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 518: re_tests:874
--- re: .[X](.+)+[X]
--- s eval: "bbbbXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 519: re_tests:875
--- re: .[X](.+)+[X][X]
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 520: re_tests:876
--- re: .[X][X](.+)+[X]
--- s eval: "bbbbXXXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"



=== TEST 521: re_tests:877
--- re: tt+$
--- s eval: "xxxtt"



=== TEST 522: re_tests:878
--- re: ([a-\d]+)
--- s eval: "za-9z"



=== TEST 523: re_tests:879
--- re: ([\d-z]+)
--- s eval: "a0-za"



=== TEST 524: re_tests:880
--- re: ([\d-\s]+)
--- s eval: "a0- z"



=== TEST 525: re_tests:885
--- re: (\d+\.\d+)
--- s eval: "3.1415926"



=== TEST 526: re_tests:886
--- re: (\ba.{0,10}br)
--- s eval: "have a web browser"



=== TEST 527: re_tests:887
--- re: \.c(pp|xx|c)?$
--- s eval: "Changes"



=== TEST 528: re_tests:888
--- re: \.c(pp|xx|c)?$
--- s eval: "IO.c"



=== TEST 529: re_tests:889
--- re: (\.c(pp|xx|c)?$)
--- s eval: "IO.c"



=== TEST 530: re_tests:890
--- re: ^([a-z]:)
--- s eval: "C:/"



=== TEST 531: re_tests:891
--- re: ^\S\s+aa$
--- s eval: "\nx aa"



=== TEST 532: re_tests:892
--- re: (^|a)b
--- s eval: "ab"



=== TEST 533: re_tests:893
--- re: ^([ab]*?)(b)?(c)$
--- s eval: "abac"



=== TEST 534: re_tests:895
--- re: ^(?:.,){2}c
--- s eval: "a,b,c"



=== TEST 535: re_tests:896
--- re: ^(.,){2}c
--- s eval: "a,b,c"



=== TEST 536: re_tests:897
--- re: ^(?:[^,]*,){2}c
--- s eval: "a,b,c"



=== TEST 537: re_tests:898
--- re: ^([^,]*,){2}c
--- s eval: "a,b,c"



=== TEST 538: re_tests:899
--- re: ^([^,]*,){3}d
--- s eval: "aaa,b,c,d"



=== TEST 539: re_tests:900
--- re: ^([^,]*,){3,}d
--- s eval: "aaa,b,c,d"



=== TEST 540: re_tests:901
--- re: ^([^,]*,){0,3}d
--- s eval: "aaa,b,c,d"



=== TEST 541: re_tests:902
--- re: ^([^,]{1,3},){3}d
--- s eval: "aaa,b,c,d"



=== TEST 542: re_tests:903
--- re: ^([^,]{1,3},){3,}d
--- s eval: "aaa,b,c,d"



=== TEST 543: re_tests:904
--- re: ^([^,]{1,3},){0,3}d
--- s eval: "aaa,b,c,d"



=== TEST 544: re_tests:905
--- re: ^([^,]{1,},){3}d
--- s eval: "aaa,b,c,d"



=== TEST 545: re_tests:906
--- re: ^([^,]{1,},){3,}d
--- s eval: "aaa,b,c,d"



=== TEST 546: re_tests:907
--- re: ^([^,]{1,},){0,3}d
--- s eval: "aaa,b,c,d"



=== TEST 547: re_tests:908
--- re: ^([^,]{0,3},){3}d
--- s eval: "aaa,b,c,d"



=== TEST 548: re_tests:909
--- re: ^([^,]{0,3},){3,}d
--- s eval: "aaa,b,c,d"



=== TEST 549: re_tests:910
--- re: ^([^,]{0,3},){0,3}d
--- s eval: "aaa,b,c,d"



=== TEST 550: re_tests:914
--- re: ^(a(b)?)+$
--- s eval: "aba"
--- cap: (0, 3) (2, 3) (1, 2)



=== TEST 551: re_tests:915
--- re: ^(aa(bb)?)+$
--- s eval: "aabbaa"
--- cap: (0, 6) (4, 6) (2, 4)



=== TEST 552: re_tests:916
--- re: ^.{9}abc.*\n
--- s eval: "123\nabcabcabcabc\n"



=== TEST 553: re_tests:917
--- re: ^(a)?a$
--- s eval: "a"



=== TEST 554: re_tests:921
--- re: ^(0+)?(?:x(1))?
--- s eval: "x1"



=== TEST 555: re_tests:922
--- re: ^([0-9a-fA-F]+)(?:x([0-9a-fA-F]+)?)(?:x([0-9a-fA-F]+))?
--- s eval: "012cxx0190"



=== TEST 556: re_tests:923
--- re: ^(b+?|a){1,2}c
--- s eval: "bbbac"



=== TEST 557: re_tests:924
--- re: ^(b+?|a){1,2}c
--- s eval: "bbbbac"



=== TEST 558: re_tests:925
--- re: \((\w\. \w+)\)
--- s eval: "cd. (A. Tw)"



=== TEST 559: re_tests:926
--- re: ((?:aaaa|bbbb)cccc)?
--- s eval: "aaaacccc"



=== TEST 560: re_tests:927
--- re: ((?:aaaa|bbbb)cccc)?
--- s eval: "bbbbcccc"



=== TEST 561: re_tests:928
--- re: (a)?(a)+
--- s eval: "a"



=== TEST 562: re_tests:929
--- re: (ab)?(ab)+
--- s eval: "ab"



=== TEST 563: re_tests:930
--- re: (abc)?(abc)+
--- s eval: "abc"



=== TEST 564: re_tests:931
--- re: b\s^
--- s eval: "a\nb\n"
--- cap: (2, 4)



=== TEST 565: re_tests:932
--- re: \ba
--- s eval: "a"



=== TEST 566: re_tests:943
--- re: (.*)c
--- s eval: "abcd"



=== TEST 567: re_tests:960
--- re: (.*?)c
--- s eval: "abcd"



=== TEST 568: re_tests:979
--- re: a(b)??
--- s eval: "abc"



=== TEST 569: re_tests:980
--- re: (\d{1,3}\.){3,}
--- s eval: "128.134.142.8"



=== TEST 570: re_tests:998
--- re: x(?#
--- s eval: "x"
--- err
[error] syntax error



=== TEST 571: re_tests:999
--- re: x(?#
--- s eval: "x"
--- err
[error] syntax error



=== TEST 572: re_tests:1000
--- re: (WORDS|WORD)S
--- s eval: "WORDS"



=== TEST 573: re_tests:1001
--- re: (X.|WORDS|X.|WORD)S
--- s eval: "WORDS"



=== TEST 574: re_tests:1002
--- re: (WORDS|WORLD|WORD)S
--- s eval: "WORDS"



=== TEST 575: re_tests:1003
--- re: (X.|WORDS|WORD|Y.)S
--- s eval: "WORDS"



=== TEST 576: re_tests:1004
--- re: (foo|fool|x.|money|parted)$
--- s eval: "fool"



=== TEST 577: re_tests:1005
--- re: (x.|foo|fool|x.|money|parted|y.)$
--- s eval: "fool"



=== TEST 578: re_tests:1006
--- re: (foo|fool|money|parted)$
--- s eval: "fool"



=== TEST 579: re_tests:1007
--- re: (foo|fool|x.|money|parted)$
--- s eval: "fools"



=== TEST 580: re_tests:1008
--- re: (x.|foo|fool|x.|money|parted|y.)$
--- s eval: "fools"



=== TEST 581: re_tests:1009
--- re: (foo|fool|money|parted)$
--- s eval: "fools"



=== TEST 582: re_tests:1010
--- re: (a|aa|aaa||aaaa|aaaaa|aaaaaa)(b|c)
--- s eval: "aaaaaaaaaaaaaaab"



=== TEST 583: re_tests:1016
--- re: (?:r?)*?r|(.{2,4})
--- s eval: "abcde"



=== TEST 584: re_tests:1020
--- re: ^((?:aa)*)(?:X+((?:\d+|-)(?:X+(.+))?))?$
--- s eval: "aaaaX5"



=== TEST 585: re_tests:1021
--- re: X(A|B||C|D)Y
--- s eval: "XXXYYY"



=== TEST 586: re_tests:1023
--- re: ^([a]{1})*$
--- s eval: "aa"



=== TEST 587: re_tests:1028
--- re: ^(XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 588: re_tests:1029
--- re: ^(XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQX:"



=== TEST 589: re_tests:1030
--- re: ^([TUV]+|XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 590: re_tests:1031
--- re: ^([TUV]+|XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQX:"



=== TEST 591: re_tests:1032
--- re: ^([TUV]+|XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P|[MKJ]):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 592: re_tests:1033
--- re: ^([TUV]+|XXXXXXXXXX|YYYYYYYYYY|Z.Q*X|Z[TE]Q*P|[MKJ]):
--- s eval: "ZEQQQX:"



=== TEST 593: re_tests:1034
--- re: ^(XXX|YYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 594: re_tests:1035
--- re: ^(XXX|YYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQX:"



=== TEST 595: re_tests:1036
--- re: ^([TUV]+|XXX|YYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 596: re_tests:1037
--- re: ^([TUV]+|XXX|YYY|Z.Q*X|Z[TE]Q*P):
--- s eval: "ZEQQQX:"



=== TEST 597: re_tests:1038
--- re: ^([TUV]+|XXX|YYY|Z.Q*X|Z[TE]Q*P|[MKJ]):
--- s eval: "ZEQQQQQQQQQQQQQQQQQQP:"



=== TEST 598: re_tests:1039
--- re: ^([TUV]+|XXX|YYY|Z.Q*X|Z[TE]Q*P|[MKJ]):
--- s eval: "ZEQQQX:"



=== TEST 599: re_tests:1040
--- re: X(?:ABCF[cC]x*|ABCD|ABCF):(?:DIT|DID|DIM)
--- s eval: "XABCFCxxxxxxxxxx:DIM"



=== TEST 600: re_tests:1041
--- re: (((ABCD|ABCE|ABCF)))(A|B|C[xy]*):
--- s eval: "ABCFCxxxxxxxxxx:DIM"



=== TEST 601: re_tests:1084
--- re: (?P<=n>foo|bar|baz)
--- s eval: "snofooewa"
--- err
[error] syntax error



=== TEST 602: re_tests:1085
--- re: (?P<!n>foo|bar|baz)
--- s eval: "snofooewa"
--- err
[error] syntax error



=== TEST 603: re_tests:1086
--- re: (?PX<n>foo|bar|baz)
--- s eval: "snofooewa"
--- err
[error] syntax error



=== TEST 604: re_tests:1208
--- re: (foo[1x]|bar[2x]|baz[3x])+y
--- s eval: "foo1bar2baz3y"



=== TEST 605: re_tests:1210
--- re: (foo[1x]|bar[2x]|baz[3x])*y
--- s eval: "foo1bar2baz3y"



=== TEST 606: re_tests:1213
--- re: ([yX].|WORDS|[yX].|WORD)S
--- s eval: "WORDS"



=== TEST 607: re_tests:1215
--- re: ([yX].|WORDS|WORD|[xY].)S
--- s eval: "WORDS"



=== TEST 608: re_tests:1216
--- re: (foo|fool|[zx].|money|parted)$
--- s eval: "fool"



=== TEST 609: re_tests:1217
--- re: ([zx].|foo|fool|[zq].|money|parted|[yx].)$
--- s eval: "fool"



=== TEST 610: re_tests:1218
--- re: (foo|fool|[zx].|money|parted)$
--- s eval: "fools"



=== TEST 611: re_tests:1219
--- re: ([zx].|foo|fool|[qx].|money|parted|[py].)$
--- s eval: "fools"



=== TEST 612: re_tests:1221
--- re: ([yX].|WORDS|[yX].|WORD)+S
--- s eval: "WORDS"



=== TEST 613: re_tests:1222
--- re: (WORDS|WORLD|WORD)+S
--- s eval: "WORDS"



=== TEST 614: re_tests:1223
--- re: ([yX].|WORDS|WORD|[xY].)+S
--- s eval: "WORDS"



=== TEST 615: re_tests:1224
--- re: (foo|fool|[zx].|money|parted)+$
--- s eval: "fool"



=== TEST 616: re_tests:1225
--- re: ([zx].|foo|fool|[zq].|money|parted|[yx].)+$
--- s eval: "fool"



=== TEST 617: re_tests:1226
--- re: (foo|fool|[zx].|money|parted)+$
--- s eval: "fools"



=== TEST 618: re_tests:1227
--- re: ([zx].|foo|fool|[qx].|money|parted|[py].)+$
--- s eval: "fools"



=== TEST 619: re_tests:1229
--- re: (x|y|z[QW])+(longish|loquatious|excessive|overblown[QW])+
--- s eval: "xyzQzWlongishoverblownW"



=== TEST 620: re_tests:1230
--- re: (x|y|z[QW])*(longish|loquatious|excessive|overblown[QW])*
--- s eval: "xyzQzWlongishoverblownW"



=== TEST 621: re_tests:1231
--- re: (x|y|z[QW]){1,5}(longish|loquatious|excessive|overblown[QW]){1,5}
--- s eval: "xyzQzWlongishoverblownW"



=== TEST 622: re_tests:1270
--- re: (?''foo) bar
--- s eval: "..foo bar.."
--- err
[error] syntax error



=== TEST 623: re_tests:1271
--- re: (?<>foo) bar
--- s eval: "..foo bar.."
--- err
[error] syntax error



=== TEST 624: re_tests:1272
--- re: foo \k'n'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 625: re_tests:1273
--- re: foo \k<n>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 626: re_tests:1274
--- re: foo \k'a1'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 627: re_tests:1275
--- re: foo \k<a1>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 628: re_tests:1276
--- re: foo \k'_'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 629: re_tests:1277
--- re: foo \k<_>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 630: re_tests:1278
--- re: foo \k'_0_'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 631: re_tests:1279
--- re: foo \k<_0_>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 632: re_tests:1280
--- re: foo \k'0'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 633: re_tests:1281
--- re: foo \k<0>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 634: re_tests:1282
--- re: foo \k'12'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 635: re_tests:1283
--- re: foo \k<12>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 636: re_tests:1284
--- re: foo \k'1a'
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 637: re_tests:1285
--- re: foo \k<1a>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 638: re_tests:1286
--- re: foo \k''
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 639: re_tests:1287
--- re: foo \k<>
--- s eval: "foo foo"
--- err
[error] syntax error



=== TEST 640: re_tests:1364
--- re: foo(\v+)bar
--- s eval: "foo\r\n\x{85}\r\n\nbar"



=== TEST 641: re_tests:1365
--- re: (\V+)(\v)
--- s eval: "foo\r\n\x{85}\r\n\nbar"



=== TEST 642: re_tests:1366
--- re: (\v+)(\V)
--- s eval: "foo\r\n\x{85}\r\n\nbar"



=== TEST 643: re_tests:1367
--- re: foo(\v)bar
--- s eval: "foo\x{85}bar"



=== TEST 644: re_tests:1368
--- re: (\V)(\v)
--- s eval: "foo\x{85}bar"



=== TEST 645: re_tests:1369
--- re: (\v)(\V)
--- s eval: "foo\x{85}bar"



=== TEST 646: re_tests:1370
--- re: foo(\v)bar
--- s eval: "foo\rbar"



=== TEST 647: re_tests:1371
--- re: (\V)(\v)
--- s eval: "foo\rbar"



=== TEST 648: re_tests:1372
--- re: (\v)(\V)
--- s eval: "foo\rbar"



=== TEST 649: re_tests:1375
--- re: foo(\h+)bar
--- s eval: "foo\t\x{A0}bar"



=== TEST 650: re_tests:1376
--- re: (\H+)(\h)
--- s eval: "foo\t\x{A0}bar"



=== TEST 651: re_tests:1377
--- re: (\h+)(\H)
--- s eval: "foo\t\x{A0}bar"



=== TEST 652: re_tests:1378
--- re: foo(\h)bar
--- s eval: "foo\x{A0}bar"



=== TEST 653: re_tests:1379
--- re: (\H)(\h)
--- s eval: "foo\x{A0}bar"



=== TEST 654: re_tests:1380
--- re: (\h)(\H)
--- s eval: "foo\x{A0}bar"



=== TEST 655: re_tests:1381
--- re: foo(\h)bar
--- s eval: "foo\tbar"



=== TEST 656: re_tests:1382
--- re: (\H)(\h)
--- s eval: "foo\tbar"



=== TEST 657: re_tests:1383
--- re: (\h)(\H)
--- s eval: "foo\tbar"



=== TEST 658: re_tests:1385
--- re: .*\z
--- s eval: "foo\n"



=== TEST 659: re_tests:1386
--- re: \N*\z
--- s eval: "foo\n"



=== TEST 660: re_tests:1389
--- re: ^(?:(\d)x)?\d$
--- s eval: "1"



=== TEST 661: re_tests:1390
--- re: .*?(?:(\w)|(\w))x
--- s eval: "abx"



=== TEST 662: re_tests:1392
--- re: 0{50}
--- s eval: "000000000000000000000000000000000000000000000000000"



=== TEST 663: re_tests:1395
--- re: >\d+$ \n
--- s eval: ">10\n"



=== TEST 664: re_tests:1396
--- re: >\d+$ \n
--- s eval: ">1\n"



=== TEST 665: re_tests:1397
--- re: \d+$ \n
--- s eval: ">10\n"



=== TEST 666: re_tests:1398
--- re: >\d\d$ \n
--- s eval: ">10\n"



=== TEST 667: re_tests:1399
--- re: >\d+$ \n
--- s eval: ">10\n"



=== TEST 668: re_tests:1403
--- re: ^\s*i.*?o\s*$
--- s eval: "io\n io"



=== TEST 669: re_tests:1416
--- re: [\s][\S]
--- s eval: "\x{a0}\x{a0}"



=== TEST 670: re_tests:1424
--- re: abc\N\{U+BEEF}
--- s eval: "abc\n{UBEEF}"



=== TEST 671: re_tests:1425
--- re: abc\N\{U+BEEF}
--- s eval: "abc.{UBEEF}"



=== TEST 672: re_tests:1426
--- re: [abc\N\{U+BEEF}]
--- s eval: "-"
--- err
[error] syntax error



=== TEST 673: re_tests:1429
--- re: abc\N
--- s eval: "abcd"



=== TEST 674: re_tests:1430
--- re: abc\N
--- s eval: "abc\n"



=== TEST 675: re_tests:1437
--- re: abc\N{def
--- s eval: "-"
--- err
[error] syntax error
--- SKIP



=== TEST 676: re_tests:1447
--- re: abc\N{def
--- s eval: "-"
--- err
[error] syntax error
--- SKIP



=== TEST 677: re_tests:1450
--- re: abc\N {U+41}
--- s eval: "-"



=== TEST 678: re_tests:1451
--- re: abc\N {SPACE}
--- s eval: "-"



=== TEST 679: re_tests:1460
--- re: \c`
--- s eval: "-"



=== TEST 680: re_tests:1461
--- re: \c1
--- s eval: "-"



=== TEST 681: re_tests:1462
--- re: \cA
--- s eval: "\001"



=== TEST 682: re_tests:1470
--- re: \o{120}
--- s eval: "\x{50}"



=== TEST 683: re_tests:1473
--- re: [a\o{120}]
--- s eval: "\x{50}"



=== TEST 684: re_tests:1484
--- re: [\07]
--- s eval: "\007"



=== TEST 685: re_tests:1485
--- re: [\07]
--- s eval: "7\000"



=== TEST 686: re_tests:1486
--- re: [\006]
--- s eval: "\006"



=== TEST 687: re_tests:1487
--- re: [\006]
--- s eval: "6\000"



=== TEST 688: re_tests:1490
--- re: [\_]
--- s eval: "_"



=== TEST 689: re_tests:1493
--- re: (q1|.)*(q2|.)*(x(a|bc)*y){2,}
--- s eval: "xayxay"



=== TEST 690: re_tests:1494
--- re: (q1|.)*(q2|.)*(x(a|bc)*y){2,3}
--- s eval: "xayxay"



=== TEST 691: re_tests:1495
--- re: (q1|z)*(q2|z)*z{15}-.*?(x(a|bc)*y){2,3}Z
--- s eval: "zzzzzzzzzzzzzzzz-xayxayxayxayZ"



=== TEST 692: re_tests:1497
--- re: (?:(?:)foo|bar|zot|rt78356)
--- s eval: "foo"



=== TEST 693: re_tests:1518
--- re: s
--- s eval: "\x{17F}"



=== TEST 694: re_tests:1519
--- re: s
--- s eval: "\x{17F}"



=== TEST 695: re_tests:1520
--- re: s
--- s eval: "S"



=== TEST 696: re_tests:1530
--- re: ^.*\d\H
--- s eval: "X1"



=== TEST 697: re_tests:1531
--- re: ^.*\d\V
--- s eval: "X1"



=== TEST 698: re_tests:1539
--- re: [s\xDF]
--- s eval: "\xDFs"



=== TEST 699: re_tests:1544
--- re: ff
--- s eval: "\x{FB00}\x{FB01}"



=== TEST 700: re_tests:1545
--- re: ff
--- s eval: "\x{FB01}\x{FB00}"



=== TEST 701: re_tests:1546
--- re: fi
--- s eval: "\x{FB01}\x{FB00}"



=== TEST 702: re_tests:1547
--- re: fi
--- s eval: "\x{FB00}\x{FB01}"



=== TEST 703: re_tests:1551
--- re: ffiffl
--- s eval: "abcdef\x{FB03}\x{FB04}"



=== TEST 704: re_tests:1552
--- re: \xdf\xdf
--- s eval: "abcdefssss"



=== TEST 705: re_tests:1554
--- re: st
--- s eval: "\x{DF}\x{FB05}"



=== TEST 706: re_tests:1555
--- re: ssst
--- s eval: "\x{DF}\x{FB05}"



=== TEST 707: re_tests:1563
--- re: s\xDF
--- s eval: "\xDFs"



=== TEST 708: re_tests:1564
--- re: sst
--- s eval: "s\N{LATIN SMALL LIGATURE ST}"



=== TEST 709: re_tests:1565
--- re: sst
--- s eval: "s\N{LATIN SMALL LIGATURE LONG S T}"

