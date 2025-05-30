sleep 2
echo CODM GARENA VERSION RESET GUEST SCRIPT
clear

echo Wait a moment...
kill com.garena.game.codm &> /dev/null

rm -rf /data/user/0/com.garena.game.codm/databases/ &> /dev/null
rm -rf /data/user/0/com.garena.game.codm/files/hawk_data &> /dev/null
rm -rf /data/user/0/com.garena.game.codm/files/itop_login.txt &> /dev/null
rm -rf /data/user/0/com.garena.game.codm/shared_prefs/lastUserId.xml &> /dev/null
rm -rf /data/user/0/com.garena.game.codm/shared_prefs/gsdk_prefs.xml &> /dev/null
rm -rf /data/user/0/com.garena.game.codm/shared_prefs/tgpa.xml &> /dev/null
rm -rf /storage/self/primary/com.garena.msdk &> /dev/null
rm -rf /storage/self/primary/com.garena.game.codm &> /dev/null
rm -rf /storage/self/primary/centauri &> /dev/null
rm -rf /storage/self/primary/CentauriOversea &> /dev/null

sleep 2
echo Wait a moment...
kill com.garena.game.codm &> /dev/null

STR=$(head -3 /dev/urandom | tr -cd 'a-z0-9' | cut -c -16)

BP1=$(grep -n com.garena.game.codm /data/system/users/0/settings_ssaid.xml | grep -o 'value="[a-zA-Z0-9]*"*' | cut -d '"' -f2)
sed -i "s/$BP1/$STR/g" /data/system/users/0/settings_ssaid.xml

sleep 2
echo Wait a moment...

GUEST1="/data/user/0/com.garena.game.codm/shared_prefs/com.garena.msdk.persist.fallback.xml"
rm -rf $GUEST1
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name='"com.garena.msdk.guest_password"'>$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM</string>
    <string name='"com.garena.msdk.guest_uid"'>$RANDOM$RANDOM$RANDOM$RANDOM</string>
</map>" > $GUEST1

sleep 2
echo Wait a moment x2...

GUEST2="/data/user/0/com.garena.game.codm/shared_prefs/apm_cfg.xml"
rm -rf $GUEST2
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name='"apm_user_name"'>$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM</string>
    <string name='"apm_version_check"'>1.6.50#27294</string>
</map>" > $GUEST2

sleep 2
echo Wait a moment x3...

GUEST3="/data/user/0/com.garena.game.codm/shared_prefs/tdm.xml"
rm -rf $GUEST3
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>" > $GUEST3

sleep 2
echo Wait a moment x4...

GUEST4="/data/user/0/com.garena.game.codm/shared_prefs/appsflyer-data.xml"
rm -rf $GUEST4
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>" > $GUEST4

sleep 2
echo Wait a moment x5...

GUEST5="/data/user/0/com.garena.game.codm/shared_prefs/com.garena.game.codm.v2.playerprefs.xml"
rm -rf $GUEST5
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>" > $GUEST5


echo DONE
sleep 2
echo ．．．．．．RESTART NOW．．．．．．
sleep 2
echo ．．．．．．2 sec ．．．．．．
sleep 2
echo ．．．．．．1 sec ．．．．．．
sleep 2
clear
reboot





