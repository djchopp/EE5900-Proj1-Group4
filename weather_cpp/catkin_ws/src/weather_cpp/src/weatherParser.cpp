#include "weather_cpp/weatherParser.h"

using namespace tinyxml2;

weatherParser::weatherParser()
{
  weatherProduct = ns2__productType__time_series;
  time(&start);
  time(&end);
  weatherUnit = ns2__unitType__e;
  clearAllWeatherParams();
  weatherDWML.clear();
}

weatherParser::~weatherParser()
{

}

void weatherParser::setSourceZip(std::string zip)
{
  XMLDocument latlonDWML;
  struct ns1__LatLonListZipCodeResponse _param_3;
  
  weatherProxy.LatLonListZipCode(zip, _param_3);
  
  latlonDWML.Parse(_param_3.listLatLonOut.c_str());
  
  XMLElement *latlonElement = latlonDWML.FirstChildElement("dwml")->FirstChildElement("latLonList");
  if(latlonElement > 0)
  {
    latlon = latlonElement->GetText();
    weatherUpdate();
  }
}

void weatherParser::setSourceLatLon(std::string newLat, std::string newLon)
{
  latlon = newLat + "," + newLon;
  weatherUpdate();
}

void weatherParser::weatherUpdate()
{
  time(&start);
  time(&end);

  weatherProxy.NDFDgenLatLonList(latlon, weatherProduct, start, end, weatherUnit, &weatherParameters, weatherDWML);
  parseDWML();
  print();
}

void weatherParser::parseDWML()
{
  XMLElement *curElement;

  weatherXML.Parse(weatherDWML.c_str());
  
  XMLElement *paramElement = weatherXML.FirstChildElement("dwml")->FirstChildElement("data")->FirstChildElement("parameters");
  if(paramElement < 0)return;
  
  
  // Get all temperature elements
  curElement = paramElement->FirstChildElement("temperature");
  while(curElement != 0)
  {
    if(curElement->Attribute( "type", "maximum" )) currentWeather.tempMax = curElement->FirstChildElement("value")->GetText();
    if(curElement->Attribute( "type", "hourly" )) currentWeather.tempHourly = curElement->FirstChildElement("value")->GetText();
    if(curElement->Attribute( "type", "dew point" )) currentWeather.tempDew = curElement->FirstChildElement("value")->GetText();
    if(curElement->Attribute( "type", "apparent" )) currentWeather.tempApparent = curElement->FirstChildElement("value")->GetText();
    curElement = curElement->NextSiblingElement("temperature");
  }
  
  // Get all precipitation elements
  curElement = paramElement->FirstChildElement("precipitation");
  while(curElement != 0)
  {
    if(curElement->Attribute( "type", "liquid" )) currentWeather.rainfall = curElement->FirstChildElement("value")->GetText();
    if(curElement->Attribute( "type", "ice" )) currentWeather.icefall = curElement->FirstChildElement("value")->GetText();
    if(curElement->Attribute( "type", "snow" )) currentWeather.snowfall = curElement->FirstChildElement("value")->GetText();
    curElement = curElement->NextSiblingElement("precipitation");
  }
  
  // Get all hazzard elements
  XMLElement *hazElement;
  curElement = paramElement->FirstChildElement("convective-hazard");
  while(curElement != 0)
  {
    hazElement = curElement->FirstChildElement("severe-component");
    if(hazElement != 0)
    {
      if(hazElement->Attribute( "type", "tornadoes" )) currentWeather.probTornado = hazElement->FirstChildElement("value")->GetText();
      if(hazElement->Attribute( "type", "hail" )) currentWeather.probHail = hazElement->FirstChildElement("value")->GetText();
      if(hazElement->Attribute( "type", "damaging thunderstorm winds" )) currentWeather.probThunderWind = hazElement->FirstChildElement("value")->GetText();
      if(hazElement->Attribute( "type", "extreme tornadoes" )) currentWeather.probExTornado = hazElement->FirstChildElement("value")->GetText();
      if(hazElement->Attribute( "type", "extreme hail" )) currentWeather.probExHail = hazElement->FirstChildElement("value")->GetText();
      if(hazElement->Attribute( "type", "extreme thunderstorm winds" )) currentWeather.probExThunderWind = hazElement->FirstChildElement("value")->GetText();
    }

    curElement = curElement->NextSiblingElement("convective-hazard");
  }
  
}

