.class public Lorg/codehaus/jackson/map/ser/std/MapSerializer;
.super Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final UNSPECIFIED_TYPE:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected _dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _ignoredEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field protected final _keyType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected _valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 98
    iput-object p8, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 99
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 100
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lorg/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 102
    iput-boolean p4, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 103
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 104
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 105
    iput-object p7, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 106
    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 107
    return-void
.end method

.method public static construct([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/std/MapSerializer;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->toSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 146
    if-nez p1, :cond_0

    .line 147
    sget-object v3, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lorg/codehaus/jackson/type/JavaType;

    move-object v2, v3

    .line 153
    :goto_0
    if-nez p2, :cond_2

    .line 154
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v4, v0

    .line 156
    :goto_2
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v4, p2

    goto :goto_2
.end method

.method private static toSet([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 168
    :cond_1
    return-object v0

    .line 164
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 165
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 405
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 406
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 408
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method protected final _findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 415
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 416
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 418
    :cond_0
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 114
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v1, v0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 117
    :cond_0
    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keyType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findKeySerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 392
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 190
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public serializeFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 270
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 227
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 228
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 230
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 232
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 236
    if-nez v7, :cond_4

    .line 237
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 247
    :goto_2
    if-nez v6, :cond_7

    .line 248
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 228
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 240
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v6, :cond_2

    .line 242
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_6
    invoke-virtual {v3, v7, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 251
    invoke-virtual {v2, v8}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 252
    if-nez v0, :cond_9

    .line 253
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v0, v8}, Lorg/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 259
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_dynamicValueSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 262
    :goto_4
    :try_start_0
    invoke-virtual {v2, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 267
    goto :goto_1

    .line 257
    :cond_8
    invoke-virtual {p0, v2, v8, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_3

    .line 263
    :catch_0
    move-exception v2

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual {p0, p3, v2, p1, v6}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 269
    goto :goto_1

    :cond_9
    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_4
.end method

.method protected serializeFieldsUsing(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 282
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 283
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 284
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 286
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 289
    if-nez v7, :cond_2

    .line 290
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 297
    :goto_2
    if-nez v6, :cond_5

    .line 298
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 284
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 293
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_0

    .line 294
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :cond_4
    invoke-virtual {v2, v7, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 301
    :cond_5
    if-nez v4, :cond_6

    .line 302
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {p0, p3, v0, p1, v6}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_6
    :try_start_1
    invoke-virtual {p4, v6, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :cond_7
    return-void
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 321
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 322
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 324
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    move-object v4, v3

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 328
    if-nez v9, :cond_2

    .line 329
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, v3, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 339
    :goto_2
    if-nez v8, :cond_5

    .line 340
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 322
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 332
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v8, :cond_0

    .line 334
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :cond_4
    invoke-virtual {v5, v9, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 342
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 344
    if-ne v0, v2, :cond_6

    move-object v0, v2

    move-object v2, v4

    .line 352
    :goto_3
    :try_start_0
    iget-object v10, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v4, v8, p2, p3, v10}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    move-object v2, v0

    .line 357
    goto :goto_1

    .line 347
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v0, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    move-object v2, v4

    .line 349
    goto :goto_3

    .line 353
    :catch_0
    move-exception v4

    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    invoke-virtual {p0, p3, v4, p1, v8}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v0

    .line 359
    goto :goto_1

    .line 360
    :cond_7
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 206
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
