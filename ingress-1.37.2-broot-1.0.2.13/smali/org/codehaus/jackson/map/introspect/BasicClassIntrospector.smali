.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;
.super Lorg/codehaus/jackson/map/ClassIntrospector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ClassIntrospector",
        "<",
        "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BOOLEAN_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field public static final DEFAULT_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SETTER_AND_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final INT_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected static final LONG_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected static final MINIMAL_FILTER:Lorg/codehaus/jackson/map/introspect/MethodFilter;

.field protected static final STRING_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field public static final instance:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 29
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->STRING_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 39
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->INT_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 43
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->LONG_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 55
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>(Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    .line 62
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->DEFAULT_SETTER_AND_GETTER_FILTER:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 71
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;-><init>(Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lorg/codehaus/jackson/map/introspect/MethodFilter;

    .line 79
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _findCachedDesc(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 2
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 200
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 201
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->STRING_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 212
    :goto_0
    return-object v0

    .line 203
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 204
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    goto :goto_0

    .line 206
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 207
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->INT_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    goto :goto_0

    .line 209
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 210
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->LONG_DESC:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public classWithCreators(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    .line 183
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v2, v0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 185
    sget-object v1, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lorg/codehaus/jackson/map/introspect/MethodFilter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveCreators(Z)V

    .line 188
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectProperties(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            "Z)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->classWithCreators(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 158
    sget-object v1, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->MINIMAL_FILTER:Lorg/codehaus/jackson/map/introspect/MethodFilter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;)V

    .line 159
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveFields()V

    .line 160
    invoke-virtual {p0, p1, v0, p2, p4}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->constructPropertyCollector(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->collect()Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object v0

    return-object v0
.end method

.method protected constructPropertyCollector(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    invoke-direct {v0, p1, p4, p3, p2}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;-><init>(Lorg/codehaus/jackson/map/MapperConfig;ZLorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v0
.end method

.method public bridge synthetic forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    .line 129
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v2, v0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 131
    invoke-static {p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forOtherUse(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forDeserialization(Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forDeserialization(Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public bridge synthetic forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->_findCachedDesc(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->collectProperties(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;Z)Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->forSerialization(Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method
