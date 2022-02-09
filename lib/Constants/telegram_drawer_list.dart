import 'package:flutter/material.dart';
import 'package:untitled/models/telegram_model.dart';

class TelegramList {
  static List<Telegram> telegramlist = [
    Telegram(tIcon: Icons.group_outlined, tOption: "New Group"),
    Telegram(tIcon: Icons.person_add_alt_outlined, tOption: "Contacts"),
    Telegram(tIcon: Icons.call, tOption: "Calls"),
    Telegram(tIcon: Icons.nature_people_outlined, tOption: "People Nearby"),
    Telegram(tIcon: Icons.save_alt_sharp, tOption: "Saved Massages"),
    Telegram(tIcon: Icons.settings, tOption: "Setting"),
    Telegram(tIcon: Icons.person_add_alt, tOption: "Invite Friends"),
    Telegram(tIcon: Icons.query_builder_outlined, tOption: "Telegram Features"),
  ];

}