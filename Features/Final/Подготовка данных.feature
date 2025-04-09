﻿#language: ru

@ExportScenarios

Функционал: Подготовка данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: добавление картинок

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование'     | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'         | 'Подпись'                                                   | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8576d03c1f374ecb11f0147beabc1c60' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8576d03c1f374ecb11f0147beabc1c5e' | '000000018' | 'itempicture1.png' | 'ValueStorage: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' | 'itempicture1.png' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN42CAgPe791crhSrVAgA=' | 'False'    | 'False'      | 'False'       |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8576d03c1f374ecb11f0147beabc1c61' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8576d03c1f374ecb11f0147beabc1c5e' | '000000019' | 'itempicture2.png' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN7VlpWBNptgZ3cWtkFRVioBWQkIVASARpFBCUALKDBqZICghkIwkh7O2GLYu0MsgiaiuyKwiyCEii0IiIiBiVHQVBlE32RQSm4tq3n+meuTP3uXd+3HqopOrL+53vfOc976lTD4YSn4535cJguCpcSx+HxuhhUCiEDojXR2CxIArhgddBI8hkDzQFB1LIWDxOa51UMFr8gQpdJyX+Exuo2vzJ0Ckbq33rpJSkoMt1FuYmthISksehE75qCTTCS8YEQF+rWeYuHAmJNTLiU1IiOUURGttKtXfmOhMtCWQmXRugMD1AbT6d9dGmgRGfBZB9QS7MA/SiMgzhkLdwGJViCHfSJaKIrL2gN9U8iA3aBVnZk4N8yXgK3Gg3zIBPgAzQQS4A49NpDA6Bbwj/aJcAXYuHkXDYRwjX1xBuLP4B5ky0ge1lskGYnjYKQUahMDAcXhuth8XqobRgGBQGhUTpItEYBFqPgMIS0DjY5wMOrcameBJsTcw+rwXdGcK9uVwWAYkMCAjQDtDRZrK9kGg8Ho9EYZAYDAJCIDiBDC7ARzA4ql8smIAcMpvK4lKZDJj4HvBg+nMN4fAvW6CzvpplcD6HCQoYkg+wkGhtFPILkEL+imP5s2kfF6eQkSANpIMMLgfCopG/MUok/rlZOv0rmsM15XH/HM2xD2SBSFuQw/Rnk0FTHrSi6rfptqDnf2c6BP86meXN5DI53sw/CMLXn7+GgkXYywYBLpNtz2TSvrBs8wUGw6C1MTB1JyqDwgzgaPxmAmgCnYZwiHI0AqWLQOvbo7EElA4BrbsT+kShPkGJUBJRAC7wd8FYgi7mv4CZFKpn4D+EUsgETyabDkAhptIBLxDJYnh9NEAkEiwYHC7AIIMWJoZwaESbSqUQPFAAWQ9A6yAoHlhdBAbKVQSAAaErFAXvCYKeAN4T/2W+CZPsL6ZfPP+TEihMMmTja9wIIEYPh4KUjkDpoHEIwBOrg/AAddEInC5Z1xODxwIosu4Xa9ZsKiRGgPZbq2KvKGKvcCg9nD5GD0GGPEDgUJBXHiAWjfCARIX10NMHcXhor9/W3cukMdlQhKDY6Iil8GkFcyoHoi7wszTsQL/PVzQq7GMWEgCyWCiGcPJHzijwz8PUvxenf8qjT/MDvEHGn5L/CcZhenIDADZo7AXt/h8mF/KPnOcAvD93HU/BY/V0MCACr0OG2MVhyQh9si7kGN6TAnFN0UfjgD91/bf59a+4/nkS2RtgeIFQ1UX+8WbITAYPZP+GCxbABqBiC7I5hnBPNpMOA1gsGpUMiOFIHoPyWb5fUwHGZcK+Jf4frkMB2VTe31/lqwuw/8H1/iFJ/5wO/9dJQn5TDvL3ovpcFD5F0kwcq4/F+d/KQfF8yr9cED7NZ/67hUW88W+1xR7kcy2BQCg3PpO7B/D6RvM33EeMFZRGhnALLkiH2VDJXH82iIH/HiM2+HvM11h/Mo78g+WRv3vGfxmCGoePDH3pWKCbrz0PyIDYZEMdzQkrVR0JiY2WFibG9vyUoY5wb5lplZrRNoX5nbJ6x9dqLQDSVul3rRTBNHtMS6T68nyKIxDOtSk1+muWTfGdG+Ru2Eup+YzC1Hky7eqv+xc1zE8W37z1o3537E8TzbcWtiEUvzOud19ofKfSdWiMOLy7tEe7NCC57xWyorw99El6XntomKCktDRL8ofHCzJcSYkfRKtUJfZ8ZyZhAouW+OkHRcnvjqCWwJYAy35YVrnqx1XHpSWkIQD8PxdgXnjh0f7Tt1ldR7v/EtuekK2poH2YFfSKw+HIuYeNvLybHZZIJpPlGvA4nNMzfJdq5ar6B1hiXUG7ipGhIUlYeWdX5SriYIPRIjfwKuiSTnU0GJwd77sotWzDKlVs/q6A4VsGT0Da9evXn7kp8fcqGl+Jj5fDnUyzzTqs3ff6fkuLC/P7PR3SZt6MDSq7r/GjQZe6urp16mtvw6Iftz95y60mtzshtv2w66i2xIfGlhaqYkT3j6dOrc4g9Ss4fp9kWWZ06/r1+jm5PFL5VNUGo8xYv8Xo4sLCnlKTzMbg8+fPGydInuadmxxtGRvuKKezsn2Q0jFmdSq3hjsr2jo6hriadQVcErJFMaraNuuvQ6NhFcvto2qw2Lj5uekE5mESyeG2WlztX5kGQROZTPCoNbSldVWooODgupKcS5Wv+/rqcK0RSkdNFS8nDXZWlIe8GhsrsHMaPKzttKAvH1Ut+8xhNqTzwOqDOpWruik3XTJIc1NDNzsYc1rp+AknW6NUB91fl+2GRz+2rOxiYZUQL4afWpz1Kty+R/Fybcj7txm9m+m7tHvGA9u265iKNi8xUTROwTE71afM4NJtQ70VKu86yp3CnC/bxYssvoMRDCuth/uW+vj6DgwM3Owoys8HykPfdVYkp8cHKGk6k0iI0t7AqUGXWaB4yK/aUqSWvcRY8a71sWPHtGOxa6s0olMGW27u4wiySjl9jx4/thk9d6iEEa/CmxnpytaOjOhCr6uv4X3YrxmvyYgv2bplc4zZLgKh/5D+00jUUf08d6GjysuJTId2TWZbc/j7CSpy+V6StNl3fY2p+/qXpmTHRPaxC4eumaQKKMelk2Ptig76MVPP45jnBp/5dxBTBXWBHS/FmZTKX3uSXtToyFRt25RnfYHgICy4C4133w6ZfcILHr2D9S86Qz8hHbr1RCpVJWwMxMAykiIi8Q6bQUzS6dPr26RSL1682L2oFHE5kbU+puaCdLKt2sb8+tRK1729cmajfANZqVL8zSCe2tMNwHFP8NDKiekX4W2OiqXv7Oufzhtvi4ZFeRAubzD6cGNGWDx7dn8abWe05uklxi9Xqd6/kmilvmW9wmKThrvZvn0Hin/1yD/btAcmVgSVkTrmVRi3w1rvqsnIcdQemV28wcTzVbSVNWEjd1da1ei0kGFiCxcfZpo4OTlVk1NW1GhmFyat2PXdcWmKX/LD+88v7z2pqfxqbHj1kVSR6oeeMHbRElITSa+s7fTiqhN7InsV17S3GxovqVwVxjYqdTXGJE3oX++ujdshB/SwWbRT2cpyXQrKItiB6tro/foxazQy6SyaQ2zkyBpgmYumlaf9nlBy9ctmcW69rX7ll0H6/hg5qkXbKkoCEt/6E2nGNHzHlk0RlxW35Dh3KR2BQYEQ/TJb+QRWnCL/ITPQwBV4Y6QU/Rx737bql1lxpO/m6yKXFRQXO7at6ar+rDUJvuVS2NL/o9rWLM2V7Fc/X5+cnkVtHe9raHr+HEsMnh0DNeMLDPWVYoZfCMMhPQRPDTb6G248dUv4+NGFXRd4FcHTuQ9sF1XqChZm+y5NTk7ui1WOl3VrmmzYPWcpKuzs7CwuLo41WtCHqBdOVZ5YIyMj45abazMm+PB+9VPWRZpeeX7+6Ov680157kZQnbjhR6VmjeQgD84gfB8ZFSZHOclVoe7V1ITin/HGOl+/9nwMZiogVbaSmoQL7wduejWUzd54r2xWepgBAACPxwsMbJnPudL4ZmRkJJ9cs+fyz88xQA8a5pHfDJFdEubts269al0BJsmyK6dwJkddPmqotSinpCRgergDOgSyFksqM4/W1tYihR9s5y0m0dEFLYPia85Pb8oWJt6KKoWrVae5JJWtW7cqKtqoPE9EZffnZNqwEwDNLf5mcim7Ahh8fnPBtSB39UsN7qXs3pGuKreNPU+z7HbLZ/knpuP19fX19ORpaHZpe3Ozc3DwHFQwDnfKKuzvfPYs3ipjgHQ7SDVa80Ca7fz8/GyIICzBPENEIpGacknj/IvZ2WU2HhSK2h2D5KQkKpOpsmlTVldROlUZz6YwGI+mbXU3Aj2R1OQXodOkC1aCW7f4Pfel26SafLbuDmmes3BtuX//fne3x6u883W9EH19o2pQATsi24lsK9Wtd4eoqYlVeTcwMD5dGBUVtcMqZaTXviw3gMudYWfTq1DR3YtlgcsEYfNl74S9kZVdNwDFzoEZqxT9fIHAzUHm8haEklk69dyHDs+bLW0lTGtr653DNiGLiY7xJhGAbJAyje4CHSRSR/Zh9SxU/+Cg1qyd1uWZNznuzVoPBm7X1NSI3k4MDl7rrkAikRmitz6Hss7WXp071tba+gCnbBTWnrDiZI5Tnh5VeESeTuT4JOdrDcy9Ewb0R12ltnaUB9QZpRcVfe9yLm2gTNSJiABSdoe6jpacaehTMQoLWVyYNwyesqdt0HxNVv3l4XNsdVrNvXuyRTqnTLq7q6PCSHUVx1ZuOBeioBRx0LsS2ZNATR4fH49s8DK+2bmFznDflaLhNjk11LZ05Xr9ClZQUGvemgt4jtlo5dZdvBQ85zWUXm7hUo98dvJI1g5VgT6CCehBfsGNv/BhtkxA3CESiQ7tuO336l6UApK2IXisp7bvUniu+sOYzbgQDetjB4+QNGWlYk6fJgx19L8aaOzuvvJ+DnHG3JJIbCQ4GmVYX+K1OggXXHxOeE3xDQQCwW4U6iU3QOaUSdjcEK6aPvngwf6KSGdrhKvX1XTvOFdX17HejZCknAZjal4Vx64eOXNHUNfF0o+rvTW7QupkVWpqKsR8cTBUTee1XVVtvHqqfHMqfi7rJCjFPGpowP2yl76zadOzqdagpk0OpqS+5pkxfg3ZVeLpBRDpLri9rmyqLuNNtVJUtZLL2VaakLHl+Jl11TVPiXNO1XE7g1z3pTbeC2BTiZCqOK3+E28azc4tW/4RUojyPakQq2LkOLhVWXmKH3ZrYiBPSBh63xNnLTalfu+AHhWH1rxBV9+dHjw9PMkfi4lZV+12j4O919yc6OGZo6SE7ohd4+vrO977GhdXqz80tqCxbhlg78NgWDW+WWjcpxJoICxr8Z9zWGZu53dW3n9vhkxGxHV2BDCz0Qxi1Kq8rKzs9iXh6KrURR0dnVTlvGaRyE6YgzOtoMpolB6CMtQvWZJd19NDsZsY2p8hsnJPKstVIXAz7/aOmkZFHNRO2Dl88Fy9p4oB38aPkGMC76q4cKDRjgopVNn6tMfwO0ep7Tt2nIyI6LdXVOkdDzQVth9I0Nal+tKgycHBwUXIRv95qFnoRA7V2W8bScgdsLOzW1Ju3JqcnMx+//ypf0eeBUwpz7QqcwVEIPPB3ZOZakmWeo2F1yFNRm4TQNTVz2mkUV/Em8CNpy8N+YBgb3WUgnFCpVxdgSxud77ztWzq5qvbojUPOTuP+F1NvHKOkDmahGB4eFwRCoWSopRgiotjeLhQ5EZqCv8wWmN2ribAID1LMWK0Hvdipq09NzetWCvq+fw9HeJNoTAcqsevvVKCYpfvVDsT9FroudjD8qLsbZo0gZ+ppYgr8+LyAB5Pc0ozqMAi/VYHR/jzkXfHqjvlXNzd3Z2dfzJLtVp5Pj1wsv+ZUu4TCbk4bzabvdletdBbMT5E3Z+EW6uqHLsjrtZy+zhUXSFxPM8SWgCmdjsiL9LOajCm240W1E9PdL7dtmX99ORkfUPDzoj9lpaWUDsYqzBGqlbbr7aR2Kh6+Yp8qOXcq1ijo2UTgtA52WC7rKclL8LaZOeHIzXuqSSmvx0bUl/xYEZXsE1Wan5CZB2ZG1vCfCE/WRUQZ9Lm2Z8jX6EjZaO/xdGIe1gQUprrW/hs7yhG8vv2F74GwVPXIsadDhjG9U1MFLorjOWmnTVXjV4y+szJXWNKG4m0JhJ1r6EENg+vsYdadXEtyQ19csYv3810dXa6ZZDSqVKBtgcyRIh4EyVA9idIuJO3ze9q012XTqbWXz9Uonmx6/n1Q1bhfEHeygwBPnTk5ZHYpmxitb9hiftG6vGDNrLWUstVVVW9Gi7Gv5gFDxgoB7Tq6utnCjpuaB1Anx58knbg4n7PfejQ1gu7AkKEhx00c9P7mDU4/KrUv6xdu9aelmuVZluWCz2JTA2J19OpLTSep+f25r41/qKxly9/EUUbQe8qkYKQ1sXnD0cSrhB14vcvd/bCQcLgC8tyvTBJ9MeRzKjVs0vLbar7azcW73zgYzpfHFdLsYnSlw8ZrVbop274+LhlARaVUHtNo9HU74XI24coZw2ResZnof7wBTVvyPZCv69D0ZVr6dSy3ASjtuyEc0+xCOXYctrguK9USYRUUFcxIXv6bHAncqLJPVzD7RAiI21lKLIY6gkvzszweIPNfi/vSGacWFshXFMNTy4+4J+d53D9rL/8C4ju8QajOf6Cj9HajSOJ8leHh4dPnFgufPS6KZmhG2UCP2VSWSPz3D99mWlR4+Ag7YJ2v9oZ88x3p1wlAdkbUCW13P4qtFGaKLIUPexldza8qh4ZueE+7rA9rrZst7d6dsy5hITNH+JCJvsdVJE7ZADZ2+Zq7MWFUHdH7gy0uYpLv0bZqGN1dXvnK7S0tJ4G662dtPcRv40NPDt4GrURyreY2FgvzKbYErn+tH1KqSNuZ2sp9JLgCCAxvSXxgZNpwPFIROLIVkDNXG3j7Pz0C50kS/iZzC4kXjkW6rfKlZfn3L1z586TJ096eq7O4TwU70FPugG03VGZ6vrG+vO4zXYraNTGIwVnTeFnIM9Gu03F7c3DTx2cmyDEpUDJREu+rcjX6XK+8PE+l9Zfs7pYfG/xAXV78hEut4Mms/k/+3QhuDxecUnJ9MQEVvDB0NCwLLdtKhdF5Pj55c+61pxv4Q17Lfvl1Ejiiv+QV+//B/wnACrDJW8Xrt+zeSnMWPxvNgtTK5PcPX85+jc=' | 'itempicture2.png' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN42CAgPe791crhSrVAgA=' | 'False'    | 'False'      | 'False'       |
	
