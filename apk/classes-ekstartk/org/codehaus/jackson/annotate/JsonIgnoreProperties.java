package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@JacksonAnnotation
public @interface JsonIgnoreProperties
{
  public abstract boolean ignoreUnknown();

  public abstract String[] value();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonIgnoreProperties
 * JD-Core Version:    0.6.2
 */