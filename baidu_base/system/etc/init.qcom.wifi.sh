#!/system/bin/sh
# Copyright (c) 2010-2012, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of Code Aurora Forum, Inc. nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# This script will load and unload the wifi driver to put the wifi in
# in deep sleep mode so that there won't be voltage leakage.
# Loading/Unloading the driver only incase if the Wifi GUI is not going
# to Turn ON the Wifi. In the Script if the wlan driver status is
# ok(GUI loaded the driver) or loading(GUI is loading the driver) then
# the script won't do anything. Otherwise (GUI is not going to Turn On
# the Wifi) the script will load/unload the driver
# This script will get called after post bootup.
target=`getprop ro.board.platform`
case "$target" in
    msm8960*)

# auto detect ar6004-sdio card
# for ar6004-sdio card, the vendor id and device id is as the following
# vendor id  device id
#    0x0271     0x0400
#    0x0271     0x0401
      sdio_vendors=`echo \`cat /sys/bus/mmc/devices/*/*/vendor\``
      sdio_devices=`echo \`cat /sys/bus/mmc/devices/*/*/device\``
      ven_idx=0

      for vendor in $sdio_vendors; do
          case "$vendor" in
          "0x0271")
              dev_idx=0
              for device in $sdio_devices; do
                  if [ $ven_idx -eq $dev_idx ]; then
                      case "$device" in
                      "0x0400" | "0x0401")
                          wlanchip="AR6004-SDIO"
                          ;;
                      *)
                          ;;
                      esac
                  fi
                  dev_idx=$(( $dev_idx + 1))
              done
              ;;
          *)
              ;;
          esac
          ven_idx=$(( $ven_idx + 1))
      done
# auto detect ar6004-sdio card end

# auto detect ar6004-usb card
# for ar6004-usb card, the vendor id and device id is as the following
# vendor id  product id
#    0x0cf3     0x9374
#    0x0cf3     0x9372
      usb_vendors=`echo \`cat /sys/bus/usb/devices/*/*/idVendor\``
      usb_products=`echo \`cat /sys/bus/usb/devices/*/*/idProduct\``
      ven_idx=0

      for vendor in $usb_vendors; do
          case "$vendor" in
          "0cf3")
              dev_idx=0
              for product in $usb_products; do
                  if [ $ven_idx -eq $dev_idx ]; then
                      case "$product" in
                      "9374" | "9372")
                          wlanchip="AR6004-USB"
                          ;;
                      *)
                          ;;
                      esac
                  fi
                  dev_idx=$(( $dev_idx + 1))
              done
              ;;
          *)
              ;;
          esac
          ven_idx=$(( $ven_idx + 1))
      done
