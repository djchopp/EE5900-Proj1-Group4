#include "ros/ros.h"
#include "std_msgs/String.h"
#include "weather_cpp/CurrentCondition.h"
#include "tinyxml2.h"

#include <sstream>

using namespace tinyxml2;

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{

  float lat = 0.0;
  float lon = 0.0;

  XMLDocument weatherXML;
  
  weatherXML.LoadFile("/home/ros/MapClick.xml");

  ros::init(argc, argv, "weatherPub");
  
  ros::NodeHandle n;
  
  /**
   * Check if the latitude is already defined. If so, read it. If not, create and set default.
   */
  if(n.hasParam("weather_lat"))
  {
    n.getParam("weather_lat", lat);
  }
  else
  {
    n.setParam("weather_lat", lat);
  }
  
  /**
   * Check if the longitude is already defined. If so, read it. If not, create and set default.
   */
  if(n.hasParam("weather_lon"))
  {
    n.getParam("weather_lon", lon);
  }
  else
  {
    n.setParam("weather_lon", lon);
  }
  

  ros::Publisher weather_pub = n.advertise<weather_cpp::CurrentCondition>("CurrentWeather", 1000);

  //ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);

  ros::Rate loop_rate(1);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
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
    
    msg.temperature = "70F";
    msg.humidity = "70%";
    msg.windSpeed = "30mph";
    msg.dewpoint = "55F";
    msg.visibility = "1mi";
    msg.windchill = "22F";
    msg.lastUpdate = "Now";
    

    //ROS_INFO("%s", msg.data.c_str());

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    weather_pub.publish(msg);
    //chatter_pub.publish(msg);
    

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
