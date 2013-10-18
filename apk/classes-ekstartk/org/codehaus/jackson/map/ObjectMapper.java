package org.codehaus.jackson.map;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.io.SegmentedStringWriter;
import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.deser.StdDeserializationContext;
import org.codehaus.jackson.map.deser.StdDeserializerProvider;
import org.codehaus.jackson.map.introspect.BasicClassIntrospector;
import org.codehaus.jackson.map.introspect.JacksonAnnotationIntrospector;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.introspect.VisibilityChecker.Std;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.ser.BeanSerializerFactory;
import org.codehaus.jackson.map.ser.StdSerializerProvider;
import org.codehaus.jackson.map.type.SimpleType;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;

public class ObjectMapper extends ObjectCodec
{
  protected static final AnnotationIntrospector DEFAULT_ANNOTATION_INTROSPECTOR = new JacksonAnnotationIntrospector();
  protected static final ClassIntrospector<? extends BeanDescription> DEFAULT_INTROSPECTOR;
  private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
  protected static final VisibilityChecker<?> STD_VISIBILITY_CHECKER = VisibilityChecker.Std.defaultInstance();
  protected DeserializationConfig _deserializationConfig;
  protected DeserializerProvider _deserializerProvider;
  protected InjectableValues _injectableValues;
  protected final JsonFactory _jsonFactory;
  protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers = new ConcurrentHashMap(64, 0.6F, 2);
  protected SerializationConfig _serializationConfig;
  protected SerializerFactory _serializerFactory;
  protected SerializerProvider _serializerProvider;
  protected SubtypeResolver _subtypeResolver;
  protected TypeFactory _typeFactory;

  static
  {
    DEFAULT_INTROSPECTOR = BasicClassIntrospector.instance;
  }

  public ObjectMapper()
  {
    this(null, null, null);
  }

  public ObjectMapper(JsonFactory paramJsonFactory)
  {
    this(paramJsonFactory, null, null);
  }

  public ObjectMapper(JsonFactory paramJsonFactory, SerializerProvider paramSerializerProvider, DeserializerProvider paramDeserializerProvider)
  {
    this(paramJsonFactory, paramSerializerProvider, paramDeserializerProvider, null, null);
  }

  public ObjectMapper(JsonFactory paramJsonFactory, SerializerProvider paramSerializerProvider, DeserializerProvider paramDeserializerProvider, SerializationConfig paramSerializationConfig, DeserializationConfig paramDeserializationConfig)
  {
    if (paramJsonFactory == null)
      paramJsonFactory = new MappingJsonFactory(this);
    this._jsonFactory = paramJsonFactory;
    this._typeFactory = TypeFactory.defaultInstance();
    if (paramSerializationConfig != null)
    {
      this._serializationConfig = paramSerializationConfig;
      if (paramDeserializationConfig == null)
        break label137;
    }
    while (true)
    {
      this._deserializationConfig = paramDeserializationConfig;
      if (paramSerializerProvider == null)
        paramSerializerProvider = new StdSerializerProvider();
      this._serializerProvider = paramSerializerProvider;
      if (paramDeserializerProvider == null)
        paramDeserializerProvider = new StdDeserializerProvider();
      this._deserializerProvider = paramDeserializerProvider;
      this._serializerFactory = BeanSerializerFactory.instance;
      return;
      paramSerializationConfig = new SerializationConfig(DEFAULT_INTROSPECTOR, DEFAULT_ANNOTATION_INTROSPECTOR, STD_VISIBILITY_CHECKER, null, null, this._typeFactory, null);
      break;
      label137: paramDeserializationConfig = new DeserializationConfig(DEFAULT_INTROSPECTOR, DEFAULT_ANNOTATION_INTROSPECTOR, STD_VISIBILITY_CHECKER, null, null, this._typeFactory, null);
    }
  }

