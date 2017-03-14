=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class CreatePhoneNumberParams
    # Phone number
    attr_accessor :phone_number

    # Route lookup object
    attr_accessor :route

    # Phone Name
    attr_accessor :name

    # Block incoming calls
    attr_accessor :block_incoming

    # Block anonymous calls
    attr_accessor :block_anonymous

    # Caller ID name
    attr_accessor :caller_id_name

    # Caller ID type
    attr_accessor :caller_id_type

    # 'application' or 'extension'
    attr_accessor :sms_forwarding_type

    # Application lookup object
    attr_accessor :sms_forwarding_application

    # Extension lookup object
    attr_accessor :sms_forwarding_extension

    # Call notifications for emails. Can be a single email or an array of emails
    attr_accessor :call_notifications_emails

    # Call notification for SMS
    attr_accessor :call_notifications_sms


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'phone_number' => :'phone_number',
        :'route' => :'route',
        :'name' => :'name',
        :'block_incoming' => :'block_incoming',
        :'block_anonymous' => :'block_anonymous',
        :'caller_id_name' => :'caller_id[name]',
        :'caller_id_type' => :'caller_id[type]',
        :'sms_forwarding_type' => :'sms_forwarding[type]',
        :'sms_forwarding_application' => :'sms_forwarding[application]',
        :'sms_forwarding_extension' => :'sms_forwarding[extension]',
        :'call_notifications_emails' => :'call_notifications[emails]',
        :'call_notifications_sms' => :'call_notifications[sms]'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'phone_number' => :'Object',
        :'route' => :'Object',
        :'name' => :'String',
        :'block_incoming' => :'BOOLEAN',
        :'block_anonymous' => :'BOOLEAN',
        :'caller_id_name' => :'String',
        :'caller_id_type' => :'String',
        :'sms_forwarding_type' => :'String',
        :'sms_forwarding_application' => :'Object',
        :'sms_forwarding_extension' => :'Object',
        :'call_notifications_emails' => :'Array<String>',
        :'call_notifications_sms' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'route')
        self.route = attributes[:'route']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'block_incoming')
        self.block_incoming = attributes[:'block_incoming']
      end

      if attributes.has_key?(:'block_anonymous')
        self.block_anonymous = attributes[:'block_anonymous']
      end

      if attributes.has_key?(:'caller_id[name]')
        self.caller_id_name = attributes[:'caller_id[name]']
      end

      if attributes.has_key?(:'caller_id[type]')
        self.caller_id_type = attributes[:'caller_id[type]']
      end

      if attributes.has_key?(:'sms_forwarding[type]')
        self.sms_forwarding_type = attributes[:'sms_forwarding[type]']
      end

      if attributes.has_key?(:'sms_forwarding[application]')
        self.sms_forwarding_application = attributes[:'sms_forwarding[application]']
      end

      if attributes.has_key?(:'sms_forwarding[extension]')
        self.sms_forwarding_extension = attributes[:'sms_forwarding[extension]']
      end

      if attributes.has_key?(:'call_notifications[emails]')
        if (value = attributes[:'call_notifications[emails]']).is_a?(Array)
          self.call_notifications_emails = value
        end
      end

      if attributes.has_key?(:'call_notifications[sms]')
        self.call_notifications_sms = attributes[:'call_notifications[sms]']
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
          phone_number == o.phone_number &&
          route == o.route &&
          name == o.name &&
          block_incoming == o.block_incoming &&
          block_anonymous == o.block_anonymous &&
          caller_id_name == o.caller_id_name &&
          caller_id_type == o.caller_id_type &&
          sms_forwarding_type == o.sms_forwarding_type &&
          sms_forwarding_application == o.sms_forwarding_application &&
          sms_forwarding_extension == o.sms_forwarding_extension &&
          call_notifications_emails == o.call_notifications_emails &&
          call_notifications_sms == o.call_notifications_sms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [phone_number, route, name, block_incoming, block_anonymous, caller_id_name, caller_id_type, sms_forwarding_type, sms_forwarding_application, sms_forwarding_extension, call_notifications_emails, call_notifications_sms].hash
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
