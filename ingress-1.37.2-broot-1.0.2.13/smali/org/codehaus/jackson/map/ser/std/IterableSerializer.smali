.class public Lorg/codehaus/jackson/map/ser/std/IterableSerializer;
.super Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase",
        "<",
        "Ljava/lang/Iterable",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const-class v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 22
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 4
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
    .line 26
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->_staticTyping:Z

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public serializeContents(Ljava/lang/Iterable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    move-object v1, v0

    .line 40
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 41
    if-nez v5, :cond_2

    .line 42
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 60
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :cond_1
    return-void

    .line 45
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 47
    if-ne v2, v0, :cond_3

    move-object v2, v1

    .line 54
    :goto_1
    if-nez v4, :cond_4

    .line 55
    invoke-virtual {v2, v5, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v2, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    move-object v0, v2

    move-object v2, v1

    .line 52
    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v2, v5, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
