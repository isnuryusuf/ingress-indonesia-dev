.class public Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
.super Lorg/codehaus/jackson/map/SerializerProvider;
.source "SourceFile"


# static fields
.field public static final DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _dateFormat:Ljava/text/DateFormat;

.field protected _keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field protected _nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

.field protected final _serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

.field protected final _serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

.field protected _unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/FailingSerializer;

    const-string/jumbo v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 63
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/UnknownSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/UnknownSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 97
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 110
    sget-object v0, Lorg/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lorg/codehaus/jackson/map/ser/std/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 119
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 154
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 155
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    .line 157
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 158
    new-instance v0, Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 97
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 110
    sget-object v0, Lorg/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lorg/codehaus/jackson/map/ser/std/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 119
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_0
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 176
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    .line 177
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 178
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 179
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 180
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 181
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 186
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->getReadOnlyLookupMap()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 187
    return-void
.end method


# virtual methods
.method protected _createAndCacheUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v1, p1, v0, p0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->addAndResolveNonTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 746
    :cond_0
    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 740
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected _createAndCacheUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    .line 767
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v1, p1, v0, p0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->addAndResolveNonTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 769
    :cond_0
    return-object v0

    .line 759
    :catch_0
    move-exception v0

    .line 763
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected _createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected _handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    instance-of v0, p1, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 796
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0, v1, p2}, Lorg/codehaus/jackson/map/ContextualSerializer;->createContextual(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 797
    if-eq v1, p1, :cond_2

    .line 799
    instance-of v0, v1, Lorg/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 800
    check-cast v0, Lorg/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/map/ResolvableSerializer;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    :cond_1
    :goto_1
    move-object p1, v1

    .line 804
    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method protected _serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 595
    if-nez p2, :cond_2

    .line 596
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 597
    const/4 v0, 0x0

    .line 610
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p2, p1, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 611
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 626
    :cond_1
    return-void

    .line 599
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 601
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 603
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 606
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lorg/codehaus/jackson/map/MapperConfig;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    throw v0

    .line 619
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 622
    if-nez v0, :cond_3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[no message for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :cond_3
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {v0, p1, p0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V

    return-object v0
.end method

.method public defaultSerializeDateKey(JLorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 551
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 559
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public defaultSerializeDateKey(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 567
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 575
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final defaultSerializeDateValue(JLorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 519
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 528
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 526
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final defaultSerializeDateValue(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 535
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 543
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findKeySerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_2

    .line 477
    invoke-static {p1}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializers;->getStdKeySerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 483
    :cond_0
    :goto_0
    instance-of v1, v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-eqz v1, :cond_1

    .line 484
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    .line 485
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0, v1, p2}, Lorg/codehaus/jackson/map/ContextualSerializer;->createContextual(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 487
    :cond_1
    return-object v0

    .line 479
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0
.end method

.method public findTypedValueSerializer(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->typedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 415
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_2

    .line 424
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 426
    :goto_1
    if-eqz p2, :cond_0

    .line 427
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->addTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public findTypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 443
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->typedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 450
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v2, p1, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_2

    .line 452
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 454
    :goto_1
    if-eqz p2, :cond_0

    .line 455
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->addTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 339
    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/impl/SerializerCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 378
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public final serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    if-nez p4, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not pass null serializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; blueprint of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_1
    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 257
    return-void
.end method
