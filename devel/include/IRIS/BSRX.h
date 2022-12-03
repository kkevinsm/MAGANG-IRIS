// Generated by gencpp from file IRIS/BSRX.msg
// DO NOT EDIT!


#ifndef IRIS_MESSAGE_BSRX_H
#define IRIS_MESSAGE_BSRX_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace IRIS
{
template <class ContainerAllocator>
struct BSRX_
{
  typedef BSRX_<ContainerAllocator> Type;

  BSRX_()
    : status(0)
    , x_tujuan(0)
    , y_tujuan(0)  {
    }
  BSRX_(const ContainerAllocator& _alloc)
    : status(0)
    , x_tujuan(0)
    , y_tujuan(0)  {
  (void)_alloc;
    }



   typedef int64_t _status_type;
  _status_type status;

   typedef int64_t _x_tujuan_type;
  _x_tujuan_type x_tujuan;

   typedef int64_t _y_tujuan_type;
  _y_tujuan_type y_tujuan;





  typedef boost::shared_ptr< ::IRIS::BSRX_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::IRIS::BSRX_<ContainerAllocator> const> ConstPtr;

}; // struct BSRX_

typedef ::IRIS::BSRX_<std::allocator<void> > BSRX;

typedef boost::shared_ptr< ::IRIS::BSRX > BSRXPtr;
typedef boost::shared_ptr< ::IRIS::BSRX const> BSRXConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::IRIS::BSRX_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::IRIS::BSRX_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::IRIS::BSRX_<ContainerAllocator1> & lhs, const ::IRIS::BSRX_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.x_tujuan == rhs.x_tujuan &&
    lhs.y_tujuan == rhs.y_tujuan;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::IRIS::BSRX_<ContainerAllocator1> & lhs, const ::IRIS::BSRX_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace IRIS

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::IRIS::BSRX_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::IRIS::BSRX_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::IRIS::BSRX_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::IRIS::BSRX_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::IRIS::BSRX_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::IRIS::BSRX_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::IRIS::BSRX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a32a211428e7e0b8ebe12ebf69d1f515";
  }

  static const char* value(const ::IRIS::BSRX_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa32a211428e7e0b8ULL;
  static const uint64_t static_value2 = 0xebe12ebf69d1f515ULL;
};

template<class ContainerAllocator>
struct DataType< ::IRIS::BSRX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "IRIS/BSRX";
  }

  static const char* value(const ::IRIS::BSRX_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::IRIS::BSRX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 status\n"
"int64 x_tujuan\n"
"int64 y_tujuan\n"
;
  }

  static const char* value(const ::IRIS::BSRX_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::IRIS::BSRX_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.x_tujuan);
      stream.next(m.y_tujuan);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BSRX_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::IRIS::BSRX_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::IRIS::BSRX_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int64_t>::stream(s, indent + "  ", v.status);
    s << indent << "x_tujuan: ";
    Printer<int64_t>::stream(s, indent + "  ", v.x_tujuan);
    s << indent << "y_tujuan: ";
    Printer<int64_t>::stream(s, indent + "  ", v.y_tujuan);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRIS_MESSAGE_BSRX_H