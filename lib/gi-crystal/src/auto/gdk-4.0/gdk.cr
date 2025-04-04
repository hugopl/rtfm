# Dependencies
require "../cairo-1.0/cairo.cr"
require "../pango_cairo-1.0/pango_cairo.cr"
require "../pango-1.0/pango.cr"
require "../gio-2.0/gio.cr"
require "../gdk_pixbuf-2.0/gdk_pixbuf.cr"

# C lib declaration
require "./lib_gdk.cr"

# Wrappers
require "./app_launch_context.cr"
require "./button_event.cr"
require "./cairo_context.cr"
require "./cicp_params.cr"
require "./clipboard.cr"
require "./color_state.cr"
require "./content_deserializer.cr"
require "./content_formats.cr"
require "./content_formats_builder.cr"
require "./content_provider.cr"
require "./content_serializer.cr"
require "./crossing_event.cr"
require "./cursor.cr"
require "./delete_event.cr"
require "./device.cr"
require "./device_pad.cr"
require "./device_tool.cr"
require "./display.cr"
require "./display_manager.cr"
require "./dmabuf_formats.cr"
require "./dmabuf_texture.cr"
require "./dmabuf_texture_builder.cr"
require "./dnd_event.cr"
require "./drag.cr"
require "./drag_surface.cr"
require "./drag_surface_size.cr"
require "./draw_context.cr"
require "./drop.cr"
require "./event.cr"
require "./event_sequence.cr"
require "./file_list.cr"
require "./focus_event.cr"
require "./frame_clock.cr"
require "./frame_clock_private.cr"
require "./frame_timings.cr"
require "./gl_context.cr"
require "./gl_texture.cr"
require "./gl_texture_builder.cr"
require "./grab_broken_event.cr"
require "./key_event.cr"
require "./keymap_key.cr"
require "./memory_texture.cr"
require "./memory_texture_builder.cr"
require "./monitor.cr"
require "./motion_event.cr"
require "./pad_event.cr"
require "./paintable.cr"
require "./popup.cr"
require "./popup_layout.cr"
require "./proximity_event.cr"
require "./rectangle.cr"
require "./rgba.cr"
require "./scroll_event.cr"
require "./seat.cr"
require "./snapshot.cr"
require "./surface.cr"
require "./texture.cr"
require "./texture_downloader.cr"
require "./time_coord.cr"
require "./toplevel.cr"
require "./toplevel_layout.cr"
require "./toplevel_size.cr"
require "./touch_event.cr"
require "./touchpad_event.cr"
require "./vulkan_context.cr"

