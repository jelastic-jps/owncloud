-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2015 at 03:45 PM
-- Server version: 5.7.7-rc
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `owncloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_activity`
--

CREATE TABLE IF NOT EXISTS `oc_activity` (
  `activity_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL,
  `affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageparams` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_activity_mq`
--

CREATE TABLE IF NOT EXISTS `oc_activity_mq` (
  `mail_id` int(11) NOT NULL,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `amq_appid` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_appconfig`
--

CREATE TABLE IF NOT EXISTS `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_appconfig`
--

INSERT INTO `oc_appconfig` (`appid`, `configkey`, `configvalue`) VALUES
('activity', 'enabled', 'yes'),
('activity', 'installed_version', '2.0.1'),
('activity', 'types', 'filesystem'),
('backgroundjob', 'lastjob', '1'),
('core', 'installedat', '1441986177.7703'),
('core', 'lastcron', '1441986184'),
('core', 'lastupdatedat', '1441986177.7736'),
('core', 'public_files', 'files_sharing/public.php'),
('core', 'public_gallery', 'gallery/public.php'),
('core', 'public_webdav', 'files_sharing/publicwebdav.php'),
('core', 'remote_files', 'files/appinfo/remote.php'),
('core', 'remote_webdav', 'files/appinfo/remote.php'),
('files', 'enabled', 'yes'),
('files', 'installed_version', '1.1.10'),
('files', 'types', 'filesystem'),
('files_locking', 'enabled', 'yes'),
('files_locking', 'installed_version', ''),
('files_locking', 'types', 'filesystem'),
('files_pdfviewer', 'enabled', 'yes'),
('files_pdfviewer', 'installed_version', '0.7'),
('files_pdfviewer', 'ocsid', '166049'),
('files_pdfviewer', 'types', ''),
('files_sharing', 'enabled', 'yes'),
('files_sharing', 'installed_version', '0.6.2'),
('files_sharing', 'types', 'filesystem'),
('files_texteditor', 'enabled', 'yes'),
('files_texteditor', 'installed_version', '0.4'),
('files_texteditor', 'ocsid', '166051'),
('files_texteditor', 'types', ''),
('files_trashbin', 'enabled', 'yes'),
('files_trashbin', 'installed_version', '0.6.3'),
('files_trashbin', 'types', 'filesystem'),
('files_versions', 'enabled', 'yes'),
('files_versions', 'installed_version', '1.0.6'),
('files_versions', 'types', 'filesystem'),
('files_videoviewer', 'enabled', 'yes'),
('files_videoviewer', 'installed_version', '0.1.3'),
('files_videoviewer', 'ocsid', '166054'),
('files_videoviewer', 'types', ''),
('firstrunwizard', 'enabled', 'yes'),
('firstrunwizard', 'installed_version', '1.1'),
('firstrunwizard', 'ocsid', '166055'),
('firstrunwizard', 'types', ''),
('gallery', 'enabled', 'yes'),
('gallery', 'installed_version', '0.6.0'),
('gallery', 'types', ''),
('provisioning_api', 'enabled', 'yes'),
('provisioning_api', 'installed_version', '0.2'),
('provisioning_api', 'types', 'filesystem'),
('templateeditor', 'enabled', 'yes'),
('templateeditor', 'installed_version', '0.1'),
('templateeditor', 'types', ''),
('updater', 'enabled', 'yes'),
('updater', 'installed_version', '0.6'),
('updater', 'types', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filecache`
--

CREATE TABLE IF NOT EXISTS `oc_filecache` (
  `fileid` int(11) NOT NULL,
  `storage` int(11) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `mimetype` int(11) NOT NULL DEFAULT '0',
  `mimepart` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `storage_mtime` int(11) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_filecache`
--

INSERT INTO `oc_filecache` (`fileid`, `storage`, `path`, `path_hash`, `parent`, `name`, `mimetype`, `mimepart`, `size`, `mtime`, `storage_mtime`, `encrypted`, `unencrypted_size`, `etag`, `permissions`) VALUES
(1, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 2956975, 1441986178, 1441986177, 0, 0, '55f2f68223b60', 23),
(2, 1, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1, 'files', 2, 1, 2956975, 1441986178, 1441986178, 0, 0, '55f2f68224708', 31),
(3, 1, 'files/ownCloudUserManual.pdf', 'c8edba2d1b8eb651c107b43532c34445', 2, 'ownCloudUserManual.pdf', 4, 3, 2242192, 1441986177, 1441986177, 0, 0, '5be52a05473de4907d9d343591142c3d', 27),
(4, 1, 'files/Photos', 'd01bb67e7b71dd49fd06bad922f521c9', 2, 'Photos', 2, 1, 678556, 1441986178, 1441986178, 0, 0, '55f2f68217eff', 31),
(5, 1, 'files/Photos/Squirrel.jpg', 'de85d1da71bcd6232ad893f959063b8c', 4, 'Squirrel.jpg', 6, 5, 233724, 1441986178, 1441986178, 0, 0, '373d953c72377a177d0a02b1d2ad4d13', 27),
(6, 1, 'files/Photos/Paris.jpg', 'a208ddedf08367bbc56963107248dda5', 4, 'Paris.jpg', 6, 5, 228761, 1441986178, 1441986178, 0, 0, '1f8a392d88ba0a7599e0a759266736a2', 27),
(7, 1, 'files/Photos/San Francisco.jpg', '9fc714efbeaafee22f7058e73d2b1c3b', 4, 'San Francisco.jpg', 6, 5, 216071, 1441986178, 1441986178, 0, 0, '4299b570f815b7b5939da8277e90cbd6', 27),
(8, 1, 'files/Documents', '0ad78ba05b6961d92f7970b2b3922eca', 2, 'Documents', 2, 1, 36227, 1441986178, 1441986178, 0, 0, '55f2f6822534f', 31),
(9, 1, 'files/Documents/Example.odt', 'c89c560541b952a435783a7d51a27d50', 8, 'Example.odt', 7, 3, 36227, 1441986178, 1441986178, 0, 0, 'b0fa741c5060adfbcf111f51dbaf2d3d', 27);

-- --------------------------------------------------------

--
-- Table structure for table `oc_files_trash`
--

CREATE TABLE IF NOT EXISTS `oc_files_trash` (
  `auto_id` int(11) NOT NULL,
  `id` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_file_map`
--

CREATE TABLE IF NOT EXISTS `oc_file_map` (
  `logic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_groups`
--

CREATE TABLE IF NOT EXISTS `oc_groups` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_groups`
--

INSERT INTO `oc_groups` (`gid`) VALUES
('admin');

-- --------------------------------------------------------

--
-- Table structure for table `oc_group_admin`
--

CREATE TABLE IF NOT EXISTS `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_group_user`
--

CREATE TABLE IF NOT EXISTS `oc_group_user` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_group_user`
--

INSERT INTO `oc_group_user` (`gid`, `uid`) VALUES
('admin', 'leo');

-- --------------------------------------------------------

--
-- Table structure for table `oc_jobs`
--

CREATE TABLE IF NOT EXISTS `oc_jobs` (
  `id` int(10) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_jobs`
--

INSERT INTO `oc_jobs` (`id`, `class`, `argument`, `last_run`) VALUES
(1, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1441986184),
(2, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 0),
(3, 'OCA\\Files_sharing\\Lib\\DeleteOrphanedSharesJob', 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_mimetypes`
--

CREATE TABLE IF NOT EXISTS `oc_mimetypes` (
  `id` int(11) NOT NULL,
  `mimetype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_mimetypes`
--

INSERT INTO `oc_mimetypes` (`id`, `mimetype`) VALUES
(3, 'application'),
(4, 'application/pdf'),
(7, 'application/vnd.oasis.opendocument.text'),
(1, 'httpd'),
(2, 'httpd/unix-directory'),
(5, 'image'),
(6, 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_preferences`
--

CREATE TABLE IF NOT EXISTS `oc_preferences` (
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_preferences`
--

INSERT INTO `oc_preferences` (`userid`, `appid`, `configkey`, `configvalue`) VALUES
('leo', 'firstrunwizard', 'show', '0'),
('leo', 'login', 'lastLogin', '1441986177');

-- --------------------------------------------------------

--
-- Table structure for table `oc_privatedata`
--

CREATE TABLE IF NOT EXISTS `oc_privatedata` (
  `keyid` int(10) unsigned NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `app` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `key` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_properties`
--

CREATE TABLE IF NOT EXISTS `oc_properties` (
  `id` int(11) NOT NULL,
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyvalue` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_share`
--

CREATE TABLE IF NOT EXISTS `oc_share` (
  `id` int(11) NOT NULL,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_source` int(11) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_share_external`
--

CREATE TABLE IF NOT EXISTS `oc_share_external` (
  `id` int(11) NOT NULL,
  `remote` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `remote_id` int(11) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_storages`
--

CREATE TABLE IF NOT EXISTS `oc_storages` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `numeric_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_storages`
--

INSERT INTO `oc_storages` (`id`, `numeric_id`) VALUES
('home::leo', 1),
('local::/var/www/webroot/ROOT/data/', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_users`
--

CREATE TABLE IF NOT EXISTS `oc_users` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_users`
--

INSERT INTO `oc_users` (`uid`, `displayname`, `password`) VALUES
('leo', NULL, '1|$2y$10$D2wVcRZgzH0sryy18ppzAObTubQPBkvGh1i9EbYSak4.7cN.bZxDy');

-- --------------------------------------------------------

--
-- Table structure for table `oc_vcategory`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory` (
  `id` int(10) unsigned NOT NULL,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_vcategory_to_object`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory_to_object` (
  `objid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_activity`
--
ALTER TABLE `oc_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_user_time` (`affecteduser`,`timestamp`),
  ADD KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  ADD KEY `activity_filter_app` (`affecteduser`,`app`,`timestamp`);

--
-- Indexes for table `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `amp_user` (`amq_affecteduser`),
  ADD KEY `amp_latest_send_time` (`amq_latest_send`),
  ADD KEY `amp_timestamp_time` (`amq_timestamp`);

--
-- Indexes for table `oc_appconfig`
--
ALTER TABLE `oc_appconfig`
  ADD PRIMARY KEY (`appid`,`configkey`),
  ADD KEY `appconfig_config_key_index` (`configkey`),
  ADD KEY `appconfig_appid_key` (`appid`);

--
-- Indexes for table `oc_filecache`
--
ALTER TABLE `oc_filecache`
  ADD PRIMARY KEY (`fileid`),
  ADD UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  ADD KEY `fs_parent_name_hash` (`parent`,`name`),
  ADD KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  ADD KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  ADD KEY `fs_storage_size` (`storage`,`size`,`fileid`);

--
-- Indexes for table `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `id_index` (`id`),
  ADD KEY `timestamp_index` (`timestamp`),
  ADD KEY `user_index` (`user`);

--
-- Indexes for table `oc_file_map`
--
ALTER TABLE `oc_file_map`
  ADD PRIMARY KEY (`logic_path_hash`),
  ADD UNIQUE KEY `file_map_pp_index` (`physic_path_hash`);

--
-- Indexes for table `oc_groups`
--
ALTER TABLE `oc_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `oc_group_admin`
--
ALTER TABLE `oc_group_admin`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `group_admin_uid` (`uid`);

--
-- Indexes for table `oc_group_user`
--
ALTER TABLE `oc_group_user`
  ADD PRIMARY KEY (`gid`,`uid`);

--
-- Indexes for table `oc_jobs`
--
ALTER TABLE `oc_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_class_index` (`class`);

--
-- Indexes for table `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mimetype_id_index` (`mimetype`);

--
-- Indexes for table `oc_preferences`
--
ALTER TABLE `oc_preferences`
  ADD PRIMARY KEY (`userid`,`appid`,`configkey`);

--
-- Indexes for table `oc_privatedata`
--
ALTER TABLE `oc_privatedata`
  ADD PRIMARY KEY (`keyid`);

--
-- Indexes for table `oc_properties`
--
ALTER TABLE `oc_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_index` (`userid`);

--
-- Indexes for table `oc_share`
--
ALTER TABLE `oc_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_share_type_index` (`item_type`,`share_type`),
  ADD KEY `file_source_index` (`file_source`),
  ADD KEY `token_index` (`token`);

--
-- Indexes for table `oc_share_external`
--
ALTER TABLE `oc_share_external`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  ADD KEY `sh_external_user` (`user`);

--
-- Indexes for table `oc_storages`
--
ALTER TABLE `oc_storages`
  ADD PRIMARY KEY (`numeric_id`),
  ADD UNIQUE KEY `storages_id_index` (`id`);

--
-- Indexes for table `oc_users`
--
ALTER TABLE `oc_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_index` (`uid`),
  ADD KEY `type_index` (`type`),
  ADD KEY `category_index` (`category`);

--
-- Indexes for table `oc_vcategory_to_object`
--
ALTER TABLE `oc_vcategory_to_object`
  ADD PRIMARY KEY (`categoryid`,`objid`,`type`),
  ADD KEY `vcategory_objectd_index` (`objid`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_activity`
--
ALTER TABLE `oc_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filecache`
--
ALTER TABLE `oc_filecache`
  MODIFY `fileid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_jobs`
--
ALTER TABLE `oc_jobs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_privatedata`
--
ALTER TABLE `oc_privatedata`
  MODIFY `keyid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_properties`
--
ALTER TABLE `oc_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_share`
--
ALTER TABLE `oc_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_share_external`
--
ALTER TABLE `oc_share_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_storages`
--
ALTER TABLE `oc_storages`
  MODIFY `numeric_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
