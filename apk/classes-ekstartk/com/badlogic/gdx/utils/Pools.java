package com.badlogic.gdx.utils;

public class Pools
{
  private static final ObjectMap<Class, ReflectionPool> typePools = new ObjectMap();

  public static void free(Array paramArray)
  {
    if (paramArray == null)
      throw new IllegalArgumentException("objects cannot be null.");
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArray.get(j);
      ReflectionPool localReflectionPool = (ReflectionPool)typePools.get(localObject.getClass());
      if (localReflectionPool == null)
        throw new IllegalArgumentException("No objects have been obtained of type: " + localObject.getClass().getName());
      localReflectionPool.free(localObject);
    }
  }

  public static void free(Object paramObject)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("object cannot be null.");
    ReflectionPool localReflectionPool = (ReflectionPool)typePools.get(paramObject.getClass());
    if (localReflectionPool == null)
      throw new IllegalArgumentException("No objects have been obtained of type: " + paramObject.getClass().getName());
    localReflectionPool.free(paramObject);
  }

  public static <T> Pool<T> get(Class<T> paramClass)
  {
    ReflectionPool localReflectionPool = (ReflectionPool)typePools.get(paramClass);
    if (localReflectionPool == null)
    {
      localReflectionPool = new ReflectionPool(paramClass, 4, 100);
      typePools.put(paramClass, localReflectionPool);
    }
    return localReflectionPool;
  }

  public static <T> T obtain(Class<T> paramClass)
  {
    return get(paramClass).obtain();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Pools
 * JD-Core Version:    0.6.2
 */