#if !defined(GIGASECOND_H)
#define GIGASECOND_H

#include <boost/date_time/posix_time/ptime.hpp>
#include <boost/date_time/posix_time/posix_time_duration.hpp>

namespace gigasecond {
    const int GIGA_SECOND = 1e9;
    boost::posix_time::ptime advance(boost::posix_time::ptime datetime);
}

#endif