  // ERROR //
  private final void _configAndWriteCloseable(JsonGenerator paramJsonGenerator, Object paramObject, SerializationConfig paramSerializationConfig)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 135	java/io/Closeable
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 109	org/codehaus/jackson/map/ObjectMapper:_serializerProvider	Lorg/codehaus/jackson/map/SerializerProvider;
    //   10: aload_3
    //   11: aload_1
    //   12: aload_2
    //   13: aload_0
    //   14: getfield 121	org/codehaus/jackson/map/ObjectMapper:_serializerFactory	Lorg/codehaus/jackson/map/SerializerFactory;
    //   17: invokevirtual 141	org/codehaus/jackson/map/SerializerProvider:serializeValue	(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    //   20: aload_1
    //   21: invokevirtual 146	org/codehaus/jackson/JsonGenerator:close	()V
    //   24: aload 4
    //   26: invokeinterface 147 1 0
    //   31: return
    //   32: astore 5
    //   34: aload 4
    //   36: astore 6
    //   38: aload 5
    //   40: astore 7
    //   42: aload_1
    //   43: ifnull +7 -> 50
    //   46: aload_1
    //   47: invokevirtual 146	org/codehaus/jackson/JsonGenerator:close	()V
    //   50: aload 6
    //   52: ifnull +10 -> 62
    //   55: aload 6
    //   57: invokeinterface 147 1 0
    //   62: aload 7
    //   64: athrow
    //   65: astore 9
    //   67: goto -17 -> 50
    //   70: astore 8
    //   72: goto -10 -> 62
    //   75: astore 10
    //   77: aload 10
    //   79: astore 7
    //   81: aload 4
    //   83: astore 6
    //   85: aconst_null
    //   86: astore_1
    //   87: goto -45 -> 42
    //   90: astore 7
    //   92: aconst_null
    //   93: astore 6
    //   95: aconst_null
    //   96: astore_1
    //   97: goto -55 -> 42
    //
    // Exception table:
    //   from	to	target	type
    //   6	20	32	finally
    //   46	50	65	java/io/IOException
    //   55	62	70	java/io/IOException
    //   20	24	75	finally
    //   24	31	90	finally
  }

  // ERROR //
  private final void _writeCloseableValue(JsonGenerator paramJsonGenerator, Object paramObject, SerializationConfig paramSerializationConfig)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 135	java/io/Closeable
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 109	org/codehaus/jackson/map/ObjectMapper:_serializerProvider	Lorg/codehaus/jackson/map/SerializerProvider;
    //   10: aload_3
    //   11: aload_1
    //   12: aload_2
    //   13: aload_0
    //   14: getfield 121	org/codehaus/jackson/map/ObjectMapper:_serializerFactory	Lorg/codehaus/jackson/map/SerializerFactory;
    //   17: invokevirtual 141	org/codehaus/jackson/map/SerializerProvider:serializeValue	(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    //   20: aload_3
    //   21: getstatic 154	org/codehaus/jackson/map/SerializationConfig$Feature:FLUSH_AFTER_WRITE_VALUE	Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    //   24: invokevirtual 158	org/codehaus/jackson/map/SerializationConfig:isEnabled	(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    //   27: ifeq +7 -> 34
    //   30: aload_1
    //   31: invokevirtual 161	org/codehaus/jackson/JsonGenerator:flush	()V
    //   34: aload 4
    //   36: invokeinterface 147 1 0
    //   41: return
    //   42: astore 5
    //   44: aload 4
    //   46: astore 6
    //   48: aload 5
    //   50: astore 7
    //   52: aload 6
    //   54: ifnull +10 -> 64
    //   57: aload 6
    //   59: invokeinterface 147 1 0
    //   64: aload 7
    //   66: athrow
    //   67: astore 8
    //   69: goto -5 -> 64
    //   72: astore 7
    //   74: aconst_null
    //   75: astore 6
    //   77: goto -25 -> 52
    //
    // Exception table:
    //   from	to	target	type
    //   6	34	42	finally
    //   57	64	67	java/io/IOException
    //   34	41	72	finally
  }

  protected final void _configAndWriteValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    SerializationConfig localSerializationConfig = copySerializationConfig();
    if (localSerializationConfig.isEnabled(SerializationConfig.Feature.INDENT_OUTPUT))
      paramJsonGenerator.useDefaultPrettyPrinter();
    if ((localSerializationConfig.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE)) && ((paramObject instanceof Closeable)))
    {
      _configAndWriteCloseable(paramJsonGenerator, paramObject, localSerializationConfig);
      return;
    }
    int i = 0;
    try
    {
      this._serializerProvider.serializeValue(localSerializationConfig, paramJsonGenerator, paramObject, this._serializerFactory);
      i = 1;
      paramJsonGenerator.close();
      return;
    }
    finally
    {
      if (i != 0);
    }
    try
    {
      paramJsonGenerator.close();
      label81: throw localObject;
    }
    catch (IOException localIOException)
    {
      break label81;
    }
  }

  protected DeserializationContext _createDeserializationContext(JsonParser paramJsonParser, DeserializationConfig paramDeserializationConfig)
  {
    return new StdDeserializationContext(paramDeserializationConfig, paramJsonParser, this._deserializerProvider, this._injectableValues);
  }

  protected JsonDeserializer<Object> _findRootDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    JsonDeserializer localJsonDeserializer1 = (JsonDeserializer)this._rootDeserializers.get(paramJavaType);
    if (localJsonDeserializer1 != null)
      return localJsonDeserializer1;
    JsonDeserializer localJsonDeserializer2 = this._deserializerProvider.findTypedValueDeserializer(paramDeserializationConfig, paramJavaType, null);
    if (localJsonDeserializer2 == null)
      throw new JsonMappingException("Can not find a deserializer for type " + paramJavaType);
    this._rootDeserializers.put(paramJavaType, localJsonDeserializer2);
    return localJsonDeserializer2;
  }

  protected JsonToken _initForReading(JsonParser paramJsonParser)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == null)
    {
      localJsonToken = paramJsonParser.nextToken();
      if (localJsonToken == null)
        throw new EOFException("No content to map to Object due to end of input");
    }
    return localJsonToken;
  }

  // ERROR //
  protected Object _readMapAndClose(JsonParser paramJsonParser, JavaType paramJavaType)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 244	org/codehaus/jackson/map/ObjectMapper:_initForReading	(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;
    //   5: astore 5
    //   7: aload 5
    //   9: getstatic 250	org/codehaus/jackson/JsonToken:VALUE_NULL	Lorg/codehaus/jackson/JsonToken;
    //   12: if_acmpne +28 -> 40
    //   15: aload_0
    //   16: aload_0
    //   17: getfield 104	org/codehaus/jackson/map/ObjectMapper:_deserializationConfig	Lorg/codehaus/jackson/map/DeserializationConfig;
    //   20: aload_2
    //   21: invokevirtual 252	org/codehaus/jackson/map/ObjectMapper:_findRootDeserializer	(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    //   24: invokevirtual 256	org/codehaus/jackson/map/JsonDeserializer:getNullValue	()Ljava/lang/Object;
    //   27: astore 6
    //   29: aload_1
    //   30: invokevirtual 259	org/codehaus/jackson/JsonParser:clearCurrentToken	()V
    //   33: aload_1
    //   34: invokevirtual 260	org/codehaus/jackson/JsonParser:close	()V
    //   37: aload 6
    //   39: areturn
    //   40: aload 5
    //   42: getstatic 263	org/codehaus/jackson/JsonToken:END_ARRAY	Lorg/codehaus/jackson/JsonToken;
    //   45: if_acmpeq +98 -> 143
    //   48: aload 5
    //   50: getstatic 266	org/codehaus/jackson/JsonToken:END_OBJECT	Lorg/codehaus/jackson/JsonToken;
    //   53: if_acmpne +6 -> 59
    //   56: goto +87 -> 143
    //   59: aload_0
    //   60: invokevirtual 270	org/codehaus/jackson/map/ObjectMapper:copyDeserializationConfig	()Lorg/codehaus/jackson/map/DeserializationConfig;
    //   63: astore 8
    //   65: aload_0
    //   66: aload_1
    //   67: aload 8
    //   69: invokevirtual 272	org/codehaus/jackson/map/ObjectMapper:_createDeserializationContext	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;
    //   72: astore 9
    //   74: aload_0
    //   75: aload 8
    //   77: aload_2
    //   78: invokevirtual 252	org/codehaus/jackson/map/ObjectMapper:_findRootDeserializer	(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    //   81: astore 10
    //   83: aload 8
    //   85: getstatic 278	org/codehaus/jackson/map/DeserializationConfig$Feature:UNWRAP_ROOT_VALUE	Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    //   88: invokevirtual 281	org/codehaus/jackson/map/DeserializationConfig:isEnabled	(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    //   91: ifeq +18 -> 109
    //   94: aload_0
    //   95: aload_1
    //   96: aload_2
    //   97: aload 9
    //   99: aload 10
    //   101: invokevirtual 285	org/codehaus/jackson/map/ObjectMapper:_unwrapAndDeserialize	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
    //   104: astore 6
    //   106: goto -77 -> 29
    //   109: aload 10
    //   111: aload_1
    //   112: aload 9
    //   114: invokevirtual 289	org/codehaus/jackson/map/JsonDeserializer:deserialize	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    //   117: astore 11
    //   119: aload 11
    //   121: astore 6
    //   123: goto -94 -> 29
    //   126: astore_3
    //   127: aload_1
    //   128: invokevirtual 260	org/codehaus/jackson/JsonParser:close	()V
    //   131: aload_3
    //   132: athrow
    //   133: astore 7
    //   135: aload 6
    //   137: areturn
    //   138: astore 4
    //   140: goto -9 -> 131
    //   143: aconst_null
    //   144: astore 6
    //   146: goto -117 -> 29
    //
    // Exception table:
    //   from	to	target	type
    //   0	29	126	finally
    //   29	33	126	finally
    //   40	56	126	finally
    //   59	106	126	finally
    //   109	119	126	finally
    //   33	37	133	java/io/IOException
    //   127	131	138	java/io/IOException
  }

  protected Object _readValue(DeserializationConfig paramDeserializationConfig, JsonParser paramJsonParser, JavaType paramJavaType)
  {
    JsonToken localJsonToken = _initForReading(paramJsonParser);
    Object localObject;
    if (localJsonToken == JsonToken.VALUE_NULL)
      localObject = _findRootDeserializer(paramDeserializationConfig, paramJavaType).getNullValue();
    while (true)
    {
      paramJsonParser.clearCurrentToken();
      return localObject;
      if ((localJsonToken == JsonToken.END_ARRAY) || (localJsonToken == JsonToken.END_OBJECT))
      {
        localObject = null;
      }
      else
      {
        DeserializationContext localDeserializationContext = _createDeserializationContext(paramJsonParser, paramDeserializationConfig);
        JsonDeserializer localJsonDeserializer = _findRootDeserializer(paramDeserializationConfig, paramJavaType);
        if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE))
          localObject = _unwrapAndDeserialize(paramJsonParser, paramJavaType, localDeserializationContext, localJsonDeserializer);
        else
          localObject = localJsonDeserializer.deserialize(paramJsonParser, localDeserializationContext);
      }
    }
  }

  protected Object _unwrapAndDeserialize(JsonParser paramJsonParser, JavaType paramJavaType, DeserializationContext paramDeserializationContext, JsonDeserializer<Object> paramJsonDeserializer)
  {
    SerializedString localSerializedString = this._deserializerProvider.findExpectedRootName(paramDeserializationContext.getConfig(), paramJavaType);
    if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT)
      throw JsonMappingException.from(paramJsonParser, "Current token not START_OBJECT (needed to unwrap root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
    if (paramJsonParser.nextToken() != JsonToken.FIELD_NAME)
      throw JsonMappingException.from(paramJsonParser, "Current token not FIELD_NAME (to contain expected root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
    String str = paramJsonParser.getCurrentName();
    if (!localSerializedString.getValue().equals(str))
      throw JsonMappingException.from(paramJsonParser, "Root name '" + str + "' does not match expected ('" + localSerializedString + "') for type " + paramJavaType);
    paramJsonParser.nextToken();
    Object localObject = paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() != JsonToken.END_OBJECT)
      throw JsonMappingException.from(paramJsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
    return localObject;
  }

  public ObjectMapper configure(DeserializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    this._deserializationConfig.set(paramFeature, paramBoolean);
    return this;
  }

  public ObjectMapper configure(SerializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    this._serializationConfig.set(paramFeature, paramBoolean);
    return this;
  }

  public DeserializationConfig copyDeserializationConfig()
  {
    return this._deserializationConfig.createUnshared(this._subtypeResolver).passSerializationFeatures(this._serializationConfig._featureFlags);
  }

  public SerializationConfig copySerializationConfig()
  {
    return this._serializationConfig.createUnshared(this._subtypeResolver);
  }

  public JsonFactory getJsonFactory()
  {
    return this._jsonFactory;
  }

  public JsonNodeFactory getNodeFactory()
  {
    return this._deserializationConfig.getNodeFactory();
  }

  public SerializationConfig getSerializationConfig()
  {
    return this._serializationConfig;
  }

  public JsonNode readTree(JsonParser paramJsonParser)
  {
    DeserializationConfig localDeserializationConfig = copyDeserializationConfig();
    JsonNode localJsonNode;
    if ((paramJsonParser.getCurrentToken() == null) && (paramJsonParser.nextToken() == null))
      localJsonNode = null;
    do
    {
      return localJsonNode;
      localJsonNode = (JsonNode)_readValue(localDeserializationConfig, paramJsonParser, JSON_NODE_TYPE);
    }
    while (localJsonNode != null);
    return getNodeFactory().nullNode();
  }

  public <T> T readValue(String paramString, Class<T> paramClass)
  {
    return _readMapAndClose(this._jsonFactory.createJsonParser(paramString), this._typeFactory.constructType(paramClass));
  }

  public <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass)
  {
    return _readValue(copyDeserializationConfig(), paramJsonParser, this._typeFactory.constructType(paramClass));
  }

  public <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
  {
    return _readValue(copyDeserializationConfig(), paramJsonParser, this._typeFactory.constructType(paramTypeReference));
  }

  public void registerModule(Module paramModule)
  {
    if (paramModule.getModuleName() == null)
      throw new IllegalArgumentException("Module without defined name");
    if (paramModule.version() == null)
      throw new IllegalArgumentException("Module without defined version");
    paramModule.setupModule(new ObjectMapper.1(this, this));
  }

  public void setVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    this._deserializationConfig = this._deserializationConfig.withVisibilityChecker(paramVisibilityChecker);
    this._serializationConfig = this._serializationConfig.withVisibilityChecker(paramVisibilityChecker);
  }

  public void writeValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    SerializationConfig localSerializationConfig = copySerializationConfig();
    if ((localSerializationConfig.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE)) && ((paramObject instanceof Closeable)))
      _writeCloseableValue(paramJsonGenerator, paramObject, localSerializationConfig);
    do
    {
      return;
      this._serializerProvider.serializeValue(localSerializationConfig, paramJsonGenerator, paramObject, this._serializerFactory);
    }
    while (!localSerializationConfig.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE));
    paramJsonGenerator.flush();
  }

  public String writeValueAsString(Object paramObject)
  {
    SegmentedStringWriter localSegmentedStringWriter = new SegmentedStringWriter(this._jsonFactory._getBufferRecycler());
    _configAndWriteValue(this._jsonFactory.createJsonGenerator(localSegmentedStringWriter), paramObject);
    return localSegmentedStringWriter.getAndClear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ObjectMapper
 * JD-Core Version:    0.6.2
 */