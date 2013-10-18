package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class MinimalClassNameIdResolver extends ClassNameIdResolver
{
  protected final String _basePackageName;
  protected final String _basePackagePrefix;

  protected MinimalClassNameIdResolver(JavaType paramJavaType, TypeFactory paramTypeFactory)
  {
    super(paramJavaType, paramTypeFactory);
    String str = paramJavaType.getRawClass().getName();
    int i = str.lastIndexOf('.');
    if (i < 0)
    {
      this._basePackageName = "";
      this._basePackagePrefix = ".";
      return;
    }
    this._basePackagePrefix = str.substring(0, i + 1);
    this._basePackageName = str.substring(0, i);
  }

  public String idFromValue(Object paramObject)
  {
    String str = paramObject.getClass().getName();
    if (str.startsWith(this._basePackagePrefix))
      str = str.substring(-1 + this._basePackagePrefix.length());
    return str;
  }

  public JavaType typeFromId(String paramString)
  {
    StringBuilder localStringBuilder;
    if (paramString.startsWith("."))
    {
      localStringBuilder = new StringBuilder(paramString.length() + this._basePackageName.length());
      if (this._basePackageName.length() != 0)
        break label60;
      localStringBuilder.append(paramString.substring(1));
    }
    while (true)
    {
      paramString = localStringBuilder.toString();
      return super.typeFromId(paramString);
      label60: localStringBuilder.append(this._basePackageName).append(paramString);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.MinimalClassNameIdResolver
 * JD-Core Version:    0.6.2
 */