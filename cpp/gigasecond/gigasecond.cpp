#include "gigasecond.h"
using boost::posix_time::ptime;
using boost::posix_time::seconds;

namespace gigasecond {

    ptime advance(ptime datetime)
    {
        return datetime + seconds(GIGA_SECOND);
    }
}
