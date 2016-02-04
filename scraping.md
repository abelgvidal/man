
# Getting quickly image of remote images

    function ranger($url){
      $headers = array(
      "Range: bytes=0-32768"
      );
  
      $curl = curl_init($url);
      curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
      $data = curl_exec($curl);
      curl_close($curl);
      return $data;
    }
  
    $start = microtime(true);
    
    $url = "http://news.softpedia.com/images/news2/Debian-Turns-15-2.jpeg";
    
    $raw = ranger($url);
    $im = imagecreatefromstring($raw);
    
    $width = imagesx($im);
    $height = imagesy($im);
    
    $stop = round(microtime(true) - $start, 5);
    
    echo $width." x ".$height." ({$stop}s)";
    
  
  source: http://stackoverflow.com/questions/4635936/super-fast-getimagesize-in-php
