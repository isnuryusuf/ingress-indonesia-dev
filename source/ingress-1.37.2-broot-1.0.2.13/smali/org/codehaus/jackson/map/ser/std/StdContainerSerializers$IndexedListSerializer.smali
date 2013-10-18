.class public Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;
.super Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 79
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 6
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
    .line 83
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_staticTyping:Z

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContentsUsing(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeTypedContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 105
    :goto_1
    if-ge v1, v3, :cond_0

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 105
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 112
    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v2, v5}, Lorg/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 120
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 122
    :cond_4
    invoke-virtual {v2, v4, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {p0, p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 118
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v5, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public serializeContentsUsing(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    if-nez v2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-nez v0, :cond_2

    .line 144
    :try_start_0
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 140
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_2
    if-nez v3, :cond_3

    .line 146
    invoke-virtual {p4, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {p0, p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 148
    :cond_3
    :try_start_1
    invoke-virtual {p4, v0, p2, p3, v3}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public serializeTypedContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 161
    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 168
    :goto_1
    if-ge v1, v3, :cond_0

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 170
    if-nez v5, :cond_2

    .line 171
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 168
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 174
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 175
    if-nez v2, :cond_3

    .line 177
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v2, v6}, Lorg/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 183
    :goto_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 185
    :cond_3
    invoke-virtual {v2, v5, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {p0, p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 181
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0, v6, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method
