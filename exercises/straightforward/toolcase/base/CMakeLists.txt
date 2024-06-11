add_library(
  base

  display-led-stripe.h
  display-led-stripe.cpp

  hysteresis.h
  hysteresis.cpp

  pwm_controller.h
  pwm_controller.cpp

  # sensors
  sensor.h
  sensor-w1.h
  sensor-random.h
  sensor-random.cpp
  sensor-avg.h
  sensor-avg.cpp
  sensor-const.h
  sensor-const.cpp
  sensor-mock.h
  sensor-mock.cpp

  # switches
  switch.h
  sysfs-switch.h
  sysfs-switch.cpp
  switch-mock.h
  switch-mock.cpp
)

target_include_directories(base PUBLIC .)
