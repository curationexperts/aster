# Aster
### GeoBlacklight for UCSB
[![Build Status](https://travis-ci.org/curationexperts/aster.svg?branch=master)](https://travis-ci.org/curationexperts/aster)
## Running the application

1. Checkout the repo: 
  `git clone git@github.com:curationexperts/aster.git && cd aster`
1. Create a gemset for dependencies: 
  `rvm use --create 2.4.2@aster`
1. Install the gems: 
  `bundle install` 
1. Run the server: 
  `rake geoblacklight:server`

### Connecting to GeoServer / Demo Functionality

This is an example `geoblacklight.json` file that can be ingested to demo 
geoblacklight/GeoServer integration: 

```javascript
[
  {
    "geoblacklight_version": "1.0",
    "dc_identifier_s": "ucsb:gford-20140000-010015_belvegr",
    "layer_slug_s":"gford-20140000-010015_belvegr",
    "dc_language_s": "English",
    "dc_publisher_s": "University of California, Santa Barbara. Map and Imagery Laboratory",
    "dc_rights_s": "Public",
    "dc_title_s": "Vegetation, Maya Forest, Belize, 1995",
    "dc_type_s": "Dataset",
    "dct_references_s": "{\"http://www.opengis.net/def/serviceType/ogc/wfs\":\"http://geoservices-sandbox.library.ucsb.edu:8080/geoserver/ucsb/ows?service=WFS\",\"http://www.opengis.net/def/serviceType/ogc/wms\":\"http://geoservices-sandbox.library.ucsb.edu:8080/geoserver/ucsb/wms?service=WMS\"}",
    "solr_geom": "ENVELOPE(-88.0804, -89.2587, 18.4977, 15.8808)",
    "dct_spatial_sm": "Belize",
    "dc_subject_sm":"Belize",
    "dc_creator_sm":"UCSB",
    "dct_provenance_s": "UCSB",
    "layer_geom_type_s": "Polygon"
  }
]
```

For instructions on how to index the document, see the [geoblacklight documentation for indexing solr documents](http://geoblacklight.org/tutorial/2015/02/09/index-solr-documents.html).

For detailed information about the elements used in the `geoblacklight.json` file see the [geoblacklight schema](https://github.com/geoblacklight/geoblacklight/blob/master/schema/geoblacklight-schema.md).
