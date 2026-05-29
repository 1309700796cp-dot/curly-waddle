# Desktop Countdown Widget

这是一个 Windows 桌面倒计时浮窗项目，配套一个可部署到 Cloudflare Pages 的下载页。

## 目录结构

- `public/`：Cloudflare Pages 静态网页目录
- `public/downloads/DesktopCountdownWidget-v1.0.0.zip`：Windows 版下载包
- `app/`：桌面浮窗源码和启动脚本

## 本地使用

下载并解压 `DesktopCountdownWidget-v1.0.0.zip` 后：

1. 双击 `Start-DesktopCalendar.cmd` 启动浮窗
2. 如需开机自启动，双击 `Enable-Startup.cmd`

## Cloudflare Pages

连接 GitHub 仓库后，Cloudflare Pages 设置：

- Framework preset: `None`
- Build command: 留空
- Build output directory: `public`

自定义域名建议同时绑定：

- `chanping.de`
- `www.chanping.de`

如果只绑定其中一个，另一个地址不会自动可用。
