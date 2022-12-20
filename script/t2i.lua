local api = "http://261090.proxy.nscc-gz.cn:8888/"
local raw = msg.fromMsg:sub(#"/t2i" + 1)
local tags = raw:sub(#"/t2i" + 1) or "Baka"
local json = require("json")
-- local seed = ranint(0, 1919810)
local prompt = "masterpiece, best quality, " .. tags

local tab = {}
tab["prompt"] = prompt
tab["width"] = 512
tab["height"] = 768
tab["cfg_scale"] = 12
tab["n_iter"] = 1
tab["steps"] = 20
tab["seed"] = -1
tab["batch_size"] = 1
tab["sampler_index"] = "Euler"
tab["negative_prompt"] =
"nsfw, lowres, text, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry,sex,naked"

local whlstfromGroup = { 971050440, 10086 } --白名单群
local whlstfromQQ = { 2753364619, 1712724531 } --白名单用户
local enableTranslate = 1 -- 1为开启

if tags == "Baka" then return "有笨蛋！tags都不会写欸——但是我不说是谁*" end

for k = 1, #whlstfromGroup do
    if msg.gid == msg.gid == whlstfromGroup[k] and enableTranslate == 1 then
        sendMsg("t2i...(翻译已开启，可能会损失部分信息，高阶魔法师建议关闭。)", msg.fromGroup, msg.fromQQ)
        requestApi = "https://ovooa.com/API/qqfy/api.php?type=male&msg=" .. prompt
        status , translatedPrompt = http.get(requestApi)
        tab["prompt"] = translatedPrompt
        data = json.encode(tab)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return image
    else
        sendMsg("t2i...(翻译已关闭)", msg.fromGroup, msg.fromQQ)
        data = json.encode(tab)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return image
    end
end

for k = 1, #whlstfromQQ do
    if msg.uid == whlstfromQQ[k] and enableTranslate == 1 then
        sendMsg("t2i...(翻译已开启，可能会损失部分信息，高阶魔法师建议关闭。)", msg.fromGroup, msg.fromQQ)
        requestApi = "https://ovooa.com/API/qqfy/api.php?type=male&msg=" .. prompt
        status , translatedPrompt = http.get(requestApi)
        tab["prompt"] = translatedPrompt
        data = json.encode(tab)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return imagee
    else
        sendMsg("t2i...(翻译已关闭)", msg.fromGroup, msg.fromQQ)
        data = json.encode(tab)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return image
    end
end
return "你没有权限哦~"
