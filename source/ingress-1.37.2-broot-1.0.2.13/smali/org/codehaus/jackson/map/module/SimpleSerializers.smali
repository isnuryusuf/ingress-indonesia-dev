.class public Lorg/codehaus/jackson/map/module/SimpleSerializers;
.super Lorg/codehaus/jackson/map/Serializers$Base;
.source "SourceFile"


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected _interfaceMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Serializers$Base;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 38
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private _addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected _findInterfaceMapping(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/ClassKey;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 194
    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 195
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 196
    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_1
    return-object v0

    .line 199
    :cond_1
    invoke-virtual {p0, v4, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/ClassKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 72
    return-void
.end method

.method public findCollectionLikeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findCollectionSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapLikeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
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
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
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
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 102
    new-instance v3, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v3, v1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 109
    if-eqz v0, :cond_2

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 116
    if-nez v0, :cond_0

    move-object v2, v1

    .line 120
    :goto_1
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/map/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 123
    if-nez v0, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/ClassKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 137
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {p0, v0, v3}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lorg/codehaus/jackson/map/type/ClassKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 145
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
