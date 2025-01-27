# AImage
> 基于stable-diffusion-webui的AI绘画脚本

### [Lua脚本版本](https://forum.kokona.tech/d/1552-aihua-hua-ji-yu-naifu-apide-aihui-hua-jiao-ben/1)

1. [下载](https://raw.githubusercontent.com/Stardust-minus/AImage/master/aimage-v103.lua)。
2. 放入 `DiceQQ\plugin\`文件夹下。
3. 使用 `.system load`命令重载bot。
4. 发送 `.naifu:1girl`尝尝鲜。

> tips:指令格式为:`.naifu:xxx,xxx,xxx,xxx···`

### [Mod模块版本](https://forum.kokona.tech/d/1552-aihua-hua-ji-yu-naifu-apide-aihui-hua-jiao-ben/2)

> 这里有一个 @"安研色Shiki"#5 的[自用版本](https://forum.kokona.tech/d/1553-gong-neng-mo-kuai-aihui-tu-modzi-yong) 推荐下载。

[![](https://img.shields.io/github/last-commit/cypress0522/AImage)](https://github.com/cypress0522/AImage/commits/main)[![](https://img.shields.io/github/issues/cypress0522/AImage)](https://github.com/cypress0522/AImage/issues)[![](https://img.shields.io/github/issues-pr/cypress0522/AImage)](https://github.com/cypress0522/AImage/pulls)[![](https://img.shields.io/github/v/release/cypress0522/AImage?include_prereleases)](https://github.com/cypress0522/AImage/releases)

```json
{
    "mod":"AImage",
    "author":"简律纯&Stardust·减",
    "ver":"1.2.2",
    "dice_build":612,
    "brief":"AI作画",
    "comment":"",
    "repo":"https://ghproxy.com/https://github.com/ssJSKFJDJ/AImage.git",
    "helpdoc":{
        "AImage":"AImage v1.2.2\n【/t2i tags】与【/del】以及【/i2i tags】\ngithub:https://github.com/ssJSKFJDJ/AImage/tree/master"
    }
}
```

- Dice版本2.6.5beta12(624+)以上安装方法:

 1. 在 `./DiceQQ/conf/mod/source.list`文件内（没有mod文件夹和这文件就新建）输入
   ```
   https://raw.sevencdn.com/Dice-Developer-Team/DiceModIndex/main/
   https://raw.githubusercontent.com/Dice-Developer-Team/DiceModIndex/main/
   https://ssjskfjdj.netlify.app/Module/
   ```
 2. 使用 `.system load`命令重载bot，这样做的目的是为了让步骤1里的远程地址生效。
 3. 对bot发送 `.mod get AImage`命令，等待安装。
 4. 回到第二步，这样做的目的是为了让mod被加载。
 5. Enjoy Your Self!

- Dice版本2.6.4b(612+)以上安装方法：

 1. 浏览器访问 https://github.com/ssJSKFJDJ/AImage 并点击绿色按钮 `Code`下的 `Download Zip`按钮下载仓库压缩包。
 2. 解压压缩包，将里面的文件和文件夹全部丢进 `./DiceQQ/mod/`文件夹内。
 3. 使用 `.system load`命令重载。
 4. Enjoy Your Self!

> tips:指令格式为:`.t2i xxx,xxx,xxx···`与`/i2i xxx,xxx···`

如果你的框架是Gocq，并且"用gocq监听15700端口的http请求"（端口可以更改，详见脚本）,那么你可以在回复骰娘消息时带上 `/delete`使骰娘撤回你引用回复的那条消息，这么做的目的是方便撤回一些奇奇怪怪的图片。

关于v1.1.0更新的白名单机制:whlstfromQQ内的用户可触发指令，whlstfromGroup内的群聊用户可触发指令。

### Q&A
1. 框架之间的CQ码问题
> Q:为什么咱`MIRAI`框架的发图然后报错了？
> A:请改动script里的脚本，将返回的CQ码内`file=`改成`url=`。

2. 服务器访问问题
> Q:为什么不管咱是什么框架，都不能出图捏？`Gocq`的或许还会返回一串CQ码。
> A:这与阿尘的服务器有关，同一时间访问量过大和阿尘在服务器调试都有可能影响到，请过一会儿继续尝试。

3. 版本问题
> Q:Lua版与Mod模块版有何不同？
> A:
1. 可支持的Dice!版本不同，Mod版本最低需要Dice! 2.6.4(612)的支持，而Lua版本范围更加宽泛，几乎所有Dice!版本都可以使用。
2. 延展性不同。Lua版本~~较为简陋~~,更多的是让用户自己根据需要去修改脚本，比如添加白名单群或者指令次数上限等；而Mod版本更可能的会持续更新，你只需要 `.mod update AImage`即可。

### 附件

1. [全部tag四万个.xlsx](https://ssjskfjdj.netlify.app/Download/%E5%85%A8%E9%83%A8tag%E5%9B%9B%E4%B8%87%E4%B8%AA.xlsx)
2. [中英tag对照.xlsx](https://ssjskfjdj.netlify.app/Download/%E4%B8%AD%E8%8B%B1tag%E5%AF%B9%E7%85%A7.xlsx)
