#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "weather_cpp/CurrentCondition.h"
#include "weather_cpp/weatherParser.h"

#include <sstream>


/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  bool gpsMode = false;
  std::string argType;
  std::string zipcode;
  std::string newZip;

  switch(argc)
  {
    case 1:
      zipcode = "49931";
      std::cout << "Using default location " << zipcode << std::endl;
    break;
    
    case 2:
      argType = argv[1];
      if(argType == "gps")
      {
        gpsMode = true;
        std::cout << "Weather will use GPS location" <<  std::endl;
      }
      else
      {
        std::cout << "Bad Command!!!" << std::endl;
      }
    break;
    
    case 3:
      argType = argv[1];
      if(argType == "zip")
      {
        zipcode = argv[2];
        std::cout << "Using zip code " << zipcode <<  std::endl;
      }
      else
      {
        std::cout << "Bad Command!!!" << std::endl;
      }
    break;
    
    default:
       std::cout << "Too many arguments!!!" << std::endl;
       return -1;
    break;
  }
  
  weatherParser weather;
  
  if(gpsMode)
  {
    weather.setSourceLatLon("47.1136","-88.5618");
  }
  else
  {
    weather.setSourceZip(zipcode);
  }
  
  weather.print();

  ros::init(argc, argv, "weatherPub");
  
  ros::NodeHandle n;
  
  n.setParam("weather_zip", zipcode);

  ros::Publisher weather_pub = n.advertise<weather_cpp::CurrentCondition>("CurrentWeather", 1000);

  ros::Rate loop_rate(0.5);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  while (ros::ok())
  {
  

  
  
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
    weather_cpp::CurrentCondition msg;

    //std::stringstream ss;
    //ss << "hello world " << count;
    //msg.data = ss.str();
    
    
    msg.header.stamp = ros::Time::now();
    msg.header.frame_id = "/weather";
    
    
    msg.tempMax = std::atof(weather.currentWeather.tempMax.c_str());
    msg.tempHourly = std::atof(weather.currentWeather.tempHourly.c_str());
    msg.tempApparent = std::atof(weather.currentWeather.tempApparent.c_str());
    msg.rainfall = std::atof(weather.currentWeather.rainfall.c_str());
    msg.icefall = std::atof(weather.currentWeather.icefall.c_str());
    msg.snowfall = std::atof(weather.currentWeather.snowfall.c_str());
    msg.probTornado = std::atof(weather.currentWeather.probTornado.c_str());
    msg.probHail = std::atof(weather.currentWeather.probHail.c_str());
    msg.probThunderWind = std::atof(weather.currentWeather.probThunderWind.c_str());
    msg.probExTornado = std::atof(weather.currentWeather.probExTornado.c_str());
    msg.probExHail = std::atof(weather.currentWeather.probExHail.c_str());
    msg.probExThunderWind = std::atof(weather.currentWeather.probExThunderWind.c_str());
    

    //ROS_INFO("%s", msg.data.c_str());

    weather_pub.publish(msg);
    

    ros::spinOnce();

    loop_rate.sleep();
    
    //Check if zip has been changed
    n.getParam("/weather_zip", newZip);
    
    std::cout << newZip << std::endl;
  
    if(newZip != zipcode)
    {
      zipcode = newZip;
      weather.setSourceZip(zipcode);
    }
    else
    {
      weather.weatherUpdate();
    }
    
    weather.print();
  }


  return 0;
}
