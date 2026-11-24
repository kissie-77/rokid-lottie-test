# rokid-lottie-test

最小验证项目：在 AIUI（Rokid AI 眼镜）上验证 `<lottie-view>` 能否渲染外部生成的 Lottie 动画。

## 文件
| 文件 | 说明 |
|---|---|
| `assets/v6.json` | Lottie 动画（Bodymovin v5.7.4，fr=25，16 帧，480×352，约 50KB）。只用到纯色背景层、形状图层、stroke 圆头圆角、椭圆填充、逐帧线性关键帧 |
| `assets/v6_spritesheet.png` | 备用：1920×1408，4 列×4 行共 16 帧，每帧 480×352，从左到右、从上到下 |
| `assets/v6_frame.png` | 兜底：静态单帧 |
| `AGENTS.md` | AIUI 智能体身份定义 |

## 待生成（由 AIUI Studio 的开发助手完成）
`app.json`、`app.js`、`package.json`、`pages/index/index.ink`。

## 页面要求
1. 只做一个页面 `pages/index/index.ink`，全屏深色背景（#0E0F14）。
2. 顶部一行文字："Lottie 验证 · V6"。
3. 中央放 `<lottie-view>`，480×352，`src` 指向 `/assets/v6.json`，开启 auto-play 和 loop。
4. 底部一行状态文字：组件有加载成功/失败事件就接上显示，没有就放静态文字。
5. 不要修改 `assets/` 下的文件，不要添加无关功能。

## 验收
- 成功：能看到小人循环跳绳（白色粗圆肢体、橙色手臂和小腿、圆形头部与身体相连）。
- 桌面预览正常后，必须在手机 AI APP 或眼镜上再确认一次。
- lottie-view 渲染失败时，改用 canvas 按 25fps 逐帧绘制精灵图；再不行用 `<image>` 显示静态帧。
