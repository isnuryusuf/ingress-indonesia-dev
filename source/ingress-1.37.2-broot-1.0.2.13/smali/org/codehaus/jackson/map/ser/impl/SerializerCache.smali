.class public final Lorg/codehaus/jackson/map/ser/impl/SerializerCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field private _sharedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 42
    return-void
.end method


# virtual methods
.method public final addAndResolveNonTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 158
    :cond_0
    instance-of v0, p2, Lorg/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 159
    check-cast p2, Lorg/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {p2, p3}, Lorg/codehaus/jackson/map/ResolvableSerializer;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 161
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addAndResolveNonTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lorg/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 183
    :cond_0
    instance-of v0, p2, Lorg/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 184
    check-cast p2, Lorg/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {p2, p3}, Lorg/codehaus/jackson/map/ResolvableSerializer;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 186
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 136
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lorg/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 126
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReadOnlyLookupMap()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 53
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->from(Ljava/util/HashMap;)Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->instance()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final typedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final typedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lorg/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lorg/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
