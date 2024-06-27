#include "sensor-w1.h"

#include "file-util.h"

#include <string>
#include <cassert>
#include <fcntl.h>
#include <unistd.h>


W1Sensor::W1Sensor(const std::string& filename)
: _filename(filename) {}

double W1Sensor::get_temperature()
{ 
    return std::stol(read_sysfs_file(_filename))/1000.0;
}


