=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient
  # The Full Phone Number Object has all of the properties of the Phone Number Summary Object, along with several more, as shown below:
  class PhoneNumberFull
    # Integer Phone number ID. This is the internal Phone.com ID for this number, not the phone number itself. Read-only.
    attr_accessor :id

    # Name
    attr_accessor :name

    # Phone number, in E.164 format
    attr_accessor :phone_number

    # Whether to block incoming calls. Boolean.
    attr_accessor :block_incoming

    # Whether to block anonymous calls. Boolean.
    attr_accessor :block_anonymous

    # The Route assigned to handle incoming calls for this number, if any. Output is a Route Summary Object, or NULL if not set. Input can be a Route Lookup Object or NULL to unset.
    attr_accessor :route

    # Caller ID Object, or NULL
    attr_accessor :caller_id

    # SMS Forwarding Object, or NULL
    attr_accessor :sms_forwarding

    attr_accessor :call_notifications


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'phone_number' => :'phone_number',
        :'block_incoming' => :'block_incoming',
        :'block_anonymous' => :'block_anonymous',
        :'route' => :'route',
        :'caller_id' => :'caller_id',
        :'sms_forwarding' => :'sms_forwarding',
        :'call_notifications' => :'call_notifications'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'phone_number' => :'String',
        :'block_incoming' => :'BOOLEAN',
        :'block_anonymous' => :'BOOLEAN',
        :'route' => :'RouteSummary',
        :'caller_id' => :'CallerIdPhoneNumber',
        :'sms_forwarding' => :'SmsForwarding',
        :'call_notifications' => :'CallNotifications'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'block_incoming')
        self.block_incoming = attributes[:'block_incoming']
      end

      if attributes.has_key?(:'block_anonymous')
        self.block_anonymous = attributes[:'block_anonymous']
      end

      if attributes.has_key?(:'route')
        self.route = attributes[:'route']
      end

      if attributes.has_key?(:'caller_id')
        self.caller_id = attributes[:'caller_id']
      end

      if attributes.has_key?(:'sms_forwarding')
        self.sms_forwarding = attributes[:'sms_forwarding']
      end

      if attributes.has_key?(:'call_notifications')
        self.call_notifications = attributes[:'call_notifications']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          phone_number == o.phone_number &&
          block_incoming == o.block_incoming &&
          block_anonymous == o.block_anonymous &&
          route == o.route &&
          caller_id == o.caller_id &&
          sms_forwarding == o.sms_forwarding &&
          call_notifications == o.call_notifications
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, phone_number, block_incoming, block_anonymous, route, caller_id, sms_forwarding, call_notifications].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