Сценарий: добавление ботинок

// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'  | 'Улица'        | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                           | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта' | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Скороход АО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Москва' | 'Полярная ул.' | '33'  | '+7(999)234-57-65' | ''                 | '+7(999)234-57-65' | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | ''                         | 'Улиткин Ф.Ф.'   | 55.88895 | 37.64444  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'   | ''                                                                   | ''       | ''       | ''       | ''             | ''    | ''                 | ''                 | ''                 | ''        | ''                                                 | ''                         | ''               | ''       | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000006' | 'Ботинки'      | 'ОБ-003'  | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa18' | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Ботинки мужские. </p>\n<p><br></p>\n<p><span style=" font-weight: bold;">Материал верха</span> - иск. кожа.<span style=" font-weight: bold;"> </span></p>\n<p><span style=" font-weight: bold;">Материал подкладки</span> - иск. мех.</p>\n<p><span style=" font-weight: bold;">Материал подошвы</span> - иск. материал. </p>\n<p><span style=" font-weight: bold;">Цвет</span> - черный.</p>\n<p><span style=" font-weight: bold;">Страна-</span><span style=" font-weight: bold;">производитель</span> - Россия.</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'        | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'        | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa18' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | '000000001' | 'Ботинки'      | 'ValueStorage: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' | 'Ботинки_new.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |


