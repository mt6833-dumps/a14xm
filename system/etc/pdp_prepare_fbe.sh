#!/system/bin/sh
# Copyright (c) 2016, Samsung Electronics Co., Ltd.

# PDP : Preloaded-Data Preservation

# Unzip & un-tar
if [[ -f /data/pdp_bkup/apps_apks.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-zip ap___apk_.t__.z__ to /d /pd" > /dev/kmsg
  /system/bin/unzip -o /data/pdp_bkup/apps_apks.tar.zip -d /data/pdp_bkup/
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, unzip apps_apks.t.z r= $?" > /dev/kmsg; fi
else
  echo "[PDP]![pdp_prep___fb_.s_]  !!! something is wrong !!  there is no PDP backup file" > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/apps_apks.tar ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-tar ap___apk_.t__ to /d /a__" > /dev/kmsg
  /system/bin/tar -xpf /data/pdp_bkup/apps_apks.tar -C /data
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, untar apps_apks.t r= $?" > /dev/kmsg; fi
else
  echo "[PDP]![pdp_prep___fb_.s_]  !!! something is wrong !!  ap___apk_.t__ file is not exist" > /dev/kmsg
fi

if [[ -d /data/pdp_bkup/META-INF ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  rm /d /p /META-INF" > /dev/kmsg
  /system/bin/rm -rf /data/pdp_bkup/META-INF
fi

# RAM-loading files
if [[ -f /data/pdp_bkup/pdp_ssapps.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-zip pdp_ssapps.t__.z__ to /d /a" > /dev/kmsg
  /system/bin/unzip -o /data/pdp_bkup/pdp_ssapps.tar.zip -d /data/pdp_bkup/
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, unzip pdp_ssapps.t.z r= $?"> /dev/kmsg; fi

  if [[ -f /data/pdp_bkup/pdp_ssapps.tar ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  un-tar pdp_ssapps.t__ to /d /a" > /dev/kmsg
    /system/bin/tar -xpf /data/pdp_bkup/pdp_ssapps.tar -C /data
    if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, untar pdp_ssapps.t r= $?"> /dev/kmsg; fi
    /system/bin/rm -f /data/pdp_bkup/pdp_ssapps.tar
  else
    echo "[PDP]![pdp_prep___fb_.s_]  !!! something is wrong !!  pdp_ssapps.t__ file is not exist" > /dev/kmsg
  fi

  if [[ -d /data/pdp_bkup/META-INF ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  rm /d /p /META-INF" > /dev/kmsg
    /system/bin/rm -rf /data/pdp_bkup/META-INF
  fi
else
  echo "[PDP] [pdp_prep___fb_.s_]  there is no pdp_ssapps.t__.z__ " > /dev/kmsg
fi


if [[ -f /data/pdp_bkup/pdp_ramload.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-zip pdp_ramload.t__.z__ to /d /a" > /dev/kmsg
  /system/bin/unzip -o /data/pdp_bkup/pdp_ramload.tar.zip -d /data/pdp_bkup/
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, unzip pdp_ramload.t.z r= $?"> /dev/kmsg; fi

  if [[ -f /data/pdp_bkup/pdp_ramload.tar ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  un-tar pdp_ramload.t__ to /d /a" > /dev/kmsg
    /system/bin/tar -xpf /data/pdp_bkup/pdp_ramload.tar -C /data
    if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, untar pdp_ramload.t r= $?"> /dev/kmsg; fi
    /system/bin/rm -f /data/pdp_bkup/pdp_ramload.tar
  else
    echo "[PDP]![pdp_prep___fb_.s_]  !!! something is wrong !!  pdp_ramload.t__ file is not exist" > /dev/kmsg
  fi

  if [[ -d /data/pdp_bkup/META-INF ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  rm /d /p /META-INF" > /dev/kmsg
    /system/bin/rm -rf /data/pdp_bkup/META-INF
  fi
else
  echo "[PDP] [pdp_prep___fb_.s_]  there is no pdp_ramload.t__.z__ " > /dev/kmsg
fi


if [[ -f /data/pdp_bkup/pdp_oneshot.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-zip pdp_oneshot.t__.z__ to /d /a" > /dev/kmsg
  /system/bin/unzip -o /data/pdp_bkup/pdp_oneshot.tar.zip -d /data/pdp_bkup/
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, unzip pdp_oneshot.t.z r= $?"> /dev/kmsg; fi

  if [[ -f /data/pdp_bkup/pdp_oneshot.tar ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  un-tar pdp_oneshot.t__ to /d /a" > /dev/kmsg
    /system/bin/tar -xpf /data/pdp_bkup/pdp_oneshot.tar -C /data
    if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, untar pdp_oneshot.t r= $?"> /dev/kmsg; fi
    /system/bin/rm -f /data/pdp_bkup/pdp_oneshot.tar
  else
    echo "[PDP]![pdp_prep___fb_.s_]  !!! something is wrong !!  pdp_oneshot.t__ file is not exist" > /dev/kmsg
  fi

  if [[ -d /data/pdp_bkup/META-INF ]]; then
    echo "[PDP] [pdp_prep___fb_.s_]  rm /d /p /META-INF" > /dev/kmsg
    /system/bin/rm -rf /data/pdp_bkup/META-INF
  fi
else
  echo "[PDP] [pdp_prep___fb_.s_]  there is no pdp_oneshot.t__.z__ " > /dev/kmsg
fi





echo "[PDP] [pdp_prep___fb_.s_]  un-tar app__de_.tar to /d /a__" > /dev/kmsg
/system/bin/tar -xpf /data/pdp_bkup/apps_dex.tar -C /data;ret=$?
if [ $ret -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, untar apps_dex.t r= $ret"> /dev/kmsg; fi

# remove temporary *.tar files
echo "[PDP] [pdp_prep___fb_.s_]  rm app__apk_.tar, app__de_.tar at /d" > /dev/kmsg
/system/bin/rm -f /data/pdp_bkup/apps_apks.tar
/system/bin/rm -f /data/pdp_bkup/apps_dex.tar

# let init process know the current status, it is waiting for this
echo "[PDP] [pdp_prep___fb_.s_]  mkdir fsh_pfbe_done" > /dev/kmsg
# /system/bin/mkdir -p --mode='a-rwx' /data/pdp_bkup/fsh_pfbe_done
/system/bin/mkdir -p /data/pdp_bkup/fsh_pfbe_done

# 1 second, waiting for the init process to flush the file-cache.
sleep 1

# remove the PDP back-up file if exist.
if [[ -f /data/pdp_bkup/pdp_bkup.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  rm /d /p /pd__bk__.t__.z__" > /dev/kmsg
  /system/bin/rm -f /data/pdp_bkup/pdp_bkup.tar.zip
fi
# Rename PDP backup file.
echo "[PDP] [pdp_prep___fb_.s_]  rename app__ap__.t__.z__ to pd__bk__.t__.z__" > /dev/kmsg
/system/bin/mv -f /data/pdp_bkup/apps_apks.tar.zip /data/pdp_bkup/pdp_bkup.tar.zip
if [ $? -ne 0 ]; then echo "[PDP]![pdp_prep___fb_.s_] ERROR, mv apps_apks to pdp_bkup r= $?"> /dev/kmsg; fi

echo "[PDP] [pdp_prep___fb_.s_]  p.FBE done" > /dev/kmsg
# End of PrepareFBE.sh