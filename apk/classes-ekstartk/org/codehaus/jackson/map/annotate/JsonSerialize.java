package org.codehaus.jackson.map.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.codehaus.jackson.map.JsonSerializer;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.PARAMETER})
@JacksonAnnotation
public @interface JsonSerialize
{
  public abstract Class<?> as();

  public abstract Class<?> contentAs();

  public abstract Class<? extends JsonSerializer<?>> contentUsing();

  public abstract JsonSerialize.Inclusion include();

  public abstract Class<?> keyAs();

  public abstract Class<? extends JsonSerializer<?>> keyUsing();

  public abstract JsonSerialize.Typing typing();

  public abstract Class<? extends JsonSerializer<?>> using();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.annotate.JsonSerialize
 * JD-Core Version:    0.6.2
 */