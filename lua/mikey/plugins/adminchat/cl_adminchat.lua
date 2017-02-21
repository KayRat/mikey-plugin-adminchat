mikey.network.receive("adminchat.message", function(objData)
  local objFrom = objData["from"]
  local strText = objData["message"]
  
  hudlog.add(
    color_white, "<",
    color_white, os.date("%I:%M"),
    color_white, " ",
    team.GetColor(objFrom:Team()), objFrom:Nick(),
    color_white, "> ",
    Color(255, 242, 0), strText
  )
end)
