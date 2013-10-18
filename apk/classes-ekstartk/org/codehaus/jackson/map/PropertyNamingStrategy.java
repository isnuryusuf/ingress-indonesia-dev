package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;

public abstract class PropertyNamingStrategy
{
  public static final PropertyNamingStrategy CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES = new PropertyNamingStrategy.LowerCaseWithUnderscoresStrategy();

  public String nameForConstructorParameter(MapperConfig<?> paramMapperConfig, AnnotatedParameter paramAnnotatedParameter, String paramString)
  {
    return paramString;
  }

  public String nameForField(MapperConfig<?> paramMapperConfig, AnnotatedField paramAnnotatedField, String paramString)
  {
    return paramString;
  }

  public String nameForGetterMethod(MapperConfig<?> paramMapperConfig, AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    return paramString;
  }

  public String nameForSetterMethod(MapperConfig<?> paramMapperConfig, AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    return paramString;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.PropertyNamingStrategy
 * JD-Core Version:    0.6.2
 */