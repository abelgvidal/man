# Scrapy

Getting google maps coordinates from js code

>  map1, map2 = response.xpath('//script')[14].re(r'new google\.maps\.LatLng\((-?[0-9.]+),(-?[0-9.]+)\);')[0:2]

In this case I had to see using `scrapy shell` what tag -script- was, in this case #14.

## Export to csv

> scrapy crawl amazon -t csv -o Amazon.csv --loglevel=INFO
