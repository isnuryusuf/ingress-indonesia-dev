package org.codehaus.jackson.map.type;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;

public final class TypeFactory
{
  private static final JavaType[] NO_TYPES = new JavaType[0];

  @Deprecated
  public static final TypeFactory instance = new TypeFactory();
  protected HierarchicType _cachedArrayListType;
  protected HierarchicType _cachedHashMapType;
  protected final TypeModifier[] _modifiers = null;
  protected final TypeParser _parser = new TypeParser(this);

  private JavaType _collectionType(Class<?> paramClass)
  {
    JavaType[] arrayOfJavaType = findTypeParameters(paramClass, Collection.class);
    if (arrayOfJavaType == null)
      return CollectionType.construct(paramClass, _unknownType());
    if (arrayOfJavaType.length != 1)
      throw new IllegalArgumentException("Strange Collection type " + paramClass.getName() + ": can not determine type parameters");
    return CollectionType.construct(paramClass, arrayOfJavaType[0]);
  }

  private JavaType _mapType(Class<?> paramClass)
  {
    JavaType[] arrayOfJavaType = findTypeParameters(paramClass, Map.class);
    if (arrayOfJavaType == null)
      return MapType.construct(paramClass, _unknownType(), _unknownType());
    if (arrayOfJavaType.length != 2)
      throw new IllegalArgumentException("Strange Map type " + paramClass.getName() + ": can not determine type parameters");
    return MapType.construct(paramClass, arrayOfJavaType[0], arrayOfJavaType[1]);
  }

  public static TypeFactory defaultInstance()
  {
    return instance;
  }

  public static JavaType fromCanonical(String paramString)
  {
    return instance.constructFromCanonical(paramString);
  }

  public static JavaType unknownType()
  {
    return defaultInstance()._unknownType();
  }

  protected final HierarchicType _arrayListSuperInterfaceChain(HierarchicType paramHierarchicType)
  {
    try
    {
      if (this._cachedArrayListType == null)
      {
        HierarchicType localHierarchicType2 = paramHierarchicType.deepCloneWithoutSubtype();
        _doFindSuperInterfaceChain(localHierarchicType2, List.class);
        this._cachedArrayListType = localHierarchicType2.getSuperType();
      }
      HierarchicType localHierarchicType1 = this._cachedArrayListType.deepCloneWithoutSubtype();
      paramHierarchicType.setSuperType(localHierarchicType1);
      localHierarchicType1.setSubType(paramHierarchicType);
      return paramHierarchicType;
    }
    finally
    {
    }
  }

  public final JavaType _constructType(Type paramType, TypeBindings paramTypeBindings)
  {
    Object localObject;
    if ((paramType instanceof Class))
    {
      Class localClass = (Class)paramType;
      if (paramTypeBindings == null)
        paramTypeBindings = new TypeBindings(this, localClass);
      localObject = _fromClass(localClass, paramTypeBindings);
    }
    while ((this._modifiers != null) && (!((JavaType)localObject).isContainerType()))
    {
      TypeModifier[] arrayOfTypeModifier = this._modifiers;
      int i = arrayOfTypeModifier.length;
      int j = 0;
      while (true)
        if (j < i)
        {
          JavaType localJavaType = arrayOfTypeModifier[j].modifyType((JavaType)localObject, paramType, paramTypeBindings, this);
          j++;
          localObject = localJavaType;
          continue;
          if ((paramType instanceof ParameterizedType))
          {
            localObject = _fromParamType((ParameterizedType)paramType, paramTypeBindings);
            break;
          }
          if ((paramType instanceof GenericArrayType))
          {
            localObject = _fromArrayType((GenericArrayType)paramType, paramTypeBindings);
            break;
          }
          if ((paramType instanceof TypeVariable))
          {
            localObject = _fromVariable((TypeVariable)paramType, paramTypeBindings);
            break;
          }
          if ((paramType instanceof WildcardType))
          {
            localObject = _fromWildcard((WildcardType)paramType, paramTypeBindings);
            break;
          }
          throw new IllegalArgumentException("Unrecognized Type: " + paramType.toString());
        }
    }
    return localObject;
  }

