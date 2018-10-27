ALTER TABLE `gameobject_template` ADD `Data33` int(11) NOT NULL DEFAULT '0' AFTER `Data32`;
ALTER TABLE `playerchoice` ADD `KeepOpenAfterChoice` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `HideWarboardHeader`;
ALTER TABLE `playerchoice_response`
  ADD `Flags` int(11) NOT NULL DEFAULT '0' AFTER `ChoiceArtFileId`,
  ADD `WidgetSetID` int(10) unsigned NOT NULL DEFAULT '0' AFTER `Flags`,
  ADD `GroupID` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `WidgetSetID`;

ALTER TABLE `quest_template`
  ADD `ScalingFactionGroup` int(11) NOT NULL DEFAULT '0' AFTER `QuestLevel`,
  ADD `FlagsEx2` int(10) unsigned NOT NULL DEFAULT '0' AFTER `FlagsEx`,
  ADD `PortraitGiverMount` int(11) NOT NULL DEFAULT '0' AFTER `PortraitGiver`,
  CHANGE `QuestRewardID` `TreasurePickerID` int(11) NOT NULL DEFAULT '0' AFTER `AllowableRaces`;
