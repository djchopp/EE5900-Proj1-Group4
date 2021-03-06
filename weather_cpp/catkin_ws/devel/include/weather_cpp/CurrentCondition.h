// Generated by gencpp from file weather_cpp/CurrentCondition.msg
// DO NOT EDIT!


#ifndef WEATHER_CPP_MESSAGE_CURRENTCONDITION_H
#define WEATHER_CPP_MESSAGE_CURRENTCONDITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace weather_cpp
{
template <class ContainerAllocator>
struct CurrentCondition_
{
  typedef CurrentCondition_<ContainerAllocator> Type;

  CurrentCondition_()
    : header()
    , tempMax(0.0)
    , tempHourly(0.0)
    , tempDew(0.0)
    , tempApparent(0.0)
    , rainfall(0.0)
    , icefall(0.0)
    , snowfall(0.0)
    , probTornado(0.0)
    , probHail(0.0)
    , probThunderWind(0.0)
    , probExTornado(0.0)
    , probExHail(0.0)
    , probExThunderWind(0.0)  {
    }
  CurrentCondition_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tempMax(0.0)
    , tempHourly(0.0)
    , tempDew(0.0)
    , tempApparent(0.0)
    , rainfall(0.0)
    , icefall(0.0)
    , snowfall(0.0)
    , probTornado(0.0)
    , probHail(0.0)
    , probThunderWind(0.0)
    , probExTornado(0.0)
    , probExHail(0.0)
    , probExThunderWind(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _tempMax_type;
  _tempMax_type tempMax;

   typedef float _tempHourly_type;
  _tempHourly_type tempHourly;

   typedef float _tempDew_type;
  _tempDew_type tempDew;

   typedef float _tempApparent_type;
  _tempApparent_type tempApparent;

   typedef float _rainfall_type;
  _rainfall_type rainfall;

   typedef float _icefall_type;
  _icefall_type icefall;

   typedef float _snowfall_type;
  _snowfall_type snowfall;

   typedef float _probTornado_type;
  _probTornado_type probTornado;

   typedef float _probHail_type;
  _probHail_type probHail;

   typedef float _probThunderWind_type;
  _probThunderWind_type probThunderWind;

   typedef float _probExTornado_type;
  _probExTornado_type probExTornado;

   typedef float _probExHail_type;
  _probExHail_type probExHail;

   typedef float _probExThunderWind_type;
  _probExThunderWind_type probExThunderWind;




  typedef boost::shared_ptr< ::weather_cpp::CurrentCondition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::weather_cpp::CurrentCondition_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentCondition_

typedef ::weather_cpp::CurrentCondition_<std::allocator<void> > CurrentCondition;

typedef boost::shared_ptr< ::weather_cpp::CurrentCondition > CurrentConditionPtr;
typedef boost::shared_ptr< ::weather_cpp::CurrentCondition const> CurrentConditionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::weather_cpp::CurrentCondition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::weather_cpp::CurrentCondition_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace weather_cpp

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'weather_cpp': ['/home/ros/EE5900_Repos/EE5900-Proj1-Group4/weather_cpp/catkin_ws/src/weather_cpp/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::weather_cpp::CurrentCondition_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_cpp::CurrentCondition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_cpp::CurrentCondition_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eeef136eba3229f200322aca790414d0";
  }

  static const char* value(const ::weather_cpp::CurrentCondition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeeef136eba3229f2ULL;
  static const uint64_t static_value2 = 0x00322aca790414d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "weather_cpp/CurrentCondition";
  }

  static const char* value(const ::weather_cpp::CurrentCondition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 tempMax\n\
float32 tempHourly\n\
float32 tempDew\n\
float32 tempApparent\n\
float32 rainfall\n\
float32 icefall\n\
float32 snowfall\n\
float32 probTornado\n\
float32 probHail\n\
float32 probThunderWind\n\
float32 probExTornado\n\
float32 probExHail\n\
float32 probExThunderWind\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::weather_cpp::CurrentCondition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tempMax);
      stream.next(m.tempHourly);
      stream.next(m.tempDew);
      stream.next(m.tempApparent);
      stream.next(m.rainfall);
      stream.next(m.icefall);
      stream.next(m.snowfall);
      stream.next(m.probTornado);
      stream.next(m.probHail);
      stream.next(m.probThunderWind);
      stream.next(m.probExTornado);
      stream.next(m.probExHail);
      stream.next(m.probExThunderWind);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentCondition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::weather_cpp::CurrentCondition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::weather_cpp::CurrentCondition_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tempMax: ";
    Printer<float>::stream(s, indent + "  ", v.tempMax);
    s << indent << "tempHourly: ";
    Printer<float>::stream(s, indent + "  ", v.tempHourly);
    s << indent << "tempDew: ";
    Printer<float>::stream(s, indent + "  ", v.tempDew);
    s << indent << "tempApparent: ";
    Printer<float>::stream(s, indent + "  ", v.tempApparent);
    s << indent << "rainfall: ";
    Printer<float>::stream(s, indent + "  ", v.rainfall);
    s << indent << "icefall: ";
    Printer<float>::stream(s, indent + "  ", v.icefall);
    s << indent << "snowfall: ";
    Printer<float>::stream(s, indent + "  ", v.snowfall);
    s << indent << "probTornado: ";
    Printer<float>::stream(s, indent + "  ", v.probTornado);
    s << indent << "probHail: ";
    Printer<float>::stream(s, indent + "  ", v.probHail);
    s << indent << "probThunderWind: ";
    Printer<float>::stream(s, indent + "  ", v.probThunderWind);
    s << indent << "probExTornado: ";
    Printer<float>::stream(s, indent + "  ", v.probExTornado);
    s << indent << "probExHail: ";
    Printer<float>::stream(s, indent + "  ", v.probExHail);
    s << indent << "probExThunderWind: ";
    Printer<float>::stream(s, indent + "  ", v.probExThunderWind);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEATHER_CPP_MESSAGE_CURRENTCONDITION_H
