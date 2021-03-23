## 使用GitHub Actions每日自动更新[fancyss](https://github.com/hq450/fancyss)规则  
[![Update Fancyss Rules](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules.yml/badge.svg)](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules.yml)   

---   
#### Actions会在每日UTC+8 3:45时自动执行并更新规则，推荐在插件中设置每天4:00定时更新  
---
### 食用方法：
- 手动将`/koolshare/scripts/ss_rule_update.sh`中第10行的`url_main`参数修改为
- `"https://raw.githubusercontent.com/qxzg/Actions/master/fancyss_rules"`  (推荐，直连GitHub)
- `"https://cdn.jsdelivr.net/gh/qxzg/Actions@master/fancyss_rules"`  (仅当更新规则时显示`没有检测到在线版本，可能是访问github有问题`时推荐，由于jsDelivr CDN存在最长24小时的缓存，会导致仓库已经更新了今天的规则，但CDN没有刷新的情况)
- > x86版本的fancyss插件同理，找到更新规则的脚本并替换`url_main`就可以了（请注意是否有最后的`/`）
- 每次fancyss更新后*都需重新修改该脚本*

##### 注：由于源更新较慢，大陆白名单已改用[ispip.clang.cn](https://ispip.clang.cn/all_cn.txt)作为规则源，而非fancyss原版规则中的[https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/ipip_country/ipip_country_cn.netset](https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/ipip_country/ipip_country_cn.netset)   
