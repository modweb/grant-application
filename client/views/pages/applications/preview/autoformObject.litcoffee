    Template.autoformObject.helpers
      'schemaProperties': ->

Helper function to get properties using dot notation.

        getProperty = (obj, desc) ->
          arr = desc.split '.'
          while arr.length and obj?
            obj = obj[arr.shift()]
          return obj

Get section properties

        sections = _.map this.metaApplication.sections, (section) -> section.property

Get the keys of the schema

        keys = _.keys this.collection._schema

Get the schema of the collection

        schema = this.collection._schema

Get the userApplication values

        values = this.values

Map the keys to the values of the userApplication, value is null for missing
values. For schema keys that contain a section that isn't a part of the
metaApplication.sections return null.

        keyValues = _.map keys, (key) ->

`key` is a dot notation string, use helper function to get value.

          value = getProperty values, key

schema type is used to determine if the property should be displayed, or if
the key we're iterating on is a section of the form, which would have a type of
`object`

          schemaKeyType = schema[key].type
          keyParts = key.split '.'
          invalidSection = no
          if (keyParts.length > 1) and not _.contains sections, (_.first keyParts)
            invalidSection = yes
          if _s.contains key, '$'
            invalidSection = yes

Check if key is in a valid section or if it is a section (i.e. object)

          if schemaKeyType is Object or invalidSection
            return
          label = schema[key].label

If `label` does not exist, then `key` is not a part of the schema, return null.
I.e. for the key `_id`.

          if label?
            label: label
            value: value
            key: key

        console.log keyValues
        keyValues
