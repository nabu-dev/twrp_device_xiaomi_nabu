#!/system/bin/sh
# set a couple of props, depending on device

load_nabu()
{
    resetprop "ro.product.name" "nabu"
    resetprop "ro.product.model" "Xiaomi Pad 5 (21051182G)"
}

load_nabucn()
{
    resetprop "ro.product.name" "bhima"
    resetprop "ro.product.model" "Xiaomi Pad 5 China (21051182C)"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_nabu;
        ;;
    "CHINA")
        load_nabucn;
        ;;
    *)
        load_nabu;
        ;;
esac

exit 0;

