<!--

```sequence

Title: Zigbee 子设备激活

participant APP
participant SDK
participant Zigbee网关
participant Service

Note over Zigbee网关: 将 Zigbee 子设备重置
APP->SDK: 发送子设备激活指令
SDK->Zigbee网关: 发送子设备激活指令

Note over Zigbee网关: 收到子设备激活信息

Zigbee网关->Service: 通知云端子设备激活
Service->Zigbee网关: 子设备激活成功

Zigbee网关->SDK: 子设备激活成功
SDK->APP: 子设备激活成功

``` -->
