#!/bin/sh

set -u
APP=gnome-boxes

# CREATE A TEMPORARY DIRECTORY
mkdir -p tmp && cd tmp || exit 1

# DOWNLOADING APPIMAGETOOL
if test -f ./appimagetool; then
	echo " appimagetool already exists" 1> /dev/null
else
	echo " Downloading appimagetool..."
	wget -q "$(wget -q https://api.github.com/repos/probonopd/go-appimage/releases -O - | sed 's/"/ /g; s/ /\n/g' | grep -o 'https.*continuous.*tool.*86_64.*mage$')" -O appimagetool
fi
chmod a+x ./appimagetool

# CREATE AND ENTER THE APPDIR
mkdir -p "$APP".AppDir && cd "$APP".AppDir || exit 1

# ICON
if ! test -f ./*.svg; then
	wget -q https://raw.githubusercontent.com/GNOME/gnome-boxes/main/data/icons/hicolor/scalable/apps/org.gnome.Boxes.svg
fi

# LAUNCHER
echo "[Desktop Entry]
Name[ab]=Абоксқәа
Name[af]=Bokse
Name[ar]=«صناديق»
Name[as]=বাকচসমূহ
Name[be]=Boxes
Name[bg]=Виртуални машини
Name[bn_IN]=বাক্স
Name[bs]=Okviri
Name[ca]=Màquines
Name[ca@valencia]=Màquines
Name[cs]=Boxy
Name[da]=Boxes
Name[de]=Boxen
Name[el]=Πλαίσια
Name[en_GB]=Boxes
Name[eo]=Skatolaro
Name[es]=Cajas
Name[et]=Boxes
Name[eu]=Makinak
Name[fa]=جعبه‌ها
Name[fi]=Boksit
Name[fr]=Machines
Name[fur]=Scjatulis
Name[ga]=Boscaí
Name[gl]=Caixas
Name[gu]=બોક્સ
Name[he]=קופסאות
Name[hi]=बक्सा
Name[hr]=Boksevi
Name[hu]=Gépek
Name[id]=Boxes
Name[ie]=Buxes
Name[it]=Boxes
Name[ja]=Boxes
Name[ka]=ყუთები
Name[kab]=Iḥedran
Name[kk]=Бокстар
Name[km]=ប្រអប់
Name[kn]=ಬಾಕ್ಸಸ್‌
Name[ko]=박스
Name[lt]=Dėžės
Name[lv]=Kastes
Name[ml]=പെട്ടികള്‍
Name[mr]=बॉक्सेस
Name[ms]=Boxes
Name[nb]=Bokser
Name[ne]=बाकसहरू
Name[nl]=Boxes
Name[oc]=Maquinas
Name[or]=ବାକ୍ସଗୁଡ଼ିକ
Name[pa]=ਬਾਕਸ
Name[pl]=Boxes
Name[pt]=Caixas
Name[pt_BR]=Boxes
Name[ro]=Cutii
Name[ru]=Boxes
Name[sl]=Škatle
Name[sk]=Boxy
Name[sr]=Кутије
Name[sr@latin]=Kutije
Name[sv]=Boxes
Name[ta]=பெட்டிகள்
Name[te]=పెట్టెలు
Name[tg]=Қуттиҳо
Name[th]=Boxes
Name[tr]=Kutular
Name[ug]=قۇتىلار
Name[uk]=Коробки
Name[vi]=Máy
Name[zh_CN]=Boxes
Name[zh_HK]=機櫃
Name[zh_TW]=機櫃
Name=Boxes
GenericName[af]=Virtuele rekenaar bestuurder
GenericName[ar]=مدير و عارض للأجهزة الافتراضية
GenericName[as]=ভাৰছুৱেল মেচিন দৰ্শক/ব্যৱস্থাপক
GenericName[be]=Прагляд/кіраванне віртуальнымі машынамі
GenericName[bg]=Управление и преглед на виртуални машини
GenericName[bn_IN]=ভার্চুয়াল মেশিন ভিউয়ার/ম্যানেজার
GenericName[bs]=Preglednik/menadžer virtualnih mašina
GenericName[ca]=Gestor i visualitzador de màquines virtuals
GenericName[ca@valencia]=Gestor i visualitzador de màquines virtuals
GenericName[cs]=Prohlížení a správa virtuálních strojů
GenericName[da]=Fremviser/håndtering af virtuelle maskiner
GenericName[de]=Ausführen und Verwalten von virtuellen Maschinen
GenericName[el]=Πρόγραμμα προβολής και διαχείρισης εικονικών μηχανών
GenericName[en_GB]=Virtual machine viewer/manager
GenericName[eo]=Facila vidigilo/administrilo por virtualaj maŝinoj
GenericName[es]=Gestor/visor de máquinas virtuales
GenericName[et]=Virtuaalmasinate kuvaja/haldur
GenericName[eu]=Makina birtualen ikustailea/kudeatzailea
GenericName[fa]=مدیر/نمایشگر دستگاه مجازی
GenericName[fi]=Virtuaalikoneiden katselu-/hallintaohjelma
GenericName[fr]=Afficheur/gestionnaire de machines virtuelles
GenericName[fur]=Visualizadôr/gjestôr di machinis virtuâls
GenericName[ga]=Amharcán/bainisteoir mheaisíní fíorúla
GenericName[gl]=Visor/Xestor de máquinas virtuais
GenericName[gu]=વર્ચ્યુઅલ મશીન દર્શક/સંચાલક
GenericName[he]=מנהל/מציג של מכונות וירטואליות
GenericName[hi]=आभासी मशीन दर्शक / प्रबंधक
GenericName[hr]=Preglednik/Upravitelj virtualnih računala
GenericName[hu]=Virtuálisgép-megjelenítő és -kezelő
GenericName[id]=Manajer/penilik mesin virtual
GenericName[ie]=Gerente de virtual machines
GenericName[it]=Visualizzatore/Gestore di macchine virtuali
GenericName[ja]=仮想マシンビューアー/マネージャー
GenericName[ka]=ვირტუალური მანქანების ნახვა/მართვა
GenericName[kab]=Amsenqad/Amsefrak n tmacint tuhlist
GenericName[kk]=Виртуалды машиналарды қарау/басқару
GenericName[km]=កម្មវិធី​គ្រប់គ្រង/កម្មវិធី​មើល​ម៉ាស៊ីន​និម្មិត
GenericName[kn]=ವರ್ಚುವಲ್ ಗಣಕ ವೀಕ್ಷಕ/ವ್ಯವಸ್ಥಾಪಕ
GenericName[ko]=가상 머신 보기/관리자
GenericName[lt]=Virtualių mašinų žiūryklė/tvarkytuvė
GenericName[lv]=Virtuālo mašīnu skatītājs/pārvaldītājs
GenericName[ml]=ലളിതമായ വിര്‍ച്ച്വല്‍ മെഷീന്‍ ദര്‍ശിനി/മാനേജര്‍
GenericName[mr]=वर्च्युअल मशीन दर्शक/व्यवस्थापक
GenericName[ms]=Pelihat/pengurus mesin maya
GenericName[nb]=Visning/håndtering av virtuelle maskiner
GenericName[ne]=अवास्तविक मेशिन दर्शक / प्रबन्धक
GenericName[nl]=Virtuele machines weergeven/beheren
GenericName[oc]=Afichador/gestionari de maquinas virtualas
GenericName[or]=ଆଭାସୀ ତନ୍ତ୍ର ପ୍ରଦର୍ଶକ/ପରିଚାଳକ
GenericName[pa]=ਵਰਚੁਅਲ ਮਸ਼ੀਨ ਦਰਸ਼ਕ/ਮੈਨੇਜਰ
GenericName[pl]=Przeglądarka/menedżer maszyn wirtualnych
GenericName[pt]=Gestor/Visualizador de máquinas virtuais
GenericName[pt_BR]=Visualizador/gerenciador de máquinas virtuais
GenericName[ro]=Vizualizator/administrator de mașini virtuale
GenericName[ru]=Диспетчер виртуальных машин
GenericName[sl]=Upravljalnik in pregledovalnik navideznih naprav
GenericName[sk]=Prezerač/správca virtuálnych počítačov
GenericName[sr]=Управник и прегледач виртуелних машина
GenericName[sr@latin]=Upravnik i pregledač virtuelnih mašina
GenericName[sv]=Visare/hanterare för virtuella maskiner
GenericName[ta]=மெய்நிகர் கணினி காட்சிப்படுத்தி/நிர்வாகி
GenericName[te]=వర్చ్యువల్ మిషన్ వీక్షకము/నిర్వాహకము
GenericName[tg]=Мудири/намоишгари компютери виртуалӣ
GenericName[th]=เครื่องมือแสดง/จัดการเครื่องเสมือน
GenericName[tr]=Sanal makine görüntüleyici/yönetici
GenericName[ug]=مەۋھۇم ماشىنا كۆرگۈ/باشقۇرغۇ
GenericName[uk]=Переглядач/організатор віртуальних машин
GenericName[vi]=Xem/Quản lý máy ảo
GenericName[zh_CN]=虚拟机查看器/管理器
GenericName[zh_HK]=虛擬機檢視器/管理員
GenericName[zh_TW]=虛擬機檢視器/管理員
GenericName=Virtual machine viewer/manager
Comment[af]=Vertoon en gebruik virtuele rekenaars
Comment[ar]=اعرض و استخدم أجهزة افتراضية
Comment[as]=ভাৰছুৱেল মেচিনসমূহ দৰ্শন কৰক আৰু ব্যৱহাৰ কৰক
Comment[be]=Прагляд і выкарыстанне віртуальных машын
Comment[bg]=Преглед и връзка към виртуални машини
Comment[bn_IN]=ভার্চুয়াল মেশিন প্রদর্শন ও ব্যবহার করুন
Comment[bs]=Ogled i upotreba virtualnih mašina
Comment[ca]=Visualitzeu i utilitzeu màquines virtuals
Comment[ca@valencia]=Visualitzeu i utilitzeu màquines virtuals
Comment[cs]=Zobrazte si a používejte virtuální stroje
Comment[da]=Vis og brug virtuelle maskiner
Comment[de]=Virtuelle Maschinen ansehen und verwenden
Comment[el]=Δείτε και χρησιμοποιήστε εικονικές μηχανές
Comment[en_GB]=View and use virtual machines
Comment[eo]=Montri kaj uzi virtualajn maŝinojn
Comment[es]=Ver y usar máquinas virtuales
Comment[et]=Virtuaalmasinate vaatamine ja kasutamine
Comment[eu]=Ikusi eta erabili makina birtualak
Comment[fa]=نمایش و استفاده از دستگاه‌های مجازی
Comment[fi]=Näytä ja käytä virtuaalikoneita
Comment[fr]=Visualiser et utiliser des machines virtuelles
Comment[fur]=Viôt e dopre machinis virtuâls
Comment[ga]=Taispeáin agus bain úsáid as meaisíní fíorúla
Comment[gl]=Ver e usar máquinas virtuais
Comment[gu]=વર્ચ્યુઅલ મશીનને વાપરો અને દેખો
Comment[he]=צפייה ושימוש במכונות וירטואליות
Comment[hi]=देखें और आभासी मशीनों का उपयोग करें
Comment[hr]=Pregledajte i koristite virtualna računala
Comment[hu]=Virtuális gépek megjelenítése és használata
Comment[id]=Tilik dan pakai mesin virtual
Comment[ie]=Vider e usar virtual machines
Comment[it]=Visualizza e usa macchine virtuali
Comment[ja]=仮想マシンを表示して利用する
Comment[ka]=ვირტუალური მანქანების ნახვა და მართვა
Comment[kab]=Sken syen seqdec timacinin tuhlisin
Comment[kk]=Виртуалды машиналарды қарау және қолдану
Comment[km]=មើល និង​ប្រើ​ម៉ាស៊ីន​និម្មិត
Comment[kn]=ವರ್ಚುವಲ್‌ ಗಣಕಗಳನ್ನು ನೋಡು ಮತ್ತು ಬಳಸು
Comment[ko]=가상 머신 보고 사용하기
Comment[lt]=Rodyti ir naudoti virtualias mašinas
Comment[lv]=Skatīt un izmantot virtuālās mašīnas
Comment[ml]=വിര്‍ച്ച്വല്‍ മെഷീനുകള്‍ ഉപയോഗിക്കുക
Comment[mr]=वर्च्युअल मशीन्स्चे दृष्य व वापर
Comment[ms]=Lihat dan guna mesin maya
Comment[nb]=Vis og bruk virtuelle maskiner
Comment[ne]=अवास्तविक मेशिनहरू हेर्नुहोस् र प्रयोग गर्नुहोस्
Comment[nl]=Virtuele machines weergeven en gebruiken
Comment[oc]=Afichar e utilizar de maquinas virtualas
Comment[or]=ଆଭାସୀ ତନ୍ତ୍ରକୁ ଦେଖନ୍ତୁ ଏବଂ ବ୍ୟବହାର କରନ୍ତୁ
Comment[pa]=ਵਰਚੁਅਲ ਮਸ਼ੀਨਾਂ ਵੇਖੋ ਅਤੇ ਵਰਤੋਂ
Comment[pl]=Wyświetlanie i używanie maszyn wirtualnych
Comment[pt]=Veja e utilize máquinas virtuais
Comment[pt_BR]=Veja e use máquinas virtuais
Comment[ro]=Vizualizează și utilizează mașini virtuale
Comment[ru]=Просмотр и использование виртуальных машин
Comment[sl]=Pogled in uporaba navideznih naprav
Comment[sk]=Zobrazuje a používa virtuálne počítače
Comment[sr]=Прегледајте и користите виртуелне машине
Comment[sr@latin]=Pregledajte i koristite virtuelne mašine
Comment[sv]=Visa och använd virtuella maskiner
Comment[ta]=மெய்நிகர் கணினிகளைக் காணலாம் பயன்படுத்தலாம்
Comment[te]=వాస్తవ యంత్రాలను వీక్షించండి మరియు ఉపయోగించండి
Comment[tg]=Намоиш ва истифодаи компютерҳои виртуалӣ
Comment[th]=ดูและใช้คอมพิวเตอร์เสมือน
Comment[tr]=Sanal makineleri görüntüle ve kullan
Comment[ug]=مەۋھۇم ماشىنىنى ئىشلىتىش ۋە كۆرۈش
Comment[uk]=Перегляд і використання віртуальних машин
Comment[vi]=Xem và sử dụng các máy ảo
Comment[zh_CN]=查看和使用虚拟机
Comment[zh_HK]=檢視與使用虛擬機
Comment[zh_TW]=檢視與使用虛擬機
Comment=View and use virtual machines
# Translators: Search terms to find this application. Do NOT translate or localize the semicolons! The list MUST also end with a semicolon!
Keywords[ab]=Авиртуалтә машьына ;vm;вм;ВМ;
Keywords[ar]=جهاز افتراضي;vm;
Keywords[as]=ভাৰছুৱেল মেচিন;vm;
Keywords[be]=віртуальная машына;віртуалка;віртуяльныя;вм;vm;
Keywords[bg]=виртуална машина;вм;box;virtual machine;vm;
Keywords[bn_IN]=ভার্টুয়াল মেশিন;vm;
Keywords[bs]=virtualna mašina;vm;
Keywords[ca]=màquina virtual;vm;
Keywords[ca@valencia]=màquina virtual;vm;
Keywords[cs]=virtuální stroj;vm;virtualizace;
Keywords[da]=virtuel maskine;vm;
Keywords[de]=Virtuelle Maschine;vm;
Keywords[el]=εικονική μηχανή;vm;
Keywords[en_GB]=virtual machine;vm;
Keywords[eo]=virtuala maŝino;vm;
Keywords[es]=máquina virtual;vm;
Keywords[et]=virtuaalmasin;vm;
Keywords[eu]=makina birtuala;vm;
Keywords[fa]=virtual machine;vm;دستگاه;ماشین;مجازی;
Keywords[fi]=virtual machine;vm;virtuaalikone;virtualisointi;
Keywords[fr]=machine virtuelle;vm;
Keywords[fur]=machine virtuâl;vm;mv;
Keywords[ga]=meaisín fíorúil;vm;
Keywords[gl]=máquina virtual;vm;
Keywords[gu]=વર્ચ્યુઅલ મશીન;vm;
Keywords[he]=מכונה וירטואלית;וירטואלית;מכונה;תיבה;קופסה;קופסא;
Keywords[hi]=आभासी मशीन;vm;
Keywords[hr]=virtualno računalo;vm;
Keywords[hu]=virtuális gép;vm;
Keywords[id]=mesin virtual;vm;
Keywords[ie]=virtual;machine;vm;
Keywords[it]=macchina virtuale;vm;
Keywords[ja]=virtual machine;vm;仮想マシン;仮想化;boxes;ボックス;
Keywords[ka]=virtual machine;vm;
Keywords[kab]=tamacint tuhlist;vm;
Keywords[kk]=virtual machine;vm;виртуалды машина;вм;
Keywords[km]=ម៉ាស៊ីន​និម្មិត;vm;
Keywords[kn]=ವರ್ಚುವಲ್‌ ಗಣಕ;vm;
Keywords[ko]=virtual machine;가상;머신;가상머신;vm;
Keywords[lt]=virtuali mašina;vm;
Keywords[lv]=virtuālā mašīna;vm;
Keywords[mr]=वर्च्युअल मशीन;vm;
Keywords[nb]=virtuell maskin;vm;
Keywords[ne]=अवास्तविक मेशिन;भिएम;
Keywords[nl]=virtual machine;vm;virtuele machine;
Keywords[oc]=maquina virtuala;vm;
Keywords[or]=ଆଭାସୀ ତନ୍ତ୍ର;vm;
Keywords[pa]=ਵਰਚੁਅਲ ਮਸ਼ੀਨ;ਵੀਐਮ;
Keywords[pl]=maszyna wirtualna;virtual machine;vm;wirtualizacja;virtualization;
Keywords[pt]=máquina virtual;vm;
Keywords[pt_BR]=máquina virtual;virtual machine;vm;
Keywords[ro]=virtual machine;vm;mașină virtuală;
Keywords[ru]=виртуальная машина;vm;вм;ВМ;
Keywords[sl]=virtualne naprave;virtualni sistem;navidezni računalnik;navidezni sistem;vm;
Keywords[sk]=virtuálny počítač;stroj;vm;
Keywords[sr]=виртуелна машина;вм;virtuelna mašina;virtuelna masina;virtual machine;vm;
Keywords[sr@latin]=virtuelna mašina;vm;virtuelna mašina;virtuelna masina;virtual machine;vm;
Keywords[sv]=virtuell maskin;vm;
Keywords[ta]=மெய்நிகர் கணினி;விஎம்;
Keywords[te]=వర్చ్యువల్ మిషన్;vm;
Keywords[tg]=компютери виртуалӣ;vm;
Keywords[th]=virtual machine;vm;เครื่องเสมือน;คอมพิวเตอร์เสมือน;
Keywords[tr]=sanal makine;vm;sm;kutular;boxes;
Keywords[ug]=virtual machine;vm;مەۋھۇم ماشىنا;
Keywords[uk]=віртуальна машина;vm;вм;virtual machine;
Keywords[vi]=virtual machine;máy;ảo;may;ao;vm;
Keywords[zh_CN]=virtual machine;vm;虚拟机;
Keywords[zh_HK]=virtual machine;vm;虛擬機;
Keywords[zh_TW]=virtual machine;vm;虛擬機;
Keywords=virtual machine;vm;
Exec=AppRun %U
# Translators: Do NOT translate or transliterate this text (this is an icon file name)!
Icon=org.gnome.Boxes
Terminal=false
Type=Application
StartupNotify=true
Categories=System;
MimeType=application/x-cd-image;" > "$APP".desktop

# APPRUN
rm -f ./AppRun
cat >> ./AppRun << 'EOF'
#!/bin/sh
HERE="$(dirname "$(readlink -f "${0}")")"
export UNION_PRELOAD="${HERE}"
"${HERE}"/conty.sh gnome-boxes "$@"
EOF
chmod a+x ./AppRun

# DOWNLOAD CONTY
if ! test -f ./*.sh; then
	conty_download_url=$(curl -Ls https://api.github.com/repos/ivan-hc/Conty/releases | sed 's/[()",{} ]/\n/g' | grep -oi "https.*gnome-boxes.*sh$" | head -1)
	echo " Downloading Conty..."
	if wget --version | head -1 | grep -q ' 1.'; then
		wget -q --no-verbose --show-progress --progress=bar "$conty_download_url"
	else
		wget "$conty_download_url"
	fi
	chmod a+x ./conty.sh
fi

# EXIT THE APPDIR
cd .. || exit 1

# EXPORT THE APPDIR TO AN APPIMAGE
VERSION=$(curl -Ls https://archlinux.org/packages/extra/x86_64/gnome-boxes/ | grep gnome-boxes | head -1 | tr ' ' '\n' | grep "^[0-9]")
ARCH=x86_64 VERSION="$VERSION" ./appimagetool -s ./"$APP".AppDir
cd .. && mv ./tmp/*.AppImage ./Boxes-"$VERSION"-x86_86.AppImage || exit 1