void weatherParser::print()
{
  std::cout << "=====Weather at " << latlon << " =====" << std::endl;
  std::cout << "Max Temperature: " << currentWeather.tempMax << std::endl;
  std::cout << "Hourly Temperature: " << currentWeather.tempHourly << std::endl;
  std::cout << "Dew Point Temperature: " << currentWeather.tempDew << std::endl;
  std::cout << "Apparent Temperature: " << currentWeather.tempApparent << std::endl;
  std::cout << "Rainfall: " << currentWeather.rainfall << std::endl;
  std::cout << "Ice Accumulation: " << currentWeather.icefall << std::endl;
  std::cout << "Snowfall: " << currentWeather.snowfall << std::endl;
  std::cout << "Risk of Tornados: " << currentWeather.probTornado << std::endl;
  std::cout << "Risk of Hail: " << currentWeather.probHail << std::endl;
  std::cout << "Risk of Thunderstorm Winds: " << currentWeather.probThunderWind << std::endl;
  std::cout << "Risk of Extreme Tornados: " << currentWeather.probExTornado << std::endl;
  std::cout << "Risk of Extreme Hail: " << currentWeather.probExHail << std::endl;
  std::cout << "Risk of Extreme Thunderstorm Winds: " << currentWeather.probExThunderWind << std::endl << std::endl;  
}

void weatherParser::clearAllWeatherParams()
{
	weatherParameters.maxt = false;
	weatherParameters.mint = false;
	weatherParameters.temp = false;
	weatherParameters.dew = false;
	weatherParameters.pop12 = false;
	weatherParameters.qpf = false;
	weatherParameters.sky = false;
	weatherParameters.snow = false;
	weatherParameters.wspd = false;
	weatherParameters.wdir = false;
	weatherParameters.wx = false;
	weatherParameters.waveh = false;
	weatherParameters.icons = false;
	weatherParameters.rh = false;
	weatherParameters.appt = false;
	weatherParameters.incw34 = false;
	weatherParameters.incw50 = false;
	weatherParameters.incw64 = false;
	weatherParameters.cumw34 = false;
	weatherParameters.cumw50 = false;
	weatherParameters.cumw64 = false;
	weatherParameters.critfireo = false;
	weatherParameters.dryfireo = false;
	weatherParameters.conhazo = false;
	weatherParameters.ptornado = false;
	weatherParameters.phail = false;
	weatherParameters.ptstmwinds = false;
	weatherParameters.pxtornado = false;
	weatherParameters.pxhail = false;
	weatherParameters.pxtstmwinds = false;
	weatherParameters.ptotsvrtstm = false;
	weatherParameters.pxtotsvrtstm = false;
	weatherParameters.tmpabv14d = false;
	weatherParameters.tmpblw14d = false;
	weatherParameters.tmpabv30d = false;
	weatherParameters.tmpblw30d = false;
	weatherParameters.tmpabv90d = false;
	weatherParameters.tmpblw90d = false;
	weatherParameters.prcpabv14d = false;
	weatherParameters.prcpblw14d = false;
	weatherParameters.prcpabv30d = false;
	weatherParameters.prcpblw30d = false;
	weatherParameters.prcpabv90d = false;
	weatherParameters.prcpblw90d = false;
	weatherParameters.precipa_USCOREr = false;
	weatherParameters.sky_USCOREr = false;
	weatherParameters.td_USCOREr = false;
	weatherParameters.temp_USCOREr = false;
	weatherParameters.wdir_USCOREr = false;
	weatherParameters.wspd_USCOREr = false;
	weatherParameters.wwa = false;
	weatherParameters.wgust = false;
	weatherParameters.iceaccum = false;
	weatherParameters.maxrh = false;
	weatherParameters.minrh = false;
}
