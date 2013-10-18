.class public abstract Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;
.super Lorg/codehaus/jackson/map/DeserializerFactory;
.source "SourceFile"


# static fields
.field protected static final _arrayDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _collectionFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _mapFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _simpleDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected optionalHandlers:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-string/jumbo v1, "java.util.NavigableMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_0
    const-string/jumbo v0, "java.util.ConcurrentNavigableMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "java.util.ConcurrentSkipListMap"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    sget-object v2, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string/jumbo v1, "java.util.Deque"

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string/jumbo v1, "java.util.NavigableSet"

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->getAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerFactory;-><init>()V

    .line 109
    sget-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 117
    return-void
.end method


# virtual methods
.method _constructDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    instance-of v0, p4, Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 688
    check-cast p4, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 690
    instance-of v0, p4, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v0, :cond_0

    .line 691
    check-cast p4, Lorg/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {p4, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object p4

    .line 710
    :cond_0
    :goto_0
    return-object p4

    .line 698
    :cond_1
    instance-of v0, p4, Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 699
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AnnotationIntrospector returned deserializer definition of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_2
    check-cast p4, Ljava/lang/Class;

    .line 702
    const-class v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AnnotationIntrospector returned Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; expected Class<JsonDeserializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_3
    invoke-virtual {p1, p2, p4}, Lorg/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 707
    instance-of v1, v0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v1, :cond_4

    .line 708
    check-cast v0, Lorg/codehaus/jackson/map/ContextualDeserializer;

    invoke-interface {v0, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    :cond_4
    move-object p4, v0

    .line 710
    goto :goto_0
.end method

.method protected abstract _findCustomArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/util/EnumResolver;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            ")",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 878
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    .line 881
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public createArrayDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/type/ArrayType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v8

    .line 192
    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 193
    if-nez v6, :cond_2

    .line 195
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 196
    if-eqz v7, :cond_1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, v5

    .line 201
    invoke-virtual/range {v0 .. v6}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 228
    :cond_0
    :goto_0
    return-object v7

    .line 208
    :cond_1
    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal error: primitive type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") passed, no array deserializer found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 215
    if-nez v0, :cond_4

    .line 216
    invoke-virtual {p0, p1, v8, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v5

    :goto_1
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 219
    invoke-virtual/range {v0 .. v6}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 220
    if-nez v7, :cond_0

    .line 224
    if-nez v6, :cond_3

    .line 226
    invoke-virtual {p2, p1, v8, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 228
    :cond_3
    new-instance v7, Lorg/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;

    invoke-direct {v7, p3, v6, v5}, Lorg/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;-><init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    goto :goto_0

    :cond_4
    move-object v5, v0

    goto :goto_1
.end method

.method public createCollectionDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionType;

    .line 239
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 240
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 242
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/CollectionType;

    .line 249
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 251
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 254
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 256
    if-nez v0, :cond_8

    .line 257
    invoke-virtual {p0, p1, v9, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 261
    invoke-virtual/range {v0 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 267
    if-nez v7, :cond_3

    .line 269
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p2, p1, v9, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 286
    :cond_3
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 289
    if-nez v0, :cond_5

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not find a deserializer for non-concrete Collection type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_5
    invoke-virtual {p1, v1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionType;

    .line 295
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object v4, v1

    move-object v1, v0

    .line 297
    :cond_6
    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v2

    .line 299
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_7

    .line 301
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StringCollectionDeserializer;

    invoke-direct {v0, v1, v7, v2}, Lorg/codehaus/jackson/map/deser/std/StringCollectionDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    goto/16 :goto_0

    .line 303
    :cond_7
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/CollectionDeserializer;

    invoke-direct {v0, v1, v7, v6, v2}, Lorg/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    goto/16 :goto_0

    :cond_8
    move-object v6, v0

    goto :goto_1
.end method

.method public createCollectionLikeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 315
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 316
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 318
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 335
    :goto_0
    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 325
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 330
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 332
    if-nez v0, :cond_1

    .line 333
    invoke-virtual {p0, p1, v2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 335
    invoke-virtual/range {v0 .. v7}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1
.end method

.method public createEnumDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 476
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 502
    :goto_0
    return-object v0

    .line 480
    :cond_0
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 482
    invoke-virtual {p0, v2, p1, v0, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 484
    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 489
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    .line 491
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 492
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    invoke-static {p1, v2, v0}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;->deserializerForCreator(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsuitable method ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_4
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-virtual {p0, v2, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    goto :goto_0
.end method

.method public createMapDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    .line 347
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 349
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/MapType;

    .line 355
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 356
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 360
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 363
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 364
    if-nez v0, :cond_a

    .line 365
    invoke-virtual {p2, p1, v9, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v6

    .line 368
    :goto_1
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 370
    if-nez v0, :cond_9

    .line 371
    invoke-virtual {p0, p1, v10, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v7

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 375
    invoke-virtual/range {v0 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 378
    if-nez v0, :cond_0

    .line 382
    if-nez v8, :cond_2

    .line 384
    invoke-virtual {p2, p1, v10, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 389
    :cond_2
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 390
    const-class v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_4

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/EnumMapDeserializer;

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/codehaus/jackson/map/deser/std/EnumMapDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapType;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 411
    :cond_6
    sget-object v2, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 412
    if-nez v0, :cond_7

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not find a deserializer for non-concrete Map type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_7
    invoke-virtual {p1, v1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    .line 418
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object v9, v1

    move-object v1, v0

    .line 420
    :goto_3
    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v2

    .line 421
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;

    move-object v3, v6

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    .line 422
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v9}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;->setIgnorableProperties([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v9, v4

    goto :goto_3

    :cond_9
    move-object v7, v0

    goto/16 :goto_2

    :cond_a
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public createMapLikeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 434
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 436
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 460
    :goto_0
    return-object v0

    .line 441
    :cond_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 442
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapLikeType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 443
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapLikeType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 447
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 450
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 451
    if-nez v0, :cond_2

    .line 452
    invoke-virtual {p2, p1, v2, p4}, Lorg/codehaus/jackson/map/DeserializerProvider;->findKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v6

    .line 455
    :goto_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 457
    if-nez v0, :cond_1

    .line 458
    invoke-virtual {p0, p1, v3, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v7

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 460
    invoke-virtual/range {v0 .. v8}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public createTreeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 513
    invoke-virtual {p0, v1, p1, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_constructDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findPropertyContentTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p1, p3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 650
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 652
    if-nez v1, :cond_0

    .line 653
    invoke-virtual {p0, p1, v2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    .line 656
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    .line 657
    invoke-interface {v1, p1, v2, v0, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public findPropertyTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1, p3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 623
    if-nez v1, :cond_0

    .line 624
    invoke-virtual {p0, p1, p2, p4}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p1, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    .line 628
    invoke-interface {v1, p1, p2, v0, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method protected findStdBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 533
    sget-object v0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;

    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, v1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 534
    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :cond_1
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    .line 542
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_3

    .line 545
    :cond_2
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 550
    :goto_1
    new-instance v1, Lorg/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;

    invoke-direct {v1, v0, p4}, Lorg/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)V

    move-object v0, v1

    .line 551
    goto :goto_0

    .line 547
    :cond_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    .line 554
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->optionalHandlers:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {v0, p3, p1, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->findDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 555
    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 567
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 568
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 569
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 570
    invoke-virtual {v3, p1, v0, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 576
    if-nez v2, :cond_0

    .line 577
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultTyper(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 578
    if-nez v0, :cond_2

    .line 592
    :goto_0
    return-object v1

    .line 582
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v3}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    .line 586
    :goto_1
    invoke-interface {v1}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 589
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 592
    :cond_1
    invoke-interface {v1, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public abstract findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
.end method

.method public abstract mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
.end method

.method protected modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 738
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 739
    invoke-virtual {v3, p2, p3, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 740
    if-eqz v1, :cond_5

    .line 742
    :try_start_0
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 749
    :goto_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v3, p2, v1, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 751
    if-eqz v4, :cond_1

    .line 753
    instance-of v1, v2, Lorg/codehaus/jackson/map/type/MapLikeType;

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Illegal key-type annotation: type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a Map(-like) type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :catch_0
    move-exception v2

    .line 744
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to narrow type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with concrete-type annotation (value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "), method \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\': "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v7, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v3

    .line 757
    :cond_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lorg/codehaus/jackson/map/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 762
    :cond_1
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 767
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 768
    invoke-virtual {v3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v4

    .line 769
    if-eqz v4, :cond_2

    const-class v5, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v4, v5, :cond_2

    .line 770
    invoke-virtual {p1, p2, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 776
    invoke-virtual {v1, v4}, Lorg/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 781
    :cond_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v3, p2, v1, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_3

    .line 784
    :try_start_2
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/type/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 790
    :cond_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 791
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 792
    invoke-virtual {v3, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    .line 793
    if-eqz v1, :cond_4

    const-class v3, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v3, :cond_4

    .line 794
    invoke-virtual {p1, p2, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 799
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 803
    :cond_4
    return-object v2

    .line 758
    :catch_1
    move-exception v1

    .line 759
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to narrow key type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " with key-type annotation ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v7, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v3

    .line 785
    :catch_2
    move-exception v3

    .line 786
    new-instance v4, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to narrow content type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " with content-type annotation ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v7, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    move-object v2, p3

    goto/16 :goto_0
.end method

.method protected resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 825
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getKeyType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    .line 828
    if-eqz v2, :cond_0

    const-class v3, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v2, v3, :cond_0

    .line 829
    invoke-virtual {p1, p4, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->keyDeserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 835
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 839
    :cond_0
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v0, v1, :cond_1

    .line 841
    invoke-virtual {p1, p4, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 846
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 853
    :cond_1
    instance-of v0, p4, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v0, :cond_2

    .line 854
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_2

    .line 857
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 863
    :cond_2
    instance-of v0, p4, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz v0, :cond_4

    .line 864
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    .line 869
    :goto_0
    if-eqz v0, :cond_3

    .line 870
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 872
    :cond_3
    return-object p3

    .line 867
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    goto :goto_0
.end method
