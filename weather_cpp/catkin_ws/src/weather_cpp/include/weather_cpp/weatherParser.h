#include <iostream>
#include <sstream>
#include "weather_cpp/tinyxml2.h"
#include "weather_cpp/ndfdXMLBinding.nsmap" 
#include "weather_cpp/soapndfdXMLBindingProxy.h"

struct weather_t
{
public:
	std::string tempMax;
	std::string tempHourly;
	std::string tempApparent;
	std::string tempDew;
	std::string rainfall;
	std::string icefall;
	std::string snowfall;
	std::string probTornado;
	std::string probHail;
	std::string probThunderWind;
	std::string probExTornado;
	std::string probExHail;
	std::string probExThunderWind;
};

class weatherParser
{
  public:
    weather_t currentWeather;
  
    weatherParser();
    ~weatherParser();
    
    void weatherUpdate();
    void print();
    void setSourceZip(std::string zip);
    void setSourceLatLon(std::string newLat, std::string newLon);
  private:
    void clearAllWeatherParams();
    void parseDWML();
    
    ndfdXMLBindingProxy weatherProxy;
    std::string latlon;
    enum ns2__productType weatherProduct;
    time_t start;
    time_t end;
    enum ns2__unitType weatherUnit;
    ns2__weatherParametersType weatherParameters;
    std::string weatherDWML;
    
    tinyxml2::XMLDocument weatherXML;
};


