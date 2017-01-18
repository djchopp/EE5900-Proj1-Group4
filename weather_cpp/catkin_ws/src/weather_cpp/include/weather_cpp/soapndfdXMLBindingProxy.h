/* soapndfdXMLBindingProxy.h
   Generated by gSOAP 2.8.16 from ndfd.h

Copyright(C) 2000-2013, Robert van Engelen, Genivia Inc. All Rights Reserved.
The generated code is released under one of the following licenses:
GPL or Genivia's license for commercial use.
This program is released under the GPL with the additional exemption that
compiling, linking, and/or using OpenSSL is allowed.
*/

#ifndef soapndfdXMLBindingProxy_H
#define soapndfdXMLBindingProxy_H
#include "weather_cpp/soapH.h"

class SOAP_CMAC ndfdXMLBindingProxy
{ public:
	struct soap *soap;
	bool own;
	/// Endpoint URL of service 'ndfdXMLBindingProxy' (change as needed)
	const char *soap_endpoint;
	/// Constructor
	ndfdXMLBindingProxy();
	/// Constructor to use/share an engine state
	ndfdXMLBindingProxy(struct soap*);
	/// Constructor with endpoint URL
	ndfdXMLBindingProxy(const char *url);
	/// Constructor with engine input+output mode control
	ndfdXMLBindingProxy(soap_mode iomode);
	/// Constructor with URL and input+output mode control
	ndfdXMLBindingProxy(const char *url, soap_mode iomode);
	/// Constructor with engine input and output mode control
	ndfdXMLBindingProxy(soap_mode imode, soap_mode omode);
	/// Destructor frees deserialized data
	virtual	~ndfdXMLBindingProxy();
	/// Initializer used by constructors
	virtual	void ndfdXMLBindingProxy_init(soap_mode imode, soap_mode omode);
	/// Delete all deserialized data (with soap_destroy and soap_end)
	virtual	void destroy();
	/// Delete all deserialized data and reset to default
	virtual	void reset();
	/// Disables and removes SOAP Header from message
	virtual	void soap_noheader();
	/// Get SOAP Header structure (NULL when absent)
	virtual	const SOAP_ENV__Header *soap_header();
	/// Get SOAP Fault structure (NULL when absent)
	virtual	const SOAP_ENV__Fault *soap_fault();
	/// Get SOAP Fault string (NULL when absent)
	virtual	const char *soap_fault_string();
	/// Get SOAP Fault detail as string (NULL when absent)
	virtual	const char *soap_fault_detail();
	/// Close connection (normally automatic, except for send_X ops)
	virtual	int soap_close_socket();
	/// Force close connection (can kill a thread blocked on IO)
	virtual	int soap_force_close_socket();
	/// Print fault
	virtual	void soap_print_fault(FILE*);
#ifndef WITH_LEAN
	/// Print fault to stream
#ifndef WITH_COMPAT
	virtual	void soap_stream_fault(std::ostream&);
#endif

	/// Put fault into buffer
	virtual	char *soap_sprint_fault(char *buf, size_t len);
#endif

	/// Web service operation 'NDFDgen' (returns error code or SOAP_OK)
	virtual	int NDFDgen(std::string latitude, std::string longitude, enum ns2__productType product, time_t startTime, time_t endTime, enum ns2__unitType Unit, ns2__weatherParametersType *weatherParameters, std::string &dwmlOut) { return this->NDFDgen(NULL, NULL, latitude, longitude, product, startTime, endTime, Unit, weatherParameters, dwmlOut); }
	virtual	int NDFDgen(const char *endpoint, const char *soap_action, std::string latitude, std::string longitude, enum ns2__productType product, time_t startTime, time_t endTime, enum ns2__unitType Unit, ns2__weatherParametersType *weatherParameters, std::string &dwmlOut);

	/// Web service operation 'NDFDgenByDay' (returns error code or SOAP_OK)
	virtual	int NDFDgenByDay(std::string latitude, std::string longitude, std::string startDate, std::string numDays, enum ns2__unitType Unit, enum ns2__formatType format, std::string &dwmlByDayOut) { return this->NDFDgenByDay(NULL, NULL, latitude, longitude, startDate, numDays, Unit, format, dwmlByDayOut); }
	virtual	int NDFDgenByDay(const char *endpoint, const char *soap_action, std::string latitude, std::string longitude, std::string startDate, std::string numDays, enum ns2__unitType Unit, enum ns2__formatType format, std::string &dwmlByDayOut);

	/// Web service operation 'NDFDgenLatLonList' (returns error code or SOAP_OK)
	virtual	int NDFDgenLatLonList(std::string listLatLon, enum ns2__productType product, time_t startTime, time_t endTime, enum ns2__unitType Unit, ns2__weatherParametersType *weatherParameters, std::string &dwmlOut) { return this->NDFDgenLatLonList(NULL, NULL, listLatLon, product, startTime, endTime, Unit, weatherParameters, dwmlOut); }
	virtual	int NDFDgenLatLonList(const char *endpoint, const char *soap_action, std::string listLatLon, enum ns2__productType product, time_t startTime, time_t endTime, enum ns2__unitType Unit, ns2__weatherParametersType *weatherParameters, std::string &dwmlOut);

