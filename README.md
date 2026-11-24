# rokid-lottie-test

最小验证项目：在 AIUI（Rokid AI 眼镜）上验证 `<lottie-view>` 能否渲染外部生成的 Lottie 动画。仓库本身即完整项目，可直接从 GitHub 导入。

## 文件
| 文件 | 说明 |
|---|---|
| `app.json` | 项目配置，注册唯一页面 `pages/index/index` |
| `pages/index/index.ink` | 验证页：顶部标题 + 中央 `<lottie-view>`（480×352，auto-play + loop）+ 底部状态文字 |
| `assets/v6_green.json` | **当前使用**。按眼镜单色绿规范重做：身体和头部 55% 亮度、发力的手臂和小腿 100% 亮度、背景纯黑 |
| `assets/v6.json` | 同一段动画的白 + 橙配色原版，仅供彩色屏（手机端或桌面预览）对照 |
| `assets/v6_spritesheet.png` | 备用：1920×1408，4 列×4 行共 16 帧，每帧 480×352，从左到右、从上到下 |
| `assets/v6_frame.png` | 兜底：静态单帧 |
| `AGENTS.md` | AIUI 智能体身份定义 |

动画为标准 Bodymovin v5.7.4 格式：fr=25、16 帧、画布 480×352。只用到纯色背景层（ty=1）、形状图层（ty=4）、stroke 圆头圆角（lc=2、lj=2）、椭圆填充、逐帧线性关键帧（路径关键帧带 s 和 e）、描边透明度。

## 验收
- 成功：能看到小人循环跳绳，身体较暗、发力的手臂和小腿最亮，画面只有绿色和黑色。
- 桌面预览正常后，必须在手机 AI APP 或眼镜上再确认一次。
- lottie-view 渲染失败时，改用 canvas 按 25fps 逐帧绘制精灵图；再不行用 `<image>` 显示静态帧。

## 约束
- 不要修改 `assets/` 下的文件，不要添加无关功能。
- 背景必须是纯黑，文字和线条只用 `#40ff5e` 的亮度阶梯。
