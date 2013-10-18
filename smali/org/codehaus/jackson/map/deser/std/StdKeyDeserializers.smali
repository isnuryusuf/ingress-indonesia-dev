.class public Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 34
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 35
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 36
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 38
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 39
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 40
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 41
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 42
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 43
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 44
    return-void
.end method

.method private add(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    .line 69
    new-instance v1, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    return-object v1
.end method

.method public static findStringBasedKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 79
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 84
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 97
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 94
    :cond_2
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
