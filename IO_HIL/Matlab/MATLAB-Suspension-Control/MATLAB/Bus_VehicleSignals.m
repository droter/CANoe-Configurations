function cellInfo = Bus_VehicleSignals(varargin) 
% BUS_VEHICLESIGNALS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the m-file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode, DimensionsMode 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'ActuatorForces', ... 
    '', ... 
    sprintf(''), { ... 
      {'fafl', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'fafr', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'farl', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'farr', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'AirDrag', ... 
    '', ... 
    sprintf(''), { ... 
      {'AirResistance', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'FrontDownforce', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'RearDownforce', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Brake', ... 
    '', ... 
    sprintf(''), { ... 
      {'BrakeTorqueFront', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'BrakeTorqueRear', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'BRAKE_INPUT', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'HandbrakeTorque', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'HANDBRAKE_INPUT', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Bus_Vehicle', ... 
    '', ... 
    sprintf('Hold all system states.'), { ... 
      {'X_position', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Y_position', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_position', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'PSI_eulerangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'THETA_eulerangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'PHI_eulerangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DELTA_FL_steerangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DELTA_FR_steerangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_FL_suspdeflection', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_FR_suspdeflection', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_RL_suspdeflection', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_RR_suspdeflection', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_FL_wheelangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_FR_wheelangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_RL_wheelangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_RR_wheelangle', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'X1dot_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Y1dot_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z1dot_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'PSI1dot_angularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'THETA1dot_angularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'PHI1dot_angularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DELTA_FL1dot_steerangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DELTA_FR1dot_steerangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_FL1dot_suspvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_FR1dot_suspvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_RL1dot_suspvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Z_RR1dot_suspvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_FL1dot_wheelangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_FR1dot_wheelangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_RL1dot_wheelangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'EPSILON_RR1dot_wheelangularvelocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Bus_VehicleSignals', ... 
    '', ... 
    sprintf(''), { ... 
      {'Vehicle_States', 1, 'Bus_Vehicle', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Engine_Signals', 1, 'Engine_Signals', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Brake', 1, 'Brake', -1, 'real', 'Sample', 'Fixed'}; ...
      {'FORWARD_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Steering', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Contact_point_data', 1, 'Contact_point_data', -1, 'real', 'Sample', 'Fixed'}; ...
      {'ActuatorForces', 1, 'ActuatorForces', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DamperForceFL', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DamperForceFR', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DamperForceRL', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'DamperForceRR', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'AirDrag', 1, 'AirDrag', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Gear', 1, 'uint8', -1, 'real', 'Sample', 'Fixed'}; ...
      {'WheelForceFL', 1, 'WheelForceFL', -1, 'real', 'Sample', 'Fixed'}; ...
      {'WheelForceFR', 1, 'WheelForceFR', -1, 'real', 'Sample', 'Fixed'}; ...
      {'WheelForceRL', 1, 'WheelForceRL', -1, 'real', 'Sample', 'Fixed'}; ...
      {'WheelForceRR', 1, 'WheelForceRR', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Contact_point_data', ... 
    '', ... 
    sprintf(''), { ... 
      {'Contact_points', 1, 'Contact_points', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Wheel_body_velocities', 1, 'Wheel_body_velocities', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Wheel_axles', 1, 'Wheel_axles', -1, 'real', 'Sample', 'Fixed'}; ...
      {'Ground_data', 1, 'Ground_data', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Contact_points', ... 
    '', ... 
    sprintf(''), { ... 
      {'cpFL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpFL1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpFR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpFR1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpRL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpRL1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpRR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'cpRR1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Engine_Signals', ... 
    '', ... 
    sprintf(''), { ... 
      {'ENGINE_RPM', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'THROTTLE', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'ENGINE_TORQUE', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'GND_FL', ... 
    '', ... 
    sprintf(''), { ... 
      {'Z_FL', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'N_FL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'GND_FR', ... 
    '', ... 
    sprintf(''), { ... 
      {'Z_FR', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'N_FR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'GND_RL', ... 
    '', ... 
    sprintf(''), { ... 
      {'Z_RL', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'N_RL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'GND_RR', ... 
    '', ... 
    sprintf(''), { ... 
      {'Z_RR', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'N_RR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Ground_data', ... 
    '', ... 
    sprintf(''), { ... 
      {'GND_FL', 1, 'GND_FL', -1, 'real', 'Sample', 'Fixed'}; ...
      {'GND_FR', 1, 'GND_FR', -1, 'real', 'Sample', 'Fixed'}; ...
      {'GND_RL', 1, 'GND_RL', -1, 'real', 'Sample', 'Fixed'}; ...
      {'GND_RR', 1, 'GND_RR', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'WheelForceFL', ... 
    '', ... 
    sprintf(''), { ... 
      {'r_dynamic', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'F_tire', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'M_resist', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'WheelForceFR', ... 
    '', ... 
    sprintf(''), { ... 
      {'r_dynamic', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'F_tire', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'M_resist', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'WheelForceRL', ... 
    '', ... 
    sprintf(''), { ... 
      {'r_dynamic', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'F_tire', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'M_resist', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'WheelForceRR', ... 
    '', ... 
    sprintf(''), { ... 
      {'r_dynamic', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'F_tire', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'M_resist', 1, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Wheel_axles', ... 
    '', ... 
    sprintf(''), { ... 
      {'axleFL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'axleFR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'axleRL', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'axleRR', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
  { ... 
    'Wheel_body_velocities', ... 
    '', ... 
    sprintf(''), { ... 
      {'whlFL1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'whlFR1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'whlRL1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
      {'whlRR1dot', 3, 'double', -1, 'real', 'Sample', 'Fixed'}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
