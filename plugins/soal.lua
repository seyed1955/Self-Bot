do

function run(msg, matches)
local reply_id = msg['id']
local text = 'بله ؟ بفرمایید ،من ابوالفضلم'
--در اینجا میتونین جواب رو تعیین کنید
if matches[1] == 'ابول' or 'abolfazl' or 'ابوالفضل' or 'abol' then
    if not is_sudo(msg) then
--در این قسمت میتونید اسم خودتون رو بزارید
--یادتون باشه وقتی اسم خودتون رو گذاشتید پترن هارو هم تغییر بدید
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^ابوالفضل$",
    "^ابول$",
"^([Aa]bolfazl)$",
"^([Aa]bol)$",
},
run = run
}

end
