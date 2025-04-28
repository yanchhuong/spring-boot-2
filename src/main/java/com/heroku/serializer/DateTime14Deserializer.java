/*
package com.heroku.serializer;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import org.exolab.castor.types.DateTime;


import java.io.IOException;

public class DateTime14Deserializer extends StdDeserializer<DateTime>
{
    protected DateTime14Deserializer()
    {
        super(DateTime.class);
    }

    public DateTime deserialize(JsonParser parser, DeserializationContext context) throws IOException
    {
        return DateTimeUtils.parseDateTime((String)parser.readValueAs(String.class), DateTimeFormat.forPattern("yyyyMMddHHmmss"));
    }
}*/
