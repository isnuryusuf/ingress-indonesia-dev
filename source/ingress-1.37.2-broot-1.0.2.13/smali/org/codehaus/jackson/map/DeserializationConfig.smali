.class public Lorg/codehaus/jackson/map/DeserializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig$Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig$Impl",
        "<",
        "Lorg/codehaus/jackson/map/DeserializationConfig$Feature;",
        "Lorg/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

.field protected _problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected _sortPropertiesAlphabetically:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
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
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    const-class v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;I)V

    .line 408
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 409
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 430
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 437
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 438
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 439
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 440
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 441
    return-void
.end method


# virtual methods
.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .parameter

    .prologue
    .line 655
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotationsShared:Z

    .line 658
    new-instance v1, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->deserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 778
    return-void
.end method

.method public bridge synthetic disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 767
    return-void
.end method

.method public bridge synthetic enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 721
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 730
    :cond_2
    return-object v0
.end method

.method public final getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lorg/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .parameter

    .prologue
    .line 755
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->keyDeserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializer;

    goto :goto_0
.end method

.method protected passSerializationFeatures(I)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .parameter

    .prologue
    .line 474
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 476
    return-object p0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    .line 789
    return-void
.end method

.method public bridge synthetic set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return v0
.end method

.method public valueInstantiatorInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;"
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->valueInstantiatorInstance(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    goto :goto_0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method
