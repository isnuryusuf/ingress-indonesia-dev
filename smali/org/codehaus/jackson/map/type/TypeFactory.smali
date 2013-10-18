.class public final Lorg/codehaus/jackson/map/type/TypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

.field public static final instance:Lorg/codehaus/jackson/map/type/TypeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected _cachedArrayListType:Lorg/codehaus/jackson/map/type/HierarchicType;

.field protected _cachedHashMapType:Lorg/codehaus/jackson/map/type/HierarchicType;

.field protected final _modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

.field protected final _parser:Lorg/codehaus/jackson/map/type/TypeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/TypeParser;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    .line 96
    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 1009
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    .line 1018
    :goto_0
    return-object v0

    .line 1015
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Strange Collection type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_0
.end method

.method private _mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 995
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 997
    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1002
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Strange Map type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    goto :goto_0
.end method

.method public static defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public static fromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 218
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public static unknownType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final declared-synchronized _arrayListSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 2
    .parameter

    .prologue
    .line 1155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lorg/codehaus/jackson/map/type/HierarchicType;

    if-nez v0, :cond_0

    .line 1156
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1157
    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 1158
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 1160
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1161
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1162
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    monitor-exit p0

    return-object p1

    .line 1155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final _constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 475
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 476
    check-cast v0, Ljava/lang/Class;

    .line 480
    if-nez p2, :cond_0

    .line 481
    new-instance p2, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {p2, p0, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 483
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 505
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v1

    if-nez v1, :cond_6

    .line 506
    iget-object v3, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lorg/codehaus/jackson/map/type/TypeModifier;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v2, v3, v1

    .line 507
    invoke-virtual {v2, v0, p1, p2, p0}, Lorg/codehaus/jackson/map/type/TypeModifier;->modifyType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 506
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 486
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 487
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 490
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 493
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 496
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unrecognized Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_6
    return-object v0
.end method

.method protected final _doFindSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/HierarchicType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1117
    if-eqz v2, :cond_1

    .line 1118
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1119
    invoke-virtual {p0, v4, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v4

    .line 1120
    if-eqz v4, :cond_0

    .line 1121
    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1122
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1137
    :goto_1
    return-object p1

    .line 1118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1129
    if-eqz v0, :cond_2

    .line 1130
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_2

    .line 1132
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1133
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_1

    .line 1137
    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method

.method protected final _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1069
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1070
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1071
    if-ne v1, p2, :cond_0

    .line 1084
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1076
    if-eqz v1, :cond_1

    .line 1077
    invoke-virtual {p0, v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 1078
    if-eqz v1, :cond_1

    .line 1079
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1080
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1084
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1090
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1091
    if-ne v1, p2, :cond_0

    .line 1092
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1108
    :goto_0
    return-object v0

    .line 1098
    :cond_0
    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_1

    .line 1099
    const-class v2, Ljava/util/Map;

    if-ne p2, v2, :cond_1

    .line 1100
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_hashMapSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0

    .line 1103
    :cond_1
    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_2

    .line 1104
    const-class v1, Ljava/util/List;

    if-ne p2, v1, :cond_2

    .line 1105
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_arrayListSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0

    .line 1108
    :cond_2
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 1061
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1064
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 935
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 936
    invoke-static {v0, v1, v1}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method protected final _fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 821
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    .line 827
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 834
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected final _fromParamType(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 894
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 895
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 896
    if-nez v5, :cond_1

    move v4, v3

    .line 900
    :goto_0
    if-nez v4, :cond_2

    .line 901
    sget-object v1, Lorg/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lorg/codehaus/jackson/type/JavaType;

    .line 910
    :cond_0
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 911
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 912
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 913
    array-length v2, v1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 914
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not find 2 type parameters for Map class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    :cond_1
    array-length v1, v5

    move v4, v1

    goto :goto_0

    .line 903
    :cond_2
    new-array v1, v4, [Lorg/codehaus/jackson/type/JavaType;

    move v2, v3

    .line 904
    :goto_1
    if-ge v2, v4, :cond_0

    .line 905
    aget-object v6, v5, v2

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    aput-object v6, v1, v2

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    :cond_3
    aget-object v2, v1, v3

    aget-object v1, v1, v7

    invoke-static {v0, v2, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .line 929
    :goto_2
    return-object v0

    .line 918
    :cond_4
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 919
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 920
    const-class v2, Ljava/util/Collection;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 921
    array-length v2, v1

    if-eq v2, v7, :cond_5

    .line 922
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not find 1 type parameter for Collection class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    :cond_5
    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_2

    .line 926
    :cond_6
    if-nez v4, :cond_7

    .line 927
    new-instance v1, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_2

    .line 929
    :cond_7
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_2
.end method

.method protected final _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 849
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    .line 852
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 855
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 858
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 859
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    .line 860
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/type/JavaType;

    .line 862
    :goto_1
    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    goto :goto_1

    .line 864
    :cond_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 866
    :cond_4
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 867
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 868
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_0

    .line 870
    :cond_5
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 872
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 873
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 875
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/type/JavaType;

    .line 876
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _fromVariable(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 945
    if-nez p2, :cond_1

    .line 946
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 977
    :cond_0
    :goto_0
    return-object v0

    .line 950
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->findType(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 952
    if-nez v0, :cond_0

    .line 961
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 976
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 977
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _fromWildcard(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 990
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected final declared-synchronized _hashMapSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 2
    .parameter

    .prologue
    .line 1142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lorg/codehaus/jackson/map/type/HierarchicType;

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1144
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lorg/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 1145
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lorg/codehaus/jackson/map/type/HierarchicType;

    .line 1147
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1148
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1149
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/HierarchicType;->setSubType(Lorg/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-object p1

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final _unknownType()Lorg/codehaus/jackson/type/JavaType;
    .locals 2

    .prologue
    .line 1043
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final constructFromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->_parser:Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeParser;->parse(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final constructSimpleType(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 640
    array-length v0, v1

    array-length v2, p2

    if-eq v0, v2, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parameter type mismatch for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameters, was given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 645
    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 646
    aget-object v5, v1, v0

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    return-object v0
.end method

.method public final constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 312
    instance-of v0, p1, Lorg/codehaus/jackson/map/type/SimpleType;

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 329
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 337
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public final constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object p3, v1

    .line 412
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 415
    new-instance v1, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v1, p0, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 416
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    .line 418
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 419
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 420
    array-length v5, v3

    .line 421
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 422
    aget-object v6, v4, v2

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    .line 423
    sget-object v7, Lorg/codehaus/jackson/map/type/TypeFactory;->instance:Lorg/codehaus/jackson/map/type/TypeFactory;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 424
    invoke-virtual {v1, v6, v7}, Lorg/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_3

    .line 432
    const/4 v0, 0x0

    .line 434
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/type/TypeBindings;->typesAsArray()[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_1
.end method

.method public final findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 379
    if-ne v0, p2, :cond_2

    .line 381
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v2

    .line 382
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 383
    :cond_1
    new-array v0, v2, [Lorg/codehaus/jackson/type/JavaType;

    .line 384
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 385
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/type/JavaType;->containedType(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    aput-object v3, v0, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :cond_2
    new-instance v1, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v1, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public final uncheckedSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
