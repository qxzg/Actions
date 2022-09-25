# 使用GitHub Actions每日自动更新[fancyss 3.0](https://github.com/hq450/fancyss)规则  
[![Update Fancyss Rules](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules-3.0.yml/badge.svg)](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules-3.0.yml)
[![](https://data.jsdelivr.com/v1/package/gh/qxzg/actions/badge?style=rounded)](https://www.jsdelivr.com/package/gh/qxzg/actions)

## Update 2022/9/24: 支持了3.0版本，旧版本规则将在[这里](https://github.com/qxzg/Actions/tree/master)保留，但停止更新
---   
#### Actions会在每日UTC+8 3:45时自动执行并更新规则，推荐在插件中设置每天4:00定时更新  
---
### 食用方法：
- 进入路由器SSH，运行以下命令会自动将`ss_rule_update`脚本中的`url_main`参数指向我的仓库（二选一即可）：
- `sed -i 's/^\turl_main.*/\turl_main="https:\/\/raw.githubusercontent.com\/qxzg\/Actions\/3.0\/fancyss_rules"/g' /koolshare/scripts/ss_rule_update.sh`  （**推荐**，直连GitHub仓库）
- `sed -i 's/^\turl_main.*/\turl_main="https:\/\/cdn.jsdelivr.net\/gh\/qxzg\/Actions@3.0\/fancyss_rules"/g' /koolshare/scripts/ss_rule_update.sh`  （仅当更新规则时显示`"没有检测到在线版本，可能是访问github有问题"`时推荐，由于jsDelivr CDN存在最长24小时的缓存，规则更新会有延迟）
- > x86版本fancyss插件请自行找到更新规则的脚本并替换`url_main`参数
### 每次fancyss插件更新后都需要\*重新运行一次\*更新`ss_rule_update`脚本的命令
