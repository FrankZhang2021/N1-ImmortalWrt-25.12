# 项目简介

本固件适配斐讯 N1 旁路由模式，追求轻量，不具备 PPPoE、WiFi 相关功能。

固件仅包含默认皮肤以及下列 LuCI 应用：

- luci-app-daed：基于 eBPF 分流的代理工具。内存占用稍大、上手门槛较高，换来的是直连流量处理性能大幅强于传统的各类用户态代理工具，如 openClash、SSRplus 等。
- [luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：DNS 分流与解析增强，支持本地规则处理与缓存优化。

## 致谢

本项目基于 [ImmortalWrt-25.12](https://github.com/immortalwrt/immortalwrt/tree/openwrt-25.12) 源码编译，使用 flippy 的 [脚本](https://github.com/unifreq/openwrt_packit) 和 ophub 维护的 [内核](https://github.com/ophub/kernel/releases/tag/kernel_stable) 打包成完整固件，感谢开发者们的无私分享。

flippy 固件的更多细节参考 [恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。
