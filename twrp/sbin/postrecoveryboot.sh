#!/sbin/sh

# wait for system to settle
sleep 5

# Tell us that we're in postrecoveryboot.sh
echo "I:Postrecoveryboot script started!"

# Clear "recovery --bnr_recovery-s" or etc flag.
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64

# Tell us that it worked!
echo "I:LGE MISC flag reset"
