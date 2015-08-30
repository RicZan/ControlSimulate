// Generated by gencpp from file sys_diffeq/SetStateResponse.msg
// DO NOT EDIT!


#ifndef SYS_DIFFEQ_MESSAGE_SETSTATERESPONSE_H
#define SYS_DIFFEQ_MESSAGE_SETSTATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sys_diffeq
{
template <class ContainerAllocator>
struct SetStateResponse_
{
  typedef SetStateResponse_<ContainerAllocator> Type;

  SetStateResponse_()
    : done(false)  {
    }
  SetStateResponse_(const ContainerAllocator& _alloc)
    : done(false)  {
    }



   typedef uint8_t _done_type;
  _done_type done;




  typedef boost::shared_ptr< ::sys_diffeq::SetStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sys_diffeq::SetStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetStateResponse_

typedef ::sys_diffeq::SetStateResponse_<std::allocator<void> > SetStateResponse;

typedef boost::shared_ptr< ::sys_diffeq::SetStateResponse > SetStateResponsePtr;
typedef boost::shared_ptr< ::sys_diffeq::SetStateResponse const> SetStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sys_diffeq::SetStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sys_diffeq

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sys_diffeq': ['/home/smladmin/catkin_tmp/src/sys_diffeq/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sys_diffeq::SetStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sys_diffeq::SetStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sys_diffeq::SetStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89bb254424e4cffedbf494e7b0ddbfea";
  }

  static const char* value(const ::sys_diffeq::SetStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89bb254424e4cffeULL;
  static const uint64_t static_value2 = 0xdbf494e7b0ddbfeaULL;
};

template<class ContainerAllocator>
struct DataType< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sys_diffeq/SetStateResponse";
  }

  static const char* value(const ::sys_diffeq::SetStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool done\n\
\n\
";
  }

  static const char* value(const ::sys_diffeq::SetStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sys_diffeq::SetStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sys_diffeq::SetStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYS_DIFFEQ_MESSAGE_SETSTATERESPONSE_H