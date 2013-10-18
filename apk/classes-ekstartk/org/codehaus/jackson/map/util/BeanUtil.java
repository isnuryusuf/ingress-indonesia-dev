package org.codehaus.jackson.map.util;

import org.codehaus.jackson.map.introspect.AnnotatedMethod;

public class BeanUtil
{
  protected static boolean isCglibGetCallbacks(AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getRawType();
    if ((localClass == null) || (!localClass.isArray()));
    String str;
    do
    {
      Package localPackage;
      do
      {
        return false;
        localPackage = localClass.getComponentType().getPackage();
      }
      while (localPackage == null);
      str = localPackage.getName();
    }
    while ((!str.startsWith("net.sf.cglib")) && (!str.startsWith("org.hibernate.repackage.cglib")));
    return true;
  }

  protected static boolean isGroovyMetaClassGetter(AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getRawType();
    if ((localClass == null) || (localClass.isArray()));
    Package localPackage;
    do
    {
      return false;
      localPackage = localClass.getPackage();
    }
    while ((localPackage == null) || (!localPackage.getName().startsWith("groovy.lang")));
    return true;
  }

  protected static boolean isGroovyMetaClassSetter(AnnotatedMethod paramAnnotatedMethod)
  {
    Package localPackage = paramAnnotatedMethod.getParameterClass(0).getPackage();
    boolean bool1 = false;
    if (localPackage != null)
    {
      boolean bool2 = localPackage.getName().startsWith("groovy.lang");
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  protected static String manglePropertyName(String paramString)
  {
    StringBuilder localStringBuilder = null;
    int i = paramString.length();
    if (i == 0)
      paramString = null;
    do
    {
      return paramString;
      for (int j = 0; j < i; j++)
      {
        char c1 = paramString.charAt(j);
        char c2 = Character.toLowerCase(c1);
        if (c1 == c2)
          break;
        if (localStringBuilder == null)
          localStringBuilder = new StringBuilder(paramString);
        localStringBuilder.setCharAt(j, c2);
      }
    }
    while (localStringBuilder == null);
    return localStringBuilder.toString();
  }

  public static String okNameForGetter(AnnotatedMethod paramAnnotatedMethod)
  {
    String str1 = paramAnnotatedMethod.getName();
    String str2 = okNameForIsGetter(paramAnnotatedMethod, str1);
    if (str2 == null)
      str2 = okNameForRegularGetter(paramAnnotatedMethod, str1);
    return str2;
  }

  public static String okNameForIsGetter(AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    if (paramString.startsWith("is"))
    {
      Class localClass = paramAnnotatedMethod.getRawType();
      if ((localClass == Boolean.class) || (localClass == Boolean.TYPE));
    }
    else
    {
      return null;
    }
    return manglePropertyName(paramString.substring(2));
  }

  public static String okNameForRegularGetter(AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    if (paramString.startsWith("get"))
    {
      if (!"getCallbacks".equals(paramString))
        break label27;
      if (!isCglibGetCallbacks(paramAnnotatedMethod))
        break label43;
    }
    label27: 
    while (("getMetaClass".equals(paramString)) && (isGroovyMetaClassGetter(paramAnnotatedMethod)))
      return null;
    label43: return manglePropertyName(paramString.substring(3));
  }

  public static String okNameForSetter(AnnotatedMethod paramAnnotatedMethod)
  {
    String str1 = paramAnnotatedMethod.getName();
    String str2;
    if (str1.startsWith("set"))
    {
      str2 = manglePropertyName(str1.substring(3));
      if (str2 != null)
        break label29;
    }
    label29: 
    while (("metaClass".equals(str2)) && (isGroovyMetaClassSetter(paramAnnotatedMethod)))
      return null;
    return str2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.BeanUtil
 * JD-Core Version:    0.6.2
 */