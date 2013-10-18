package org.codehaus.jackson.map.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.KeyDeserializer;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.PARAMETER})
@JacksonAnnotation
public @interface JsonDeserialize
{
  public abstract Class<?> as();

  public abstract Class<?> contentAs();

  public abstract Class<? extends JsonDeserializer<?>> contentUsing();

  public abstract Class<?> keyAs();

  public abstract Class<? extends KeyDeserializer> keyUsing();

  public abstract Class<? extends JsonDeserializer<?>> using();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.annotate.JsonDeserialize
 * JD-Core Version:    0.6.2
 */