  protected final HierarchicType _doFindSuperInterfaceChain(HierarchicType paramHierarchicType, Class<?> paramClass)
  {
    Class localClass = paramHierarchicType.getRawClass();
    Type[] arrayOfType = localClass.getGenericInterfaces();
    if (arrayOfType != null)
    {
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
      {
        HierarchicType localHierarchicType2 = _findSuperInterfaceChain(arrayOfType[j], paramClass);
        if (localHierarchicType2 != null)
        {
          localHierarchicType2.setSubType(paramHierarchicType);
          paramHierarchicType.setSuperType(localHierarchicType2);
          return paramHierarchicType;
        }
      }
    }
    Type localType = localClass.getGenericSuperclass();
    if (localType != null)
    {
      HierarchicType localHierarchicType1 = _findSuperInterfaceChain(localType, paramClass);
      if (localHierarchicType1 != null)
      {
        localHierarchicType1.setSubType(paramHierarchicType);
        paramHierarchicType.setSuperType(localHierarchicType1);
        return paramHierarchicType;
      }
    }
    return null;
  }

  protected final HierarchicType _findSuperClassChain(Type paramType, Class<?> paramClass)
  {
    HierarchicType localHierarchicType1 = new HierarchicType(paramType);
    Class localClass = localHierarchicType1.getRawClass();
    if (localClass == paramClass)
      return localHierarchicType1;
    Type localType = localClass.getGenericSuperclass();
    if (localType != null)
    {
      HierarchicType localHierarchicType2 = _findSuperClassChain(localType, paramClass);
      if (localHierarchicType2 != null)
      {
        localHierarchicType2.setSubType(localHierarchicType1);
        localHierarchicType1.setSuperType(localHierarchicType2);
        return localHierarchicType1;
      }
    }
    return null;
  }

  protected final HierarchicType _findSuperInterfaceChain(Type paramType, Class<?> paramClass)
  {
    HierarchicType localHierarchicType = new HierarchicType(paramType);
    Class localClass = localHierarchicType.getRawClass();
    if (localClass == paramClass)
      return new HierarchicType(paramType);
    if ((localClass == HashMap.class) && (paramClass == Map.class))
      return _hashMapSuperInterfaceChain(localHierarchicType);
    if ((localClass == ArrayList.class) && (paramClass == List.class))
      return _arrayListSuperInterfaceChain(localHierarchicType);
    return _doFindSuperInterfaceChain(localHierarchicType, paramClass);
  }

