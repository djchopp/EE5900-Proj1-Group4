#include "ros/ros.h"
#include "std_msgs/String.h"
#include "weather_cpp/CurrentCondition.h"

/**
 * A simple subscriber for the weather message
 */
void weatherCallback(const  weather_cpp::CurrentCondition::ConstPtr& msg)
{
  ROS_INFO("==== Current Weather ====");
  ROS_INFO("Max Temperature: %.2f F", msg->tempMax);
  ROS_INFO("Hourly Temperature: %.2f F", msg->tempHourly);
  ROS_INFO("Dew Point Temperature: %.2f F", msg->tempDew);
  ROS_INFO("Apparent Temperature: %.2f F", msg->tempApparent);
  ROS_INFO("Rainfall: %.2f in", msg->rainfall);
  ROS_INFO("Ice Accumulation: %.2f in", msg->icefall);
  ROS_INFO("Snowfall: %.2f in", msg->snowfall);
  ROS_INFO("Risk of Tornados: %.2f %%", msg->probTornado);
  ROS_INFO("Risk of Hail: %.2f %%", msg->probHail);
  ROS_INFO("Risk of Thunderstorm Winds: %.2f %%", msg->probThunderWind);
  ROS_INFO("Risk of Extreme Tornados: %.2f %%", msg->probExTornado);
  ROS_INFO("Risk of Extreme Hail: %.2f %%", msg->probExHail);
  ROS_INFO("Risk of Extreme Thunderstorm Winds: %.2f %%", msg->probExThunderWind);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "weatherSub");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("CurrentWeather", 1000, weatherCallback);

  ros::spin();

  return 0;
}
