package com.company.erp.util;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
 
/**
 * Used to serialize Java.util.Date, which is not a common JSON
 * type, so we have to create a custom serialize method;.
 *
 * @author Loiane Groner
 * http://loianegroner.com (English)
 * http://loiane.com (Portuguese)
 */
@Component
public class JsonDateSerializer extends JsonSerializer<GregorianCalendar>{
 
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
 
    @Override
    public void serialize(GregorianCalendar calendar, JsonGenerator gen, SerializerProvider provider)
            throws IOException, JsonProcessingException {
 
        String formattedDate = dateFormat.format(calendar.getTime());
 
        gen.writeString(formattedDate);
    }
 
}