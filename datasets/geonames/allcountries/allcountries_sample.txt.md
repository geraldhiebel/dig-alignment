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
From column: _geonameid_
>``` python
return gn_country_uri(getValue("country"))
```

#### _State1stDiv_uri_
From column: _geonameid_
>``` python
return gn_State1stDiv_uri(getValue("country"),getValue("admin1"))
```

#### _CountyProvince2ndDiv_uri_
From column: _geonameid_
>``` python
return gn_CountyProvince2ndDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"))
```

#### _Community3rdDiv_uri_
From column: _CountyProvince2ndDiv_uri_
>``` python
return gn_Community3rdDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"),getValue("admin3"))
```

#### _SubCommunity4thDiv_uri_
From column: _Community3rdDiv_uri_
>``` python
return gn_SubCommunity4thDiv_uri(getValue("country"),getValue("admin1"),getValue("admin2"),getValue("admin3"),getValue("admin4"))
```

#### _CountryCodeConcept_uri_
From column: _country_uri_
>``` python
return gn_countrycodeconcept_uri(getValue("country"))
```

#### _lat_long_
From column: _latitude_
>``` python
return getValue("longitude")+"|"+getValue("latitude")
```

#### _place_spacetimevolume_uri_
From column: _geonameid_
>``` python
return gn_place_spacetimevolume_uri(getValue("place_uri"))
```

#### _place_spacetimevolume_uri2_
From column: _place_spacetimevolume_uri_
>``` python
return getValue("place_spacetimevolume_uri")
```

#### _feature_uri_
From column: _place_spacetimevolume_uri_
>``` python
return getValue("place_uri")
```

#### _long_lat_
From column: _lat_long_
>``` python
return getValue("longitude")+"|"+getValue("latitude")
```


### Semantic Types
| Column | Property | Class |
|  ----- | -------- | ----- |
| _Community3rdDiv_uri_ | `uri` | `memex:Community3rdDiv1`|
| _CountryCodeConcept_uri_ | `uri` | `skos:Concept1`|
| _CountyProvince2ndDiv_uri_ | `uri` | `memex:CountyProvince2ndDiv1`|
| _State1stDiv_uri_ | `uri` | `memex:State1stDiv1`|
| _SubCommunity4thDiv_uri_ | `uri` | `memex:SubCommunity4thDiv1`|
| _Values_ | `geojson:coordinates` | `geojson:Point1`|
| _Values_ | `rdfs:label` | `memex:Name2`|
| _country_uri_ | `uri` | `schema:Country1`|
| _feature_uri_ | `uri` | `geojson:Feature1`|
| _geonameid_ | `rdfs:label` | `memex:Identifier1`|
| _latitude_ | `schema:latitude` | `schema:GeoCoordinates1`|
| _longitude_ | `schema:longitude` | `schema:GeoCoordinates1`|
| _name_ | `rdfs:label` | `memex:Name1`|
| _place_class_ | `km-dev:columnSubClassOfLink` | `memex:Place1`|
| _place_spacetimevolume_uri_ | `uri` | `memex:SpaceTimeVolume1`|
| _place_spacetimevolume_uri2_ | `uri` | `geojson:Point1`|
| _place_uri_ | `uri` | `memex:Place1`|


### Links
| From | Property | To |
|  --- | -------- | ---|
| `geojson:Feature1` | `geojson:geometry` | `geojson:Point1`|
| `geojson:Feature1` | `geojson:properties` | `memex:Place1`|
| `geojson:Feature1` | `geojson:type` | `xsd:Feature`|
| `geojson:Point1` | `geojson:type` | `xsd:Point`|
| `memex:Identifier1` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/IdentifierTypes/GeonamesId`|
| `memex:Name1` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/NameTypes/DefaultName`|
| `memex:Name2` | `memex:hasType` | `xsd:http://dig.isi.edu/gazetteer/data/SKOS/NameTypes/AlternateName`|
| `memex:Place1` | `memex:fallsWithinCommunity3rdDiv` | `memex:Community3rdDiv1`|
| `memex:Place1` | `memex:fallsWithinCountry` | `schema:Country1`|
| `memex:Place1` | `memex:fallsWithinCountyProvince2ndDiv` | `memex:CountyProvince2ndDiv1`|
| `memex:Place1` | `memex:fallsWithinState1stDiv` | `memex:State1stDiv1`|
| `memex:Place1` | `memex:fallsWithinSubCommunity4thDiv` | `memex:SubCommunity4thDiv1`|
| `memex:Place1` | `memex:hasIdentifier` | `memex:Identifier1`|
| `memex:Place1` | `memex:hasName` | `memex:Name1`|
| `memex:Place1` | `memex:hasName` | `memex:Name2`|
| `memex:Place1` | `memex:hasSpaceTimeVolume` | `memex:SpaceTimeVolume1`|
| `memex:Place1` | `schema:geo` | `schema:GeoCoordinates1`|
| `schema:Country1` | `memex:hasType` | `skos:Concept1`|
