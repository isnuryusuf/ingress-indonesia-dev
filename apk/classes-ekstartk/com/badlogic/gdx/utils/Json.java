package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Json
{
  private static final boolean debug;
  private final ObjectMap<Class, Object[]> classToDefaultValues = new ObjectMap();
  private final ObjectMap<Class, Json.Serializer> classToSerializer = new ObjectMap();
  private final ObjectMap<Class, String> classToTag = new ObjectMap();
  private boolean ignoreUnknownFields;
  private JsonWriter.OutputType outputType;
  private final ObjectMap<String, Class> tagToClass = new ObjectMap();
  private String typeName = "class";
  private final ObjectMap<Class, ObjectMap<String, Json.FieldMetadata>> typeToFields = new ObjectMap();
  private boolean usePrototypes = true;
  private JsonWriter writer;

  public Json()
  {
    this.outputType = JsonWriter.OutputType.minimal;
  }

  public Json(JsonWriter.OutputType paramOutputType)
  {
    this.outputType = paramOutputType;
  }

  private ObjectMap<String, Json.FieldMetadata> cacheFields(Class paramClass)
  {
    ArrayList localArrayList = new ArrayList();
    for (Class localClass = paramClass; localClass != Object.class; localClass = localClass.getSuperclass())
      Collections.addAll(localArrayList, localClass.getDeclaredFields());
    ObjectMap localObjectMap = new ObjectMap();
    int i = localArrayList.size();
    int j = 0;
    while (true)
    {
      Field localField;
      if (j < i)
      {
        localField = (Field)localArrayList.get(j);
        int k = localField.getModifiers();
        if ((!Modifier.isTransient(k)) && (!Modifier.isStatic(k)) && (!localField.isSynthetic()) && (localField.isAccessible()));
      }
      try
      {
        localField.setAccessible(true);
        localObjectMap.put(localField.getName(), new Json.FieldMetadata(localField));
        label134: j++;
        continue;
        this.typeToFields.put(paramClass, localObjectMap);
        return localObjectMap;
      }
      catch (AccessControlException localAccessControlException)
      {
        break label134;
      }
    }
  }

  private String convertToString(Object paramObject)
  {
    if ((paramObject instanceof Class))
      return ((Class)paramObject).getName();
    return String.valueOf(paramObject);
  }

  // ERROR //
  private Object[] getDefaultValues(Class paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/badlogic/gdx/utils/Json:usePrototypes	Z
    //   4: ifne +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 48	com/badlogic/gdx/utils/Json:classToDefaultValues	Lcom/badlogic/gdx/utils/ObjectMap;
    //   13: aload_1
    //   14: invokevirtual 147	com/badlogic/gdx/utils/ObjectMap:containsKey	(Ljava/lang/Object;)Z
    //   17: ifeq +15 -> 32
    //   20: aload_0
    //   21: getfield 48	com/badlogic/gdx/utils/Json:classToDefaultValues	Lcom/badlogic/gdx/utils/ObjectMap;
    //   24: aload_1
    //   25: invokevirtual 150	com/badlogic/gdx/utils/ObjectMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   28: checkcast 152	[Ljava/lang/Object;
    //   31: areturn
    //   32: aload_0
    //   33: aload_1
    //   34: invokespecial 156	com/badlogic/gdx/utils/Json:newInstance	(Ljava/lang/Class;)Ljava/lang/Object;
    //   37: astore 4
    //   39: aload_0
    //   40: getfield 40	com/badlogic/gdx/utils/Json:typeToFields	Lcom/badlogic/gdx/utils/ObjectMap;
    //   43: aload_1
    //   44: invokevirtual 150	com/badlogic/gdx/utils/ObjectMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   47: checkcast 37	com/badlogic/gdx/utils/ObjectMap
    //   50: astore 5
    //   52: aload 5
    //   54: ifnonnull +10 -> 64
    //   57: aload_0
    //   58: aload_1
    //   59: invokespecial 158	com/badlogic/gdx/utils/Json:cacheFields	(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    //   62: astore 5
    //   64: aload 5
    //   66: getfield 161	com/badlogic/gdx/utils/ObjectMap:size	I
    //   69: anewarray 4	java/lang/Object
    //   72: astore 6
    //   74: aload_0
    //   75: getfield 48	com/badlogic/gdx/utils/Json:classToDefaultValues	Lcom/badlogic/gdx/utils/ObjectMap;
    //   78: aload_1
    //   79: aload 6
    //   81: invokevirtual 125	com/badlogic/gdx/utils/ObjectMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   84: pop
    //   85: iconst_0
    //   86: istore 8
    //   88: aload 5
    //   90: invokevirtual 165	com/badlogic/gdx/utils/ObjectMap:values	()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    //   93: invokevirtual 171	com/badlogic/gdx/utils/ObjectMap$Values:iterator	()Ljava/util/Iterator;
    //   96: astore 9
    //   98: aload 9
    //   100: invokeinterface 176 1 0
    //   105: ifeq +200 -> 305
    //   108: aload 9
    //   110: invokeinterface 180 1 0
    //   115: checkcast 118	com/badlogic/gdx/utils/Json$FieldMetadata
    //   118: getfield 184	com/badlogic/gdx/utils/Json$FieldMetadata:field	Ljava/lang/reflect/Field;
    //   121: astore 10
    //   123: iload 8
    //   125: iconst_1
    //   126: iadd
    //   127: istore 11
    //   129: aload 6
    //   131: iload 8
    //   133: aload 10
    //   135: aload 4
    //   137: invokevirtual 185	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   140: aastore
    //   141: iload 11
    //   143: istore 8
    //   145: goto -47 -> 98
    //   148: astore_2
    //   149: aload_0
    //   150: getfield 48	com/badlogic/gdx/utils/Json:classToDefaultValues	Lcom/badlogic/gdx/utils/ObjectMap;
    //   153: aload_1
    //   154: aconst_null
    //   155: invokevirtual 125	com/badlogic/gdx/utils/ObjectMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   158: pop
    //   159: aconst_null
    //   160: areturn
    //   161: astore 15
    //   163: new 141	com/badlogic/gdx/utils/SerializationException
    //   166: dup
    //   167: new 187	java/lang/StringBuilder
    //   170: dup
    //   171: ldc 189
    //   173: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: aload 10
    //   178: invokevirtual 116	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   181: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: ldc 198
    //   186: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload_1
    //   190: invokevirtual 128	java/lang/Class:getName	()Ljava/lang/String;
    //   193: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc 200
    //   198: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 203	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: aload 15
    //   206: invokespecial 206	com/badlogic/gdx/utils/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   209: athrow
    //   210: astore 14
    //   212: aload 14
    //   214: new 187	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   221: aload 10
    //   223: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   226: ldc 198
    //   228: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload_1
    //   232: invokevirtual 128	java/lang/Class:getName	()Ljava/lang/String;
    //   235: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: ldc 200
    //   240: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 203	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokevirtual 213	com/badlogic/gdx/utils/SerializationException:addTrace	(Ljava/lang/String;)V
    //   249: aload 14
    //   251: athrow
    //   252: astore 12
    //   254: new 141	com/badlogic/gdx/utils/SerializationException
    //   257: dup
    //   258: aload 12
    //   260: invokespecial 216	com/badlogic/gdx/utils/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   263: astore 13
    //   265: aload 13
    //   267: new 187	java/lang/StringBuilder
    //   270: dup
    //   271: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   274: aload 10
    //   276: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   279: ldc 198
    //   281: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: aload_1
    //   285: invokevirtual 128	java/lang/Class:getName	()Ljava/lang/String;
    //   288: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: ldc 200
    //   293: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: invokevirtual 203	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   299: invokevirtual 213	com/badlogic/gdx/utils/SerializationException:addTrace	(Ljava/lang/String;)V
    //   302: aload 13
    //   304: athrow
    //   305: aload 6
    //   307: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   32	39	148	java/lang/Exception
    //   129	141	161	java/lang/IllegalAccessException
    //   129	141	210	com/badlogic/gdx/utils/SerializationException
    //   129	141	252	java/lang/RuntimeException
  }

  private static void indent(int paramInt, StringBuilder paramStringBuilder)
  {
    for (int i = 0; i < paramInt; i++)
      paramStringBuilder.append('\t');
  }

  private static boolean isFlat(Array paramArray)
  {
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArray.get(j);
      if ((localObject instanceof ObjectMap));
      while ((localObject instanceof Array))
        return false;
    }
    return true;
  }

  private static boolean isFlat(ObjectMap<?, ?> paramObjectMap)
  {
    Iterator localIterator = paramObjectMap.entries().iterator();
    while (localIterator.hasNext())
    {
      ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator.next();
      if ((localEntry.value instanceof ObjectMap))
        return false;
      if ((localEntry.value instanceof Array))
        return false;
    }
    return true;
  }

  private Object newInstance(Class paramClass)
  {
    try
    {
      Object localObject2 = paramClass.newInstance();
      return localObject2;
    }
    catch (Exception localException1)
    {
    }
    try
    {
      Constructor localConstructor = paramClass.getDeclaredConstructor(new Class[0]);
      localConstructor.setAccessible(true);
      Object localObject1 = localConstructor.newInstance(new Object[0]);
      return localObject1;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      if (paramClass.isArray())
        throw new SerializationException("Encountered JSON object when expected array of type: " + paramClass.getName(), localException1);
      if ((paramClass.isMemberClass()) && (!Modifier.isStatic(paramClass.getModifiers())))
        throw new SerializationException("Class cannot be created (non-static member class): " + paramClass.getName(), localException1);
      throw new SerializationException("Class cannot be created (missing no-arg constructor): " + paramClass.getName(), localException1);
    }
    catch (Exception localException2)
    {
      throw new SerializationException("Error constructing instance of class: " + paramClass.getName(), localException2);
    }
    catch (SecurityException localSecurityException)
    {
      label154: break label154;
    }
  }

  private void prettyPrint(Object paramObject, StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    if ((paramObject instanceof OrderedMap))
    {
      OrderedMap localOrderedMap = (OrderedMap)paramObject;
      if (localOrderedMap.size == 0)
      {
        paramStringBuilder.append("{}");
        return;
      }
      int i2;
      int i3;
      int i4;
      label51: String str2;
      label61: Iterator localIterator;
      if (!isFlat(localOrderedMap))
      {
        i2 = 1;
        i3 = paramStringBuilder.length();
        i4 = i2;
        if (i4 == 0)
          break label229;
        str2 = "{\n";
        paramStringBuilder.append(str2);
        localIterator = localOrderedMap.orderedKeys().iterator();
      }
      int i6;
      label229: label244: for (int i5 = 0; ; i5 = i6)
      {
        if (!localIterator.hasNext())
          break label251;
        String str3 = (String)localIterator.next();
        if (i4 != 0)
          indent(paramInt1, paramStringBuilder);
        paramStringBuilder.append(this.outputType.quoteName(str3));
        paramStringBuilder.append(": ");
        prettyPrint(localOrderedMap.get(str3), paramStringBuilder, paramInt1 + 1, paramInt2);
        i6 = i5 + 1;
        if (i5 < -1 + localOrderedMap.size)
          paramStringBuilder.append(",");
        if (i4 != 0);
        for (char c2 = '\n'; ; c2 = ' ')
        {
          paramStringBuilder.append(c2);
          if ((i4 != 0) || (paramStringBuilder.length() - i3 <= paramInt2))
            break label244;
          paramStringBuilder.setLength(i3);
          i4 = 1;
          break label51;
          i2 = 0;
          break;
          str2 = "{ ";
          break label61;
        }
      }
      label251: if (i4 != 0)
        indent(paramInt1 - 1, paramStringBuilder);
      paramStringBuilder.append('}');
      return;
    }
    if ((paramObject instanceof Array))
    {
      Array localArray = (Array)paramObject;
      if (localArray.size == 0)
      {
        paramStringBuilder.append("[]");
        return;
      }
      int j;
      int k;
      int m;
      label322: String str1;
      label332: int n;
      if (!isFlat(localArray))
      {
        j = 1;
        k = paramStringBuilder.length();
        m = j;
        if (m == 0)
          break label454;
        str1 = "[\n";
        paramStringBuilder.append(str1);
        n = localArray.size;
      }
      label454: label469: for (int i1 = 0; ; i1++)
      {
        if (i1 >= n)
          break label475;
        if (m != 0)
          indent(paramInt1, paramStringBuilder);
        prettyPrint(localArray.get(i1), paramStringBuilder, paramInt1 + 1, paramInt2);
        if (i1 < -1 + localArray.size)
          paramStringBuilder.append(",");
        if (m != 0);
        for (char c1 = '\n'; ; c1 = ' ')
        {
          paramStringBuilder.append(c1);
          if ((m != 0) || (paramStringBuilder.length() - k <= paramInt2))
            break label469;
          paramStringBuilder.setLength(k);
          m = 1;
          break label322;
          j = 0;
          break;
          str1 = "[ ";
          break label332;
        }
      }
      label475: if (m != 0)
        indent(paramInt1 - 1, paramStringBuilder);
      paramStringBuilder.append(']');
      return;
    }
    if ((paramObject instanceof String))
    {
      paramStringBuilder.append(this.outputType.quoteValue((String)paramObject));
      return;
    }
    if ((paramObject instanceof Float))
    {
      Float localFloat = (Float)paramObject;
      int i = localFloat.intValue();
      if (localFloat.floatValue() - i == 0.0F)
        paramObject = Integer.valueOf(i);
      paramStringBuilder.append(paramObject);
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      paramStringBuilder.append(paramObject);
      return;
    }
    if (paramObject == null)
    {
      paramStringBuilder.append("null");
      return;
    }
    throw new SerializationException("Unknown object type: " + paramObject.getClass());
  }

  public void addClassTag(String paramString, Class paramClass)
  {
    this.tagToClass.put(paramString, paramClass);
    this.classToTag.put(paramClass, paramString);
  }

  public <T> T fromJson(Class<T> paramClass, FileHandle paramFileHandle)
  {
    try
    {
      Object localObject = readValue(paramClass, null, new JsonReader().parse(paramFileHandle));
      return localObject;
    }
    catch (Exception localException)
    {
      throw new SerializationException("Error reading file: " + paramFileHandle, localException);
    }
  }

  public <T> T fromJson(Class<T> paramClass, InputStream paramInputStream)
  {
    return readValue(paramClass, null, new JsonReader().parse(paramInputStream));
  }

  public <T> T fromJson(Class<T> paramClass, Reader paramReader)
  {
    return readValue(paramClass, null, new JsonReader().parse(paramReader));
  }

  public <T> T fromJson(Class<T> paramClass, Class paramClass1, FileHandle paramFileHandle)
  {
    try
    {
      Object localObject = readValue(paramClass, paramClass1, new JsonReader().parse(paramFileHandle));
      return localObject;
    }
    catch (Exception localException)
    {
      throw new SerializationException("Error reading file: " + paramFileHandle, localException);
    }
  }

  public <T> T fromJson(Class<T> paramClass, Class paramClass1, InputStream paramInputStream)
  {
    return readValue(paramClass, paramClass1, new JsonReader().parse(paramInputStream));
  }

  public <T> T fromJson(Class<T> paramClass, Class paramClass1, Reader paramReader)
  {
    return readValue(paramClass, paramClass1, new JsonReader().parse(paramReader));
  }

  public <T> T fromJson(Class<T> paramClass, Class paramClass1, String paramString)
  {
    return readValue(paramClass, paramClass1, new JsonReader().parse(paramString));
  }

  public <T> T fromJson(Class<T> paramClass, Class paramClass1, char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    return readValue(paramClass, paramClass1, new JsonReader().parse(paramArrayOfChar, paramInt1, paramInt2));
  }

  public <T> T fromJson(Class<T> paramClass, String paramString)
  {
    return readValue(paramClass, null, new JsonReader().parse(paramString));
  }

  public <T> T fromJson(Class<T> paramClass, char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    return readValue(paramClass, null, new JsonReader().parse(paramArrayOfChar, paramInt1, paramInt2));
  }

  public Class getClass(String paramString)
  {
    Class localClass1 = (Class)this.tagToClass.get(paramString);
    if (localClass1 != null)
      return localClass1;
    try
    {
      Class localClass2 = Class.forName(paramString);
      return localClass2;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new SerializationException(localClassNotFoundException);
    }
  }

  public <T> Json.Serializer<T> getSerializer(Class<T> paramClass)
  {
    return (Json.Serializer)this.classToSerializer.get(paramClass);
  }

  public String getTag(Class paramClass)
  {
    String str = (String)this.classToTag.get(paramClass);
    if (str != null)
      return str;
    return paramClass.getName();
  }

  public String prettyPrint(Object paramObject)
  {
    return prettyPrint(paramObject, 0);
  }

  public String prettyPrint(Object paramObject, int paramInt)
  {
    return prettyPrint(toJson(paramObject), paramInt);
  }

  public String prettyPrint(String paramString)
  {
    return prettyPrint(paramString, 0);
  }

  public String prettyPrint(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(512);
    prettyPrint(new JsonReader().parse(paramString), localStringBuilder, 0, paramInt);
    return localStringBuilder.toString();
  }

  public void readField(Object paramObject1, String paramString, Class paramClass, Object paramObject2)
  {
    readField(paramObject1, paramString, paramString, paramClass, paramObject2);
  }

  public void readField(Object paramObject1, String paramString, Object paramObject2)
  {
    readField(paramObject1, paramString, paramString, null, paramObject2);
  }

  public void readField(Object paramObject1, String paramString1, String paramString2, Class paramClass, Object paramObject2)
  {
    OrderedMap localOrderedMap = (OrderedMap)paramObject2;
    Class localClass = paramObject1.getClass();
    ObjectMap localObjectMap = (ObjectMap)this.typeToFields.get(localClass);
    if (localObjectMap == null)
      localObjectMap = cacheFields(localClass);
    Json.FieldMetadata localFieldMetadata = (Json.FieldMetadata)localObjectMap.get(paramString1);
    if (localFieldMetadata == null)
      throw new SerializationException("Field not found: " + paramString1 + " (" + localClass.getName() + ")");
    Field localField = localFieldMetadata.field;
    Object localObject = localOrderedMap.get(paramString2);
    if (localObject == null)
      return;
    if (paramClass == null)
      paramClass = localFieldMetadata.elementType;
    try
    {
      localField.set(paramObject1, readValue(localField.getType(), paramClass, localObject));
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new SerializationException("Error accessing field: " + localField.getName() + " (" + localClass.getName() + ")", localIllegalAccessException);
    }
    catch (SerializationException localSerializationException2)
    {
      localSerializationException2.addTrace(localField.getName() + " (" + localClass.getName() + ")");
      throw localSerializationException2;
    }
    catch (RuntimeException localRuntimeException)
    {
      SerializationException localSerializationException1 = new SerializationException(localRuntimeException);
      localSerializationException1.addTrace(localField.getName() + " (" + localClass.getName() + ")");
      throw localSerializationException1;
    }
  }

  public void readField(Object paramObject1, String paramString1, String paramString2, Object paramObject2)
  {
    readField(paramObject1, paramString1, paramString2, null, paramObject2);
  }

  public void readFields(Object paramObject1, Object paramObject2)
  {
    OrderedMap localOrderedMap = (OrderedMap)paramObject2;
    Class localClass = paramObject1.getClass();
    ObjectMap localObjectMap1 = (ObjectMap)this.typeToFields.get(localClass);
    if (localObjectMap1 == null);
    for (ObjectMap localObjectMap2 = cacheFields(localClass); ; localObjectMap2 = localObjectMap1)
    {
      Iterator localIterator = localOrderedMap.entries().iterator();
      while (localIterator.hasNext())
      {
        ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator.next();
        Json.FieldMetadata localFieldMetadata = (Json.FieldMetadata)localObjectMap2.get(localEntry.key);
        if (localFieldMetadata == null)
        {
          if (!this.ignoreUnknownFields)
            throw new SerializationException("Field not found: " + (String)localEntry.key + " (" + localClass.getName() + ")");
        }
        else
        {
          Field localField = localFieldMetadata.field;
          if (localEntry.value != null)
            try
            {
              localField.set(paramObject1, readValue(localField.getType(), localFieldMetadata.elementType, localEntry.value));
            }
            catch (IllegalAccessException localIllegalAccessException)
            {
              throw new SerializationException("Error accessing field: " + localField.getName() + " (" + localClass.getName() + ")", localIllegalAccessException);
            }
            catch (SerializationException localSerializationException2)
            {
              localSerializationException2.addTrace(localField.getName() + " (" + localClass.getName() + ")");
              throw localSerializationException2;
            }
            catch (RuntimeException localRuntimeException)
            {
              SerializationException localSerializationException1 = new SerializationException(localRuntimeException);
              localSerializationException1.addTrace(localField.getName() + " (" + localClass.getName() + ")");
              throw localSerializationException1;
            }
        }
      }
      return;
    }
  }

  public <T> T readValue(Class<T> paramClass, Class paramClass1, Object paramObject)
  {
    int i = 0;
    Object localObject2;
    if (paramObject == null)
    {
      localObject2 = null;
      return localObject2;
    }
    OrderedMap localOrderedMap;
    String str1;
    if ((paramObject instanceof OrderedMap))
    {
      localOrderedMap = (OrderedMap)paramObject;
      if (this.typeName == null)
      {
        str1 = null;
        if (str1 == null);
      }
    }
    while (true)
    {
      Class localClass2;
      while (true)
      {
        try
        {
          Class localClass3 = Class.forName(str1);
          paramClass = localClass3;
          if (paramClass == null)
            break label314;
          Json.Serializer localSerializer2 = (Json.Serializer)this.classToSerializer.get(paramClass);
          if (localSerializer2 == null)
            break label133;
          return localSerializer2.read(this, localOrderedMap, paramClass);
          str1 = (String)localOrderedMap.remove(this.typeName);
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          localClass2 = (Class)this.tagToClass.get(str1);
          if (localClass2 != null)
            break label1115;
        }
        throw new SerializationException(localClassNotFoundException);
        label133: Object localObject5 = newInstance(paramClass);
        if ((localObject5 instanceof Json.Serializable))
        {
          ((Json.Serializable)localObject5).read(this, localOrderedMap);
          return localObject5;
        }
        if ((localObject5 instanceof HashMap))
        {
          HashMap localHashMap = (HashMap)localObject5;
          Iterator localIterator2 = localOrderedMap.entries().iterator();
          while (localIterator2.hasNext())
          {
            ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator2.next();
            localHashMap.put(localEntry.key, readValue(paramClass1, null, localEntry.value));
          }
          return localHashMap;
        }
        label314: for (Object localObject4 = localObject5; ; localObject4 = new OrderedMap())
        {
          if (!(localObject4 instanceof ObjectMap))
            break label326;
          localObject2 = (ObjectMap)localObject4;
          Iterator localIterator1 = localOrderedMap.orderedKeys().iterator();
          while (localIterator1.hasNext())
          {
            String str2 = (String)localIterator1.next();
            ((ObjectMap)localObject2).put(str2, readValue(paramClass1, null, localOrderedMap.get(str2)));
          }
          break;
        }
        label326: readFields(localObject4, localOrderedMap);
        return localObject4;
        if (paramClass != null)
        {
          Json.Serializer localSerializer1 = (Json.Serializer)this.classToSerializer.get(paramClass);
          if (localSerializer1 != null)
            return localSerializer1.read(this, paramObject, paramClass);
        }
        if ((paramObject instanceof Array))
        {
          Array localArray1 = (Array)paramObject;
          if ((paramClass == null) || (paramClass.isAssignableFrom(Array.class)))
          {
            Array localArray2 = new Array(localArray1.size);
            int m = localArray1.size;
            while (i < m)
            {
              localArray2.add(readValue(paramClass1, null, localArray1.get(i)));
              i++;
            }
            return localArray2;
          }
          if (paramClass.isAssignableFrom(ArrayList.class))
          {
            ArrayList localArrayList = new ArrayList(localArray1.size);
            int n = localArray1.size;
            while (i < n)
            {
              localArrayList.add(readValue(paramClass1, null, localArray1.get(i)));
              i++;
            }
            return localArrayList;
          }
          if (paramClass.isArray())
          {
            Class localClass1 = paramClass.getComponentType();
            if (paramClass1 == null)
              paramClass1 = localClass1;
            Object localObject3 = java.lang.reflect.Array.newInstance(localClass1, localArray1.size);
            int i1 = localArray1.size;
            while (i < i1)
            {
              java.lang.reflect.Array.set(localObject3, i, readValue(paramClass1, null, localArray1.get(i)));
              i++;
            }
            return localObject3;
          }
          throw new SerializationException("Unable to convert value to required type: " + paramObject + " (" + paramClass.getName() + ")");
        }
        if ((paramObject instanceof Float))
        {
          localObject2 = (Float)paramObject;
          if (paramClass == null)
            break;
          try
          {
            if ((paramClass == Float.TYPE) || (paramClass == Float.class))
              break;
            if ((paramClass == Integer.TYPE) || (paramClass == Integer.class))
              return Integer.valueOf(((Float)localObject2).intValue());
            if ((paramClass == Long.TYPE) || (paramClass == Long.class))
              return Long.valueOf(((Float)localObject2).longValue());
            if ((paramClass == Double.TYPE) || (paramClass == Double.class))
              return Double.valueOf(((Float)localObject2).doubleValue());
            if ((paramClass == Short.TYPE) || (paramClass == Short.class))
              return Short.valueOf(((Float)localObject2).shortValue());
            if ((paramClass == Byte.TYPE) || (paramClass == Byte.class))
            {
              Byte localByte2 = Byte.valueOf(((Float)localObject2).byteValue());
              return localByte2;
            }
          }
          catch (NumberFormatException localNumberFormatException2)
          {
            paramObject = String.valueOf(paramObject);
          }
        }
      }
      if ((paramObject instanceof Boolean));
      for (Object localObject1 = String.valueOf(paramObject); ; localObject1 = paramObject)
      {
        if ((localObject1 instanceof String))
        {
          localObject2 = (String)localObject1;
          if ((paramClass == null) || (paramClass == String.class))
            return localObject1;
          try
          {
            if ((paramClass == Integer.TYPE) || (paramClass == Integer.class))
              return Integer.valueOf((String)localObject2);
            if ((paramClass == Float.TYPE) || (paramClass == Float.class))
              return Float.valueOf((String)localObject2);
            if ((paramClass == Long.TYPE) || (paramClass == Long.class))
              return Long.valueOf((String)localObject2);
            if ((paramClass == Double.TYPE) || (paramClass == Double.class))
              return Double.valueOf((String)localObject2);
            if ((paramClass == Short.TYPE) || (paramClass == Short.class))
              return Short.valueOf((String)localObject2);
            if ((paramClass == Byte.TYPE) || (paramClass == Byte.class))
            {
              Byte localByte1 = Byte.valueOf((String)localObject2);
              return localByte1;
            }
          }
          catch (NumberFormatException localNumberFormatException1)
          {
            if ((paramClass == Boolean.TYPE) || (paramClass == Boolean.class))
              return Boolean.valueOf((String)localObject2);
            if ((paramClass == Character.TYPE) || (paramClass == Character.class))
              return Character.valueOf(((String)localObject2).charAt(0));
            if (paramClass.isEnum())
            {
              Object[] arrayOfObject = paramClass.getEnumConstants();
              int j = arrayOfObject.length;
              for (int k = 0; k < j; k++)
                if (((String)localObject2).equals(arrayOfObject[k].toString()))
                  return arrayOfObject[k];
            }
          }
          if (paramClass == CharSequence.class)
            break;
          throw new SerializationException("Unable to convert value to required type: " + localObject1 + " (" + paramClass.getName() + ")");
        }
        return null;
      }
      label1115: paramClass = localClass2;
    }
  }

  public <T> T readValue(Class<T> paramClass, Class paramClass1, T paramT, Object paramObject)
  {
    return readValue(paramClass, paramClass1, paramObject);
  }

  public <T> T readValue(Class<T> paramClass, Object paramObject)
  {
    return readValue(paramClass, null, paramObject);
  }

  public <T> T readValue(String paramString, Class<T> paramClass, Class paramClass1, Object paramObject)
  {
    return readValue(paramClass, paramClass1, ((OrderedMap)paramObject).get(paramString));
  }

  public <T> T readValue(String paramString, Class<T> paramClass, Class paramClass1, T paramT, Object paramObject)
  {
    Object localObject = ((OrderedMap)paramObject).get(paramString);
    if (localObject == null)
      return paramT;
    return readValue(paramClass, paramClass1, localObject);
  }

  public <T> T readValue(String paramString, Class<T> paramClass, Object paramObject)
  {
    return readValue(paramClass, null, ((OrderedMap)paramObject).get(paramString));
  }

  public <T> T readValue(String paramString, Class<T> paramClass, T paramT, Object paramObject)
  {
    Object localObject = ((OrderedMap)paramObject).get(paramString);
    if (localObject == null)
      return paramT;
    return readValue(paramClass, null, localObject);
  }

  public void setElementType(Class paramClass1, String paramString, Class paramClass2)
  {
    ObjectMap localObjectMap = (ObjectMap)this.typeToFields.get(paramClass1);
    if (localObjectMap == null)
      localObjectMap = cacheFields(paramClass1);
    Json.FieldMetadata localFieldMetadata = (Json.FieldMetadata)localObjectMap.get(paramString);
    if (localFieldMetadata == null)
      throw new SerializationException("Field not found: " + paramString + " (" + paramClass1.getName() + ")");
    localFieldMetadata.elementType = paramClass2;
  }

  public void setIgnoreUnknownFields(boolean paramBoolean)
  {
    this.ignoreUnknownFields = paramBoolean;
  }

  public void setOutputType(JsonWriter.OutputType paramOutputType)
  {
    this.outputType = paramOutputType;
  }

  public <T> void setSerializer(Class<T> paramClass, Json.Serializer<T> paramSerializer)
  {
    this.classToSerializer.put(paramClass, paramSerializer);
  }

  public void setTypeName(String paramString)
  {
    this.typeName = paramString;
  }

  public void setUsePrototypes(boolean paramBoolean)
  {
    this.usePrototypes = paramBoolean;
  }

  public String toJson(Object paramObject)
  {
    if (paramObject == null);
    for (Class localClass = null; ; localClass = paramObject.getClass())
      return toJson(paramObject, localClass, null);
  }

  public String toJson(Object paramObject, Class paramClass)
  {
    return toJson(paramObject, paramClass, null);
  }

  public String toJson(Object paramObject, Class paramClass1, Class paramClass2)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramClass1, paramClass2, localStringWriter);
    return localStringWriter.toString();
  }

  public void toJson(Object paramObject, FileHandle paramFileHandle)
  {
    if (paramObject == null);
    for (Class localClass = null; ; localClass = paramObject.getClass())
    {
      toJson(paramObject, localClass, null, paramFileHandle);
      return;
    }
  }

  public void toJson(Object paramObject, Writer paramWriter)
  {
    if (paramObject == null);
    for (Class localClass = null; ; localClass = paramObject.getClass())
    {
      toJson(paramObject, localClass, null, paramWriter);
      return;
    }
  }

  public void toJson(Object paramObject, Class paramClass, FileHandle paramFileHandle)
  {
    toJson(paramObject, paramClass, null, paramFileHandle);
  }

  public void toJson(Object paramObject, Class paramClass, Writer paramWriter)
  {
    toJson(paramObject, paramClass, null, paramWriter);
  }

  // ERROR //
  public void toJson(Object paramObject, Class paramClass1, Class paramClass2, FileHandle paramFileHandle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload 4
    //   5: iconst_0
    //   6: invokevirtual 615	com/badlogic/gdx/files/FileHandle:writer	(Z)Ljava/io/Writer;
    //   9: astore 5
    //   11: aload_0
    //   12: aload_1
    //   13: aload_2
    //   14: aload_3
    //   15: aload 5
    //   17: invokevirtual 600	com/badlogic/gdx/utils/Json:toJson	(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    //   20: aload 5
    //   22: ifnull +8 -> 30
    //   25: aload 5
    //   27: invokevirtual 620	java/io/Writer:close	()V
    //   30: return
    //   31: astore 8
    //   33: new 141	com/badlogic/gdx/utils/SerializationException
    //   36: dup
    //   37: new 187	java/lang/StringBuilder
    //   40: dup
    //   41: ldc_w 622
    //   44: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload 4
    //   49: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 203	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: aload 8
    //   57: invokespecial 206	com/badlogic/gdx/utils/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   60: athrow
    //   61: astore 6
    //   63: aload 5
    //   65: ifnull +8 -> 73
    //   68: aload 5
    //   70: invokevirtual 620	java/io/Writer:close	()V
    //   73: aload 6
    //   75: athrow
    //   76: astore 9
    //   78: return
    //   79: astore 7
    //   81: goto -8 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   3	20	31	java/lang/Exception
    //   3	20	61	finally
    //   33	61	61	finally
    //   25	30	76	java/io/IOException
    //   68	73	79	java/io/IOException
  }

  public void toJson(Object paramObject, Class paramClass1, Class paramClass2, Writer paramWriter)
  {
    if (!(paramWriter instanceof JsonWriter));
    for (Object localObject1 = new JsonWriter(paramWriter); ; localObject1 = paramWriter)
    {
      ((JsonWriter)localObject1).setOutputType(this.outputType);
      this.writer = ((JsonWriter)localObject1);
      try
      {
        writeValue(paramObject, paramClass1, paramClass2);
        return;
      }
      finally
      {
        this.writer = null;
      }
    }
  }

  public void writeArrayEnd()
  {
    try
    {
      this.writer.pop();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeArrayStart()
  {
    try
    {
      this.writer.array();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeArrayStart(String paramString)
  {
    try
    {
      this.writer.name(paramString);
      this.writer.array();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeField(Object paramObject, String paramString)
  {
    writeField(paramObject, paramString, paramString, null);
  }

  public void writeField(Object paramObject, String paramString, Class paramClass)
  {
    writeField(paramObject, paramString, paramString, paramClass);
  }

  public void writeField(Object paramObject, String paramString1, String paramString2)
  {
    writeField(paramObject, paramString1, paramString2, null);
  }

  public void writeField(Object paramObject, String paramString1, String paramString2, Class paramClass)
  {
    Class localClass = paramObject.getClass();
    ObjectMap localObjectMap = (ObjectMap)this.typeToFields.get(localClass);
    if (localObjectMap == null)
      localObjectMap = cacheFields(localClass);
    Json.FieldMetadata localFieldMetadata = (Json.FieldMetadata)localObjectMap.get(paramString1);
    if (localFieldMetadata == null)
      throw new SerializationException("Field not found: " + paramString1 + " (" + localClass.getName() + ")");
    Field localField = localFieldMetadata.field;
    if (paramClass == null)
      paramClass = localFieldMetadata.elementType;
    try
    {
      this.writer.name(paramString2);
      writeValue(localField.get(paramObject), localField.getType(), paramClass);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new SerializationException("Error accessing field: " + localField.getName() + " (" + localClass.getName() + ")", localIllegalAccessException);
    }
    catch (SerializationException localSerializationException2)
    {
      localSerializationException2.addTrace(localField + " (" + localClass.getName() + ")");
      throw localSerializationException2;
    }
    catch (Exception localException)
    {
      SerializationException localSerializationException1 = new SerializationException(localException);
      localSerializationException1.addTrace(localField + " (" + localClass.getName() + ")");
      throw localSerializationException1;
    }
  }

  public void writeFields(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    Object[] arrayOfObject = getDefaultValues(localClass);
    ObjectMap localObjectMap = (ObjectMap)this.typeToFields.get(localClass);
    if (localObjectMap == null)
      localObjectMap = cacheFields(localClass);
    int i = 0;
    Iterator localIterator = localObjectMap.values().iterator();
    Json.FieldMetadata localFieldMetadata;
    Field localField;
    if (localIterator.hasNext())
    {
      localFieldMetadata = (Json.FieldMetadata)localIterator.next();
      localField = localFieldMetadata.field;
    }
    while (true)
    {
      int j;
      try
      {
        Object localObject1 = localField.get(paramObject);
        if (arrayOfObject != null)
        {
          j = i + 1;
          Object localObject2 = arrayOfObject[i];
          if ((localObject1 == null) && (localObject2 == null))
          {
            i = j;
            break;
          }
          if ((localObject1 == null) || (localObject2 == null) || (!localObject1.equals(localObject2)))
            break label323;
          i = j;
          break;
        }
        this.writer.name(localField.getName());
        writeValue(localObject1, localField.getType(), localFieldMetadata.elementType);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new SerializationException("Error accessing field: " + localField.getName() + " (" + localClass.getName() + ")", localIllegalAccessException);
      }
      catch (SerializationException localSerializationException2)
      {
        localSerializationException2.addTrace(localField + " (" + localClass.getName() + ")");
        throw localSerializationException2;
      }
      catch (Exception localException)
      {
        SerializationException localSerializationException1 = new SerializationException(localException);
        localSerializationException1.addTrace(localField + " (" + localClass.getName() + ")");
        throw localSerializationException1;
      }
      return;
      label323: i = j;
    }
  }

  public void writeObjectEnd()
  {
    try
    {
      this.writer.pop();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeObjectStart()
  {
    try
    {
      this.writer.object();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeObjectStart(Class paramClass1, Class paramClass2)
  {
    try
    {
      this.writer.object();
      if ((paramClass2 == null) || (paramClass2 != paramClass1))
        writeType(paramClass1);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeObjectStart(String paramString)
  {
    try
    {
      this.writer.name(paramString);
      writeObjectStart();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeObjectStart(String paramString, Class paramClass1, Class paramClass2)
  {
    try
    {
      this.writer.name(paramString);
      writeObjectStart(paramClass1, paramClass2);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeType(Class paramClass)
  {
    if (this.typeName == null)
      return;
    String str = (String)this.classToTag.get(paramClass);
    if (str == null)
      str = paramClass.getName();
    try
    {
      this.writer.set(this.typeName, str);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeValue(Object paramObject)
  {
    writeValue(paramObject, paramObject.getClass(), null);
  }

  public void writeValue(Object paramObject, Class paramClass)
  {
    writeValue(paramObject, paramClass, null);
  }

  public void writeValue(Object paramObject, Class paramClass1, Class paramClass2)
  {
    int i = 0;
    if (paramObject == null);
    Class localClass;
    try
    {
      this.writer.value(null);
      return;
      localClass = paramObject.getClass();
      if ((localClass.isPrimitive()) || (localClass == String.class) || (localClass == Integer.class) || (localClass == Boolean.class) || (localClass == Float.class) || (localClass == Long.class) || (localClass == Double.class) || (localClass == Short.class) || (localClass == Byte.class) || (localClass == Character.class))
      {
        this.writer.value(paramObject);
        return;
      }
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
    if ((paramObject instanceof Json.Serializable))
    {
      writeObjectStart(localClass, paramClass1);
      ((Json.Serializable)paramObject).write(this);
      writeObjectEnd();
      return;
    }
    Json.Serializer localSerializer = (Json.Serializer)this.classToSerializer.get(localClass);
    if (localSerializer != null)
    {
      localSerializer.write(this, paramObject, paramClass1);
      return;
    }
    if ((paramObject instanceof Array))
    {
      if ((paramClass1 != null) && (localClass != paramClass1))
        throw new SerializationException("Serialization of an Array other than the known type is not supported.\nKnown type: " + paramClass1 + "\nActual type: " + localClass);
      writeArrayStart();
      Array localArray = (Array)paramObject;
      int j = localArray.size;
      while (i < j)
      {
        writeValue(localArray.get(i), paramClass2, null);
        i++;
      }
      writeArrayEnd();
      return;
    }
    if ((paramObject instanceof Collection))
    {
      if ((paramClass1 != null) && (localClass != paramClass1) && (localClass != ArrayList.class))
        throw new SerializationException("Serialization of a Collection other than the known type is not supported.\nKnown type: " + paramClass1 + "\nActual type: " + localClass);
      writeArrayStart();
      Iterator localIterator1 = ((Collection)paramObject).iterator();
      while (localIterator1.hasNext())
        writeValue(localIterator1.next(), paramClass2, null);
      writeArrayEnd();
      return;
    }
    if (localClass.isArray())
    {
      if (paramClass2 == null)
        paramClass2 = localClass.getComponentType();
      int k = java.lang.reflect.Array.getLength(paramObject);
      writeArrayStart();
      while (i < k)
      {
        writeValue(java.lang.reflect.Array.get(paramObject, i), paramClass2, null);
        i++;
      }
      writeArrayEnd();
      return;
    }
    if ((paramObject instanceof OrderedMap))
    {
      if (paramClass1 == null)
        paramClass1 = OrderedMap.class;
      writeObjectStart(localClass, paramClass1);
      OrderedMap localOrderedMap = (OrderedMap)paramObject;
      Iterator localIterator2 = localOrderedMap.orderedKeys().iterator();
      while (localIterator2.hasNext())
      {
        Object localObject = localIterator2.next();
        this.writer.name(convertToString(localObject));
        writeValue(localOrderedMap.get(localObject), paramClass2, null);
      }
      writeObjectEnd();
      return;
    }
    if ((paramObject instanceof ArrayMap))
    {
      if (paramClass1 == null)
        paramClass1 = ArrayMap.class;
      writeObjectStart(localClass, paramClass1);
      ArrayMap localArrayMap = (ArrayMap)paramObject;
      int m = localArrayMap.size;
      for (int n = 0; n < m; n++)
      {
        this.writer.name(convertToString(localArrayMap.keys[n]));
        writeValue(localArrayMap.values[n], paramClass2, null);
      }
      writeObjectEnd();
      return;
    }
    if ((paramObject instanceof ObjectMap))
    {
      if (paramClass1 == null)
        paramClass1 = OrderedMap.class;
      writeObjectStart(localClass, paramClass1);
      Iterator localIterator3 = ((ObjectMap)paramObject).entries().iterator();
      while (localIterator3.hasNext())
      {
        ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator3.next();
        this.writer.name(convertToString(localEntry.key));
        writeValue(localEntry.value, paramClass2, null);
      }
      writeObjectEnd();
      return;
    }
    if ((paramObject instanceof Map))
    {
      if (paramClass1 == null)
        paramClass1 = OrderedMap.class;
      writeObjectStart(localClass, paramClass1);
      Iterator localIterator4 = ((Map)paramObject).entrySet().iterator();
      while (localIterator4.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator4.next();
        this.writer.name(convertToString(localEntry1.getKey()));
        writeValue(localEntry1.getValue(), paramClass2, null);
      }
      writeObjectEnd();
      return;
    }
    if (localClass.isEnum())
    {
      this.writer.value(paramObject);
      return;
    }
    writeObjectStart(localClass, paramClass1);
    writeFields(paramObject);
    writeObjectEnd();
  }

  public void writeValue(String paramString, Object paramObject)
  {
    try
    {
      this.writer.name(paramString);
      writeValue(paramObject, paramObject.getClass(), null);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeValue(String paramString, Object paramObject, Class paramClass)
  {
    try
    {
      this.writer.name(paramString);
      writeValue(paramObject, paramClass, null);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }

  public void writeValue(String paramString, Object paramObject, Class paramClass1, Class paramClass2)
  {
    try
    {
      this.writer.name(paramString);
      writeValue(paramObject, paramClass1, paramClass2);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SerializationException(localIOException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Json
 * JD-Core Version:    0.6.2
 */