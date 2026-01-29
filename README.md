# FancySS 规则自动更新源

[![Update Fancyss Rules](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules-3.0.yml/badge.svg)](https://github.com/qxzg/Actions/actions/workflows/fancyss-rules-3.0.yml)
[![jsDelivr](https://data.jsdelivr.com/v1/package/gh/qxzg/actions/badge?style=rounded)](https://www.jsdelivr.com/package/gh/qxzg/actions)

本仓库提供 FancySS 规则文件，并通过 GitHub Actions 自动更新，供插件在线拉取。

## 更新与兼容性

- 2026/01/29：支持 3.3.9 及以上版本。
- 2022/09/24：支持 [3.0](https://github.com/hq450/fancyss)；旧版本规则仍在旧分支保留更新（见 https://github.com/qxzg/Actions/tree/master）。

## 更新频率

- 每日 UTC+8 03:45 自动更新。
- 建议在插件中设置每天 04:00 定时更新（避免与生成时间冲突）。

## 使用方法（推荐）

进入路由器 SSH，执行以下命令之一，把更新脚本中的 `URL_MAIN` 指向本仓库规则目录：

**方案 A：直连 GitHub（推荐）**

```sh
sed -i 's/^URL_MAIN.*/URL_MAIN="https:\/\/raw.githubusercontent.com\/qxzg\/Actions\/3.0\/fancyss_rules_ng"/g' /koolshare/scripts/ss_rule_update.sh
```

**方案 B：走 jsDelivr CDN（仅在 GitHub 访问不稳定时）**

```sh
sed -i 's/^URL_MAIN.*/URL_MAIN="https:\/\/cdn.jsdelivr.net\/gh\/qxzg\/Actions@3.0\/fancyss_rules_ng"/g' /koolshare/scripts/ss_rule_update.sh
```

说明：当更新规则时提示“没有检测到在线版本。可能是访问github有问题”时，可尝试方案 B。
jsDelivr 可能存在最长 24 小时缓存，因此规则更新会有延迟。

## 版本选择

- FancySS 3.3.9 之前：将以上命令中的 `fancyss_rules_ng` 改为 `fancyss_rules`。
- x86 / 非 koolshare 路径：请自行找到对应的更新规则脚本位置，并替换其中的 `URL_MAIN`。

## 注意事项

- 每次插件更新后，都需要重新执行一次上面的命令（插件更新可能覆盖脚本）。

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=qxzg/Actions&type=Date)](https://star-history.com/#qxzg/Actions&Date)
