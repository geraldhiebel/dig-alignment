select b.modtime as modtime, unix_timestamp(b.importtime)*1000 as ad_timestamp, concat(b.url,'') as url, a.* from stanford_locations a join ads b on a.id=b.id
