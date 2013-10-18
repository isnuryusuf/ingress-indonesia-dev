package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.PARAMETER})
@JacksonAnnotation
public @interface JsonTypeInfo
{
  public abstract Class<?> defaultImpl();

  public abstract JsonTypeInfo.As include();

  public abstract String property();

  public abstract JsonTypeInfo.Id use();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonTypeInfo
 * JD-Core Version:    0.6.2
 */