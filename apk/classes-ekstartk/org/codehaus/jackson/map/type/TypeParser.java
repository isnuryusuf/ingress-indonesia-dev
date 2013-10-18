package org.codehaus.jackson.map.type;

import java.util.ArrayList;
import java.util.List;
import org.codehaus.jackson.type.JavaType;

public class TypeParser
{
  final TypeFactory _factory;

  public TypeParser(TypeFactory paramTypeFactory)
  {
    this._factory = paramTypeFactory;
  }

  protected IllegalArgumentException _problem(TypeParser.MyTokenizer paramMyTokenizer, String paramString)
  {
    return new IllegalArgumentException("Failed to parse type '" + paramMyTokenizer.getAllInput() + "' (remaining: '" + paramMyTokenizer.getRemainingInput() + "'): " + paramString);
  }

  protected Class<?> findClass(String paramString, TypeParser.MyTokenizer paramMyTokenizer)
  {
    try
    {
      Class localClass = Class.forName(paramString, true, Thread.currentThread().getContextClassLoader());
      return localClass;
    }
    catch (Exception localException)
    {
      if ((localException instanceof RuntimeException))
        throw ((RuntimeException)localException);
      throw _problem(paramMyTokenizer, "Can not locate class '" + paramString + "', problem: " + localException.getMessage());
    }
  }

  public JavaType parse(String paramString)
  {
    TypeParser.MyTokenizer localMyTokenizer = new TypeParser.MyTokenizer(paramString.trim());
    JavaType localJavaType = parseType(localMyTokenizer);
    if (localMyTokenizer.hasMoreTokens())
      throw _problem(localMyTokenizer, "Unexpected tokens after complete type");
    return localJavaType;
  }

  protected JavaType parseType(TypeParser.MyTokenizer paramMyTokenizer)
  {
    if (!paramMyTokenizer.hasMoreTokens())
      throw _problem(paramMyTokenizer, "Unexpected end-of-string");
    Class localClass = findClass(paramMyTokenizer.nextToken(), paramMyTokenizer);
    if (paramMyTokenizer.hasMoreTokens())
    {
      String str = paramMyTokenizer.nextToken();
      if ("<".equals(str))
        return this._factory._fromParameterizedClass(localClass, parseTypes(paramMyTokenizer));
      paramMyTokenizer.pushBack(str);
    }
    return this._factory._fromClass(localClass, null);
  }

  protected List<JavaType> parseTypes(TypeParser.MyTokenizer paramMyTokenizer)
  {
    ArrayList localArrayList = new ArrayList();
    while (paramMyTokenizer.hasMoreTokens())
    {
      localArrayList.add(parseType(paramMyTokenizer));
      if (paramMyTokenizer.hasMoreTokens())
      {
        String str = paramMyTokenizer.nextToken();
        if (">".equals(str))
          return localArrayList;
        if (!",".equals(str))
          throw _problem(paramMyTokenizer, "Unexpected token '" + str + "', expected ',' or '>')");
      }
    }
    throw _problem(paramMyTokenizer, "Unexpected end-of-string");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.TypeParser
 * JD-Core Version:    0.6.2
 */