.class public Lorg/codehaus/jackson/map/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected final _config:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 40
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 41
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getSerializationInclusion()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 43
    return-void
.end method


# virtual methods
.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    move-object v0, p1

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 313
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to get property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buildWriter(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 15
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
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Z)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p6

    instance-of v3, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v3, :cond_1

    .line 68
    const/4 v11, 0x0

    move-object/from16 v3, p6

    .line 69
    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v12

    .line 76
    :goto_0
    move-object/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;ZLorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 79
    if-eqz p5, :cond_6

    .line 84
    if-nez v3, :cond_0

    move-object/from16 v3, p2

    .line 88
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 93
    if-nez v4, :cond_2

    .line 94
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' (of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "); serialization type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " has no content"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object/from16 v3, p6

    .line 71
    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 72
    const/4 v12, 0x0

    goto :goto_0

    .line 97
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 98
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    .line 101
    :goto_1
    const/4 v14, 0x0

    .line 102
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    sget-object v5, Lorg/codehaus/jackson/map/ser/PropertyBuilder$1;->$SwitchMap$org$codehaus$jackson$map$annotate$JsonSerialize$Inclusion:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    move v13, v3

    .line 137
    :goto_2
    new-instance v3, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v5

    move-object/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->unwrappingWriter()Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    .line 145
    :cond_4
    return-object v3

    .line 109
    :pswitch_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11, v12}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v14

    .line 110
    if-nez v14, :cond_5

    .line 111
    const/4 v3, 0x1

    move v13, v3

    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    invoke-static {v14}, Lorg/codehaus/jackson/map/util/Comparators;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    goto :goto_2

    .line 121
    :pswitch_1
    const/4 v3, 0x1

    .line 123
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getEmptyValueChecker(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    .line 124
    goto :goto_2

    .line 126
    :pswitch_2
    const/4 v3, 0x1

    .line 130
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getContainerValueChecker(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v14

    move v13, v3

    goto :goto_2

    :cond_6
    move-object v10, v3

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;ZLorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    :goto_0
    move p2, v1

    .line 188
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-static {v2, p1, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->modifySecondaryTypesByAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 189
    if-eq v2, v0, :cond_5

    move-object v0, v2

    move v2, v1

    .line 197
    :goto_2
    if-nez v2, :cond_4

    .line 198
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_4

    .line 200
    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v2, :cond_2

    .line 203
    :goto_3
    if-eqz v1, :cond_3

    :goto_4
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Illegal concrete-type annotation for method \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " not a super-type of (declared) class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, p3, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 203
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v2, p2

    goto :goto_2

    :cond_6
    move-object v0, p3

    goto :goto_1
.end method

.method public getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getContainerValueChecker(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_EMPTY_JSON_ARRAYS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;-><init>()V

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;-><init>()V

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v1

    .line 231
    if-eqz p2, :cond_0

    .line 232
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {p0, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEmptyValueChecker(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 285
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 286
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyStringChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyStringChecker;-><init>()V

    .line 297
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyArrayChecker;-><init>()V

    goto :goto_0

    .line 291
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyCollectionChecker;-><init>()V

    goto :goto_0

    .line 294
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyMapChecker;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder$EmptyMapChecker;-><init>()V

    goto :goto_0

    .line 297
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