module Gdk
  ACTION_ALL                      = 7
  BUTTON_MIDDLE                   = 2
  BUTTON_PRIMARY                  = 1
  BUTTON_SECONDARY                = 3
  CURRENT_TIME                    = 0
  EVENT_PROPAGATE                 = false
  EVENT_STOP                      = true
  KEY_0                           =        48
  KEY_1                           =        49
  KEY_10ChannelsDown              = 268964281
  KEY_10ChannelsUp                = 268964280
  KEY_2                           =        50
  KEY_3                           =        51
  KEY_3270_AltCursor              =     64784
  KEY_3270_Attn                   =     64782
  KEY_3270_BackTab                =     64773
  KEY_3270_ChangeScreen           =     64793
  KEY_3270_Copy                   =     64789
  KEY_3270_CursorBlink            =     64783
  KEY_3270_CursorSelect           =     64796
  KEY_3270_DeleteWord             =     64794
  KEY_3270_Duplicate              =     64769
  KEY_3270_Enter                  =     64798
  KEY_3270_EraseEOF               =     64774
  KEY_3270_EraseInput             =     64775
  KEY_3270_ExSelect               =     64795
  KEY_3270_FieldMark              =     64770
  KEY_3270_Ident                  =     64787
  KEY_3270_Jump                   =     64786
  KEY_3270_KeyClick               =     64785
  KEY_3270_Left2                  =     64772
  KEY_3270_PA1                    =     64778
  KEY_3270_PA2                    =     64779
  KEY_3270_PA3                    =     64780
  KEY_3270_Play                   =     64790
  KEY_3270_PrintScreen            =     64797
  KEY_3270_Quit                   =     64777
  KEY_3270_Record                 =     64792
  KEY_3270_Reset                  =     64776
  KEY_3270_Right2                 =     64771
  KEY_3270_Rule                   =     64788
  KEY_3270_Setup                  =     64791
  KEY_3270_Test                   =     64781
  KEY_3DMode                      = 268964463
  KEY_4                           =        52
  KEY_5                           =        53
  KEY_6                           =        54
  KEY_7                           =        55
  KEY_8                           =        56
  KEY_9                           =        57
  KEY_A                           =        65
  KEY_AE                          =       198
  KEY_ALSToggle                   = 268964400
  KEY_Aacute                      =       193
  KEY_Abelowdot                   =  16785056
  KEY_Abreve                      =       451
  KEY_Abreveacute                 =  16785070
  KEY_Abrevebelowdot              =  16785078
  KEY_Abrevegrave                 =  16785072
  KEY_Abrevehook                  =  16785074
  KEY_Abrevetilde                 =  16785076
  KEY_AccessX_Enable              =     65136
  KEY_AccessX_Feedback_Enable     =     65137
  KEY_Accessibility               = 268964430
  KEY_Acircumflex                 =       194
  KEY_Acircumflexacute            =  16785060
  KEY_Acircumflexbelowdot         =  16785068
  KEY_Acircumflexgrave            =  16785062
  KEY_Acircumflexhook             =  16785064
  KEY_Acircumflextilde            =  16785066
  KEY_AddFavorite                 = 269025081
  KEY_Addressbook                 = 268964269
  KEY_Adiaeresis                  =       196
  KEY_Agrave                      =       192
  KEY_Ahook                       =  16785058
  KEY_Alt_L                       =     65513
  KEY_Alt_R                       =     65514
  KEY_Amacron                     =       960
  KEY_Aogonek                     =       417
  KEY_AppSelect                   = 268964420
  KEY_ApplicationLeft             = 269025104
  KEY_ApplicationRight            = 269025105
  KEY_Arabic_0                    =  16778848
  KEY_Arabic_1                    =  16778849
  KEY_Arabic_2                    =  16778850
  KEY_Arabic_3                    =  16778851
  KEY_Arabic_4                    =  16778852
  KEY_Arabic_5                    =  16778853
  KEY_Arabic_6                    =  16778854
  KEY_Arabic_7                    =  16778855
  KEY_Arabic_8                    =  16778856
  KEY_Arabic_9                    =  16778857
  KEY_Arabic_ain                  =      1497
  KEY_Arabic_alef                 =      1479
  KEY_Arabic_alefmaksura          =      1513
  KEY_Arabic_beh                  =      1480
  KEY_Arabic_comma                =      1452
  KEY_Arabic_dad                  =      1494
  KEY_Arabic_dal                  =      1487
  KEY_Arabic_damma                =      1519
  KEY_Arabic_dammatan             =      1516
  KEY_Arabic_ddal                 =  16778888
  KEY_Arabic_farsi_yeh            =  16778956
  KEY_Arabic_fatha                =      1518
  KEY_Arabic_fathatan             =      1515
  KEY_Arabic_feh                  =      1505
  KEY_Arabic_fullstop             =  16778964
  KEY_Arabic_gaf                  =  16778927
  KEY_Arabic_ghain                =      1498
  KEY_Arabic_ha                   =      1511
  KEY_Arabic_hah                  =      1485
  KEY_Arabic_hamza                =      1473
  KEY_Arabic_hamza_above          =  16778836
  KEY_Arabic_hamza_below          =  16778837
  KEY_Arabic_hamzaonalef          =      1475
  KEY_Arabic_hamzaonwaw           =      1476
  KEY_Arabic_hamzaonyeh           =      1478
  KEY_Arabic_hamzaunderalef       =      1477
  KEY_Arabic_heh                  =      1511
  KEY_Arabic_heh_doachashmee      =  16778942
  KEY_Arabic_heh_goal             =  16778945
  KEY_Arabic_jeem                 =      1484
  KEY_Arabic_jeh                  =  16778904
  KEY_Arabic_kaf                  =      1507
  KEY_Arabic_kasra                =      1520
  KEY_Arabic_kasratan             =      1517
  KEY_Arabic_keheh                =  16778921
  KEY_Arabic_khah                 =      1486
  KEY_Arabic_lam                  =      1508
  KEY_Arabic_madda_above          =  16778835
  KEY_Arabic_maddaonalef          =      1474
  KEY_Arabic_meem                 =      1509
  KEY_Arabic_noon                 =      1510
  KEY_Arabic_noon_ghunna          =  16778938
  KEY_Arabic_peh                  =  16778878
  KEY_Arabic_percent              =  16778858
  KEY_Arabic_qaf                  =      1506
  KEY_Arabic_question_mark        =      1471
  KEY_Arabic_ra                   =      1489
  KEY_Arabic_rreh                 =  16778897
  KEY_Arabic_sad                  =      1493
  KEY_Arabic_seen                 =      1491
  KEY_Arabic_semicolon            =      1467
  KEY_Arabic_shadda               =      1521
  KEY_Arabic_sheen                =      1492
  KEY_Arabic_sukun                =      1522
  KEY_Arabic_superscript_alef     =  16778864
  KEY_Arabic_switch               =     65406
  KEY_Arabic_tah                  =      1495
  KEY_Arabic_tatweel              =      1504
  KEY_Arabic_tcheh                =  16778886
  KEY_Arabic_teh                  =      1482
  KEY_Arabic_tehmarbuta           =      1481
  KEY_Arabic_thal                 =      1488
  KEY_Arabic_theh                 =      1483
  KEY_Arabic_tteh                 =  16778873
  KEY_Arabic_veh                  =  16778916
  KEY_Arabic_waw                  =      1512
  KEY_Arabic_yeh                  =      1514
  KEY_Arabic_yeh_baree            =  16778962
  KEY_Arabic_zah                  =      1496
  KEY_Arabic_zain                 =      1490
  KEY_Aring                       =       197
  KEY_Armenian_AT                 =  16778552
  KEY_Armenian_AYB                =  16778545
  KEY_Armenian_BEN                =  16778546
  KEY_Armenian_CHA                =  16778569
  KEY_Armenian_DA                 =  16778548
  KEY_Armenian_DZA                =  16778561
  KEY_Armenian_E                  =  16778551
  KEY_Armenian_FE                 =  16778582
  KEY_Armenian_GHAT               =  16778562
  KEY_Armenian_GIM                =  16778547
  KEY_Armenian_HI                 =  16778565
  KEY_Armenian_HO                 =  16778560
  KEY_Armenian_INI                =  16778555
  KEY_Armenian_JE                 =  16778571
  KEY_Armenian_KE                 =  16778580
  KEY_Armenian_KEN                =  16778559
  KEY_Armenian_KHE                =  16778557
  KEY_Armenian_LYUN               =  16778556
  KEY_Armenian_MEN                =  16778564
  KEY_Armenian_NU                 =  16778566
  KEY_Armenian_O                  =  16778581
  KEY_Armenian_PE                 =  16778570
  KEY_Armenian_PYUR               =  16778579
  KEY_Armenian_RA                 =  16778572
  KEY_Armenian_RE                 =  16778576
  KEY_Armenian_SE                 =  16778573
  KEY_Armenian_SHA                =  16778567
  KEY_Armenian_TCHE               =  16778563
  KEY_Armenian_TO                 =  16778553
  KEY_Armenian_TSA                =  16778558
  KEY_Armenian_TSO                =  16778577
  KEY_Armenian_TYUN               =  16778575
  KEY_Armenian_VEV                =  16778574
  KEY_Armenian_VO                 =  16778568
  KEY_Armenian_VYUN               =  16778578
  KEY_Armenian_YECH               =  16778549
  KEY_Armenian_ZA                 =  16778550
  KEY_Armenian_ZHE                =  16778554
  KEY_Armenian_accent             =  16778587
  KEY_Armenian_amanak             =  16778588
  KEY_Armenian_apostrophe         =  16778586
  KEY_Armenian_at                 =  16778600
  KEY_Armenian_ayb                =  16778593
  KEY_Armenian_ben                =  16778594
  KEY_Armenian_but                =  16778589
  KEY_Armenian_cha                =  16778617
  KEY_Armenian_da                 =  16778596
  KEY_Armenian_dza                =  16778609
  KEY_Armenian_e                  =  16778599
  KEY_Armenian_exclam             =  16778588
  KEY_Armenian_fe                 =  16778630
  KEY_Armenian_full_stop          =  16778633
  KEY_Armenian_ghat               =  16778610
  KEY_Armenian_gim                =  16778595
  KEY_Armenian_hi                 =  16778613
  KEY_Armenian_ho                 =  16778608
  KEY_Armenian_hyphen             =  16778634
  KEY_Armenian_ini                =  16778603
  KEY_Armenian_je                 =  16778619
  KEY_Armenian_ke                 =  16778628
  KEY_Armenian_ken                =  16778607
  KEY_Armenian_khe                =  16778605
  KEY_Armenian_ligature_ew        =  16778631
  KEY_Armenian_lyun               =  16778604
  KEY_Armenian_men                =  16778612
  KEY_Armenian_nu                 =  16778614
  KEY_Armenian_o                  =  16778629
  KEY_Armenian_paruyk             =  16778590
  KEY_Armenian_pe                 =  16778618
  KEY_Armenian_pyur               =  16778627
  KEY_Armenian_question           =  16778590
  KEY_Armenian_ra                 =  16778620
  KEY_Armenian_re                 =  16778624
  KEY_Armenian_se                 =  16778621
  KEY_Armenian_separation_mark    =  16778589
  KEY_Armenian_sha                =  16778615
  KEY_Armenian_shesht             =  16778587
  KEY_Armenian_tche               =  16778611
  KEY_Armenian_to                 =  16778601
  KEY_Armenian_tsa                =  16778606
  KEY_Armenian_tso                =  16778625
  KEY_Armenian_tyun               =  16778623
  KEY_Armenian_verjaket           =  16778633
  KEY_Armenian_vev                =  16778622
  KEY_Armenian_vo                 =  16778616
  KEY_Armenian_vyun               =  16778626
  KEY_Armenian_yech               =  16778597
  KEY_Armenian_yentamna           =  16778634
  KEY_Armenian_za                 =  16778598
  KEY_Armenian_zhe                =  16778602
  KEY_AspectRatio                 = 268964215
  KEY_Assistant                   = 268964423
  KEY_Atilde                      =       195
  KEY_AttendantOff                = 268964380
  KEY_AttendantOn                 = 268964379
  KEY_AttendantToggle             = 268964381
  KEY_AudibleBell_Enable          =     65146
  KEY_Audio                       = 268964232
  KEY_AudioCycleTrack             = 269025179
  KEY_AudioDesc                   = 268964462
  KEY_AudioForward                = 269025175
  KEY_AudioLowerVolume            = 269025041
  KEY_AudioMedia                  = 269025074
  KEY_AudioMicMute                = 269025202
  KEY_AudioMute                   = 269025042
  KEY_AudioNext                   = 269025047
  KEY_AudioPause                  = 269025073
  KEY_AudioPlay                   = 269025044
  KEY_AudioPreset                 = 269025206
  KEY_AudioPrev                   = 269025046
  KEY_AudioRaiseVolume            = 269025043
  KEY_AudioRandomPlay             = 269025177
  KEY_AudioRecord                 = 269025052
  KEY_AudioRepeat                 = 269025176
  KEY_AudioRewind                 = 269025086
  KEY_AudioStop                   = 269025045
  KEY_AutopilotEngageToggle       = 268964477
  KEY_Away                        = 269025165
  KEY_B                           =        66
  KEY_Babovedot                   =  16784898
  KEY_Back                        = 269025062
  KEY_BackForward                 = 269025087
  KEY_BackSpace                   =     65288
  KEY_Battery                     = 269025171
  KEY_Begin                       =     65368
  KEY_Blue                        = 269025190
  KEY_Bluetooth                   = 269025172
  KEY_Book                        = 269025106
  KEY_BounceKeys_Enable           =     65140
  KEY_Break                       =     65387
  KEY_BrightnessAdjust            = 269025083
  KEY_BrightnessAuto              = 268964084
  KEY_BrightnessMax               = 268964433
  KEY_BrightnessMin               = 268964432
  KEY_Buttonconfig                = 268964416
  KEY_Byelorussian_SHORTU         =      1726
  KEY_Byelorussian_shortu         =      1710
  KEY_C                           =        67
  KEY_CD                          = 269025107
  KEY_CH                          =     65186
  KEY_C_H                         =     65189
  KEY_C_h                         =     65188
  KEY_Cabovedot                   =       709
  KEY_Cacute                      =       454
  KEY_Calculator                  = 269025053
  KEY_Calendar                    = 269025056
  KEY_CameraAccessDisable         = 268964428
  KEY_CameraAccessEnable          = 268964427
  KEY_CameraAccessToggle          = 268964429
  KEY_CameraDown                  = 268964376
  KEY_CameraFocus                 = 268964368
  KEY_CameraLeft                  = 268964377
  KEY_CameraRight                 = 268964378
  KEY_CameraUp                    = 268964375
  KEY_CameraZoomIn                = 268964373
  KEY_CameraZoomOut               = 268964374
  KEY_Cancel                      =     65385
  KEY_Caps_Lock                   =     65509
  KEY_Ccaron                      =       456
  KEY_Ccedilla                    =       199
  KEY_Ccircumflex                 =       710
  KEY_Ch                          =     65185
  KEY_ChannelDown                 = 268964243
  KEY_ChannelUp                   = 268964242
  KEY_Clear                       =     65291
  KEY_ClearGrab                   = 269024801
  KEY_ClearvuSonar                = 268964486
  KEY_Close                       = 269025110
  KEY_Codeinput                   =     65335
  KEY_ColonSign                   =  16785569
  KEY_Community                   = 269025085
  KEY_ContextMenu                 = 268964278
  KEY_ContrastAdjust              = 269025058
  KEY_ControlPanel                = 268964419
  KEY_Control_L                   =     65507
  KEY_Control_R                   =     65508
  KEY_Copy                        = 269025111
  KEY_CruzeiroSign                =  16785570
  KEY_Cut                         = 269025112
  KEY_CycleAngle                  = 269025180
  KEY_Cyrillic_A                  =      1761
  KEY_Cyrillic_BE                 =      1762
  KEY_Cyrillic_CHE                =      1790
  KEY_Cyrillic_CHE_descender      =  16778422
  KEY_Cyrillic_CHE_vertstroke     =  16778424
  KEY_Cyrillic_DE                 =      1764
  KEY_Cyrillic_DZHE               =      1727
  KEY_Cyrillic_E                  =      1788
  KEY_Cyrillic_EF                 =      1766
  KEY_Cyrillic_EL                 =      1772
  KEY_Cyrillic_EM                 =      1773
  KEY_Cyrillic_EN                 =      1774
  KEY_Cyrillic_EN_descender       =  16778402
  KEY_Cyrillic_ER                 =      1778
  KEY_Cyrillic_ES                 =      1779
  KEY_Cyrillic_GHE                =      1767
  KEY_Cyrillic_GHE_bar            =  16778386
  KEY_Cyrillic_HA                 =      1768
  KEY_Cyrillic_HARDSIGN           =      1791
  KEY_Cyrillic_HA_descender       =  16778418
  KEY_Cyrillic_I                  =      1769
  KEY_Cyrillic_IE                 =      1765
  KEY_Cyrillic_IO                 =      1715
  KEY_Cyrillic_I_macron           =  16778466
  KEY_Cyrillic_JE                 =      1720
  KEY_Cyrillic_KA                 =      1771
  KEY_Cyrillic_KA_descender       =  16778394
  KEY_Cyrillic_KA_vertstroke      =  16778396
  KEY_Cyrillic_LJE                =      1721
  KEY_Cyrillic_NJE                =      1722
  KEY_Cyrillic_O                  =      1775
  KEY_Cyrillic_O_bar              =  16778472
  KEY_Cyrillic_PE                 =      1776
  KEY_Cyrillic_SCHWA              =  16778456
  KEY_Cyrillic_SHA                =      1787
  KEY_Cyrillic_SHCHA              =      1789
  KEY_Cyrillic_SHHA               =  16778426
  KEY_Cyrillic_SHORTI             =      1770
  KEY_Cyrillic_SOFTSIGN           =      1784
  KEY_Cyrillic_TE                 =      1780
  KEY_Cyrillic_TSE                =      1763
  KEY_Cyrillic_U                  =      1781
  KEY_Cyrillic_U_macron           =  16778478
  KEY_Cyrillic_U_straight         =  16778414
  KEY_Cyrillic_U_straight_bar     =  16778416
  KEY_Cyrillic_VE                 =      1783
  KEY_Cyrillic_YA                 =      1777
  KEY_Cyrillic_YERU               =      1785
  KEY_Cyrillic_YU                 =      1760
  KEY_Cyrillic_ZE                 =      1786
  KEY_Cyrillic_ZHE                =      1782
  KEY_Cyrillic_ZHE_descender      =  16778390
  KEY_Cyrillic_a                  =      1729
  KEY_Cyrillic_be                 =      1730
  KEY_Cyrillic_che                =      1758
  KEY_Cyrillic_che_descender      =  16778423
  KEY_Cyrillic_che_vertstroke     =  16778425
  KEY_Cyrillic_de                 =      1732
  KEY_Cyrillic_dzhe               =      1711
  KEY_Cyrillic_e                  =      1756
  KEY_Cyrillic_ef                 =      1734
  KEY_Cyrillic_el                 =      1740
  KEY_Cyrillic_em                 =      1741
  KEY_Cyrillic_en                 =      1742
  KEY_Cyrillic_en_descender       =  16778403
  KEY_Cyrillic_er                 =      1746
  KEY_Cyrillic_es                 =      1747
  KEY_Cyrillic_ghe                =      1735
  KEY_Cyrillic_ghe_bar            =  16778387
  KEY_Cyrillic_ha                 =      1736
  KEY_Cyrillic_ha_descender       =  16778419
  KEY_Cyrillic_hardsign           =      1759
  KEY_Cyrillic_i                  =      1737
  KEY_Cyrillic_i_macron           =  16778467
  KEY_Cyrillic_ie                 =      1733
  KEY_Cyrillic_io                 =      1699
  KEY_Cyrillic_je                 =      1704
  KEY_Cyrillic_ka                 =      1739
  KEY_Cyrillic_ka_descender       =  16778395
  KEY_Cyrillic_ka_vertstroke      =  16778397
  KEY_Cyrillic_lje                =      1705
  KEY_Cyrillic_nje                =      1706
  KEY_Cyrillic_o                  =      1743
  KEY_Cyrillic_o_bar              =  16778473
  KEY_Cyrillic_pe                 =      1744
  KEY_Cyrillic_schwa              =  16778457
  KEY_Cyrillic_sha                =      1755
  KEY_Cyrillic_shcha              =      1757
  KEY_Cyrillic_shha               =  16778427
  KEY_Cyrillic_shorti             =      1738
  KEY_Cyrillic_softsign           =      1752
  KEY_Cyrillic_te                 =      1748
  KEY_Cyrillic_tse                =      1731
  KEY_Cyrillic_u                  =      1749
  KEY_Cyrillic_u_macron           =  16778479
  KEY_Cyrillic_u_straight         =  16778415
  KEY_Cyrillic_u_straight_bar     =  16778417
  KEY_Cyrillic_ve                 =      1751
  KEY_Cyrillic_ya                 =      1745
  KEY_Cyrillic_yeru               =      1753
  KEY_Cyrillic_yu                 =      1728
  KEY_Cyrillic_ze                 =      1754
  KEY_Cyrillic_zhe                =      1750
  KEY_Cyrillic_zhe_descender      =  16778391
  KEY_D                           =        68
  KEY_DOS                         = 269025114
  KEY_DVD                         = 268964229
  KEY_Dabovedot                   =  16784906
  KEY_Data                        = 268964471
  KEY_Database                    = 268964266
  KEY_Dcaron                      =       463
  KEY_Delete                      =     65535
  KEY_Dictate                     = 268964426
  KEY_Display                     = 269025113
  KEY_DisplayOff                  = 268964085
  KEY_DisplayToggle               = 268964271
  KEY_DoNotDisturb                = 268964431
  KEY_Documents                   = 269025115
  KEY_DongSign                    =  16785579
  KEY_Down                        =     65364
  KEY_Dstroke                     =       464
  KEY_DualRangeRadar              = 268964483
  KEY_E                           =        69
  KEY_ENG                         =       957
  KEY_ETH                         =       208
  KEY_EZH                         =  16777655
  KEY_Eabovedot                   =       972
  KEY_Eacute                      =       201
  KEY_Ebelowdot                   =  16785080
  KEY_Ecaron                      =       460
  KEY_Ecircumflex                 =       202
  KEY_Ecircumflexacute            =  16785086
  KEY_Ecircumflexbelowdot         =  16785094
  KEY_Ecircumflexgrave            =  16785088
  KEY_Ecircumflexhook             =  16785090
  KEY_Ecircumflextilde            =  16785092
  KEY_EcuSign                     =  16785568
  KEY_Ediaeresis                  =       203
  KEY_Editor                      = 268964262
  KEY_Egrave                      =       200
  KEY_Ehook                       =  16785082
  KEY_Eisu_Shift                  =     65327
  KEY_Eisu_toggle                 =     65328
  KEY_Eject                       = 269025068
  KEY_Emacron                     =       938
  KEY_EmojiPicker                 = 268964425
  KEY_End                         =     65367
  KEY_Eogonek                     =       458
  KEY_Escape                      =     65307
  KEY_Eth                         =       208
  KEY_Etilde                      =  16785084
  KEY_EuroSign                    =      8364
  KEY_Excel                       = 269025116
  KEY_Execute                     =     65378
  KEY_Explorer                    = 269025117
  KEY_F                           =        70
  KEY_F1                          =     65470
  KEY_F10                         =     65479
  KEY_F11                         =     65480
  KEY_F12                         =     65481
  KEY_F13                         =     65482
  KEY_F14                         =     65483
  KEY_F15                         =     65484
  KEY_F16                         =     65485
  KEY_F17                         =     65486
  KEY_F18                         =     65487
  KEY_F19                         =     65488
  KEY_F2                          =     65471
  KEY_F20                         =     65489
  KEY_F21                         =     65490
  KEY_F22                         =     65491
  KEY_F23                         =     65492
  KEY_F24                         =     65493
  KEY_F25                         =     65494
  KEY_F26                         =     65495
  KEY_F27                         =     65496
  KEY_F28                         =     65497
  KEY_F29                         =     65498
  KEY_F3                          =     65472
  KEY_F30                         =     65499
  KEY_F31                         =     65500
  KEY_F32                         =     65501
  KEY_F33                         =     65502
  KEY_F34                         =     65503
  KEY_F35                         =     65504
  KEY_F4                          =     65473
  KEY_F5                          =     65474
  KEY_F6                          =     65475
  KEY_F7                          =     65476
  KEY_F8                          =     65477
  KEY_F9                          =     65478
  KEY_FFrancSign                  =  16785571
  KEY_Fabovedot                   =  16784926
  KEY_Farsi_0                     =  16778992
  KEY_Farsi_1                     =  16778993
  KEY_Farsi_2                     =  16778994
  KEY_Farsi_3                     =  16778995
  KEY_Farsi_4                     =  16778996
  KEY_Farsi_5                     =  16778997
  KEY_Farsi_6                     =  16778998
  KEY_Farsi_7                     =  16778999
  KEY_Farsi_8                     =  16779000
  KEY_Farsi_9                     =  16779001
  KEY_Farsi_yeh                   =  16778956
  KEY_FastReverse                 = 268964469
  KEY_Favorites                   = 269025072
  KEY_Finance                     = 269025084
  KEY_Find                        =     65384
  KEY_First_Virtual_Screen        =     65232
  KEY_FishingChart                = 268964481
  KEY_Fn                          = 268964304
  KEY_FnRightShift                = 268964325
  KEY_Fn_Esc                      = 268964305
  KEY_Forward                     = 269025063
  KEY_FrameBack                   = 269025181
  KEY_FrameForward                = 269025182
  KEY_FullScreen                  = 269025208
  KEY_G                           =        71
  KEY_Gabovedot                   =       725
  KEY_Game                        = 269025118
  KEY_Gbreve                      =       683
  KEY_Gcaron                      =  16777702
  KEY_Gcedilla                    =       939
  KEY_Gcircumflex                 =       728
  KEY_Georgian_an                 =  16781520
  KEY_Georgian_ban                =  16781521
  KEY_Georgian_can                =  16781546
  KEY_Georgian_char               =  16781549
  KEY_Georgian_chin               =  16781545
  KEY_Georgian_cil                =  16781548
  KEY_Georgian_don                =  16781523
  KEY_Georgian_en                 =  16781524
  KEY_Georgian_fi                 =  16781558
  KEY_Georgian_gan                =  16781522
  KEY_Georgian_ghan               =  16781542
  KEY_Georgian_hae                =  16781552
  KEY_Georgian_har                =  16781556
  KEY_Georgian_he                 =  16781553
  KEY_Georgian_hie                =  16781554
  KEY_Georgian_hoe                =  16781557
  KEY_Georgian_in                 =  16781528
  KEY_Georgian_jhan               =  16781551
  KEY_Georgian_jil                =  16781547
  KEY_Georgian_kan                =  16781529
  KEY_Georgian_khar               =  16781541
  KEY_Georgian_las                =  16781530
  KEY_Georgian_man                =  16781531
  KEY_Georgian_nar                =  16781532
  KEY_Georgian_on                 =  16781533
  KEY_Georgian_par                =  16781534
  KEY_Georgian_phar               =  16781540
  KEY_Georgian_qar                =  16781543
  KEY_Georgian_rae                =  16781536
  KEY_Georgian_san                =  16781537
  KEY_Georgian_shin               =  16781544
  KEY_Georgian_tan                =  16781527
  KEY_Georgian_tar                =  16781538
  KEY_Georgian_un                 =  16781539
  KEY_Georgian_vin                =  16781525
  KEY_Georgian_we                 =  16781555
  KEY_Georgian_xan                =  16781550
  KEY_Georgian_zen                =  16781526
  KEY_Georgian_zhar               =  16781535
  KEY_Go                          = 269025119
  KEY_GraphicsEditor              = 268964264
  KEY_Greek_ALPHA                 =      1985
  KEY_Greek_ALPHAaccent           =      1953
  KEY_Greek_BETA                  =      1986
  KEY_Greek_CHI                   =      2007
  KEY_Greek_DELTA                 =      1988
  KEY_Greek_EPSILON               =      1989
  KEY_Greek_EPSILONaccent         =      1954
  KEY_Greek_ETA                   =      1991
  KEY_Greek_ETAaccent             =      1955
  KEY_Greek_GAMMA                 =      1987
  KEY_Greek_IOTA                  =      1993
  KEY_Greek_IOTAaccent            =      1956
  KEY_Greek_IOTAdiaeresis         =      1957
  KEY_Greek_IOTAdieresis          =      1957
  KEY_Greek_KAPPA                 =      1994
  KEY_Greek_LAMBDA                =      1995
  KEY_Greek_LAMDA                 =      1995
  KEY_Greek_MU                    =      1996
  KEY_Greek_NU                    =      1997
  KEY_Greek_OMEGA                 =      2009
  KEY_Greek_OMEGAaccent           =      1963
  KEY_Greek_OMICRON               =      1999
  KEY_Greek_OMICRONaccent         =      1959
  KEY_Greek_PHI                   =      2006
  KEY_Greek_PI                    =      2000
  KEY_Greek_PSI                   =      2008
  KEY_Greek_RHO                   =      2001
  KEY_Greek_SIGMA                 =      2002
  KEY_Greek_TAU                   =      2004
  KEY_Greek_THETA                 =      1992
  KEY_Greek_UPSILON               =      2005
  KEY_Greek_UPSILONaccent         =      1960
  KEY_Greek_UPSILONdieresis       =      1961
  KEY_Greek_XI                    =      1998
  KEY_Greek_ZETA                  =      1990
  KEY_Greek_accentdieresis        =      1966
  KEY_Greek_alpha                 =      2017
  KEY_Greek_alphaaccent           =      1969
  KEY_Greek_beta                  =      2018
  KEY_Greek_chi                   =      2039
  KEY_Greek_delta                 =      2020
  KEY_Greek_epsilon               =      2021
  KEY_Greek_epsilonaccent         =      1970
  KEY_Greek_eta                   =      2023
  KEY_Greek_etaaccent             =      1971
  KEY_Greek_finalsmallsigma       =      2035
  KEY_Greek_gamma                 =      2019
  KEY_Greek_horizbar              =      1967
  KEY_Greek_iota                  =      2025
  KEY_Greek_iotaaccent            =      1972
  KEY_Greek_iotaaccentdieresis    =      1974
  KEY_Greek_iotadieresis          =      1973
  KEY_Greek_kappa                 =      2026
  KEY_Greek_lambda                =      2027
  KEY_Greek_lamda                 =      2027
  KEY_Greek_mu                    =      2028
  KEY_Greek_nu                    =      2029
  KEY_Greek_omega                 =      2041
  KEY_Greek_omegaaccent           =      1979
  KEY_Greek_omicron               =      2031
  KEY_Greek_omicronaccent         =      1975
  KEY_Greek_phi                   =      2038
  KEY_Greek_pi                    =      2032
  KEY_Greek_psi                   =      2040
  KEY_Greek_rho                   =      2033
  KEY_Greek_sigma                 =      2034
  KEY_Greek_switch                =     65406
  KEY_Greek_tau                   =      2036
  KEY_Greek_theta                 =      2024
  KEY_Greek_upsilon               =      2037
  KEY_Greek_upsilonaccent         =      1976
  KEY_Greek_upsilonaccentdieresis =      1978
  KEY_Greek_upsilondieresis       =      1977
  KEY_Greek_xi                    =      2030
  KEY_Greek_zeta                  =      2022
  KEY_Green                       = 269025188
  KEY_H                           =        72
  KEY_Hangul                      =     65329
  KEY_Hangul_A                    =      3775
  KEY_Hangul_AE                   =      3776
  KEY_Hangul_AraeA                =      3830
  KEY_Hangul_AraeAE               =      3831
  KEY_Hangul_Banja                =     65337
  KEY_Hangul_Cieuc                =      3770
  KEY_Hangul_Codeinput            =     65335
  KEY_Hangul_Dikeud               =      3751
  KEY_Hangul_E                    =      3780
  KEY_Hangul_EO                   =      3779
  KEY_Hangul_EU                   =      3793
  KEY_Hangul_End                  =     65331
  KEY_Hangul_Hanja                =     65332
  KEY_Hangul_Hieuh                =      3774
  KEY_Hangul_I                    =      3795
  KEY_Hangul_Ieung                =      3767
  KEY_Hangul_J_Cieuc              =      3818
  KEY_Hangul_J_Dikeud             =      3802
  KEY_Hangul_J_Hieuh              =      3822
  KEY_Hangul_J_Ieung              =      3816
  KEY_Hangul_J_Jieuj              =      3817
  KEY_Hangul_J_Khieuq             =      3819
  KEY_Hangul_J_Kiyeog             =      3796
  KEY_Hangul_J_KiyeogSios         =      3798
  KEY_Hangul_J_KkogjiDalrinIeung  =      3833
  KEY_Hangul_J_Mieum              =      3811
  KEY_Hangul_J_Nieun              =      3799
  KEY_Hangul_J_NieunHieuh         =      3801
  KEY_Hangul_J_NieunJieuj         =      3800
  KEY_Hangul_J_PanSios            =      3832
  KEY_Hangul_J_Phieuf             =      3821
  KEY_Hangul_J_Pieub              =      3812
  KEY_Hangul_J_PieubSios          =      3813
  KEY_Hangul_J_Rieul              =      3803
  KEY_Hangul_J_RieulHieuh         =      3810
  KEY_Hangul_J_RieulKiyeog        =      3804
  KEY_Hangul_J_RieulMieum         =      3805
  KEY_Hangul_J_RieulPhieuf        =      3809
  KEY_Hangul_J_RieulPieub         =      3806
  KEY_Hangul_J_RieulSios          =      3807
  KEY_Hangul_J_RieulTieut         =      3808
  KEY_Hangul_J_Sios               =      3814
  KEY_Hangul_J_SsangKiyeog        =      3797
  KEY_Hangul_J_SsangSios          =      3815
  KEY_Hangul_J_Tieut              =      3820
  KEY_Hangul_J_YeorinHieuh        =      3834
  KEY_Hangul_Jamo                 =     65333
  KEY_Hangul_Jeonja               =     65336
  KEY_Hangul_Jieuj                =      3768
  KEY_Hangul_Khieuq               =      3771
  KEY_Hangul_Kiyeog               =      3745
  KEY_Hangul_KiyeogSios           =      3747
  KEY_Hangul_KkogjiDalrinIeung    =      3827
  KEY_Hangul_Mieum                =      3761
  KEY_Hangul_MultipleCandidate    =     65341
  KEY_Hangul_Nieun                =      3748
  KEY_Hangul_NieunHieuh           =      3750
  KEY_Hangul_NieunJieuj           =      3749
  KEY_Hangul_O                    =      3783
  KEY_Hangul_OE                   =      3786
  KEY_Hangul_PanSios              =      3826
  KEY_Hangul_Phieuf               =      3773
  KEY_Hangul_Pieub                =      3762
  KEY_Hangul_PieubSios            =      3764
  KEY_Hangul_PostHanja            =     65339
  KEY_Hangul_PreHanja             =     65338
  KEY_Hangul_PreviousCandidate    =     65342
  KEY_Hangul_Rieul                =      3753
  KEY_Hangul_RieulHieuh           =      3760
  KEY_Hangul_RieulKiyeog          =      3754
  KEY_Hangul_RieulMieum           =      3755
  KEY_Hangul_RieulPhieuf          =      3759
  KEY_Hangul_RieulPieub           =      3756
  KEY_Hangul_RieulSios            =      3757
  KEY_Hangul_RieulTieut           =      3758
  KEY_Hangul_RieulYeorinHieuh     =      3823
  KEY_Hangul_Romaja               =     65334
  KEY_Hangul_SingleCandidate      =     65340
  KEY_Hangul_Sios                 =      3765
  KEY_Hangul_Special              =     65343
  KEY_Hangul_SsangDikeud          =      3752
  KEY_Hangul_SsangJieuj           =      3769
  KEY_Hangul_SsangKiyeog          =      3746
  KEY_Hangul_SsangPieub           =      3763
  KEY_Hangul_SsangSios            =      3766
  KEY_Hangul_Start                =     65330
  KEY_Hangul_SunkyeongeumMieum    =      3824
  KEY_Hangul_SunkyeongeumPhieuf   =      3828
  KEY_Hangul_SunkyeongeumPieub    =      3825
  KEY_Hangul_Tieut                =      3772
  KEY_Hangul_U                    =      3788
  KEY_Hangul_WA                   =      3784
  KEY_Hangul_WAE                  =      3785
  KEY_Hangul_WE                   =      3790
  KEY_Hangul_WEO                  =      3789
  KEY_Hangul_WI                   =      3791
  KEY_Hangul_YA                   =      3777
  KEY_Hangul_YAE                  =      3778
  KEY_Hangul_YE                   =      3782
  KEY_Hangul_YEO                  =      3781
  KEY_Hangul_YI                   =      3794
  KEY_Hangul_YO                   =      3787
  KEY_Hangul_YU                   =      3792
  KEY_Hangul_YeorinHieuh          =      3829
  KEY_Hangul_switch               =     65406
  KEY_HangupPhone                 = 268964286
  KEY_Hankaku                     =     65321
  KEY_Hcircumflex                 =       678
  KEY_Hebrew_switch               =     65406
  KEY_Help                        =     65386
  KEY_Henkan                      =     65315
  KEY_Henkan_Mode                 =     65315
  KEY_Hibernate                   = 269025192
  KEY_Hiragana                    =     65317
  KEY_Hiragana_Katakana           =     65319
  KEY_History                     = 269025079
  KEY_Home                        =     65360
  KEY_HomePage                    = 269025048
  KEY_HotLinks                    = 269025082
  KEY_Hstroke                     =       673
  KEY_Hyper_L                     =     65517
  KEY_Hyper_R                     =     65518
  KEY_I                           =        73
  KEY_ISO_Center_Object           =     65075
  KEY_ISO_Continuous_Underline    =     65072
  KEY_ISO_Discontinuous_Underline =     65073
  KEY_ISO_Emphasize               =     65074
  KEY_ISO_Enter                   =     65076
  KEY_ISO_Fast_Cursor_Down        =     65071
  KEY_ISO_Fast_Cursor_Left        =     65068
  KEY_ISO_Fast_Cursor_Right       =     65069
  KEY_ISO_Fast_Cursor_Up          =     65070
  KEY_ISO_First_Group             =     65036
  KEY_ISO_First_Group_Lock        =     65037
  KEY_ISO_Group_Latch             =     65030
  KEY_ISO_Group_Lock              =     65031
  KEY_ISO_Group_Shift             =     65406
  KEY_ISO_Last_Group              =     65038
  KEY_ISO_Last_Group_Lock         =     65039
  KEY_ISO_Left_Tab                =     65056
  KEY_ISO_Level2_Latch            =     65026
  KEY_ISO_Level3_Latch            =     65028
  KEY_ISO_Level3_Lock             =     65029
  KEY_ISO_Level3_Shift            =     65027
  KEY_ISO_Level5_Latch            =     65042
  KEY_ISO_Level5_Lock             =     65043
  KEY_ISO_Level5_Shift            =     65041
  KEY_ISO_Lock                    =     65025
  KEY_ISO_Move_Line_Down          =     65058
  KEY_ISO_Move_Line_Up            =     65057
  KEY_ISO_Next_Group              =     65032
  KEY_ISO_Next_Group_Lock         =     65033
  KEY_ISO_Partial_Line_Down       =     65060
  KEY_ISO_Partial_Line_Up         =     65059
  KEY_ISO_Partial_Space_Left      =     65061
  KEY_ISO_Partial_Space_Right     =     65062
  KEY_ISO_Prev_Group              =     65034
  KEY_ISO_Prev_Group_Lock         =     65035
  KEY_ISO_Release_Both_Margins    =     65067
  KEY_ISO_Release_Margin_Left     =     65065
  KEY_ISO_Release_Margin_Right    =     65066
  KEY_ISO_Set_Margin_Left         =     65063
  KEY_ISO_Set_Margin_Right        =     65064
  KEY_Iabovedot                   =       681
  KEY_Iacute                      =       205
  KEY_Ibelowdot                   =  16785098
  KEY_Ibreve                      =  16777516
  KEY_Icircumflex                 =       206
  KEY_Idiaeresis                  =       207
  KEY_Igrave                      =       204
  KEY_Ihook                       =  16785096
  KEY_Imacron                     =       975
  KEY_Images                      = 268964282
  KEY_Info                        = 268964198
  KEY_Insert                      =     65379
  KEY_Iogonek                     =       967
  KEY_Itilde                      =       933
  KEY_J                           =        74
  KEY_Jcircumflex                 =       684
  KEY_Journal                     = 268964418
  KEY_K                           =        75
  KEY_KP_0                        =     65456
  KEY_KP_1                        =     65457
  KEY_KP_2                        =     65458
  KEY_KP_3                        =     65459
  KEY_KP_4                        =     65460
  KEY_KP_5                        =     65461
  KEY_KP_6                        =     65462
  KEY_KP_7                        =     65463
  KEY_KP_8                        =     65464
  KEY_KP_9                        =     65465
  KEY_KP_Add                      =     65451
  KEY_KP_Begin                    =     65437
  KEY_KP_Decimal                  =     65454
  KEY_KP_Delete                   =     65439
  KEY_KP_Divide                   =     65455
  KEY_KP_Down                     =     65433
  KEY_KP_End                      =     65436
  KEY_KP_Enter                    =     65421
  KEY_KP_Equal                    =     65469
  KEY_KP_F1                       =     65425
  KEY_KP_F2                       =     65426
  KEY_KP_F3                       =     65427
  KEY_KP_F4                       =     65428
  KEY_KP_Home                     =     65429
  KEY_KP_Insert                   =     65438
  KEY_KP_Left                     =     65430
  KEY_KP_Multiply                 =     65450
  KEY_KP_Next                     =     65435
  KEY_KP_Page_Down                =     65435
  KEY_KP_Page_Up                  =     65434
  KEY_KP_Prior                    =     65434
  KEY_KP_Right                    =     65432
  KEY_KP_Separator                =     65452
  KEY_KP_Space                    =     65408
  KEY_KP_Subtract                 =     65453
  KEY_KP_Tab                      =     65417
  KEY_KP_Up                       =     65431
  KEY_Kana_Lock                   =     65325
  KEY_Kana_Shift                  =     65326
  KEY_Kanji                       =     65313
  KEY_Kanji_Bangou                =     65335
  KEY_Katakana                    =     65318
  KEY_KbdBrightnessDown           = 269025030
  KEY_KbdBrightnessUp             = 269025029
  KEY_KbdInputAssistAccept        = 268964452
  KEY_KbdInputAssistCancel        = 268964453
  KEY_KbdInputAssistNext          = 268964449
  KEY_KbdInputAssistNextgroup     = 268964451
  KEY_KbdInputAssistPrev          = 268964448
  KEY_KbdInputAssistPrevgroup     = 268964450
  KEY_KbdLcdMenu1                 = 268964536
  KEY_KbdLcdMenu2                 = 268964537
  KEY_KbdLcdMenu3                 = 268964538
  KEY_KbdLcdMenu4                 = 268964539
  KEY_KbdLcdMenu5                 = 268964540
  KEY_KbdLightOnOff               = 269025028
  KEY_Kcedilla                    =       979
  KEY_Keyboard                    = 269025203
  KEY_Korean_Won                  =      3839
  KEY_L                           =        76
  KEY_L1                          =     65480
  KEY_L10                         =     65489
  KEY_L2                          =     65481
  KEY_L3                          =     65482
  KEY_L4                          =     65483
  KEY_L5                          =     65484
  KEY_L6                          =     65485
  KEY_L7                          =     65486
  KEY_L8                          =     65487
  KEY_L9                          =     65488
  KEY_Lacute                      =       453
  KEY_Last_Virtual_Screen         =     65236
  KEY_Launch0                     = 269025088
  KEY_Launch1                     = 269025089
  KEY_Launch2                     = 269025090
  KEY_Launch3                     = 269025091
  KEY_Launch4                     = 269025092
  KEY_Launch5                     = 269025093
  KEY_Launch6                     = 269025094
  KEY_Launch7                     = 269025095
  KEY_Launch8                     = 269025096
  KEY_Launch9                     = 269025097
  KEY_LaunchA                     = 269025098
  KEY_LaunchB                     = 269025099
  KEY_LaunchC                     = 269025100
  KEY_LaunchD                     = 269025101
  KEY_LaunchE                     = 269025102
  KEY_LaunchF                     = 269025103
  KEY_Lbelowdot                   =  16784950
  KEY_Lcaron                      =       421
  KEY_Lcedilla                    =       934
  KEY_Left                        =     65361
  KEY_LeftDown                    = 268964457
  KEY_LeftUp                      = 268964456
  KEY_LightBulb                   = 269025077
  KEY_LightsToggle                = 268964382
  KEY_Linefeed                    =     65290
  KEY_LiraSign                    =  16785572
  KEY_LogGrabInfo                 = 269024805
  KEY_LogOff                      = 269025121
  KEY_LogWindowTree               = 269024804
  KEY_Lstroke                     =       419
  KEY_M                           =        77
  KEY_Mabovedot                   =  16784960
  KEY_Macedonia_DSE               =      1717
  KEY_Macedonia_GJE               =      1714
  KEY_Macedonia_KJE               =      1724
  KEY_Macedonia_dse               =      1701
  KEY_Macedonia_gje               =      1698
  KEY_Macedonia_kje               =      1708
  KEY_Macro1                      = 268964496
  KEY_Macro10                     = 268964505
  KEY_Macro11                     = 268964506
  KEY_Macro12                     = 268964507
  KEY_Macro13                     = 268964508
  KEY_Macro14                     = 268964509
  KEY_Macro15                     = 268964510
  KEY_Macro16                     = 268964511
  KEY_Macro17                     = 268964512
  KEY_Macro18                     = 268964513
  KEY_Macro19                     = 268964514
  KEY_Macro2                      = 268964497
  KEY_Macro20                     = 268964515
  KEY_Macro21                     = 268964516
  KEY_Macro22                     = 268964517
  KEY_Macro23                     = 268964518
  KEY_Macro24                     = 268964519
  KEY_Macro25                     = 268964520
  KEY_Macro26                     = 268964521
  KEY_Macro27                     = 268964522
  KEY_Macro28                     = 268964523
  KEY_Macro29                     = 268964524
  KEY_Macro3                      = 268964498
  KEY_Macro30                     = 268964525
  KEY_Macro4                      = 268964499
  KEY_Macro5                      = 268964500
  KEY_Macro6                      = 268964501
  KEY_Macro7                      = 268964502
  KEY_Macro8                      = 268964503
  KEY_Macro9                      = 268964504
  KEY_MacroPreset1                = 268964531
  KEY_MacroPreset2                = 268964532
  KEY_MacroPreset3                = 268964533
  KEY_MacroPresetCycle            = 268964530
  KEY_MacroRecordStart            = 268964528
  KEY_MacroRecordStop             = 268964529
  KEY_Mae_Koho                    =     65342
  KEY_Mail                        = 269025049
  KEY_MailForward                 = 269025168
  KEY_MarkWaypoint                = 268964478
  KEY_Market                      = 269025122
  KEY_Massyo                      =     65324
  KEY_MediaRepeat                 = 268964279
  KEY_MediaTopMenu                = 268964459
  KEY_Meeting                     = 269025123
  KEY_Memo                        = 269025054
  KEY_Menu                        =     65383
  KEY_MenuKB                      = 269025125
  KEY_MenuPB                      = 269025126
  KEY_Messenger                   = 269025166
  KEY_Meta_L                      =     65511
  KEY_Meta_R                      =     65512
  KEY_MillSign                    =  16785573
  KEY_ModeLock                    = 269025025
  KEY_Mode_switch                 =     65406
  KEY_MonBrightnessCycle          = 269025031
  KEY_MonBrightnessDown           = 269025027
  KEY_MonBrightnessUp             = 269025026
  KEY_MouseKeys_Accel_Enable      =     65143
  KEY_MouseKeys_Enable            =     65142
  KEY_Muhenkan                    =     65314
  KEY_Multi_key                   =     65312
  KEY_MultipleCandidate           =     65341
  KEY_Music                       = 269025170
  KEY_MyComputer                  = 269025075
  KEY_MySites                     = 269025127
  KEY_N                           =        78
  KEY_Nacute                      =       465
  KEY_NairaSign                   =  16785574
  KEY_NavChart                    = 268964480
  KEY_NavInfo                     = 268964488
  KEY_Ncaron                      =       466
  KEY_Ncedilla                    =       977
  KEY_New                         = 269025128
  KEY_NewSheqelSign               =  16785578
  KEY_News                        = 269025129
  KEY_Next                        =     65366
  KEY_NextElement                 = 268964475
  KEY_NextFavorite                = 268964464
  KEY_Next_VMode                  = 269024802
  KEY_Next_Virtual_Screen         =     65234
  KEY_NotificationCenter          = 268964284
  KEY_Ntilde                      =       209
  KEY_Num_Lock                    =     65407
  KEY_Numeric0                    = 268964352
  KEY_Numeric1                    = 268964353
  KEY_Numeric11                   = 268964460
  KEY_Numeric12                   = 268964461
  KEY_Numeric2                    = 268964354
  KEY_Numeric3                    = 268964355
  KEY_Numeric4                    = 268964356
  KEY_Numeric5                    = 268964357
  KEY_Numeric6                    = 268964358
  KEY_Numeric7                    = 268964359
  KEY_Numeric8                    = 268964360
  KEY_Numeric9                    = 268964361
  KEY_NumericA                    = 268964364
  KEY_NumericB                    = 268964365
  KEY_NumericC                    = 268964366
  KEY_NumericD                    = 268964367
  KEY_NumericPound                = 268964363
  KEY_NumericStar                 = 268964362
  KEY_O                           =        79
  KEY_OE                          =      5052
  KEY_Oacute                      =       211
  KEY_Obarred                     =  16777631
  KEY_Obelowdot                   =  16785100
  KEY_Ocaron                      =  16777681
  KEY_Ocircumflex                 =       212
  KEY_Ocircumflexacute            =  16785104
  KEY_Ocircumflexbelowdot         =  16785112
  KEY_Ocircumflexgrave            =  16785106
  KEY_Ocircumflexhook             =  16785108
  KEY_Ocircumflextilde            =  16785110
  KEY_Odiaeresis                  =       214
  KEY_Odoubleacute                =       469
  KEY_OfficeHome                  = 269025130
  KEY_Ograve                      =       210
  KEY_Ohook                       =  16785102
  KEY_Ohorn                       =  16777632
  KEY_Ohornacute                  =  16785114
  KEY_Ohornbelowdot               =  16785122
  KEY_Ohorngrave                  =  16785116
  KEY_Ohornhook                   =  16785118
  KEY_Ohorntilde                  =  16785120
  KEY_Omacron                     =       978
  KEY_OnScreenKeyboard            = 268964472
  KEY_Ooblique                    =       216
  KEY_Open                        = 269025131
  KEY_OpenURL                     = 269025080
  KEY_Option                      = 269025132
  KEY_Oslash                      =       216
  KEY_Otilde                      =       213
  KEY_Overlay1_Enable             =     65144
  KEY_Overlay2_Enable             =     65145
  KEY_P                           =        80
  KEY_Pabovedot                   =  16784982
  KEY_Page_Down                   =     65366
  KEY_Page_Up                     =     65365
  KEY_Paste                       = 269025133
  KEY_Pause                       =     65299
  KEY_PauseRecord                 = 268964466
  KEY_PesetaSign                  =  16785575
  KEY_Phone                       = 269025134
  KEY_PickupPhone                 = 268964285
  KEY_Pictures                    = 269025169
  KEY_Pointer_Accelerate          =     65274
  KEY_Pointer_Button1             =     65257
  KEY_Pointer_Button2             =     65258
  KEY_Pointer_Button3             =     65259
  KEY_Pointer_Button4             =     65260
  KEY_Pointer_Button5             =     65261
  KEY_Pointer_Button_Dflt         =     65256
  KEY_Pointer_DblClick1           =     65263
  KEY_Pointer_DblClick2           =     65264
  KEY_Pointer_DblClick3           =     65265
  KEY_Pointer_DblClick4           =     65266
  KEY_Pointer_DblClick5           =     65267
  KEY_Pointer_DblClick_Dflt       =     65262
  KEY_Pointer_DfltBtnNext         =     65275
  KEY_Pointer_DfltBtnPrev         =     65276
  KEY_Pointer_Down                =     65251
  KEY_Pointer_DownLeft            =     65254
  KEY_Pointer_DownRight           =     65255
  KEY_Pointer_Drag1               =     65269
  KEY_Pointer_Drag2               =     65270
  KEY_Pointer_Drag3               =     65271
  KEY_Pointer_Drag4               =     65272
  KEY_Pointer_Drag5               =     65277
  KEY_Pointer_Drag_Dflt           =     65268
  KEY_Pointer_EnableKeys          =     65273
  KEY_Pointer_Left                =     65248
  KEY_Pointer_Right               =     65249
  KEY_Pointer_Up                  =     65250
  KEY_Pointer_UpLeft              =     65252
  KEY_Pointer_UpRight             =     65253
  KEY_PowerDown                   = 269025057
  KEY_PowerOff                    = 269025066
  KEY_Presentation                = 268964265
  KEY_Prev_VMode                  = 269024803
  KEY_Prev_Virtual_Screen         =     65233
  KEY_PreviousCandidate           =     65342
  KEY_PreviousElement             = 268964476
  KEY_Print                       =     65377
  KEY_Prior                       =     65365
  KEY_PrivacyScreenToggle         = 268964473
  KEY_Q                           =        81
  KEY_R                           =        82
  KEY_R1                          =     65490
  KEY_R10                         =     65499
  KEY_R11                         =     65500
  KEY_R12                         =     65501
  KEY_R13                         =     65502
  KEY_R14                         =     65503
  KEY_R15                         =     65504
  KEY_R2                          =     65491
  KEY_R3                          =     65492
  KEY_R4                          =     65493
  KEY_R5                          =     65494
  KEY_R6                          =     65495
  KEY_R7                          =     65496
  KEY_R8                          =     65497
  KEY_R9                          =     65498
  KEY_RFKill                      = 269025205
  KEY_Racute                      =       448
  KEY_RadarOverlay                = 268964484
  KEY_Rcaron                      =       472
  KEY_Rcedilla                    =       931
  KEY_Red                         = 269025187
  KEY_Redo                        =     65382
  KEY_Refresh                     = 269025065
  KEY_RefreshRateToggle           = 268964402
  KEY_Reload                      = 269025139
  KEY_RepeatKeys_Enable           =     65138
  KEY_Reply                       = 269025138
  KEY_Return                      =     65293
  KEY_Right                       =     65363
  KEY_RightDown                   = 268964455
  KEY_RightUp                     = 268964454
  KEY_RockerDown                  = 269025060
  KEY_RockerEnter                 = 269025061
  KEY_RockerUp                    = 269025059
  KEY_Romaji                      =     65316
  KEY_RootMenu                    = 268964458
  KEY_RotateWindows               = 269025140
  KEY_RotationKB                  = 269025142
  KEY_RotationLockToggle          = 269025207
  KEY_RotationPB                  = 269025141
  KEY_RupeeSign                   =  16785576
  KEY_S                           =        83
  KEY_SCHWA                       =  16777615
  KEY_Sabovedot                   =  16784992
  KEY_Sacute                      =       422
  KEY_Save                        = 269025143
  KEY_Scaron                      =       425
  KEY_Scedilla                    =       426
  KEY_Scircumflex                 =       734
  KEY_ScreenSaver                 = 269025069
  KEY_Screensaver                 = 268964421
  KEY_ScrollClick                 = 269025146
  KEY_ScrollDown                  = 269025145
  KEY_ScrollUp                    = 269025144
  KEY_Scroll_Lock                 =     65300
  KEY_Search                      = 269025051
  KEY_Select                      =     65376
  KEY_SelectButton                = 269025184
  KEY_SelectiveScreenshot         = 268964474
  KEY_Send                        = 269025147
  KEY_Serbian_DJE                 =      1713
  KEY_Serbian_DZE                 =      1727
  KEY_Serbian_JE                  =      1720
  KEY_Serbian_LJE                 =      1721
  KEY_Serbian_NJE                 =      1722
  KEY_Serbian_TSHE                =      1723
  KEY_Serbian_dje                 =      1697
  KEY_Serbian_dze                 =      1711
  KEY_Serbian_je                  =      1704
  KEY_Serbian_lje                 =      1705
  KEY_Serbian_nje                 =      1706
  KEY_Serbian_tshe                =      1707
  KEY_Shift_L                     =     65505
  KEY_Shift_Lock                  =     65510
  KEY_Shift_R                     =     65506
  KEY_Shop                        = 269025078
  KEY_SidevuSonar                 = 268964487
  KEY_SingleCandidate             =     65340
  KEY_SingleRangeRadar            = 268964482
  KEY_Sinh_a                      =  16780677
  KEY_Sinh_aa                     =  16780678
  KEY_Sinh_aa2                    =  16780751
  KEY_Sinh_ae                     =  16780679
  KEY_Sinh_ae2                    =  16780752
  KEY_Sinh_aee                    =  16780680
  KEY_Sinh_aee2                   =  16780753
  KEY_Sinh_ai                     =  16780691
  KEY_Sinh_ai2                    =  16780763
  KEY_Sinh_al                     =  16780746
  KEY_Sinh_au                     =  16780694
  KEY_Sinh_au2                    =  16780766
  KEY_Sinh_ba                     =  16780726
  KEY_Sinh_bha                    =  16780727
  KEY_Sinh_ca                     =  16780704
  KEY_Sinh_cha                    =  16780705
  KEY_Sinh_dda                    =  16780713
  KEY_Sinh_ddha                   =  16780714
  KEY_Sinh_dha                    =  16780719
  KEY_Sinh_dhha                   =  16780720
  KEY_Sinh_e                      =  16780689
  KEY_Sinh_e2                     =  16780761
  KEY_Sinh_ee                     =  16780690
  KEY_Sinh_ee2                    =  16780762
  KEY_Sinh_fa                     =  16780742
  KEY_Sinh_ga                     =  16780700
  KEY_Sinh_gha                    =  16780701
  KEY_Sinh_h2                     =  16780675
  KEY_Sinh_ha                     =  16780740
  KEY_Sinh_i                      =  16780681
  KEY_Sinh_i2                     =  16780754
  KEY_Sinh_ii                     =  16780682
  KEY_Sinh_ii2                    =  16780755
  KEY_Sinh_ja                     =  16780706
  KEY_Sinh_jha                    =  16780707
  KEY_Sinh_jnya                   =  16780709
  KEY_Sinh_ka                     =  16780698
  KEY_Sinh_kha                    =  16780699
  KEY_Sinh_kunddaliya             =  16780788
  KEY_Sinh_la                     =  16780733
  KEY_Sinh_lla                    =  16780741
  KEY_Sinh_lu                     =  16780687
  KEY_Sinh_lu2                    =  16780767
  KEY_Sinh_luu                    =  16780688
  KEY_Sinh_luu2                   =  16780787
  KEY_Sinh_ma                     =  16780728
  KEY_Sinh_mba                    =  16780729
  KEY_Sinh_na                     =  16780721
  KEY_Sinh_ndda                   =  16780716
  KEY_Sinh_ndha                   =  16780723
  KEY_Sinh_ng                     =  16780674
  KEY_Sinh_ng2                    =  16780702
  KEY_Sinh_nga                    =  16780703
  KEY_Sinh_nja                    =  16780710
  KEY_Sinh_nna                    =  16780715
  KEY_Sinh_nya                    =  16780708
  KEY_Sinh_o                      =  16780692
  KEY_Sinh_o2                     =  16780764
  KEY_Sinh_oo                     =  16780693
  KEY_Sinh_oo2                    =  16780765
  KEY_Sinh_pa                     =  16780724
  KEY_Sinh_pha                    =  16780725
  KEY_Sinh_ra                     =  16780731
  KEY_Sinh_ri                     =  16780685
  KEY_Sinh_rii                    =  16780686
  KEY_Sinh_ru2                    =  16780760
  KEY_Sinh_ruu2                   =  16780786
  KEY_Sinh_sa                     =  16780739
  KEY_Sinh_sha                    =  16780737
  KEY_Sinh_ssha                   =  16780738
  KEY_Sinh_tha                    =  16780717
  KEY_Sinh_thha                   =  16780718
  KEY_Sinh_tta                    =  16780711
  KEY_Sinh_ttha                   =  16780712
  KEY_Sinh_u                      =  16780683
  KEY_Sinh_u2                     =  16780756
  KEY_Sinh_uu                     =  16780684
  KEY_Sinh_uu2                    =  16780758
  KEY_Sinh_va                     =  16780736
  KEY_Sinh_ya                     =  16780730
  KEY_Sleep                       = 269025071
  KEY_SlowKeys_Enable             =     65139
  KEY_SlowReverse                 = 268964470
  KEY_Sos                         = 268964479
  KEY_Spell                       = 269025148
  KEY_SpellCheck                  = 268964272
  KEY_SplitScreen                 = 269025149
  KEY_Standby                     = 269025040
  KEY_Start                       = 269025050
  KEY_StickyKeys_Enable           =     65141
  KEY_Stop                        = 269025064
  KEY_StopRecord                  = 268964465
  KEY_Subtitle                    = 269025178
  KEY_Super_L                     =     65515
  KEY_Super_R                     =     65516
  KEY_Support                     = 269025150
  KEY_Suspend                     = 269025191
  KEY_Switch_VT_1                 = 269024769
  KEY_Switch_VT_10                = 269024778
  KEY_Switch_VT_11                = 269024779
  KEY_Switch_VT_12                = 269024780
  KEY_Switch_VT_2                 = 269024770
  KEY_Switch_VT_3                 = 269024771
  KEY_Switch_VT_4                 = 269024772
  KEY_Switch_VT_5                 = 269024773
  KEY_Switch_VT_6                 = 269024774
  KEY_Switch_VT_7                 = 269024775
  KEY_Switch_VT_8                 = 269024776
  KEY_Switch_VT_9                 = 269024777
  KEY_Sys_Req                     =     65301
  KEY_T                           =        84
  KEY_THORN                       =       222
  KEY_Tab                         =     65289
  KEY_Tabovedot                   =  16785002
  KEY_TaskPane                    = 269025151
  KEY_Taskmanager                 = 268964417
  KEY_Tcaron                      =       427
  KEY_Tcedilla                    =       478
  KEY_Terminal                    = 269025152
  KEY_Terminate_Server            =     65237
  KEY_Thai_baht                   =      3551
  KEY_Thai_bobaimai               =      3514
  KEY_Thai_chochan                =      3496
  KEY_Thai_chochang               =      3498
  KEY_Thai_choching               =      3497
  KEY_Thai_chochoe                =      3500
  KEY_Thai_dochada                =      3502
  KEY_Thai_dodek                  =      3508
  KEY_Thai_fofa                   =      3517
  KEY_Thai_fofan                  =      3519
  KEY_Thai_hohip                  =      3531
  KEY_Thai_honokhuk               =      3534
  KEY_Thai_khokhai                =      3490
  KEY_Thai_khokhon                =      3493
  KEY_Thai_khokhuat               =      3491
  KEY_Thai_khokhwai               =      3492
  KEY_Thai_khorakhang             =      3494
  KEY_Thai_kokai                  =      3489
  KEY_Thai_lakkhangyao            =      3557
  KEY_Thai_lekchet                =      3575
  KEY_Thai_lekha                  =      3573
  KEY_Thai_lekhok                 =      3574
  KEY_Thai_lekkao                 =      3577
  KEY_Thai_leknung                =      3569
  KEY_Thai_lekpaet                =      3576
  KEY_Thai_leksam                 =      3571
  KEY_Thai_leksi                  =      3572
  KEY_Thai_leksong                =      3570
  KEY_Thai_leksun                 =      3568
  KEY_Thai_lochula                =      3532
  KEY_Thai_loling                 =      3525
  KEY_Thai_lu                     =      3526
  KEY_Thai_maichattawa            =      3563
  KEY_Thai_maiek                  =      3560
  KEY_Thai_maihanakat             =      3537
  KEY_Thai_maihanakat_maitho      =      3550
  KEY_Thai_maitaikhu              =      3559
  KEY_Thai_maitho                 =      3561
  KEY_Thai_maitri                 =      3562
  KEY_Thai_maiyamok               =      3558
  KEY_Thai_moma                   =      3521
  KEY_Thai_ngongu                 =      3495
  KEY_Thai_nikhahit               =      3565
  KEY_Thai_nonen                  =      3507
  KEY_Thai_nonu                   =      3513
  KEY_Thai_oang                   =      3533
  KEY_Thai_paiyannoi              =      3535
  KEY_Thai_phinthu                =      3546
  KEY_Thai_phophan                =      3518
  KEY_Thai_phophung               =      3516
  KEY_Thai_phosamphao             =      3520
  KEY_Thai_popla                  =      3515
  KEY_Thai_rorua                  =      3523
  KEY_Thai_ru                     =      3524
  KEY_Thai_saraa                  =      3536
  KEY_Thai_saraaa                 =      3538
  KEY_Thai_saraae                 =      3553
  KEY_Thai_saraaimaimalai         =      3556
  KEY_Thai_saraaimaimuan          =      3555
  KEY_Thai_saraam                 =      3539
  KEY_Thai_sarae                  =      3552
  KEY_Thai_sarai                  =      3540
  KEY_Thai_saraii                 =      3541
  KEY_Thai_sarao                  =      3554
  KEY_Thai_sarau                  =      3544
  KEY_Thai_saraue                 =      3542
  KEY_Thai_sarauee                =      3543
  KEY_Thai_sarauu                 =      3545
  KEY_Thai_sorusi                 =      3529
  KEY_Thai_sosala                 =      3528
  KEY_Thai_soso                   =      3499
  KEY_Thai_sosua                  =      3530
  KEY_Thai_thanthakhat            =      3564
  KEY_Thai_thonangmontho          =      3505
  KEY_Thai_thophuthao             =      3506
  KEY_Thai_thothahan              =      3511
  KEY_Thai_thothan                =      3504
  KEY_Thai_thothong               =      3512
  KEY_Thai_thothung               =      3510
  KEY_Thai_topatak                =      3503
  KEY_Thai_totao                  =      3509
  KEY_Thai_wowaen                 =      3527
  KEY_Thai_yoyak                  =      3522
  KEY_Thai_yoying                 =      3501
  KEY_Thorn                       =       222
  KEY_Time                        = 269025183
  KEY_ToDoList                    = 269025055
  KEY_Tools                       = 269025153
  KEY_TopMenu                     = 269025186
  KEY_TouchpadOff                 = 269025201
  KEY_TouchpadOn                  = 269025200
  KEY_TouchpadToggle              = 269025193
  KEY_Touroku                     =     65323
  KEY_TraditionalSonar            = 268964485
  KEY_Travel                      = 269025154
  KEY_Tslash                      =       940
  KEY_U                           =        85
  KEY_UWB                         = 269025174
  KEY_Uacute                      =       218
  KEY_Ubelowdot                   =  16785124
  KEY_Ubreve                      =       733
  KEY_Ucircumflex                 =       219
  KEY_Udiaeresis                  =       220
  KEY_Udoubleacute                =       475
  KEY_Ugrave                      =       217
  KEY_Uhook                       =  16785126
  KEY_Uhorn                       =  16777647
  KEY_Uhornacute                  =  16785128
  KEY_Uhornbelowdot               =  16785136
  KEY_Uhorngrave                  =  16785130
  KEY_Uhornhook                   =  16785132
  KEY_Uhorntilde                  =  16785134
  KEY_Ukrainian_GHE_WITH_UPTURN   =      1725
  KEY_Ukrainian_I                 =      1718
  KEY_Ukrainian_IE                =      1716
  KEY_Ukrainian_YI                =      1719
  KEY_Ukrainian_ghe_with_upturn   =      1709
  KEY_Ukrainian_i                 =      1702
  KEY_Ukrainian_ie                =      1700
  KEY_Ukrainian_yi                =      1703
  KEY_Ukranian_I                  =      1718
  KEY_Ukranian_JE                 =      1716
  KEY_Ukranian_YI                 =      1719
  KEY_Ukranian_i                  =      1702
  KEY_Ukranian_je                 =      1700
  KEY_Ukranian_yi                 =      1703
  KEY_Umacron                     =       990
  KEY_Undo                        =     65381
  KEY_Ungrab                      = 269024800
  KEY_Unmute                      = 268964468
  KEY_Uogonek                     =       985
  KEY_Up                          =     65362
  KEY_Uring                       =       473
  KEY_User1KB                     = 269025157
  KEY_User2KB                     = 269025158
  KEY_UserPB                      = 269025156
  KEY_Utilde                      =       989
  KEY_V                           =        86
  KEY_VOD                         = 268964467
  KEY_VendorHome                  = 269025076
  KEY_Video                       = 269025159
  KEY_VideoPhone                  = 268964256
  KEY_View                        = 269025185
  KEY_VoiceCommand                = 268964422
  KEY_Voicemail                   = 268964268
  KEY_VoidSymbol                  =  16777215
  KEY_W                           =        87
  KEY_WLAN                        = 269025173
  KEY_WPSButton                   = 268964369
  KEY_WWAN                        = 269025204
  KEY_WWW                         = 269025070
  KEY_Wacute                      =  16785026
  KEY_WakeUp                      = 269025067
  KEY_Wcircumflex                 =  16777588
  KEY_Wdiaeresis                  =  16785028
  KEY_WebCam                      = 269025167
  KEY_Wgrave                      =  16785024
  KEY_WheelButton                 = 269025160
  KEY_WindowClear                 = 269025109
  KEY_WonSign                     =  16785577
  KEY_Word                        = 269025161
  KEY_X                           =        88
  KEY_Xabovedot                   =  16785034
  KEY_Xfer                        = 269025162
  KEY_Y                           =        89
  KEY_Yacute                      =       221
  KEY_Ybelowdot                   =  16785140
  KEY_Ycircumflex                 =  16777590
  KEY_Ydiaeresis                  =      5054
  KEY_Yellow                      = 269025189
  KEY_Ygrave                      =  16785138
  KEY_Yhook                       =  16785142
  KEY_Ytilde                      =  16785144
  KEY_Z                           =        90
  KEY_Zabovedot                   =       431
  KEY_Zacute                      =       428
  KEY_Zcaron                      =       430
  KEY_Zen_Koho                    =     65341
  KEY_Zenkaku                     =     65320
  KEY_Zenkaku_Hankaku             =     65322
  KEY_ZoomIn                      = 269025163
  KEY_ZoomOut                     = 269025164
  KEY_ZoomReset                   = 268964260
  KEY_Zstroke                     =  16777653
  KEY_a                           =        97
  KEY_aacute                      =       225
  KEY_abelowdot                   =  16785057
  KEY_abovedot                    =       511
  KEY_abreve                      =       483
  KEY_abreveacute                 =  16785071
  KEY_abrevebelowdot              =  16785079
  KEY_abrevegrave                 =  16785073
  KEY_abrevehook                  =  16785075
  KEY_abrevetilde                 =  16785077
  KEY_acircumflex                 =       226
  KEY_acircumflexacute            =  16785061
  KEY_acircumflexbelowdot         =  16785069
  KEY_acircumflexgrave            =  16785063
  KEY_acircumflexhook             =  16785065
  KEY_acircumflextilde            =  16785067
  KEY_acute                       =       180
  KEY_adiaeresis                  =       228
  KEY_ae                          =       230
  KEY_agrave                      =       224
  KEY_ahook                       =  16785059
  KEY_amacron                     =       992
  KEY_ampersand                   =        38
  KEY_aogonek                     =       433
  KEY_apostrophe                  =        39
  KEY_approxeq                    =  16785992
  KEY_approximate                 =      2248
  KEY_aring                       =       229
  KEY_asciicircum                 =        94
  KEY_asciitilde                  =       126
  KEY_asterisk                    =        42
  KEY_at                          =        64
  KEY_atilde                      =       227
  KEY_b                           =        98
  KEY_babovedot                   =  16784899
  KEY_backslash                   =        92
  KEY_ballotcross                 =      2804
  KEY_bar                         =       124
  KEY_because                     =  16785973
  KEY_blank                       =      2527
  KEY_botintegral                 =      2213
  KEY_botleftparens               =      2220
  KEY_botleftsqbracket            =      2216
  KEY_botleftsummation            =      2226
  KEY_botrightparens              =      2222
  KEY_botrightsqbracket           =      2218
  KEY_botrightsummation           =      2230
  KEY_bott                        =      2550
  KEY_botvertsummationconnector   =      2228
  KEY_braceleft                   =       123
  KEY_braceright                  =       125
  KEY_bracketleft                 =        91
  KEY_bracketright                =        93
  KEY_braille_blank               =  16787456
  KEY_braille_dot_1               =     65521
  KEY_braille_dot_10              =     65530
  KEY_braille_dot_2               =     65522
  KEY_braille_dot_3               =     65523
  KEY_braille_dot_4               =     65524
  KEY_braille_dot_5               =     65525
  KEY_braille_dot_6               =     65526
  KEY_braille_dot_7               =     65527
  KEY_braille_dot_8               =     65528
  KEY_braille_dot_9               =     65529
  KEY_braille_dots_1              =  16787457
  KEY_braille_dots_12             =  16787459
  KEY_braille_dots_123            =  16787463
  KEY_braille_dots_1234           =  16787471
  KEY_braille_dots_12345          =  16787487
  KEY_braille_dots_123456         =  16787519
  KEY_braille_dots_1234567        =  16787583
  KEY_braille_dots_12345678       =  16787711
  KEY_braille_dots_1234568        =  16787647
  KEY_braille_dots_123457         =  16787551
  KEY_braille_dots_1234578        =  16787679
  KEY_braille_dots_123458         =  16787615
  KEY_braille_dots_12346          =  16787503
  KEY_braille_dots_123467         =  16787567
  KEY_braille_dots_1234678        =  16787695
  KEY_braille_dots_123468         =  16787631
  KEY_braille_dots_12347          =  16787535
  KEY_braille_dots_123478         =  16787663
  KEY_braille_dots_12348          =  16787599
  KEY_braille_dots_1235           =  16787479
  KEY_braille_dots_12356          =  16787511
  KEY_braille_dots_123567         =  16787575
  KEY_braille_dots_1235678        =  16787703
  KEY_braille_dots_123568         =  16787639
  KEY_braille_dots_12357          =  16787543
  KEY_braille_dots_123578         =  16787671
  KEY_braille_dots_12358          =  16787607
  KEY_braille_dots_1236           =  16787495
  KEY_braille_dots_12367          =  16787559
  KEY_braille_dots_123678         =  16787687
  KEY_braille_dots_12368          =  16787623
  KEY_braille_dots_1237           =  16787527
  KEY_braille_dots_12378          =  16787655
  KEY_braille_dots_1238           =  16787591
  KEY_braille_dots_124            =  16787467
  KEY_braille_dots_1245           =  16787483
  KEY_braille_dots_12456          =  16787515
  KEY_braille_dots_124567         =  16787579
  KEY_braille_dots_1245678        =  16787707
  KEY_braille_dots_124568         =  16787643
  KEY_braille_dots_12457          =  16787547
  KEY_braille_dots_124578         =  16787675
  KEY_braille_dots_12458          =  16787611
  KEY_braille_dots_1246           =  16787499
  KEY_braille_dots_12467          =  16787563
  KEY_braille_dots_124678         =  16787691
  KEY_braille_dots_12468          =  16787627
  KEY_braille_dots_1247           =  16787531
  KEY_braille_dots_12478          =  16787659
  KEY_braille_dots_1248           =  16787595
  KEY_braille_dots_125            =  16787475
  KEY_braille_dots_1256           =  16787507
  KEY_braille_dots_12567          =  16787571
  KEY_braille_dots_125678         =  16787699
  KEY_braille_dots_12568          =  16787635
  KEY_braille_dots_1257           =  16787539
  KEY_braille_dots_12578          =  16787667
  KEY_braille_dots_1258           =  16787603
  KEY_braille_dots_126            =  16787491
  KEY_braille_dots_1267           =  16787555
  KEY_braille_dots_12678          =  16787683
  KEY_braille_dots_1268           =  16787619
  KEY_braille_dots_127            =  16787523
  KEY_braille_dots_1278           =  16787651
  KEY_braille_dots_128            =  16787587
  KEY_braille_dots_13             =  16787461
  KEY_braille_dots_134            =  16787469
  KEY_braille_dots_1345           =  16787485
  KEY_braille_dots_13456          =  16787517
  KEY_braille_dots_134567         =  16787581
  KEY_braille_dots_1345678        =  16787709
  KEY_braille_dots_134568         =  16787645
  KEY_braille_dots_13457          =  16787549
  KEY_braille_dots_134578         =  16787677
  KEY_braille_dots_13458          =  16787613
  KEY_braille_dots_1346           =  16787501
  KEY_braille_dots_13467          =  16787565
  KEY_braille_dots_134678         =  16787693
  KEY_braille_dots_13468          =  16787629
  KEY_braille_dots_1347           =  16787533
  KEY_braille_dots_13478          =  16787661
  KEY_braille_dots_1348           =  16787597
  KEY_braille_dots_135            =  16787477
  KEY_braille_dots_1356           =  16787509
  KEY_braille_dots_13567          =  16787573
  KEY_braille_dots_135678         =  16787701
  KEY_braille_dots_13568          =  16787637
  KEY_braille_dots_1357           =  16787541
  KEY_braille_dots_13578          =  16787669
  KEY_braille_dots_1358           =  16787605
  KEY_braille_dots_136            =  16787493
  KEY_braille_dots_1367           =  16787557
  KEY_braille_dots_13678          =  16787685
  KEY_braille_dots_1368           =  16787621
  KEY_braille_dots_137            =  16787525
  KEY_braille_dots_1378           =  16787653
  KEY_braille_dots_138            =  16787589
  KEY_braille_dots_14             =  16787465
  KEY_braille_dots_145            =  16787481
  KEY_braille_dots_1456           =  16787513
  KEY_braille_dots_14567          =  16787577
  KEY_braille_dots_145678         =  16787705
  KEY_braille_dots_14568          =  16787641
  KEY_braille_dots_1457           =  16787545
  KEY_braille_dots_14578          =  16787673
  KEY_braille_dots_1458           =  16787609
  KEY_braille_dots_146            =  16787497
  KEY_braille_dots_1467           =  16787561
  KEY_braille_dots_14678          =  16787689
  KEY_braille_dots_1468           =  16787625
  KEY_braille_dots_147            =  16787529
  KEY_braille_dots_1478           =  16787657
  KEY_braille_dots_148            =  16787593
  KEY_braille_dots_15             =  16787473
  KEY_braille_dots_156            =  16787505
  KEY_braille_dots_1567           =  16787569
  KEY_braille_dots_15678          =  16787697
  KEY_braille_dots_1568           =  16787633
  KEY_braille_dots_157            =  16787537
  KEY_braille_dots_1578           =  16787665
  KEY_braille_dots_158            =  16787601
  KEY_braille_dots_16             =  16787489
  KEY_braille_dots_167            =  16787553
  KEY_braille_dots_1678           =  16787681
  KEY_braille_dots_168            =  16787617
  KEY_braille_dots_17             =  16787521
  KEY_braille_dots_178            =  16787649
  KEY_braille_dots_18             =  16787585
  KEY_braille_dots_2              =  16787458
  KEY_braille_dots_23             =  16787462
  KEY_braille_dots_234            =  16787470
  KEY_braille_dots_2345           =  16787486
  KEY_braille_dots_23456          =  16787518
  KEY_braille_dots_234567         =  16787582
  KEY_braille_dots_2345678        =  16787710
  KEY_braille_dots_234568         =  16787646
  KEY_braille_dots_23457          =  16787550
  KEY_braille_dots_234578         =  16787678
  KEY_braille_dots_23458          =  16787614
  KEY_braille_dots_2346           =  16787502
  KEY_braille_dots_23467          =  16787566
  KEY_braille_dots_234678         =  16787694
  KEY_braille_dots_23468          =  16787630
  KEY_braille_dots_2347           =  16787534
  KEY_braille_dots_23478          =  16787662
  KEY_braille_dots_2348           =  16787598
  KEY_braille_dots_235            =  16787478
  KEY_braille_dots_2356           =  16787510
  KEY_braille_dots_23567          =  16787574
  KEY_braille_dots_235678         =  16787702
  KEY_braille_dots_23568          =  16787638
  KEY_braille_dots_2357           =  16787542
  KEY_braille_dots_23578          =  16787670
  KEY_braille_dots_2358           =  16787606
  KEY_braille_dots_236            =  16787494
  KEY_braille_dots_2367           =  16787558
  KEY_braille_dots_23678          =  16787686
  KEY_braille_dots_2368           =  16787622
  KEY_braille_dots_237            =  16787526
  KEY_braille_dots_2378           =  16787654
  KEY_braille_dots_238            =  16787590
  KEY_braille_dots_24             =  16787466
  KEY_braille_dots_245            =  16787482
  KEY_braille_dots_2456           =  16787514
  KEY_braille_dots_24567          =  16787578
  KEY_braille_dots_245678         =  16787706
  KEY_braille_dots_24568          =  16787642
  KEY_braille_dots_2457           =  16787546
  KEY_braille_dots_24578          =  16787674
  KEY_braille_dots_2458           =  16787610
  KEY_braille_dots_246            =  16787498
  KEY_braille_dots_2467           =  16787562
  KEY_braille_dots_24678          =  16787690
  KEY_braille_dots_2468           =  16787626
  KEY_braille_dots_247            =  16787530
  KEY_braille_dots_2478           =  16787658
  KEY_braille_dots_248            =  16787594
  KEY_braille_dots_25             =  16787474
  KEY_braille_dots_256            =  16787506
  KEY_braille_dots_2567           =  16787570
  KEY_braille_dots_25678          =  16787698
  KEY_braille_dots_2568           =  16787634
  KEY_braille_dots_257            =  16787538
  KEY_braille_dots_2578           =  16787666
  KEY_braille_dots_258            =  16787602
  KEY_braille_dots_26             =  16787490
  KEY_braille_dots_267            =  16787554
  KEY_braille_dots_2678           =  16787682
  KEY_braille_dots_268            =  16787618
  KEY_braille_dots_27             =  16787522
  KEY_braille_dots_278            =  16787650
  KEY_braille_dots_28             =  16787586
  KEY_braille_dots_3              =  16787460
  KEY_braille_dots_34             =  16787468
  KEY_braille_dots_345            =  16787484
  KEY_braille_dots_3456           =  16787516
  KEY_braille_dots_34567          =  16787580
  KEY_braille_dots_345678         =  16787708
  KEY_braille_dots_34568          =  16787644
  KEY_braille_dots_3457           =  16787548
  KEY_braille_dots_34578          =  16787676
  KEY_braille_dots_3458           =  16787612
  KEY_braille_dots_346            =  16787500
  KEY_braille_dots_3467           =  16787564
  KEY_braille_dots_34678          =  16787692
  KEY_braille_dots_3468           =  16787628
  KEY_braille_dots_347            =  16787532
  KEY_braille_dots_3478           =  16787660
  KEY_braille_dots_348            =  16787596
  KEY_braille_dots_35             =  16787476
  KEY_braille_dots_356            =  16787508
  KEY_braille_dots_3567           =  16787572
  KEY_braille_dots_35678          =  16787700
  KEY_braille_dots_3568           =  16787636
  KEY_braille_dots_357            =  16787540
  KEY_braille_dots_3578           =  16787668
  KEY_braille_dots_358            =  16787604
  KEY_braille_dots_36             =  16787492
  KEY_braille_dots_367            =  16787556
  KEY_braille_dots_3678           =  16787684
  KEY_braille_dots_368            =  16787620
  KEY_braille_dots_37             =  16787524
  KEY_braille_dots_378            =  16787652
  KEY_braille_dots_38             =  16787588
  KEY_braille_dots_4              =  16787464
  KEY_braille_dots_45             =  16787480
  KEY_braille_dots_456            =  16787512
  KEY_braille_dots_4567           =  16787576
  KEY_braille_dots_45678          =  16787704
  KEY_braille_dots_4568           =  16787640
  KEY_braille_dots_457            =  16787544
  KEY_braille_dots_4578           =  16787672
  KEY_braille_dots_458            =  16787608
  KEY_braille_dots_46             =  16787496
  KEY_braille_dots_467            =  16787560
  KEY_braille_dots_4678           =  16787688
  KEY_braille_dots_468            =  16787624
  KEY_braille_dots_47             =  16787528
  KEY_braille_dots_478            =  16787656
  KEY_braille_dots_48             =  16787592
  KEY_braille_dots_5              =  16787472
  KEY_braille_dots_56             =  16787504
  KEY_braille_dots_567            =  16787568
  KEY_braille_dots_5678           =  16787696
  KEY_braille_dots_568            =  16787632
  KEY_braille_dots_57             =  16787536
  KEY_braille_dots_578            =  16787664
  KEY_braille_dots_58             =  16787600
  KEY_braille_dots_6              =  16787488
  KEY_braille_dots_67             =  16787552
  KEY_braille_dots_678            =  16787680
  KEY_braille_dots_68             =  16787616
  KEY_braille_dots_7              =  16787520
  KEY_braille_dots_78             =  16787648
  KEY_braille_dots_8              =  16787584
  KEY_breve                       =       418
  KEY_brokenbar                   =       166
  KEY_c                           =        99
  KEY_c_h                         =     65187
  KEY_cabovedot                   =       741
  KEY_cacute                      =       486
  KEY_careof                      =      2744
  KEY_caret                       =      2812
  KEY_caron                       =       439
  KEY_ccaron                      =       488
  KEY_ccedilla                    =       231
  KEY_ccircumflex                 =       742
  KEY_cedilla                     =       184
  KEY_cent                        =       162
  KEY_ch                          =     65184
  KEY_checkerboard                =      2529
  KEY_checkmark                   =      2803
  KEY_circle                      =      3023
  KEY_club                        =      2796
  KEY_colon                       =        58
  KEY_combining_acute             =  16777985
  KEY_combining_belowdot          =  16778019
  KEY_combining_grave             =  16777984
  KEY_combining_hook              =  16777993
  KEY_combining_tilde             =  16777987
  KEY_comma                       =        44
  KEY_containsas                  =  16785931
  KEY_copyright                   =       169
  KEY_cr                          =      2532
  KEY_crossinglines               =      2542
  KEY_cuberoot                    =  16785947
  KEY_currency                    =       164
  KEY_cursor                      =      2815
  KEY_d                           =       100
  KEY_dabovedot                   =  16784907
  KEY_dagger                      =      2801
  KEY_dcaron                      =       495
  KEY_dead_A                      =     65153
  KEY_dead_E                      =     65155
  KEY_dead_I                      =     65157
  KEY_dead_O                      =     65159
  KEY_dead_SCHWA                  =     65163
  KEY_dead_U                      =     65161
  KEY_dead_a                      =     65152
  KEY_dead_abovecomma             =     65124
  KEY_dead_abovedot               =     65110
  KEY_dead_abovereversedcomma     =     65125
  KEY_dead_abovering              =     65112
  KEY_dead_aboveverticalline      =     65169
  KEY_dead_acute                  =     65105
  KEY_dead_belowbreve             =     65131
  KEY_dead_belowcircumflex        =     65129
  KEY_dead_belowcomma             =     65134
  KEY_dead_belowdiaeresis         =     65132
  KEY_dead_belowdot               =     65120
  KEY_dead_belowmacron            =     65128
  KEY_dead_belowring              =     65127
  KEY_dead_belowtilde             =     65130
  KEY_dead_belowverticalline      =     65170
  KEY_dead_breve                  =     65109
  KEY_dead_capital_schwa          =     65163
  KEY_dead_caron                  =     65114
  KEY_dead_cedilla                =     65115
  KEY_dead_circumflex             =     65106
  KEY_dead_currency               =     65135
  KEY_dead_dasia                  =     65125
  KEY_dead_diaeresis              =     65111
  KEY_dead_doubleacute            =     65113
  KEY_dead_doublegrave            =     65126
  KEY_dead_e                      =     65154
  KEY_dead_grave                  =     65104
  KEY_dead_greek                  =     65164
  KEY_dead_hamza                  =     65165
  KEY_dead_hook                   =     65121
  KEY_dead_horn                   =     65122
  KEY_dead_i                      =     65156
  KEY_dead_invertedbreve          =     65133
  KEY_dead_iota                   =     65117
  KEY_dead_longsolidusoverlay     =     65171
  KEY_dead_lowline                =     65168
  KEY_dead_macron                 =     65108
  KEY_dead_o                      =     65158
  KEY_dead_ogonek                 =     65116
  KEY_dead_perispomeni            =     65107
  KEY_dead_psili                  =     65124
  KEY_dead_schwa                  =     65162
  KEY_dead_semivoiced_sound       =     65119
  KEY_dead_small_schwa            =     65162
  KEY_dead_stroke                 =     65123
  KEY_dead_tilde                  =     65107
  KEY_dead_u                      =     65160
  KEY_dead_voiced_sound           =     65118
  KEY_decimalpoint                =      2749
  KEY_degree                      =       176
  KEY_diaeresis                   =       168
  KEY_diamond                     =      2797
  KEY_digitspace                  =      2725
  KEY_dintegral                   =  16785964
  KEY_division                    =       247
  KEY_dollar                      =        36
  KEY_doubbaselinedot             =      2735
  KEY_doubleacute                 =       445
  KEY_doubledagger                =      2802
  KEY_doublelowquotemark          =      2814
  KEY_downarrow                   =      2302
  KEY_downcaret                   =      2984
  KEY_downshoe                    =      3030
  KEY_downstile                   =      3012
  KEY_downtack                    =      3010
  KEY_dstroke                     =       496
  KEY_e                           =       101
  KEY_eabovedot                   =      1004
  KEY_eacute                      =       233
  KEY_ebelowdot                   =  16785081
  KEY_ecaron                      =       492
  KEY_ecircumflex                 =       234
  KEY_ecircumflexacute            =  16785087
  KEY_ecircumflexbelowdot         =  16785095
  KEY_ecircumflexgrave            =  16785089
  KEY_ecircumflexhook             =  16785091
  KEY_ecircumflextilde            =  16785093
  KEY_ediaeresis                  =       235
  KEY_egrave                      =       232
  KEY_ehook                       =  16785083
  KEY_eightsubscript              =  16785544
  KEY_eightsuperior               =  16785528
  KEY_elementof                   =  16785928
  KEY_ellipsis                    =      2734
  KEY_em3space                    =      2723
  KEY_em4space                    =      2724
  KEY_emacron                     =       954
  KEY_emdash                      =      2729
  KEY_emfilledcircle              =      2782
  KEY_emfilledrect                =      2783
  KEY_emopencircle                =      2766
  KEY_emopenrectangle             =      2767
  KEY_emptyset                    =  16785925
  KEY_emspace                     =      2721
  KEY_endash                      =      2730
  KEY_enfilledcircbullet          =      2790
  KEY_enfilledsqbullet            =      2791
  KEY_eng                         =       959
  KEY_enopencircbullet            =      2784
  KEY_enopensquarebullet          =      2785
  KEY_enspace                     =      2722
  KEY_eogonek                     =       490
  KEY_equal                       =        61
  KEY_eth                         =       240
  KEY_etilde                      =  16785085
  KEY_exclam                      =        33
  KEY_exclamdown                  =       161
  KEY_ezh                         =  16777874
  KEY_f                           =       102
  KEY_fabovedot                   =  16784927
  KEY_femalesymbol                =      2808
  KEY_ff                          =      2531
  KEY_figdash                     =      2747
  KEY_filledlefttribullet         =      2780
  KEY_filledrectbullet            =      2779
  KEY_filledrighttribullet        =      2781
  KEY_filledtribulletdown         =      2793
  KEY_filledtribulletup           =      2792
  KEY_fiveeighths                 =      2757
  KEY_fivesixths                  =      2743
  KEY_fivesubscript               =  16785541
  KEY_fivesuperior                =  16785525
  KEY_fourfifths                  =      2741
  KEY_foursubscript               =  16785540
  KEY_foursuperior                =  16785524
  KEY_fourthroot                  =  16785948
  KEY_function                    =      2294
  KEY_g                           =       103
  KEY_gabovedot                   =       757
  KEY_gbreve                      =       699
  KEY_gcaron                      =  16777703
  KEY_gcedilla                    =       955
  KEY_gcircumflex                 =       760
  KEY_grave                       =        96
  KEY_greater                     =        62
  KEY_greaterthanequal            =      2238
  KEY_guillemetleft               =       171
  KEY_guillemetright              =       187
  KEY_guillemotleft               =       171
  KEY_guillemotright              =       187
  KEY_h                           =       104
  KEY_hairspace                   =      2728
  KEY_hcircumflex                 =       694
  KEY_heart                       =      2798
  KEY_hebrew_aleph                =      3296
  KEY_hebrew_ayin                 =      3314
  KEY_hebrew_bet                  =      3297
  KEY_hebrew_beth                 =      3297
  KEY_hebrew_chet                 =      3303
  KEY_hebrew_dalet                =      3299
  KEY_hebrew_daleth               =      3299
  KEY_hebrew_doublelowline        =      3295
  KEY_hebrew_finalkaph            =      3306
  KEY_hebrew_finalmem             =      3309
  KEY_hebrew_finalnun             =      3311
  KEY_hebrew_finalpe              =      3315
  KEY_hebrew_finalzade            =      3317
  KEY_hebrew_finalzadi            =      3317
  KEY_hebrew_gimel                =      3298
  KEY_hebrew_gimmel               =      3298
  KEY_hebrew_he                   =      3300
  KEY_hebrew_het                  =      3303
  KEY_hebrew_kaph                 =      3307
  KEY_hebrew_kuf                  =      3319
  KEY_hebrew_lamed                =      3308
  KEY_hebrew_mem                  =      3310
  KEY_hebrew_nun                  =      3312
  KEY_hebrew_pe                   =      3316
  KEY_hebrew_qoph                 =      3319
  KEY_hebrew_resh                 =      3320
  KEY_hebrew_samech               =      3313
  KEY_hebrew_samekh               =      3313
  KEY_hebrew_shin                 =      3321
  KEY_hebrew_taf                  =      3322
  KEY_hebrew_taw                  =      3322
  KEY_hebrew_tet                  =      3304
  KEY_hebrew_teth                 =      3304
  KEY_hebrew_waw                  =      3301
  KEY_hebrew_yod                  =      3305
  KEY_hebrew_zade                 =      3318
  KEY_hebrew_zadi                 =      3318
  KEY_hebrew_zain                 =      3302
  KEY_hebrew_zayin                =      3302
  KEY_hexagram                    =      2778
  KEY_horizconnector              =      2211
  KEY_horizlinescan1              =      2543
  KEY_horizlinescan3              =      2544
  KEY_horizlinescan5              =      2545
  KEY_horizlinescan7              =      2546
  KEY_horizlinescan9              =      2547
  KEY_hstroke                     =       689
  KEY_ht                          =      2530
  KEY_hyphen                      =       173
  KEY_i                           =       105
  KEY_iTouch                      = 269025120
  KEY_iacute                      =       237
  KEY_ibelowdot                   =  16785099
  KEY_ibreve                      =  16777517
  KEY_icircumflex                 =       238
  KEY_identical                   =      2255
  KEY_idiaeresis                  =       239
  KEY_idotless                    =       697
  KEY_ifonlyif                    =      2253
  KEY_igrave                      =       236
  KEY_ihook                       =  16785097
  KEY_imacron                     =      1007
  KEY_implies                     =      2254
  KEY_includedin                  =      2266
  KEY_includes                    =      2267
  KEY_infinity                    =      2242
  KEY_integral                    =      2239
  KEY_intersection                =      2268
  KEY_iogonek                     =       999
  KEY_itilde                      =       949
  KEY_j                           =       106
  KEY_jcircumflex                 =       700
  KEY_jot                         =      3018
  KEY_k                           =       107
  KEY_kana_A                      =      1201
  KEY_kana_CHI                    =      1217
  KEY_kana_E                      =      1204
  KEY_kana_FU                     =      1228
  KEY_kana_HA                     =      1226
  KEY_kana_HE                     =      1229
  KEY_kana_HI                     =      1227
  KEY_kana_HO                     =      1230
  KEY_kana_HU                     =      1228
  KEY_kana_I                      =      1202
  KEY_kana_KA                     =      1206
  KEY_kana_KE                     =      1209
  KEY_kana_KI                     =      1207
  KEY_kana_KO                     =      1210
  KEY_kana_KU                     =      1208
  KEY_kana_MA                     =      1231
  KEY_kana_ME                     =      1234
  KEY_kana_MI                     =      1232
  KEY_kana_MO                     =      1235
  KEY_kana_MU                     =      1233
  KEY_kana_N                      =      1245
  KEY_kana_NA                     =      1221
  KEY_kana_NE                     =      1224
  KEY_kana_NI                     =      1222
  KEY_kana_NO                     =      1225
  KEY_kana_NU                     =      1223
  KEY_kana_O                      =      1205
  KEY_kana_RA                     =      1239
  KEY_kana_RE                     =      1242
  KEY_kana_RI                     =      1240
  KEY_kana_RO                     =      1243
  KEY_kana_RU                     =      1241
  KEY_kana_SA                     =      1211
  KEY_kana_SE                     =      1214
  KEY_kana_SHI                    =      1212
  KEY_kana_SO                     =      1215
  KEY_kana_SU                     =      1213
  KEY_kana_TA                     =      1216
  KEY_kana_TE                     =      1219
  KEY_kana_TI                     =      1217
  KEY_kana_TO                     =      1220
  KEY_kana_TSU                    =      1218
  KEY_kana_TU                     =      1218
  KEY_kana_U                      =      1203
  KEY_kana_WA                     =      1244
  KEY_kana_WO                     =      1190
  KEY_kana_YA                     =      1236
  KEY_kana_YO                     =      1238
  KEY_kana_YU                     =      1237
  KEY_kana_a                      =      1191
  KEY_kana_closingbracket         =      1187
  KEY_kana_comma                  =      1188
  KEY_kana_conjunctive            =      1189
  KEY_kana_e                      =      1194
  KEY_kana_fullstop               =      1185
  KEY_kana_i                      =      1192
  KEY_kana_middledot              =      1189
  KEY_kana_o                      =      1195
  KEY_kana_openingbracket         =      1186
  KEY_kana_switch                 =     65406
  KEY_kana_tsu                    =      1199
  KEY_kana_tu                     =      1199
  KEY_kana_u                      =      1193
  KEY_kana_ya                     =      1196
  KEY_kana_yo                     =      1198
  KEY_kana_yu                     =      1197
  KEY_kappa                       =       930
  KEY_kcedilla                    =      1011
  KEY_kra                         =       930
  KEY_l                           =       108
  KEY_lacute                      =       485
  KEY_latincross                  =      2777
  KEY_lbelowdot                   =  16784951
  KEY_lcaron                      =       437
  KEY_lcedilla                    =       950
  KEY_leftanglebracket            =      2748
  KEY_leftarrow                   =      2299
  KEY_leftcaret                   =      2979
  KEY_leftdoublequotemark         =      2770
  KEY_leftmiddlecurlybrace        =      2223
  KEY_leftopentriangle            =      2764
  KEY_leftpointer                 =      2794
  KEY_leftradical                 =      2209
  KEY_leftshoe                    =      3034
  KEY_leftsinglequotemark         =      2768
  KEY_leftt                       =      2548
  KEY_lefttack                    =      3036
  KEY_less                        =        60
  KEY_lessthanequal               =      2236
  KEY_lf                          =      2533
  KEY_logicaland                  =      2270
  KEY_logicalor                   =      2271
  KEY_lowleftcorner               =      2541
  KEY_lowrightcorner              =      2538
  KEY_lstroke                     =       435
  KEY_m                           =       109
  KEY_mabovedot                   =  16784961
  KEY_macron                      =       175
  KEY_malesymbol                  =      2807
  KEY_maltesecross                =      2800
  KEY_marker                      =      2751
  KEY_masculine                   =       186
  KEY_minus                       =        45
  KEY_minutes                     =      2774
  KEY_mu                          =       181
  KEY_multiply                    =       215
  KEY_musicalflat                 =      2806
  KEY_musicalsharp                =      2805
  KEY_n                           =       110
  KEY_nabla                       =      2245
  KEY_nacute                      =       497
  KEY_ncaron                      =       498
  KEY_ncedilla                    =      1009
  KEY_ninesubscript               =  16785545
  KEY_ninesuperior                =  16785529
  KEY_nl                          =      2536
  KEY_nobreakspace                =       160
  KEY_notapproxeq                 =  16785991
  KEY_notelementof                =  16785929
  KEY_notequal                    =      2237
  KEY_notidentical                =  16786018
  KEY_notsign                     =       172
  KEY_ntilde                      =       241
  KEY_numbersign                  =        35
  KEY_numerosign                  =      1712
  KEY_o                           =       111
  KEY_oacute                      =       243
  KEY_obarred                     =  16777845
  KEY_obelowdot                   =  16785101
  KEY_ocaron                      =  16777682
  KEY_ocircumflex                 =       244
  KEY_ocircumflexacute            =  16785105
  KEY_ocircumflexbelowdot         =  16785113
  KEY_ocircumflexgrave            =  16785107
  KEY_ocircumflexhook             =  16785109
  KEY_ocircumflextilde            =  16785111
  KEY_odiaeresis                  =       246
  KEY_odoubleacute                =       501
  KEY_oe                          =      5053
  KEY_ogonek                      =       434
  KEY_ograve                      =       242
  KEY_ohook                       =  16785103
  KEY_ohorn                       =  16777633
  KEY_ohornacute                  =  16785115
  KEY_ohornbelowdot               =  16785123
  KEY_ohorngrave                  =  16785117
  KEY_ohornhook                   =  16785119
  KEY_ohorntilde                  =  16785121
  KEY_omacron                     =      1010
  KEY_oneeighth                   =      2755
  KEY_onefifth                    =      2738
  KEY_onehalf                     =       189
  KEY_onequarter                  =       188
  KEY_onesixth                    =      2742
  KEY_onesubscript                =  16785537
  KEY_onesuperior                 =       185
  KEY_onethird                    =      2736
  KEY_ooblique                    =       248
  KEY_openrectbullet              =      2786
  KEY_openstar                    =      2789
  KEY_opentribulletdown           =      2788
  KEY_opentribulletup             =      2787
  KEY_ordfeminine                 =       170
  KEY_ordmasculine                =       186
  KEY_oslash                      =       248
  KEY_otilde                      =       245
  KEY_overbar                     =      3008
  KEY_overline                    =      1150
  KEY_p                           =       112
  KEY_pabovedot                   =  16784983
  KEY_paragraph                   =       182
  KEY_parenleft                   =        40
  KEY_parenright                  =        41
  KEY_partdifferential            =  16785922
  KEY_partialderivative           =      2287
  KEY_percent                     =        37
  KEY_period                      =        46
  KEY_periodcentered              =       183
  KEY_permille                    =      2773
  KEY_phonographcopyright         =      2811
  KEY_plus                        =        43
  KEY_plusminus                   =       177
  KEY_prescription                =      2772
  KEY_prolongedsound              =      1200
  KEY_punctspace                  =      2726
  KEY_q                           =       113
  KEY_quad                        =      3020
  KEY_question                    =        63
  KEY_questiondown                =       191
  KEY_quotedbl                    =        34
  KEY_quoteleft                   =        96
  KEY_quoteright                  =        39
  KEY_r                           =       114
  KEY_racute                      =       480
  KEY_radical                     =      2262
  KEY_rcaron                      =       504
  KEY_rcedilla                    =       947
  KEY_registered                  =       174
  KEY_rightanglebracket           =      2750
  KEY_rightarrow                  =      2301
  KEY_rightcaret                  =      2982
  KEY_rightdoublequotemark        =      2771
  KEY_rightmiddlecurlybrace       =      2224
  KEY_rightmiddlesummation        =      2231
  KEY_rightopentriangle           =      2765
  KEY_rightpointer                =      2795
  KEY_rightshoe                   =      3032
  KEY_rightsinglequotemark        =      2769
  KEY_rightt                      =      2549
  KEY_righttack                   =      3068
  KEY_s                           =       115
  KEY_sabovedot                   =  16784993
  KEY_sacute                      =       438
  KEY_scaron                      =       441
  KEY_scedilla                    =       442
  KEY_schwa                       =  16777817
  KEY_scircumflex                 =       766
  KEY_script_switch               =     65406
  KEY_seconds                     =      2775
  KEY_section                     =       167
  KEY_semicolon                   =        59
  KEY_semivoicedsound             =      1247
  KEY_seveneighths                =      2758
  KEY_sevensubscript              =  16785543
  KEY_sevensuperior               =  16785527
  KEY_signaturemark               =      2762
  KEY_signifblank                 =      2732
  KEY_similarequal                =      2249
  KEY_singlelowquotemark          =      2813
  KEY_sixsubscript                =  16785542
  KEY_sixsuperior                 =  16785526
  KEY_slash                       =        47
  KEY_soliddiamond                =      2528
  KEY_space                       =        32
  KEY_squareroot                  =  16785946
  KEY_ssharp                      =       223
  KEY_sterling                    =       163
  KEY_stricteq                    =  16786019
  KEY_t                           =       116
  KEY_tabovedot                   =  16785003
  KEY_tcaron                      =       443
  KEY_tcedilla                    =       510
  KEY_telephone                   =      2809
  KEY_telephonerecorder           =      2810
  KEY_therefore                   =      2240
  KEY_thinspace                   =      2727
  KEY_thorn                       =       254
  KEY_threeeighths                =      2756
  KEY_threefifths                 =      2740
  KEY_threequarters               =       190
  KEY_threesubscript              =  16785539
  KEY_threesuperior               =       179
  KEY_tintegral                   =  16785965
  KEY_topintegral                 =      2212
  KEY_topleftparens               =      2219
  KEY_topleftradical              =      2210
  KEY_topleftsqbracket            =      2215
  KEY_topleftsummation            =      2225
  KEY_toprightparens              =      2221
  KEY_toprightsqbracket           =      2217
  KEY_toprightsummation           =      2229
  KEY_topt                        =      2551
  KEY_topvertsummationconnector   =      2227
  KEY_trademark                   =      2761
  KEY_trademarkincircle           =      2763
  KEY_tslash                      =       956
  KEY_twofifths                   =      2739
  KEY_twosubscript                =  16785538
  KEY_twosuperior                 =       178
  KEY_twothirds                   =      2737
  KEY_u                           =       117
  KEY_uacute                      =       250
  KEY_ubelowdot                   =  16785125
  KEY_ubreve                      =       765
  KEY_ucircumflex                 =       251
  KEY_udiaeresis                  =       252
  KEY_udoubleacute                =       507
  KEY_ugrave                      =       249
  KEY_uhook                       =  16785127
  KEY_uhorn                       =  16777648
  KEY_uhornacute                  =  16785129
  KEY_uhornbelowdot               =  16785137
  KEY_uhorngrave                  =  16785131
  KEY_uhornhook                   =  16785133
  KEY_uhorntilde                  =  16785135
  KEY_umacron                     =      1022
  KEY_underbar                    =      3014
  KEY_underscore                  =        95
  KEY_union                       =      2269
  KEY_uogonek                     =      1017
  KEY_uparrow                     =      2300
  KEY_upcaret                     =      2985
  KEY_upleftcorner                =      2540
  KEY_uprightcorner               =      2539
  KEY_upshoe                      =      3011
  KEY_upstile                     =      3027
  KEY_uptack                      =      3022
  KEY_uring                       =       505
  KEY_utilde                      =      1021
  KEY_v                           =       118
  KEY_variation                   =      2241
  KEY_vertbar                     =      2552
  KEY_vertconnector               =      2214
  KEY_voicedsound                 =      1246
  KEY_vt                          =      2537
  KEY_w                           =       119
  KEY_wacute                      =  16785027
  KEY_wcircumflex                 =  16777589
  KEY_wdiaeresis                  =  16785029
  KEY_wgrave                      =  16785025
  KEY_x                           =       120
  KEY_xabovedot                   =  16785035
  KEY_y                           =       121
  KEY_yacute                      =       253
  KEY_ybelowdot                   =  16785141
  KEY_ycircumflex                 =  16777591
  KEY_ydiaeresis                  =       255
  KEY_yen                         =       165
  KEY_ygrave                      =  16785139
  KEY_yhook                       =  16785143
  KEY_ytilde                      =  16785145
  KEY_z                           =       122
  KEY_zabovedot                   =       447
  KEY_zacute                      =       444
  KEY_zcaron                      =       446
  KEY_zerosubscript               =  16785536
  KEY_zerosuperior                =  16785520
  KEY_zstroke                     =  16777654
  MODIFIER_MASK                   = 469769999
  PRIORITY_REDRAW                 =       120

  # Callbacks

  alias ContentDeserializeFunc = Proc(Gdk::ContentDeserializer, Nil)

  alias ContentSerializeFunc = Proc(Gdk::ContentSerializer, Nil)

  alias CursorGetTextureCallback = Proc(Gdk::Cursor, Int32, Float64, Int32, Int32, Int32, Int32, Gdk::Texture)

  # Base class for all errors in this module.
  class GdkError < GLib::Error
  end

  # Enums

  enum AxisUse : UInt32
    Ignore   =  0
    X        =  1
    Y        =  2
    DeltaX   =  3
    DeltaY   =  4
    Pressure =  5
    Xtilt    =  6
    Ytilt    =  7
    Wheel    =  8
    Distance =  9
    Rotation = 10
    Slider   = 11
    Last     = 12

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_axis_use_get_type
    end
  end

  enum CicpRange : UInt32
    Narrow = 0
    Full   = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_cicp_range_get_type
    end
  end

  enum CrossingMode : UInt32
    Normal       = 0
    Grab         = 1
    Ungrab       = 2
    GtkGrab      = 3
    GtkUngrab    = 4
    StateChanged = 5
    TouchBegin   = 6
    TouchEnd     = 7
    DeviceSwitch = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_crossing_mode_get_type
    end
  end

  enum DevicePadFeature : UInt32
    Button = 0
    Ring   = 1
    Strip  = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_device_pad_feature_get_type
    end
  end

  enum DeviceToolType : UInt32
    Unknown  = 0
    Pen      = 1
    Eraser   = 2
    Brush    = 3
    Pencil   = 4
    Airbrush = 5
    Mouse    = 6
    Lens     = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_device_tool_type_get_type
    end
  end

  enum DragCancelReason : UInt32
    NoTarget      = 0
    UserCancelled = 1
    Error         = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_drag_cancel_reason_get_type
    end
  end

  enum EventType : UInt32
    Delete           =  0
    MotionNotify     =  1
    ButtonPress      =  2
    ButtonRelease    =  3
    KeyPress         =  4
    KeyRelease       =  5
    EnterNotify      =  6
    LeaveNotify      =  7
    FocusChange      =  8
    ProximityIn      =  9
    ProximityOut     = 10
    DragEnter        = 11
    DragLeave        = 12
    DragMotion       = 13
    DropStart        = 14
    Scroll           = 15
    GrabBroken       = 16
    TouchBegin       = 17
    TouchUpdate      = 18
    TouchEnd         = 19
    TouchCancel      = 20
    TouchpadSwipe    = 21
    TouchpadPinch    = 22
    PadButtonPress   = 23
    PadButtonRelease = 24
    PadRing          = 25
    PadStrip         = 26
    PadGroupMode     = 27
    TouchpadHold     = 28
    EventLast        = 29

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_event_type_get_type
    end
  end

  enum FullscreenMode : UInt32
    CurrentMonitor = 0
    AllMonitors    = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_fullscreen_mode_get_type
    end
  end

  enum Gravity : UInt32
    NorthWest =  1
    North     =  2
    NorthEast =  3
    West      =  4
    Center    =  5
    East      =  6
    SouthWest =  7
    South     =  8
    SouthEast =  9
    Static    = 10

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_gravity_get_type
    end
  end

  enum InputSource : UInt32
    Mouse       = 0
    Pen         = 1
    Keyboard    = 2
    Touchscreen = 3
    Touchpad    = 4
    Trackpoint  = 5
    TabletPad   = 6

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_input_source_get_type
    end
  end

  enum KeyMatch : UInt32
    None    = 0
    Partial = 1
    Exact   = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_key_match_get_type
    end
  end

  enum MemoryFormat : UInt32
    B8g8r8a8Premultiplied          =  0
    A8r8g8b8Premultiplied          =  1
    R8g8b8a8Premultiplied          =  2
    B8g8r8a8                       =  3
    A8r8g8b8                       =  4
    R8g8b8a8                       =  5
    A8b8g8r8                       =  6
    R8g8b8                         =  7
    B8g8r8                         =  8
    R16g16b16                      =  9
    R16g16b16a16Premultiplied      = 10
    R16g16b16a16                   = 11
    R16g16b16Float                 = 12
    R16g16b16a16FloatPremultiplied = 13
    R16g16b16a16Float              = 14
    R32g32b32Float                 = 15
    R32g32b32a32FloatPremultiplied = 16
    R32g32b32a32Float              = 17
    G8a8Premultiplied              = 18
    G8a8                           = 19
    G8                             = 20
    G16a16Premultiplied            = 21
    G16a16                         = 22
    G16                            = 23
    A8                             = 24
    A16                            = 25
    A16Float                       = 26
    A32Float                       = 27
    A8b8g8r8Premultiplied          = 28
    B8g8r8x8                       = 29
    X8r8g8b8                       = 30
    R8g8b8x8                       = 31
    X8b8g8r8                       = 32
    NFormats                       = 33

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_memory_format_get_type
    end
  end

  enum NotifyType : UInt32
    Ancestor         = 0
    Virtual          = 1
    Inferior         = 2
    Nonlinear        = 3
    NonlinearVirtual = 4
    Unknown          = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_notify_type_get_type
    end
  end

  enum ScrollDirection : UInt32
    Up     = 0
    Down   = 1
    Left   = 2
    Right  = 3
    Smooth = 4

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_scroll_direction_get_type
    end
  end

  enum ScrollUnit : UInt32
    Wheel   = 0
    Surface = 1

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_scroll_unit_get_type
    end
  end

  enum SubpixelLayout : UInt32
    Unknown       = 0
    None          = 1
    HorizontalRgb = 2
    HorizontalBgr = 3
    VerticalRgb   = 4
    VerticalBgr   = 5

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_subpixel_layout_get_type
    end
  end

  enum SurfaceEdge : UInt32
    NorthWest = 0
    North     = 1
    NorthEast = 2
    West      = 3
    East      = 4
    SouthWest = 5
    South     = 6
    SouthEast = 7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_surface_edge_get_type
    end
  end

  enum TitlebarGesture : UInt32
    DoubleClick = 1
    RightClick  = 2
    MiddleClick = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_titlebar_gesture_get_type
    end
  end

  enum TouchpadGesturePhase : UInt32
    Begin  = 0
    Update = 1
    End    = 2
    Cancel = 3

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_touchpad_gesture_phase_get_type
    end
  end

  # Flags

  @[Flags]
  enum AnchorHints : UInt32
    FlipX   =  1
    FlipY   =  2
    SlideX  =  4
    SlideY  =  8
    ResizeX = 16
    ResizeY = 32
    Flip    =  3
    Slide   = 12
    Resize  = 48

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_anchor_hints_get_type
    end
  end

  @[Flags]
  enum AxisFlags : UInt32
    X        =    2
    Y        =    4
    DeltaX   =    8
    DeltaY   =   16
    Pressure =   32
    Xtilt    =   64
    Ytilt    =  128
    Wheel    =  256
    Distance =  512
    Rotation = 1024
    Slider   = 2048

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_axis_flags_get_type
    end
  end

  @[Flags]
  enum DragAction : UInt32
    Copy = 1
    Move = 2
    Link = 4
    Ask  = 8

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_drag_action_get_type
    end
  end

  @[Flags]
  enum FrameClockPhase : UInt32
    FlushEvents  =  1
    BeforePaint  =  2
    Update       =  4
    Layout       =  8
    Paint        = 16
    ResumeEvents = 32
    AfterPaint   = 64

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_frame_clock_phase_get_type
    end
  end

  @[Flags]
  enum GLAPI : UInt32
    Gl   = 1
    Gles = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_gl_api_get_type
    end
  end

  @[Flags]
  enum ModifierType : UInt32
    NoModifierMask =         0
    ShiftMask      =         1
    LockMask       =         2
    ControlMask    =         4
    AltMask        =         8
    Button1Mask    =       256
    Button2Mask    =       512
    Button3Mask    =      1024
    Button4Mask    =      2048
    Button5Mask    =      4096
    SuperMask      =  67108864
    HyperMask      = 134217728
    MetaMask       = 268435456

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_modifier_type_get_type
    end
  end

  @[Flags]
  enum PaintableFlags : UInt32
    Size     = 1
    Contents = 2

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_paintable_flags_get_type
    end
  end

  @[Flags]
  enum SeatCapabilities : UInt32
    Pointer      =  1
    Touch        =  2
    TabletStylus =  4
    Keyboard     =  8
    TabletPad    = 16
    AllPointing  =  7

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_seat_capabilities_get_type
    end
  end

  @[Flags]
  enum ToplevelState : UInt32
    Minimized       =     1
    Maximized       =     2
    Sticky          =     4
    Fullscreen      =     8
    Above           =    16
    Below           =    32
    Focused         =    64
    Tiled           =   128
    TopTiled        =   256
    TopResizable    =   512
    RightTiled      =  1024
    RightResizable  =  2048
    BottomTiled     =  4096
    BottomResizable =  8192
    LeftTiled       = 16384
    LeftResizable   = 32768
    Suspended       = 65536

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      LibGdk.gdk_toplevel_state_get_type
    end
  end

  @[Deprecated]
  def self.cairo_draw_from_gl(cr : Cairo::Context, surface : Gdk::Surface, source : Int32, source_type : Int32, buffer_scale : Int32, x : Int32, y : Int32, width : Int32, height : Int32) : Nil
    # gdk_cairo_draw_from_gl: (None)
    # @cr:
    # @surface:
    # @source:
    # @source_type:
    # @buffer_scale:
    # @x:
    # @y:
    # @width:
    # @height:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_cairo_draw_from_gl(cr, surface, source, source_type, buffer_scale, x, y, width, height)

    # Return value handling
  end

  def self.cairo_rectangle(cr : Cairo::Context, rectangle : Gdk::Rectangle) : Nil
    # gdk_cairo_rectangle: (None)
    # @cr:
    # @rectangle:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_cairo_rectangle(cr, rectangle)

    # Return value handling
  end

  def self.cairo_region(cr : Cairo::Context, region : Cairo::Region) : Nil
    # gdk_cairo_region: (None)
    # @cr:
    # @region:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_cairo_region(cr, region)

    # Return value handling
  end

  def self.cairo_region_create_from_surface(surface : Cairo::Surface) : Cairo::Region
    # gdk_cairo_region_create_from_surface: (None)
    # @surface:
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_cairo_region_create_from_surface(surface)

    # Return value handling
    Cairo::Region.new(_retval, GICrystal::Transfer::Full)
  end

  def self.cairo_set_source_pixbuf(cr : Cairo::Context, pixbuf : GdkPixbuf::Pixbuf, pixbuf_x : Float64, pixbuf_y : Float64) : Nil
    # gdk_cairo_set_source_pixbuf: (None)
    # @cr:
    # @pixbuf:
    # @pixbuf_x:
    # @pixbuf_y:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_cairo_set_source_pixbuf(cr, pixbuf, pixbuf_x, pixbuf_y)

    # Return value handling
  end

  def self.cairo_set_source_rgba(cr : Cairo::Context, rgba : Gdk::RGBA) : Nil
    # gdk_cairo_set_source_rgba: (None)
    # @cr:
    # @rgba:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_cairo_set_source_rgba(cr, rgba)

    # Return value handling
  end

  def self.color_state_get_oklab : Gdk::ColorState
    # gdk_color_state_get_oklab: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_oklab

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.color_state_get_oklch : Gdk::ColorState
    # gdk_color_state_get_oklch: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_oklch

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.color_state_get_rec2100_linear : Gdk::ColorState
    # gdk_color_state_get_rec2100_linear: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_rec2100_linear

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.color_state_get_rec2100_pq : Gdk::ColorState
    # gdk_color_state_get_rec2100_pq: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_rec2100_pq

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.color_state_get_srgb : Gdk::ColorState
    # gdk_color_state_get_srgb: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_srgb

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.color_state_get_srgb_linear : Gdk::ColorState
    # gdk_color_state_get_srgb_linear: (None)
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_color_state_get_srgb_linear

    # Return value handling
    Gdk::ColorState.new(_retval, GICrystal::Transfer::Full)
  end

  def self.content_deserialize_async(stream : Gio::InputStream, mime_type : ::String, type : UInt64, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # gdk_content_deserialize_async: (None)
    # @stream:
    # @mime_type:
    # @type:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end
    # Generator::AsyncPatternArgPlan
    user_data = ::Box.box(callback)
    callback = if callback.nil?
                 Pointer(Void).null
               else
                 ->(gobject : Void*, result : Void*, box : Void*) {
                   unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                   GICrystal::ClosureDataManager.deregister(box)
                   unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                 }.pointer
               end

    # C call
    LibGdk.gdk_content_deserialize_async(stream, mime_type, type, io_priority, cancellable, callback, user_data)

    # Return value handling
  end

  def content_deserialize_finish(result : Gio::AsyncResult) : GObject::Value
    # gdk_content_deserialize_finish: (Throws)
    # @result:
    # @value: (out) (caller-allocates)
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # Generator::CallerAllocatesPlan
    value = GObject::Value.new
    # C call
    _retval = LibGdk.gdk_content_deserialize_finish(result, value, pointerof(_error))

    # Error check
    Gdk.raise_gerror(_error) unless _error.null?

    # Return value handling
    value
  end

  def self.content_formats_parse(string : ::String) : Gdk::ContentFormats?
    # gdk_content_formats_parse: (None)
    # @string:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGdk.gdk_content_formats_parse(string)

    # Return value handling
    Gdk::ContentFormats.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.content_register_deserializer(mime_type : ::String, type : UInt64, deserialize : Gdk::ContentDeserializeFunc) : Nil
    # gdk_content_register_deserializer: (None)
    # @mime_type:
    # @type:
    # @deserialize:
    # @data: (nullable)
    # @notify:
    # Returns: (transfer none)

    # Generator::CallbackArgPlan
    if deserialize
      _box = ::Box.box(deserialize)
      deserialize = ->(lib_deserializer : Pointer(Void)) {
        ::Box(Proc(Nil)).unbox(lib_deserializer).call
      }.pointer
      data = GICrystal::ClosureDataManager.register(_box)
      notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
    else
      deserialize = data = notify = Pointer(Void).null
    end

    # C call
    LibGdk.gdk_content_register_deserializer(mime_type, type, deserialize, data, notify)

    # Return value handling
  end

  def self.content_register_serializer(type : UInt64, mime_type : ::String, serialize : Gdk::ContentSerializeFunc) : Nil
    # gdk_content_register_serializer: (None)
    # @type:
    # @mime_type:
    # @serialize:
    # @data: (nullable)
    # @notify:
    # Returns: (transfer none)

    # Generator::CallbackArgPlan
    if serialize
      _box = ::Box.box(serialize)
      serialize = ->(lib_serializer : Pointer(Void)) {
        ::Box(Proc(Nil)).unbox(lib_serializer).call
      }.pointer
      data = GICrystal::ClosureDataManager.register(_box)
      notify = ->GICrystal::ClosureDataManager.deregister(Pointer(Void)).pointer
    else
      serialize = data = notify = Pointer(Void).null
    end

    # C call
    LibGdk.gdk_content_register_serializer(type, mime_type, serialize, data, notify)

    # Return value handling
  end

  def self.content_serialize_async(stream : Gio::OutputStream, mime_type : ::String, value : _, io_priority : Int32, cancellable : Gio::Cancellable?, &callback : Gio::AsyncReadyCallback) : Nil
    # gdk_content_serialize_async: (None)
    # @stream:
    # @mime_type:
    # @value:
    # @io_priority:
    # @cancellable: (nullable)
    # @callback: (nullable)
    # @user_data: (nullable)
    # Returns: (transfer none)

    # Generator::HandmadeArgPlan
    value = if !value.is_a?(GObject::Value)
              GObject::Value.new(value).to_unsafe
            else
              value.to_unsafe
            end
    # Generator::NullableArrayPlan
    cancellable = if cancellable.nil?
                    Pointer(Void).null
                  else
                    cancellable.to_unsafe
                  end
    # Generator::AsyncPatternArgPlan
    user_data = ::Box.box(callback)
    callback = if callback.nil?
                 Pointer(Void).null
               else
                 ->(gobject : Void*, result : Void*, box : Void*) {
                   unboxed_callback = ::Box(Gio::AsyncReadyCallback).unbox(box)
                   GICrystal::ClosureDataManager.deregister(box)
                   unboxed_callback.call(typeof(self).new(gobject, :none), Gio::AbstractAsyncResult.new(result, :none))
                 }.pointer
               end

    # C call
    LibGdk.gdk_content_serialize_async(stream, mime_type, value, io_priority, cancellable, callback, user_data)

    # Return value handling
  end

  def content_serialize_finish(result : Gio::AsyncResult) : Bool
    # gdk_content_serialize_finish: (Throws)
    # @result:
    # Returns: (transfer none)

    _error = Pointer(LibGLib::Error).null

    # C call
    _retval = LibGdk.gdk_content_serialize_finish(result, pointerof(_error))

    # Error check
    Gdk.raise_gerror(_error) unless _error.null?

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.dmabuf_error_quark : UInt32
    # gdk_dmabuf_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_dmabuf_error_quark

    # Return value handling
    _retval
  end

  def self.drag_action_is_unique(action : Gdk::DragAction) : Bool
    # gdk_drag_action_is_unique: (None)
    # @action:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_drag_action_is_unique(action)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.events_get_angle(event1 : Gdk::Event, event2 : Gdk::Event, angle : Float64) : Bool
    # gdk_events_get_angle: (None)
    # @event1:
    # @event2:
    # @angle: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_events_get_angle(event1, event2, angle)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.events_get_center(event1 : Gdk::Event, event2 : Gdk::Event, x : Float64, y : Float64) : Bool
    # gdk_events_get_center: (None)
    # @event1:
    # @event2:
    # @x: (out) (transfer full)
    # @y: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_events_get_center(event1, event2, x, y)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.events_get_distance(event1 : Gdk::Event, event2 : Gdk::Event, distance : Float64) : Bool
    # gdk_events_get_distance: (None)
    # @event1:
    # @event2:
    # @distance: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_events_get_distance(event1, event2, distance)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.gl_error_quark : UInt32
    # gdk_gl_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_gl_error_quark

    # Return value handling
    _retval
  end

  def self.intern_mime_type(string : ::String) : ::String?
    # gdk_intern_mime_type: (None)
    # @string:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGdk.gdk_intern_mime_type(string)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.keyval_convert_case(symbol : UInt32, lower : UInt32, upper : UInt32) : Nil
    # gdk_keyval_convert_case: (None)
    # @symbol:
    # @lower: (out) (transfer full)
    # @upper: (out) (transfer full)
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_keyval_convert_case(symbol, lower, upper)

    # Return value handling
  end

  def self.keyval_from_name(keyval_name : ::String) : UInt32
    # gdk_keyval_from_name: (None)
    # @keyval_name:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_from_name(keyval_name)

    # Return value handling
    _retval
  end

  def self.keyval_is_lower(keyval : UInt32) : Bool
    # gdk_keyval_is_lower: (None)
    # @keyval:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_is_lower(keyval)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.keyval_is_upper(keyval : UInt32) : Bool
    # gdk_keyval_is_upper: (None)
    # @keyval:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_is_upper(keyval)

    # Return value handling
    GICrystal.to_bool(_retval)
  end

  def self.keyval_name(keyval : UInt32) : ::String?
    # gdk_keyval_name: (None)
    # @keyval:
    # Returns: (transfer none) (nullable)

    # C call
    _retval = LibGdk.gdk_keyval_name(keyval)

    # Return value handling
    ::String.new(_retval) unless _retval.null?
  end

  def self.keyval_to_lower(keyval : UInt32) : UInt32
    # gdk_keyval_to_lower: (None)
    # @keyval:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_to_lower(keyval)

    # Return value handling
    _retval
  end

  def self.keyval_to_unicode(keyval : UInt32) : UInt32
    # gdk_keyval_to_unicode: (None)
    # @keyval:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_to_unicode(keyval)

    # Return value handling
    _retval
  end

  def self.keyval_to_upper(keyval : UInt32) : UInt32
    # gdk_keyval_to_upper: (None)
    # @keyval:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_keyval_to_upper(keyval)

    # Return value handling
    _retval
  end

  def self.paintable_new_empty(intrinsic_width : Int32, intrinsic_height : Int32) : Gdk::Paintable
    # gdk_paintable_new_empty: (None)
    # @intrinsic_width:
    # @intrinsic_height:
    # Returns: (transfer full)

    # C call
    _retval = LibGdk.gdk_paintable_new_empty(intrinsic_width, intrinsic_height)

    # Return value handling
    Gdk::AbstractPaintable.new(_retval, GICrystal::Transfer::Full)
  end

  @[Deprecated]
  def self.pixbuf_get_from_surface(surface : Cairo::Surface, src_x : Int32, src_y : Int32, width : Int32, height : Int32) : GdkPixbuf::Pixbuf?
    # gdk_pixbuf_get_from_surface: (None)
    # @surface:
    # @src_x:
    # @src_y:
    # @width:
    # @height:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGdk.gdk_pixbuf_get_from_surface(surface, src_x, src_y, width, height)

    # Return value handling
    GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  @[Deprecated]
  def self.pixbuf_get_from_texture(texture : Gdk::Texture) : GdkPixbuf::Pixbuf?
    # gdk_pixbuf_get_from_texture: (None)
    # @texture:
    # Returns: (transfer full) (nullable)

    # C call
    _retval = LibGdk.gdk_pixbuf_get_from_texture(texture)

    # Return value handling
    GdkPixbuf::Pixbuf.new(_retval, GICrystal::Transfer::Full) unless _retval.null?
  end

  def self.allowed_backends=(backends : ::String) : Nil
    # gdk_set_allowed_backends: (None)
    # @backends:
    # Returns: (transfer none)

    # C call
    LibGdk.gdk_set_allowed_backends(backends)

    # Return value handling
  end

  def self.texture_error_quark : UInt32
    # gdk_texture_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_texture_error_quark

    # Return value handling
    _retval
  end

  def self.unicode_to_keyval(wc : UInt32) : UInt32
    # gdk_unicode_to_keyval: (None)
    # @wc:
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_unicode_to_keyval(wc)

    # Return value handling
    _retval
  end

  def self.vulkan_error_quark : UInt32
    # gdk_vulkan_error_quark: (None)
    # Returns: (transfer none)

    # C call
    _retval = LibGdk.gdk_vulkan_error_quark

    # Return value handling
    _retval
  end

  # Errors

  class DmabufError < GdkError
    class NotAvailable < DmabufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-dmabuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedFormat < DmabufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-dmabuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CreationFailed < DmabufError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-dmabuf-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class GLError < GdkError
    class NotAvailable < GLError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-gl-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedFormat < GLError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-gl-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedProfile < GLError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-gl-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CompilationFailed < GLError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-gl-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class LinkFailed < GLError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-gl-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 4, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class TextureError < GdkError
    class TooLarge < TextureError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-texture-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class CorruptImage < TextureError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-texture-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedContent < TextureError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-texture-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 2, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class UnsupportedFormat < TextureError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-texture-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 3, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  class VulkanError < GdkError
    class Unsupported < VulkanError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-vulkan-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 0, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end

    class NotAvailable < VulkanError
      def initialize(message : String = "")
        domain_quark = LibGLib.g_quark_from_static_string("gdk-vulkan-error-quark")
        @pointer = LibGLib.g_error_new_literal(domain_quark, 1, message)
      end

      def initialize(pointer : Pointer(LibGLib::Error), transfer : GICrystal::Transfer)
        super
      end
    end
  end

  # :nodoc:
  def gerror_to_crystal(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error
    gerror_to_crystal?(error, transfer) || GLib::Error.new(error, transfer)
  end

  # :nodoc:
  def gerror_to_crystal?(error : Pointer(LibGLib::Error), transfer : GICrystal::Transfer) : GLib::Error?
    error_domain = error.value.domain
    error_code = error.value.code

    if error_domain == LibGLib.g_quark_try_string("gdk-dmabuf-error-quark")
      return DmabufError::NotAvailable.new(error, transfer) if error_code == 0
      return DmabufError::UnsupportedFormat.new(error, transfer) if error_code == 1
      return DmabufError::CreationFailed.new(error, transfer) if error_code == 2
    end

    if error_domain == LibGLib.g_quark_try_string("gdk-gl-error-quark")
      return GLError::NotAvailable.new(error, transfer) if error_code == 0
      return GLError::UnsupportedFormat.new(error, transfer) if error_code == 1
      return GLError::UnsupportedProfile.new(error, transfer) if error_code == 2
      return GLError::CompilationFailed.new(error, transfer) if error_code == 3
      return GLError::LinkFailed.new(error, transfer) if error_code == 4
    end

    if error_domain == LibGLib.g_quark_try_string("gdk-texture-error-quark")
      return TextureError::TooLarge.new(error, transfer) if error_code == 0
      return TextureError::CorruptImage.new(error, transfer) if error_code == 1
      return TextureError::UnsupportedContent.new(error, transfer) if error_code == 2
      return TextureError::UnsupportedFormat.new(error, transfer) if error_code == 3
    end

    if error_domain == LibGLib.g_quark_try_string("gdk-vulkan-error-quark")
      return VulkanError::Unsupported.new(error, transfer) if error_code == 0
      return VulkanError::NotAvailable.new(error, transfer) if error_code == 1
    end

    Cairo.gerror_to_crystal?(error, transfer)
    PangoCairo.gerror_to_crystal?(error, transfer)
    Pango.gerror_to_crystal?(error, transfer)
    Gio.gerror_to_crystal?(error, transfer)
    GdkPixbuf.gerror_to_crystal?(error, transfer)
  end

  # :nodoc:
  def raise_gerror(error : Pointer(LibGLib::Error))
    raise gerror_to_crystal(error, :full)
  end

  extend self
end

require "../../../../gtk4/src/bindings/gdk/display.cr"
require "../../../../gtk4/src/bindings/gdk/event.cr"
require "../../../../gtk4/src/bindings/gdk/gi_crystal.cr"
require "../../../../gtk4/src/bindings/gdk/modifier_type.cr"
