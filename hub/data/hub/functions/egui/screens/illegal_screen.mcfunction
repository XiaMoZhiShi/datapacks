tellraw @s {"translate": "text.hub.hint", "color": "gray", "bold": true, "with":[{"text":"非法屏幕", "color":"gray", "bold": true}, {"text": "请求的屏幕ID", "color": "red", "extra":[{"score":{"objective": "xmzs_egui_id", "name": "@s"}}, "不存在"]}]}

scoreboard players set @s xmzs_egui_id 0
function hub:egui/screens/reload_screen