package org.codehaus.jackson.map.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@JacksonAnnotation
public @interface JsonTypeIdResolver
{
  public abstract Class<? extends TypeIdResolver> value();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.annotate.JsonTypeIdResolver
 * JD-Core Version:    0.6.2
 */