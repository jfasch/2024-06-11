#include <project-config.h>

#include <sensor-const.h>
#include <sensor-random.h>
#include <sink-composite.h>
#include <sink-terminal.h>
#if HAVE_SQLITE3==1
#  include <sink-sqlite3.h>
#endif
#if HAVE_MOSQUITTO==1
#  include <sink-mqtt.h>
#endif
#include <data-logger.h>

#include <memory>
#include <iostream>


int main(int argc, char** argv)
{
    std::cout << "Version: " << GLUEHWEIN_MAJOR << '.' << GLUEHWEIN_MINOR << std::endl;

#   if HAVE_SQLITE3==1
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <SQLITE3-FILE>\n";
        std::cerr << "   " << SinkSQLite3::create_table_statement << '\n';
        return 1;
    }

    std::string dbfile = argv[1];
#   endif

    auto bottom_left = std::make_unique<ConstantSensor>(37.5);
    auto bottom_right = std::make_unique<ConstantSensor>(-273.15);
    auto top_left = std::make_unique<RandomSensor>(0, 666);
    auto top_right = std::make_unique<RandomSensor>(-273.15, 0);

    SensorConfig config;
    config.add_sensor("bl", std::move(bottom_left));
    config.add_sensor("br", std::move(bottom_right));
    config.add_sensor("tl", std::move(top_left));
    config.add_sensor("tr", std::move(top_right));

    auto sink = std::make_unique<SinkComposite>();
    sink->add_sink(std::make_unique<SinkTerminal>());

#   if HAVE_SQLITE3==1
    sink->add_sink(std::make_unique<SinkSQLite3>(dbfile));
#   endif
#   if HAVE_MOSQUITTO==1
    sink->add_sink(std::make_unique<SinkMQTT>("localhost", 1883, "gluehwein"));
#   endif

    DataLogger logger(config, std::move(sink), 1000/*ms*/);
    logger.start_logging();

    return 0;
}
