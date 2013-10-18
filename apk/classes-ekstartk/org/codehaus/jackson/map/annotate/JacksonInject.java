package org.codehaus.jackson.map.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.codehaus.jackson.annotate.JacksonAnnotation;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.PARAMETER})
@JacksonAnnotation
public @interface JacksonInject
{
  public abstract String value();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.annotate.JacksonInject
 * JD-Core Version:    0.6.2
 */