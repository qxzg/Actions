## 自用的Actions仓库
---
#### ~~1. [ad_block_file_format.yml](https://github.com/qxzg/Actions/blob/master/.github/workflows/ad_block_file_format.yml.disabled)~~ (Disabled)
[![Change Ad Blocking File Format](https://github.com/qxzg/Actions/workflows/Change%20Ad%20Blocking%20File%20Format/badge.svg)](https://github.com/qxzg/Actions/actions?query=workflow%3A%22Change+Ad+Blocking+File+Format%22)  
> 用于将 https://github.com/neodevpro/neodevhost 中的Dnsmasq列表转换为lede的SSR+支持的格式，并上传至阿里云OSS  
---
#### 2. [build-lesspass-server.yml](https://github.com/qxzg/Actions/blob/master/.github/workflows/build-lesspass-server.yml)  
[![Build Lesspass Server](https://github.com/qxzg/Actions/workflows/Build%20Lesspass%20Server/badge.svg)](https://github.com/qxzg/Actions/actions?query=workflow%3A%22Build+Lesspass+Server%22)  
> 从 https://github.com/lesspass/lesspass 构建自定义的docker镜像并上传至阿里云私有镜像
---
#### 3. [Update Fancyss Rules](https://github.com/qxzg/Actions/blob/master/.github/workflows/fancyss-rules.yml)  
[![Update Fancyss Rules](https://github.com/qxzg/Actions/workflows/Update%20Fancyss%20Rules/badge.svg)](https://github.com/qxzg/Actions/actions?query=workflow%3A%22Update+Fancyss+Rules%22)
> 每日UTC+8 3:45自动更新[fancyss](https://github.com/hq450/fancyss/tree/master/rules)规则  
> 食用方法：
>> 手动将`/koolshare/scripts/ss_rule_update.sh`中第10行的url_main参数改为  
> `https://raw.githubusercontent.com/qxzg/Actions/master/fancyss_rules/`  
> 并且每次更新fancyss后需重新修改该脚本
