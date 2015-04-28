## allcountries_sample.txt

### PyTransforms
#### _place_uri_
From column: _geonameid_
>``` python
return gn_place_uri(getValue("geonameid"),getValue("fcode"),getValue("country"),getValue("admin1"),getValue("admin2"),getValue("admin3"),getValue("admin4"))
```

#### _place_class_
From column: _place_uri_
>``` python
return fcode_to_class(getValue("fclass"),getValue("fcode"))
```

#### _country_uri_
From column: _country_
>``` python
return gn_country_uri(getValue("country"))
```

#### _State1stDiv_uri_
From column: _admin1_
>``` python
return gn_State1stDiv_uri(getValue("country"),getValue("admin1"))
```

#### _CountyProvince2ndDiv_uri_
From column: _admin2_
>``` python
return gn_CountyProvince2ndDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"))
```

#### _Community3rdDiv_uri_
From column: _admin3_
>``` python
return gn_Community3rdDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"),getValue("admin3"))
```

#### _SubCommunity4thDiv_uri_
From column: _admin4_
>``` python
return gn_SubCommunity4thDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"),getValue("admin3"),getValue("admin4"))
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Community3rdDiv_uri_ | `uri` | `memex:Community3rdDiv1`|
| _CountyProvince2ndDiv_uri_ | `uri` | `memex:CountyProvince2ndDiv1`|
| _State1stDiv_uri_ | `uri` | `memex:State1stDiv1`|
| _SubCommunity4thDiv_uri_ | `uri` | `memex:SubCommunity4thDiv1`|
| _Values_ | `rdfs:label` | `memex:Name2`|
| _country_uri_ | `uri` | `schema:Country1`|
| _geonameid_ | `rdfs:label` | `memex:Identifier1`|
| _latitude_ | `schema:latitude` | `schema:GeoCoordinates1`|
| _longitude_ | `schema:longitude` | `schema:GeoCoordinates1`|
| _name_ | `rdfs:label` | `memex:Name1`|
| _place_uri_ | `uri` | `schema:Place1`|
| _placew_class_ | `km-dev:columnSubClassOfLink` | `schema:Place1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `memex:Identifier1` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/IdentifierTypes/GeonamesId`|
| `memex:Name1` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/NameTypes/DefaultName`|
| `memex:Name2` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/NameTypes/AlternateName`|
| `schema:Place1` | `memex:fallsWithinCommunity3rdDiv` | `memex:Community3rdDiv1`|
| `schema:Place1` | `memex:fallsWithinCountry` | `schema:Country1`|
| `schema:Place1` | `memex:fallsWithinCountyProvince2ndDiv` | `memex:CountyProvince2ndDiv1`|
| `schema:Place1` | `memex:fallsWithinState1stDiv` | `memex:State1stDiv1`|
| `schema:Place1` | `memex:fallsWithinSubCommunity4thDiv` | `memex:SubCommunity4thDiv1`|
| `schema:Place1` | `memex:hasIdentifier` | `memex:Identifier1`|
| `schema:Place1` | `memex:hasName` | `memex:Name1`|
| `schema:Place1` | `memex:hasName` | `memex:Name2`|
| `schema:Place1` | `schema:geo` | `schema:GeoCoordinates1`|
