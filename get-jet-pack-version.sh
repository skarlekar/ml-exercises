JETSON_L4T_STRING=$(head -n 1 /etc/nv_tegra_release)
JETSON_L4T_RELEASE=$(echo $JETSON_L4T_STRING | cut -f 2 -d ' ' | grep -Po '(?<=R)[^;]+')
JETSON_L4T_REVISION=$(echo $JETSON_L4T_STRING | cut -f 2 -d ',' | grep -Po '(?<=REVISION: )[^;]+')
JETSON_L4T_VERSION="$JETSON_L4T_RELEASE.$JETSON_L4T_REVISION"
echo "$LOG Jetson BSP Version:  L4T R$JETSON_L4T_VERSION"
