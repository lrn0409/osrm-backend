### Generated by rprotoc. DO NOT EDIT!
### <proto file: Descriptors/response.proto>
# package protobuffer_response;
# 
# message coordinate {
#     required float lat = 1;
#     required float lon = 2;
# }
# 
# message route_summary
# {
#     required uint32 total_distance = 1;
#     required uint32 total_time     = 2;
#     required string start_point    = 3;
#     required string end_point      = 4;
# }
# 
# message route_instructions
# {
#     required string instruction_id  = 1;
#     required string street_name     = 2;
#     required int32  length          = 3;
#     required int32  position        = 4;
#     required int32  time            = 5;
#     required string length_str      = 6;
#     required string earth_direction = 7;
#     required int32  azimuth         = 8;
#     optional int32  travel_mode     = 9;
# }
# 
# message route
# {
#     optional route_summary      route_summary      = 1;
#     optional string             route_geometry     = 2;
#     repeated coordinate         via_points         = 3;
#     repeated int32              via_indices        = 4;
#     repeated string             route_name         = 5;
#     repeated route_instructions route_instructions = 6;
# }
# 
# message hint
# {
#     required int32 check_sum = 1;
#     repeated string location = 2;
# }
# 
# message route_response {
#     required int32  status            = 1;
#     required string status_message    = 2;
#     optional route  main_route        = 3;
#     optional route  alternative_route = 4;
#     optional hint   hint              = 5;
# }
# 
# message matrix_row
# {
#     repeated uint32 entry = 1;
# }
# 
# message distance_matrix
# {
#     repeated matrix_row row = 1;
# }
# 
# message named_location
# {
#     required coordinate mapped_coordinate = 1;
#     required string     name              = 2;
# }
# 
# message locate_response
# {
#     required uint32     status            = 1;
#     required coordinate mapped_coordinate = 2;
# }
# 
# message nearest_response
# {
#     required uint32         status   = 1;
#     repeated named_location location = 2;
# }

require 'protojson'
#require 'protobuf/message/message'
#require 'protobuf/message/enum'
#require 'protobuf/message/service'
#require 'protobuf/message/extend'


module ProtobufferResponse
  class Coordinate < ::Protobuf::Message
    defined_in __FILE__
    required :float, :lat, 1
    required :float, :lon, 2
  end
  class Routesummary < ::Protobuf::Message
    defined_in __FILE__
    required :uint32, :total_distance, 1
    required :uint32, :total_time, 2
    required :string, :start_point, 3
    required :string, :end_point, 4
  end
  class Routeinstructions < ::Protobuf::Message
    defined_in __FILE__
    required :string, :instruction_id, 1
    required :string, :street_name, 2
    required :int32, :length, 3
    required :int32, :position, 4
    required :int32, :time, 5
    required :string, :length_str, 6
    required :string, :earth_direction, 7
    required :int32, :azimuth, 8
    optional :int32, :travel_mode, 9
  end
  class Route < ::Protobuf::Message
    defined_in __FILE__
    optional :routesummary, :route_summary, 1
    optional :string, :route_geometry, 2
    repeated :coordinate, :via_points, 3
    repeated :int32, :via_indices, 4
    repeated :string, :route_name, 5
    repeated :routeinstructions, :route_instructions, 6
  end
  class Hint < ::Protobuf::Message
    defined_in __FILE__
    required :int32, :check_sum, 1
    repeated :string, :location, 2
  end
  class Route_response < ::Protobuf::Message
    defined_in __FILE__
    required :int32, :status, 1
    required :string, :status_message, 2
    optional :route, :main_route, 3
    optional :route, :alternative_route, 4
    optional :hint, :hint, 5
  end
  class Matrix_row < ::Protobuf::Message
    defined_in __FILE__
    repeated :uint32, :entry, 1
  end
  class Distance_matrix < ::Protobuf::Message
    defined_in __FILE__
    repeated :matrix_row, :row, 1
  end
  class Named_location < ::Protobuf::Message
    defined_in __FILE__
    required :coordinate, :mapped_coordinate, 1
    required :string, :name, 2
  end
  class Locate_response < ::Protobuf::Message
    defined_in __FILE__
    required :uint32, :status, 1
    required :coordinate, :mapped_coordinate, 2
  end
  class Nearest_response < ::Protobuf::Message
    defined_in __FILE__
    required :uint32, :status, 1
    repeated :named_location, :location, 2
  end
end