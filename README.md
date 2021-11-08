## 使用GitHub Actions每日自动更新[fancyss](https://github.com/hq450/fancyss)规则  
[![Update Fancyss Rules](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules.yml/badge.svg)](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules.yml)   

---   
#### Actions会在每日UTC+8 3:45时自动执行并更新规则，推荐在插件中设置每天4:00定时更新  
---
### 食用方法：
- 进入路由器SSH，运行以下命令会自动将`ss_rule_update`脚本中的`url_main`参数指向我的仓库（二选一即可）：
- `sed -i 's/^\turl_main.*/\turl_main="https:\/\/raw.githubusercontent.com\/qxzg\/Actions\/master\/fancyss_rules"/g' /koolshare/scripts/ss_rule_update.sh`  （**推荐**，直连GitHub仓库）
- `sed -i 's/^\turl_main.*/\turl_main="https:\/\/cdn.jsdelivr.net\/gh\/qxzg\/Actions@master\/fancyss_rules"/g' /koolshare/scripts/ss_rule_update.sh`  （仅当更新规则时显示`"没有检测到在线版本，可能是访问github有问题"`时推荐，由于jsDelivr CDN存在最长24小时的缓存，规则更新会有延迟）
- > x86版本fancyss插件请自行找到更新规则的脚本并替换`url_main`参数
### 每次fancyss插件更新后都需要\*重新运行一次\*更新`ss_rule_update`脚本的命令
---
##### 注：由于源更新较慢，大陆白名单已改用[https://github.com/misakaio/chnroutes2/blob/master/chnroutes.txt](https://github.com/misakaio/chnroutes2/blob/master/chnroutes.txt)作为规则源，而非fancyss原版规则中的[https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/ipip_country/ipip_country_cn.netset](https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/ipip_country/ipip_country_cn.netset)   
