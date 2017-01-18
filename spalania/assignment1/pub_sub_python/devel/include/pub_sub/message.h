// Generated by gencpp from file pub_sub/message.msg
// DO NOT EDIT!


#ifndef PUB_SUB_MESSAGE_MESSAGE_H
#define PUB_SUB_MESSAGE_MESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pub_sub
{
template <class ContainerAllocator>
struct message_
{
  typedef message_<ContainerAllocator> Type;

  message_()
    : temperature(0.0)
    , wind(0.0)
    , humidity(0.0)
    , status()  {
    }
  message_(const ContainerAllocator& _alloc)
    : temperature(0.0)
    , wind(0.0)
    , humidity(0.0)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef float _temperature_type;
  _temperature_type temperature;

   typedef float _wind_type;
  _wind_type wind;

   typedef float _humidity_type;
  _humidity_type humidity;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::pub_sub::message_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pub_sub::message_<ContainerAllocator> const> ConstPtr;

}; // struct message_

typedef ::pub_sub::message_<std::allocator<void> > message;

typedef boost::shared_ptr< ::pub_sub::message > messagePtr;
typedef boost::shared_ptr< ::pub_sub::message const> messageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pub_sub::message_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pub_sub::message_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pub_sub

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'pub_sub': ['/home/mano/EE5900-Proj1-Group4/spalania/assignment1/pub_sub_python/src/pub_sub/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pub_sub::message_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pub_sub::message_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_sub::message_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_sub::message_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_sub::message_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_sub::message_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pub_sub::message_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa5a27ee21ff108a20dd5dc60316df07";
  }

  static const char* value(const ::pub_sub::message_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa5a27ee21ff108aULL;
  static const uint64_t static_value2 = 0x20dd5dc60316df07ULL;
};

template<class ContainerAllocator>
struct DataType< ::pub_sub::message_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pub_sub/message";
  }

  static const char* value(const ::pub_sub::message_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pub_sub::message_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 temperature\n\
float32 wind\n\
float32 humidity\n\
string status\n\
";
  }

  static const char* value(const ::pub_sub::message_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pub_sub::message_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temperature);
      stream.next(m.wind);
      stream.next(m.humidity);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct message_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pub_sub::message_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pub_sub::message_<ContainerAllocator>& v)
  {
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
    s << indent << "wind: ";
    Printer<float>::stream(s, indent + "  ", v.wind);
    s << indent << "humidity: ";
    Printer<float>::stream(s, indent + "  ", v.humidity);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PUB_SUB_MESSAGE_MESSAGE_H