  protected final HierarchicType _findSuperTypeChain(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2.isInterface())
      return _findSuperInterfaceChain(paramClass1, paramClass2);
    return _findSuperClassChain(paramClass1, paramClass2);
  }

  protected final JavaType _fromArrayType(GenericArrayType paramGenericArrayType, TypeBindings paramTypeBindings)
  {
    return ArrayType.construct(_constructType(paramGenericArrayType.getGenericComponentType(), paramTypeBindings), null, null);
  }

  protected final JavaType _fromClass(Class<?> paramClass, TypeBindings paramTypeBindings)
  {
    if (paramClass.isArray())
      return ArrayType.construct(_constructType(paramClass.getComponentType(), null), null, null);
    if (paramClass.isEnum())
      return new SimpleType(paramClass);
    if (Map.class.isAssignableFrom(paramClass))
      return _mapType(paramClass);
    if (Collection.class.isAssignableFrom(paramClass))
      return _collectionType(paramClass);
    return new SimpleType(paramClass);
  }

  protected final JavaType _fromParamType(ParameterizedType paramParameterizedType, TypeBindings paramTypeBindings)
  {
    Class localClass = (Class)paramParameterizedType.getRawType();
    Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
    int i;
    JavaType[] arrayOfJavaType1;
    if (arrayOfType == null)
    {
      i = 0;
      if (i != 0)
        break label121;
      arrayOfJavaType1 = NO_TYPES;
    }
    while (true)
      if (Map.class.isAssignableFrom(localClass))
      {
        JavaType[] arrayOfJavaType3 = findTypeParameters(constructSimpleType(localClass, arrayOfJavaType1), Map.class);
        if (arrayOfJavaType3.length != 2)
        {
          throw new IllegalArgumentException("Could not find 2 type parameters for Map class " + localClass.getName() + " (found " + arrayOfJavaType3.length + ")");
          i = arrayOfType.length;
          break;
          label121: arrayOfJavaType1 = new JavaType[i];
          for (int j = 0; j < i; j++)
            arrayOfJavaType1[j] = _constructType(arrayOfType[j], paramTypeBindings);
          continue;
        }
        return MapType.construct(localClass, arrayOfJavaType3[0], arrayOfJavaType3[1]);
      }
    if (Collection.class.isAssignableFrom(localClass))
    {
      JavaType[] arrayOfJavaType2 = findTypeParameters(constructSimpleType(localClass, arrayOfJavaType1), Collection.class);
      if (arrayOfJavaType2.length != 1)
        throw new IllegalArgumentException("Could not find 1 type parameter for Collection class " + localClass.getName() + " (found " + arrayOfJavaType2.length + ")");
      return CollectionType.construct(localClass, arrayOfJavaType2[0]);
    }
    if (i == 0)
      return new SimpleType(localClass);
    return constructSimpleType(localClass, arrayOfJavaType1);
  }

  protected final JavaType _fromParameterizedClass(Class<?> paramClass, List<JavaType> paramList)
  {
    if (paramClass.isArray())
      return ArrayType.construct(_constructType(paramClass.getComponentType(), null), null, null);
    if (paramClass.isEnum())
      return new SimpleType(paramClass);
    if (Map.class.isAssignableFrom(paramClass))
    {
      if (paramList.size() > 0)
      {
        JavaType localJavaType1 = (JavaType)paramList.get(0);
        if (paramList.size() >= 2);
        for (JavaType localJavaType2 = (JavaType)paramList.get(1); ; localJavaType2 = _unknownType())
          return MapType.construct(paramClass, localJavaType1, localJavaType2);
      }
      return _mapType(paramClass);
    }
    if (Collection.class.isAssignableFrom(paramClass))
    {
      if (paramList.size() > 0)
        return CollectionType.construct(paramClass, (JavaType)paramList.get(0));
      return _collectionType(paramClass);
    }
    if (paramList.size() == 0)
      return new SimpleType(paramClass);
    return constructSimpleType(paramClass, (JavaType[])paramList.toArray(new JavaType[paramList.size()]));
  }

  protected final JavaType _fromVariable(TypeVariable<?> paramTypeVariable, TypeBindings paramTypeBindings)
  {
    JavaType localJavaType;
    if (paramTypeBindings == null)
      localJavaType = _unknownType();
    String str;
    do
    {
      return localJavaType;
      str = paramTypeVariable.getName();
      localJavaType = paramTypeBindings.findType(str);
    }
    while (localJavaType != null);
    Type[] arrayOfType = paramTypeVariable.getBounds();
    paramTypeBindings._addPlaceholder(str);
    return _constructType(arrayOfType[0], paramTypeBindings);
  }

  protected final JavaType _fromWildcard(WildcardType paramWildcardType, TypeBindings paramTypeBindings)
  {
    return _constructType(paramWildcardType.getUpperBounds()[0], paramTypeBindings);
  }

  protected final HierarchicType _hashMapSuperInterfaceChain(HierarchicType paramHierarchicType)
  {
    try
    {
      if (this._cachedHashMapType == null)
      {
        HierarchicType localHierarchicType2 = paramHierarchicType.deepCloneWithoutSubtype();
        _doFindSuperInterfaceChain(localHierarchicType2, Map.class);
        this._cachedHashMapType = localHierarchicType2.getSuperType();
      }
      HierarchicType localHierarchicType1 = this._cachedHashMapType.deepCloneWithoutSubtype();
      paramHierarchicType.setSuperType(localHierarchicType1);
      localHierarchicType1.setSubType(paramHierarchicType);
      return paramHierarchicType;
    }
    finally
    {
    }
  }

  protected final JavaType _unknownType()
  {
    return new SimpleType(Object.class);
  }

  public final CollectionType constructCollectionType(Class<? extends Collection> paramClass, Class<?> paramClass1)
  {
    return CollectionType.construct(paramClass, constructType(paramClass1));
  }

  public final JavaType constructFromCanonical(String paramString)
  {
    return this._parser.parse(paramString);
  }

  public final MapType constructMapType(Class<? extends Map> paramClass, Class<?> paramClass1, Class<?> paramClass2)
  {
    return MapType.construct(paramClass, constructType(paramClass1), constructType(paramClass2));
  }

  public final JavaType constructSimpleType(Class<?> paramClass, JavaType[] paramArrayOfJavaType)
  {
    TypeVariable[] arrayOfTypeVariable = paramClass.getTypeParameters();
    if (arrayOfTypeVariable.length != paramArrayOfJavaType.length)
      throw new IllegalArgumentException("Parameter type mismatch for " + paramClass.getName() + ": expected " + arrayOfTypeVariable.length + " parameters, was given " + paramArrayOfJavaType.length);
    String[] arrayOfString = new String[arrayOfTypeVariable.length];
    int i = 0;
    int j = arrayOfTypeVariable.length;
    while (i < j)
    {
      arrayOfString[i] = arrayOfTypeVariable[i].getName();
      i++;
    }
    return new SimpleType(paramClass, arrayOfString, paramArrayOfJavaType, null, null);
  }

  public final JavaType constructSpecializedType(JavaType paramJavaType, Class<?> paramClass)
  {
    if (((paramJavaType instanceof SimpleType)) && ((paramClass.isArray()) || (Map.class.isAssignableFrom(paramClass)) || (Collection.class.isAssignableFrom(paramClass))))
    {
      if (!paramJavaType.getRawClass().isAssignableFrom(paramClass))
        throw new IllegalArgumentException("Class " + paramClass.getClass().getName() + " not subtype of " + paramJavaType);
      JavaType localJavaType = _fromClass(paramClass, new TypeBindings(this, paramJavaType.getRawClass()));
      Object localObject1 = paramJavaType.getValueHandler();
      if (localObject1 != null)
        localJavaType = localJavaType.withValueHandler(localObject1);
      Object localObject2 = paramJavaType.getTypeHandler();
      if (localObject2 != null)
        localJavaType = localJavaType.withTypeHandler(localObject2);
      return localJavaType;
    }
    return paramJavaType.narrowBy(paramClass);
  }

  public final JavaType constructType(Type paramType)
  {
    return _constructType(paramType, null);
  }

  public final JavaType constructType(Type paramType, TypeBindings paramTypeBindings)
  {
    return _constructType(paramType, paramTypeBindings);
  }

  public final JavaType constructType(TypeReference<?> paramTypeReference)
  {
    return _constructType(paramTypeReference.getType(), null);
  }

  public final JavaType[] findTypeParameters(Class<?> paramClass1, Class<?> paramClass2)
  {
    return findTypeParameters(paramClass1, paramClass2, new TypeBindings(this, paramClass1));
  }

  public final JavaType[] findTypeParameters(Class<?> paramClass1, Class<?> paramClass2, TypeBindings paramTypeBindings)
  {
    HierarchicType localHierarchicType = _findSuperTypeChain(paramClass1, paramClass2);
    if (localHierarchicType == null)
      throw new IllegalArgumentException("Class " + paramClass1.getName() + " is not a subtype of " + paramClass2.getName());
    while (true)
    {
      paramTypeBindings = localTypeBindings;
      if (localHierarchicType.getSuperType() == null)
        break;
      localHierarchicType = localHierarchicType.getSuperType();
      Class localClass = localHierarchicType.getRawClass();
      TypeBindings localTypeBindings = new TypeBindings(this, localClass);
      if (localHierarchicType.isGeneric())
      {
        Type[] arrayOfType = localHierarchicType.asGeneric().getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        int i = arrayOfType.length;
        for (int j = 0; j < i; j++)
          localTypeBindings.addBinding(arrayOfTypeVariable[j].getName(), instance._constructType(arrayOfType[j], paramTypeBindings));
      }
    }
    if (!localHierarchicType.isGeneric())
      return null;
    return paramTypeBindings.typesAsArray();
  }

  public final JavaType[] findTypeParameters(JavaType paramJavaType, Class<?> paramClass)
  {
    Class localClass = paramJavaType.getRawClass();
    if (localClass == paramClass)
    {
      int i = paramJavaType.containedTypeCount();
      JavaType[] arrayOfJavaType;
      if (i == 0)
        arrayOfJavaType = null;
      while (true)
      {
        return arrayOfJavaType;
        arrayOfJavaType = new JavaType[i];
        for (int j = 0; j < i; j++)
          arrayOfJavaType[j] = paramJavaType.containedType(j);
      }
    }
    return findTypeParameters(localClass, paramClass, new TypeBindings(this, paramJavaType));
  }

  public final JavaType uncheckedSimpleType(Class<?> paramClass)
  {
    return new SimpleType(paramClass);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.TypeFactory
 * JD-Core Version:    0.6.2
 */