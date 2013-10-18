.class public Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _buckets:[Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->findSize(I)I

    move-result v0

    .line 22
    iput v0, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_size:I

    .line 23
    add-int/lit8 v2, v0, -0x1

    .line 24
    new-array v3, v0, [Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 27
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v5

    and-int/2addr v5, v2

    .line 28
    new-instance v6, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    aget-object v7, v3, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v6, v7, v1, v0}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;-><init>(Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v6, v3, v5

    goto :goto_0

    .line 30
    :cond_0
    iput-object v3, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 31
    return-void
.end method

.method private static final findSize(I)I
    .locals 2
    .parameter

    .prologue
    .line 36
    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    add-int v0, p0, p0

    .line 37
    :goto_0
    const/16 v1, 0x8

    .line 38
    :goto_1
    if-ge v1, v0, :cond_1

    .line 39
    add-int/2addr v1, v1

    goto :goto_1

    .line 36
    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method


# virtual methods
.method public find(Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v0

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 55
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    aget-object v0, v2, v0

    .line 60
    if-nez v0, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->next:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 67
    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 71
    goto :goto_0
.end method
