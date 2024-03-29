#set document(
  title: "24XS 微型单人冒险：妖精",
  author: ("diceghost.itch.io", "Paro")
)

#include "rules1.typ"

#import "common.typ": *

#show: typ-24xs

#adventure-page(
  [
    *冒险*：你就在原地被一个顽皮的妖精变小了。你必须找到它的巢穴直面它才能恢复原来的体型。

    *选或者编 2 个技能*：格斗，调查，导航，盗窃，欺骗，攀爬，工程，潜行，说服，生物学，草药学，狩猎，丛林生存，民俗知识。
  ],
  random-table(
    [它把你变小是因为……],
    [它想和你玩个游戏],
    [它想吞噬你的灵魂],
    [它想和你做个交易],
    [它想把你喂给它的宠物],
    [它嫉妒你],
    [它不小心施了法],
  ),
  random-table(
    [这个精灵是……],
    [伟大欺骗者·艾可],
    [变形者·维里],
    [混沌君主·鲁姆],
    [阴影之光·蕾姆],
    [清醒之梦·菲尔],
    [无尽虚空·喀伊],
  ),
  random-table(
    [想见到它你必须面对……],
    [怪物与谜题的迷宫],
    [满是无心智仆从的堡垒],
    [一个追踪着你的可怕生物],
    [在你身上作祟的噩梦存在],
    [危险的幻象梦境],
    [一段艰险的攀爬或下降],
  ),
)
