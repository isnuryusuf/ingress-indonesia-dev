package org.codehaus.jackson.map.util;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ClassUtil
{
  private static void _addSuperTypes(Class<?> paramClass1, Class<?> paramClass2, Collection<Class<?>> paramCollection, boolean paramBoolean)
  {
    while (true)
    {
      if ((paramClass1 == paramClass2) || (paramClass1 == null) || (paramClass1 == Object.class));
      do
      {
        return;
        if (!paramBoolean)
          break;
      }
      while (paramCollection.contains(paramClass1));
      paramCollection.add(paramClass1);
      Class[] arrayOfClass = paramClass1.getInterfaces();
      int i = arrayOfClass.length;
      for (int j = 0; j < i; j++)
        _addSuperTypes(arrayOfClass[j], paramClass2, paramCollection, true);
      paramClass1 = paramClass1.getSuperclass();
      paramBoolean = true;
    }
  }

  public static String canBeABeanType(Class<?> paramClass)
  {
    if (paramClass.isAnnotation())
      return "annotation";
    if (paramClass.isArray())
      return "array";
    if (paramClass.isEnum())
      return "enum";
    if (paramClass.isPrimitive())
      return "primitive";
    return null;
  }

  public static void checkAndFixAccess(Member paramMember)
  {
    AccessibleObject localAccessibleObject = (AccessibleObject)paramMember;
    try
    {
      localAccessibleObject.setAccessible(true);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (localAccessibleObject.isAccessible());
      Class localClass = paramMember.getDeclaringClass();
      throw new IllegalArgumentException("Can not access " + paramMember + " (from class " + localClass.getName() + "; failed to set access: " + localSecurityException.getMessage());
    }
  }

  public static <T> T createInstance(Class<T> paramClass, boolean paramBoolean)
  {
    Constructor localConstructor = findConstructor(paramClass, paramBoolean);
    if (localConstructor == null)
      throw new IllegalArgumentException("Class " + paramClass.getName() + " has no default (no arg) constructor");
    try
    {
      Object localObject = localConstructor.newInstance(new Object[0]);
      return localObject;
    }
    catch (Exception localException)
    {
      unwrapAndThrowAsIAE(localException, "Failed to instantiate class " + paramClass.getName() + ", problem: " + localException.getMessage());
    }
    return null;
  }

  public static Object defaultValue(Class<?> paramClass)
  {
    if (paramClass == Integer.TYPE)
      return Integer.valueOf(0);
    if (paramClass == Long.TYPE)
      return Long.valueOf(0L);
    if (paramClass == Boolean.TYPE)
      return Boolean.FALSE;
    if (paramClass == Double.TYPE)
      return Double.valueOf(0.0D);
    if (paramClass == Float.TYPE)
      return Float.valueOf(0.0F);
    if (paramClass == Byte.TYPE)
      return Byte.valueOf((byte)0);
    if (paramClass == Short.TYPE)
      return Short.valueOf((short)0);
    if (paramClass == Character.TYPE)
      return Character.valueOf('\000');
    throw new IllegalArgumentException("Class " + paramClass.getName() + " is not a primitive type");
  }

  public static <T> Constructor<T> findConstructor(Class<T> paramClass, boolean paramBoolean)
  {
    Constructor localConstructor;
    try
    {
      localConstructor = paramClass.getDeclaredConstructor(new Class[0]);
      if (paramBoolean)
      {
        checkAndFixAccess(localConstructor);
        return localConstructor;
      }
      if (!Modifier.isPublic(localConstructor.getModifiers()))
        throw new IllegalArgumentException("Default constructor for " + paramClass.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type");
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        unwrapAndThrowAsIAE(localException, "Failed to find default constructor of class " + paramClass.getName() + ", problem: " + localException.getMessage());
    }
    return localConstructor;
  }

  public static Class<? extends Enum<?>> findEnumType(Class<?> paramClass)
  {
    if (paramClass.getSuperclass() != Enum.class)
      paramClass = paramClass.getSuperclass();
    return paramClass;
  }

  public static Class<? extends Enum<?>> findEnumType(Enum<?> paramEnum)
  {
    Class localClass = paramEnum.getClass();
    if (localClass.getSuperclass() != Enum.class)
      localClass = localClass.getSuperclass();
    return localClass;
  }

  public static Class<? extends Enum<?>> findEnumType(EnumMap<?, ?> paramEnumMap)
  {
    if (!paramEnumMap.isEmpty())
      return findEnumType((Enum)paramEnumMap.keySet().iterator().next());
    return ClassUtil.EnumTypeLocator.instance.enumTypeFor(paramEnumMap);
  }

  public static Class<? extends Enum<?>> findEnumType(EnumSet<?> paramEnumSet)
  {
    if (!paramEnumSet.isEmpty())
      return findEnumType((Enum)paramEnumSet.iterator().next());
    return ClassUtil.EnumTypeLocator.instance.enumTypeFor(paramEnumSet);
  }

  public static List<Class<?>> findSuperTypes(Class<?> paramClass1, Class<?> paramClass2)
  {
    return findSuperTypes(paramClass1, paramClass2, new ArrayList(8));
  }

  public static List<Class<?>> findSuperTypes(Class<?> paramClass1, Class<?> paramClass2, List<Class<?>> paramList)
  {
    _addSuperTypes(paramClass1, paramClass2, paramList, false);
    return paramList;
  }

  public static Class<?> getOuterClass(Class<?> paramClass)
  {
    try
    {
      if (paramClass.getEnclosingMethod() != null)
        return null;
      if (!Modifier.isStatic(paramClass.getModifiers()))
      {
        Class localClass = paramClass.getEnclosingClass();
        return localClass;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (SecurityException localSecurityException)
    {
    }
    return null;
  }

  public static Throwable getRootCause(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null)
      paramThrowable = paramThrowable.getCause();
    return paramThrowable;
  }

  public static boolean hasGetterSignature(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers()));
    Class[] arrayOfClass;
    do
    {
      return false;
      arrayOfClass = paramMethod.getParameterTypes();
    }
    while (((arrayOfClass != null) && (arrayOfClass.length != 0)) || (Void.TYPE == paramMethod.getReturnType()));
    return true;
  }

  public static boolean isCollectionMapOrArray(Class<?> paramClass)
  {
    if (paramClass.isArray());
    while ((Collection.class.isAssignableFrom(paramClass)) || (Map.class.isAssignableFrom(paramClass)))
      return true;
    return false;
  }

  public static boolean isConcrete(Class<?> paramClass)
  {
    return (0x600 & paramClass.getModifiers()) == 0;
  }

  public static String isLocalType(Class<?> paramClass, boolean paramBoolean)
  {
    try
    {
      if (paramClass.getEnclosingMethod() != null)
        return "local/anonymous";
      if ((!paramBoolean) && (paramClass.getEnclosingClass() != null) && (!Modifier.isStatic(paramClass.getModifiers())))
        return "non-static member class";
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (SecurityException localSecurityException)
    {
      label37: break label37;
    }
  }

  public static boolean isProxyType(Class<?> paramClass)
  {
    if (Proxy.isProxyClass(paramClass));
    String str;
    do
    {
      return true;
      str = paramClass.getName();
    }
    while ((str.startsWith("net.sf.cglib.proxy.")) || (str.startsWith("org.hibernate.proxy.")));
    return false;
  }

  public static void throwAsIAE(Throwable paramThrowable)
  {
    throwAsIAE(paramThrowable, paramThrowable.getMessage());
  }

  public static void throwAsIAE(Throwable paramThrowable, String paramString)
  {
    if ((paramThrowable instanceof RuntimeException))
      throw ((RuntimeException)paramThrowable);
    if ((paramThrowable instanceof Error))
      throw ((Error)paramThrowable);
    throw new IllegalArgumentException(paramString, paramThrowable);
  }

  public static void unwrapAndThrowAsIAE(Throwable paramThrowable)
  {
    throwAsIAE(getRootCause(paramThrowable));
  }

  public static void unwrapAndThrowAsIAE(Throwable paramThrowable, String paramString)
  {
    throwAsIAE(getRootCause(paramThrowable), paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ClassUtil
 * JD-Core Version:    0.6.2
 */