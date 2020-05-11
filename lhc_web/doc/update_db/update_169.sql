CREATE TABLE `lh_generic_bot_bot` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `name` varchar(100) NOT NULL, PRIMARY KEY (`id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
CREATE TABLE `lh_generic_bot_group` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `name` varchar(100) NOT NULL, `bot_id` bigint(20) NOT NULL, PRIMARY KEY (`id`), KEY `bot_id` (`bot_id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `lh_generic_bot_trigger` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `name` varchar(100) NOT NULL, `actions` longtext NOT NULL, `group_id` bigint(20) NOT NULL, `bot_id` int(11) NOT NULL, `default` int(11) NOT NULL, PRIMARY KEY (`id`), KEY `bot_id` (`bot_id`) ,KEY `group_id` (`group_id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `lh_generic_bot_trigger_event` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `pattern` varchar(100) NOT NULL, `trigger_id` bigint(20) NOT NULL, `bot_id` int(11) NOT NULL, `type` int(11) NOT NULL, PRIMARY KEY (`id`), KEY `pattern` (`pattern`), KEY `type` (`type`), KEY `trigger_id` (`trigger_id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `lh_generic_bot_payload` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `name` varchar(100) NOT NULL, `payload` varchar(100) NOT NULL, `bot_id` int(11) NOT NULL, `trigger_id` int(11) NOT NULL, PRIMARY KEY (`id`), KEY `bot_id` (`bot_id`), KEY `trigger_id` (`trigger_id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `lh_generic_bot_chat_workflow` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `chat_id` bigint(20) NOT NULL,`trigger_id` bigint(20) NOT NULL, `identifier` varchar(100) NOT NULL, `status` int(11) NOT NULL, `collected_data` text, PRIMARY KEY (`id`), KEY `chat_id` (`chat_id`)) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `lh_msg` ADD `meta_msg` longtext NOT NULL, COMMENT='';