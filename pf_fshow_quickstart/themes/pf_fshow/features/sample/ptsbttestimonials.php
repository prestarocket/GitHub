<?php 
$query_tables = array();
$query_sql = array();
$query_tables['ptsbttestimonials']['ptsbttestimonials'] = 'CREATE TABLE IF NOT EXISTS  `'._DB_PREFIX_.'ptsbttestimonials` (
  `id_ptsbttestimonials` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `media_id` varchar(20) DEFAULT NULL,
  `media_type` varchar(20) DEFAULT NULL,
  `media_code` varchar(100) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT \'0\',
  PRIMARY KEY (`id_ptsbttestimonials`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8';


$query_tables['ptsbttestimonials']['ptsbttestimonials_lang'] = 'CREATE TABLE IF NOT EXISTS  `'._DB_PREFIX_.'ptsbttestimonials_lang` (
  `id_ptsbttestimonials` int(10) unsigned NOT NULL,
  `id_lang` int(10) NOT NULL,
  `content` text NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id_ptsbttestimonials`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8';


$query_tables['ptsbttestimonials']['ptsbttestimonials_shop'] = 'CREATE TABLE IF NOT EXISTS  `'._DB_PREFIX_.'ptsbttestimonials_shop` (
  `id_ptsbttestimonials` int(10) unsigned NOT NULL,
  `id_shop` int(10) NOT NULL,
  PRIMARY KEY (`id_ptsbttestimonials`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8';


/*DATA FOR TABLE ptsbttestimonials*/
 $query_sql['ptsbttestimonials'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials( `id_ptsbttestimonials`,`avatar`,`name`,`email`,`company`,`address`,`media_id`,`media_type`,`media_code`,`date_add`,`position`,`active` ) 
							VALUES(\'1\', \'sample-1.png\', \'William Doe\', \'demo@gmail.com\', \'Prestashop\', \'Street name, California, USA\', \'9bdrk8FNWnc\', \'Youtube\', \'http://www.youtube.com/watch?v=9bdrk8FNWnc\', \'2015-11-20 04:41:45\', \'1\', \'1\')'; 
 $query_sql['ptsbttestimonials'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials( `id_ptsbttestimonials`,`avatar`,`name`,`email`,`company`,`address`,`media_id`,`media_type`,`media_code`,`date_add`,`position`,`active` ) 
							VALUES(\'2\', \'sample-2.png\', \'John doe 2\', \'demo@gmail.com\', \'Prestashop\', \'Street name, California, USA\', \'9bdrk8FNWnc\', \'Youtube\', \'http://www.youtube.com/watch?v=9bdrk8FNWnc\', \'2015-11-20 04:41:45\', \'1\', \'1\')'; 
 $query_sql['ptsbttestimonials'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials( `id_ptsbttestimonials`,`avatar`,`name`,`email`,`company`,`address`,`media_id`,`media_type`,`media_code`,`date_add`,`position`,`active` ) 
							VALUES(\'3\', \'sample-3.png\', \'John doe 3\', \'demo@gmail.com\', \'Prestashop\', \'Street name, California, USA\', \'9bdrk8FNWnc\', \'Youtube\', \'http://www.youtube.com/watch?v=9bdrk8FNWnc\', \'2015-11-20 04:41:45\', \'1\', \'1\')'; 
/*DATA FOR TABLE ptsbttestimonials_lang*/
 $query_sql['ptsbttestimonials_lang'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_lang( `id_ptsbttestimonials`,`id_lang`,`content`,`note` ) 
							VALUES(\'1\', \'_LANGUAGEID_\', \'Great design, really clean and professional looking PSD theme. Very suitable for business topic. Everything from the detail design to the selection of mock pictures is done with a great perfection.\', \'Ceo of google\')'; 
 $query_sql['ptsbttestimonials_lang'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_lang( `id_ptsbttestimonials`,`id_lang`,`content`,`note` ) 
							VALUES(\'2\', \'_LANGUAGEID_\', \'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum,\r\n					nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus  sit amet mauris. Morbi accumsan ipsum velit. 2\', \'Duis sed odio 2\')'; 
 $query_sql['ptsbttestimonials_lang'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_lang( `id_ptsbttestimonials`,`id_lang`,`content`,`note` ) 
							VALUES(\'3\', \'_LANGUAGEID_\', \'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum,\r\n					nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus  sit amet mauris. Morbi accumsan ipsum velit. 3\', \'Duis sed odio 3\')'; 
/*DATA FOR TABLE ptsbttestimonials_shop*/
 $query_sql['ptsbttestimonials_shop'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_shop( `id_ptsbttestimonials`,`id_shop` ) 
							VALUES(\'1\', \'_SHOPID_\')'; 
 $query_sql['ptsbttestimonials_shop'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_shop( `id_ptsbttestimonials`,`id_shop` ) 
							VALUES(\'2\', \'_SHOPID_\')'; 
 $query_sql['ptsbttestimonials_shop'][] = 'INSERT INTO '._DB_PREFIX_.'ptsbttestimonials_shop( `id_ptsbttestimonials`,`id_shop` ) 
							VALUES(\'3\', \'_SHOPID_\')'; 

 ?>