# auto detect ar6004-usb card end

      echo "The WLAN Chip ID is $wlanchip"
      case "$wlanchip" in
      "AR6004-USB")
        setprop wlan.driver.ath 2
	mount  -o remount,rw,barrier=1  /system
        rm  /system/lib/modules/wlan.ko
        rm  /system/lib/modules/cfg80211.ko
        ln -s /system/lib/modules/ath6kl-3.5/ath6kl_usb.ko \
		/system/lib/modules/wlan.ko
        ln -s /system/lib/modules/ath6kl-3.5/cfg80211.ko \
		/system/lib/modules/cfg80211.ko
        rm /system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin
        rm /system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin
        ln -s /system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin_usb \
		/system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin
        ln -s /system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin_usb \
		/system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin
	mount -o remount,ro,barrier=1  /system
        ;;
      "AR6004-SDIO")
        setprop wlan.driver.ath 2
        setprop qcom.bluetooth.soc ath3k
	mount  -o remount,rw,barrier=1  /system
        rm  /system/lib/modules/wlan.ko
        rm  /system/lib/modules/cfg80211.ko
        ln -s /system/lib/modules/ath6kl-3.5/ath6kl_sdio.ko \
		/system/lib/modules/wlan.ko
        ln -s /system/lib/modules/ath6kl-3.5/cfg80211.ko \
		/system/lib/modules/cfg80211.ko
        rm /system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin
        rm /system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin
        ln -s /system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin_sdio \
		/system/etc/firmware/ath6k/AR6004/hw1.3/fw.ram.bin
        ln -s /system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin_sdio \
		/system/etc/firmware/ath6k/AR6004/hw1.3/bdata.bin
	mount -o remount,ro,barrier=1 /system
        ;;
      *)
        echo "*** WI-FI chip ID is not specified in /persist/wlan_chip_id **"
        echo "*** Use the default WCN driver.                             **"
        setprop wlan.driver.ath 0 
	mount -o remount,rw,barrier=1  /system
        rm  /system/lib/modules/wlan.ko
        rm  /system/lib/modules/cfg80211.ko
        ln -s /system/lib/modules/prima/prima_wlan.ko /system/lib/modules/wlan.ko
        ln -s /system/lib/modules/prima/cfg80211.ko /system/lib/modules/cfg80211.ko
	mount -o remount,ro,barrier=1 /system

        # The property below is used in Qcom SDK for softap to determine
        # the wifi driver config file
        setprop wlan.driver.config /data/misc/wifi/WCNSS_qcom_cfg.ini
        # We need to make sure the WCNSS platform driver is running.
        # The WCNSS platform driver can either be built as a loadable
        # module or it can be built-in to the kernel.  If it is built
        # as a loadable module it can have one of several names.  So
        # look to see if an appropriately named kernel module is
        # present
        wcnssmod=`ls /system/lib/modules/wcnss*.ko`
        case "$wcnssmod" in
            *wcnss*)
                # A kernel module is present, so load it
                insmod $wcnssmod
                ;;
            *)
                # A kernel module is not present so we assume the
                # driver is built-in to the kernel.  If that is the
                # case then the driver will export a file which we
                # must touch so that the driver knows that userspace
                # is ready to handle firmware download requests.  See
                # if an appropriately named device file is present
                wcnssnode=`ls /dev/wcnss*`
                case "$wcnssnode" in
                    *wcnss*)
                        # There is a device file.  Write to the file
                        # so that the driver knows userspace is
                        # available for firmware download requests
                        echo 1 > $wcnssnode
                        ;;
                    *)
                        # There is not a kernel module present and
                        # there is not a device file present, so
                        # the driver must not be available
                        echo "No WCNSS module or device node detected"
                        ;;
                esac
                ;;
        esac
        # Plumb down the device serial number
        serialno=`getprop ro.serialno`
        echo $serialno > /sys/devices/platform/wcnss_wlan.0/serial_number
        ;;
      esac
      ;;
    msm8660*)
    exit 0
    ;;
    msm7627a* | msm8625)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "ATH6KL")
             setprop wlan.driver.ath 1
#	     mount -o remount,rw,barrier=1 /system
#             rm  /system/lib/modules/wlan.ko
#             rm  /system/lib/modules/cfg80211.ko
#             ln -s /system/lib/modules/ath6kl/ath6kl_sdio.ko /system/lib/modules/wlan.ko
#             ln -s /system/lib/modules/ath6kl/cfg80211.ko /system/lib/modules/cfg80211.ko
#	     mount -o remount,ro,barrier=1 /system
             ;;
            "WCN1314")
             setprop wlan.driver.ath 0
#	     mount -o remount,rw,barrier=1 /system
#             rm  /system/lib/modules/wlan.ko
#             rm  /system/lib/modules/cfg80211.ko
#             ln -s /system/lib/modules/volans/WCN1314_rf.ko /system/lib/modules/wlan.ko
#             ln -s /system/lib/modules/volans/cfg80211.ko /system/lib/modules/cfg80211.ko
#	     mount  -o remount,ro,barrier=1 /system
             ;;
            *)
             setprop wlan.driver.ath 1
#	     mount -o remount,rw,barrier=1 /system
#             rm  /system/lib/modules/wlan.ko
#             rm  /system/lib/modules/cfg80211.ko
#             ln -s /system/lib/modules/ath6kl/ath6kl_sdio.ko /system/lib/modules/wlan.ko
#             ln -s /system/lib/modules/ath6kl/cfg80211.ko /system/lib/modules/cfg80211.ko
#	     mount -o remount,ro,barrier=1 /system
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    msm7630*)
    exit 0
    ;;
    msm7627*)
	mount -o remount,rw,barrier=1 /system
        ln -s /data/hostapd/qcom_cfg.ini /etc/firmware/wlan/qcom_cfg.ini
        ln -s /persist/qcom_wlan_nv.bin /etc/firmware/wlan/qcom_wlan_nv.bin
	mount -o remount,ro,barrier=1 /system
    ;;

    *)
      ;;
esac
exit 0
