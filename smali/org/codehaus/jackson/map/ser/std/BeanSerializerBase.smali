.class public abstract Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# static fields
.field protected static final NO_PROPS:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->NO_PROPS:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lorg/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 90
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 91
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 92
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;)V
    .locals 6
    .parameter

    .prologue
    .line 100
    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    iget-object v2, p1, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v3, p1, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p1, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p1, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 76
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 77
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 78
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 79
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method protected findFilter(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 4
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializerProvider;->getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not resolve BeanPropertyFilter with id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'; no FilterProvider configured"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-nez v1, :cond_2

    move v2, v0

    .line 282
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v4, v1

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_5

    .line 283
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v5, v0, v3

    .line 284
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 294
    if-nez v0, :cond_3

    .line 295
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 302
    :cond_0
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lorg/codehaus/jackson/type/JavaType;)V

    .line 282
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 281
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v1, v1

    move v2, v1

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p1, v0, v5}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 312
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/TypeSerializer;

    .line 313
    if-eqz v0, :cond_4

    .line 315
    instance-of v6, v1, Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    if-eqz v6, :cond_4

    .line 318
    check-cast v1, Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;->withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v1

    .line 323
    :cond_4
    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    .line 324
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aput-object v0, v5, v3

    .line 326
    if-ge v3, v2, :cond_1

    .line 327
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v0, v0, v3

    .line 328
    if-eqz v0, :cond_1

    .line 329
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    aput-object v0, v5, v3

    goto :goto_2

    .line 335
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 338
    :cond_6
    return-void
.end method

.method protected serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 145
    :goto_0
    const/4 v2, 0x0

    .line 147
    :try_start_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 148
    aget-object v3, v0, v2

    .line 149
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v3, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 153
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_3
    :goto_2
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    array-length v3, v0

    if-ne v2, v3, :cond_4

    const-string/jumbo v0, "[anySetter]"

    .line 158
    :goto_3
    invoke-virtual {p0, p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_4
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 164
    :catch_1
    move-exception v1

    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string/jumbo v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 165
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string/jumbo v0, "[anySetter]"

    .line 166
    :goto_4
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v2, p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 167
    throw v1

    .line 165
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 191
    :goto_0
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->findFilter(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v1

    .line 193
    if-nez v1, :cond_2

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_0

    .line 198
    :cond_2
    const/4 v2, 0x0

    .line 200
    :try_start_0
    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 201
    aget-object v4, v0, v2

    .line 202
    if-eqz v4, :cond_3

    .line 203
    invoke-interface {v1, p1, p2, p3, v4}, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 200
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .line 210
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string/jumbo v0, "[anySetter]"

    .line 211
    :goto_3
    invoke-virtual {p0, p3, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 213
    :catch_1
    move-exception v1

    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string/jumbo v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 214
    array-length v3, v0

    if-ne v2, v3, :cond_6

    const-string/jumbo v0, "[anySetter]"

    .line 215
    :goto_4
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v2, p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 216
    throw v1

    .line 214
    :cond_6
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 127
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