	/// Web service operation 'NDFDgenByDayLatLonList' (returns error code or SOAP_OK)
	virtual	int NDFDgenByDayLatLonList(std::string listLatLon, std::string startDate, std::string numDays, enum ns2__unitType Unit, enum ns2__formatType format, std::string &dwmlByDayOut) { return this->NDFDgenByDayLatLonList(NULL, NULL, listLatLon, startDate, numDays, Unit, format, dwmlByDayOut); }
	virtual	int NDFDgenByDayLatLonList(const char *endpoint, const char *soap_action, std::string listLatLon, std::string startDate, std::string numDays, enum ns2__unitType Unit, enum ns2__formatType format, std::string &dwmlByDayOut);

	/// Web service operation 'GmlLatLonList' (returns error code or SOAP_OK)
	virtual	int GmlLatLonList(std::string listLatLon, time_t requestedTime, enum ns2__featureTypeType featureType, ns2__weatherParametersType *weatherParameters, std::string &dwGmlOut) { return this->GmlLatLonList(NULL, NULL, listLatLon, requestedTime, featureType, weatherParameters, dwGmlOut); }
	virtual	int GmlLatLonList(const char *endpoint, const char *soap_action, std::string listLatLon, time_t requestedTime, enum ns2__featureTypeType featureType, ns2__weatherParametersType *weatherParameters, std::string &dwGmlOut);

	/// Web service operation 'GmlTimeSeries' (returns error code or SOAP_OK)
	virtual	int GmlTimeSeries(std::string listLatLon, time_t startTime, time_t endTime, enum ns2__compTypeType compType, enum ns2__featureTypeType featureType, std::string propertyName, std::string &dwGmlOut) { return this->GmlTimeSeries(NULL, NULL, listLatLon, startTime, endTime, compType, featureType, propertyName, dwGmlOut); }
	virtual	int GmlTimeSeries(const char *endpoint, const char *soap_action, std::string listLatLon, time_t startTime, time_t endTime, enum ns2__compTypeType compType, enum ns2__featureTypeType featureType, std::string propertyName, std::string &dwGmlOut);

	/// Web service operation 'LatLonListSubgrid' (returns error code or SOAP_OK)
	virtual	int LatLonListSubgrid(std::string lowerLeftLatitude, std::string lowerLeftLongitude, std::string upperRightLatitude, std::string upperRightLongitude, std::string resolution, struct ns1__LatLonListSubgridResponse &_param_1) { return this->LatLonListSubgrid(NULL, NULL, lowerLeftLatitude, lowerLeftLongitude, upperRightLatitude, upperRightLongitude, resolution, _param_1); }
	virtual	int LatLonListSubgrid(const char *endpoint, const char *soap_action, std::string lowerLeftLatitude, std::string lowerLeftLongitude, std::string upperRightLatitude, std::string upperRightLongitude, std::string resolution, struct ns1__LatLonListSubgridResponse &_param_1);

	/// Web service operation 'LatLonListLine' (returns error code or SOAP_OK)
	virtual	int LatLonListLine(std::string endPoint1Lat, std::string endPoint1Lon, std::string endPoint2Lat, std::string endPoint2Lon, struct ns1__LatLonListLineResponse &_param_2) { return this->LatLonListLine(NULL, NULL, endPoint1Lat, endPoint1Lon, endPoint2Lat, endPoint2Lon, _param_2); }
	virtual	int LatLonListLine(const char *endpoint, const char *soap_action, std::string endPoint1Lat, std::string endPoint1Lon, std::string endPoint2Lat, std::string endPoint2Lon, struct ns1__LatLonListLineResponse &_param_2);

	/// Web service operation 'LatLonListZipCode' (returns error code or SOAP_OK)
	virtual	int LatLonListZipCode(std::string zipCodeList, struct ns1__LatLonListZipCodeResponse &_param_3) { return this->LatLonListZipCode(NULL, NULL, zipCodeList, _param_3); }
	virtual	int LatLonListZipCode(const char *endpoint, const char *soap_action, std::string zipCodeList, struct ns1__LatLonListZipCodeResponse &_param_3);

	/// Web service operation 'LatLonListSquare' (returns error code or SOAP_OK)
	virtual	int LatLonListSquare(std::string centerPointLat, std::string centerPointLon, std::string distanceLat, std::string distanceLon, std::string resolution, struct ns1__LatLonListSquareResponse &_param_4) { return this->LatLonListSquare(NULL, NULL, centerPointLat, centerPointLon, distanceLat, distanceLon, resolution, _param_4); }
	virtual	int LatLonListSquare(const char *endpoint, const char *soap_action, std::string centerPointLat, std::string centerPointLon, std::string distanceLat, std::string distanceLon, std::string resolution, struct ns1__LatLonListSquareResponse &_param_4);

	/// Web service operation 'CornerPoints' (returns error code or SOAP_OK)
	virtual	int CornerPoints(enum ns2__sectorType sector, struct ns1__CornerPointsResponse &_param_5) { return this->CornerPoints(NULL, NULL, sector, _param_5); }
	virtual	int CornerPoints(const char *endpoint, const char *soap_action, enum ns2__sectorType sector, struct ns1__CornerPointsResponse &_param_5);

	/// Web service operation 'LatLonListCityNames' (returns error code or SOAP_OK)
	virtual	int LatLonListCityNames(enum ns2__displayLevelType displayLevel, struct ns1__LatLonListCityNamesResponse &_param_6) { return this->LatLonListCityNames(NULL, NULL, displayLevel, _param_6); }
	virtual	int LatLonListCityNames(const char *endpoint, const char *soap_action, enum ns2__displayLevelType displayLevel, struct ns1__LatLonListCityNamesResponse &_param_6);
};
#endif