local Translations = {
    error = {
        not_give = "Belirtilen ID'ye kart verilemedi.",
        givecash = "Kullanım /givecash [ID] [MİKTAR]",
        wrong_id = "Yanlış ID.",
        dead = "Öldün.",
        too_far_away = "Çok uzaktasınız.",
        not_enough = "Yeterli paraya sahip değilsin.",
        invalid_amount = "Geçersiz miktar girildi."
    },
    success = {
        debit_card = "Banka kartı başarıyla alındı.",
        cash_deposit = "Başarıyla $%{value} nakit yatırıldı",
        cash_withdrawal = "$%{value} para çekildi",
        updated_pin = "Başarıyla kart şifreni güncelledin",
        savings_deposit = "You successfully made a savings deposit of $%{value}.",
        savings_withdrawal = "You successfully made a savings withdrawal of $%{value}.",
        opened_savings = "You have successfully opened a savings account.",
        give_cash = "%{id}'ye $%{cash} gönderildi!",
        received_cash = "%{id} tarafından hesabınıza $%{cash} gönderildi!"
    },
    info = {
        bank_blip = "Banka",
        access_bank_target = "Banka Hesabına Eriş",
        access_bank_key = "[E] - Banka Hesabına Eriş",
        current_to_savings = "Transfer Current Account to Savings",
        savings_to_current = "Transfer Savings to Current Account",
        deposit = "$%{amount} hesaba yatırıldı.",
        withdraw = "$%{amount} hesaptan çekildi.",
    },
    command = {
        givecash = "Oyuncuya para ver."
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
