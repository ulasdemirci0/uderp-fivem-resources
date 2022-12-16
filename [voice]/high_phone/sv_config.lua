--[[ 
  You'd ask why is this config even here, when there's config.lua.
  This config is so that cheaters cannot find the webhook URL's, or any other information that should be only accessible to the server and server developers.
]]

-- Server config starts here!
Config.EnableUpdateNotifications = false -- Enable messages informing about new updates available in the server console?

Config.TwitterWebhooks = true -- Set to false if you do not want to send webhooks on discord for every new tweet.
Config.TweetWebhook = "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw"
Config.TweetReportWebhook = "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw" -- Where will reported tweets be posted?

Config.AdWebhooks = true -- Set to false if you do not want to send webhooks on discord for every new advertisment.
Config.AdWebhook = "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw"

Config.MailWebhooks = true -- Set to false if you do not want to send webhooks for every mail sent.
Config.MailWebhook = "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw"

Config.TransactionWebhooks = true -- Set to false if you do not want to send webhooks on discord for every new transaction made on the bank app.
Config.TransactionWebhook = "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw"

-- You can choose to either save unhashed or hashed passwords to the database of twitter/mail accounts.
-- Keep in mind that your server takes responsibility for this, not the resource creator. If the database gets leaked and you didn't use hashed passwords, thats on your server, and the creators of it.
Config.HashPasswords = false

-- Column/tables data
Config.PhoneNumberColumn = "phone"
Config.EnableBankNumbersGeneration = true -- Set to false if you're using another banking script that generates the iban numbers
Config.BankNumberColumn = "iban"

-- If you know LUA, you can make your own number generation format, isn't too hard even if you don't know LUA with a few google searches.
Config.GenerateRandomNumber = function(source)
  math.randomseed(source + os.time()) -- Do not touch this

  -- You can change the number format below!
  local number = math.random(111, 999) .. "-" .. math.random(1111, 9999)

  return number
end

Config.GenerateRandomIBAN = function(source)
  math.randomseed(source + os.time()) -- Do not touch this

  -- You can change the iban format below!
  local iban = "UDERP" .. math.random(111111, 999999) .. ""

  return iban
end

Config.SendWebhook = function(url, title, description, color, image, footer)
  local embeds = { {
    ["title"] = title,
    ["description"] = description,
    ["color"] = color,
    ["image"] = {
      url = image
    },
    ["footer"] = {
      text = footer
    }
  } }

  if url ==
      "https://discord.com/api/webhooks/1051154066522247168/OGVFfqcSKmrEkSb6HHweyX8Zp6YiUp2rYyvqsYVshmknUCHKkHqm7Aso9GfHBaBmJRGw" then
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({ username = "", embeds = embeds }),
      { ['Content-Type'] = 'application/json' })
  end
end

-- Admin groups/aces, that can use /settwitterrank command, and in the future maybe other admin commands
Config.AdminGroups = {
  "god",
  "admin",
  "mod"
}

Config.AdminAces = {
  "group.admin",
  "group.moderator",
  "group.developer"
}
