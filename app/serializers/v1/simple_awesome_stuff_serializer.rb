module V1
  module SimpleAwesomeStuffSerializer

    def serialize_awesome_stuff(awesome_stuff = @awesome_stuff)
      {
          name: awesome_stuff.name,
          some_attribute: awesome_stuff.some_attribute,
          a_counter: awesome_stuff.a_counter
      }
    end

    def serialize_awesome_stuffs(awesome_stuffs = @awesome_stuffs)
      {
          awesome_stuffs: awesome_stuffs.map do |awesome|
            serialize_awesome_stuff awesome
          end
      }
    end
  end
end
