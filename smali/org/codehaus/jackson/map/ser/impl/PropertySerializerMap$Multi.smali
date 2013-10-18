.class final Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "SourceFile"


# instance fields
.field private final _entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 201
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 202
    return-void
.end method


# virtual methods
.method public final newWith(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 4
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
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v0, v0

    .line 221
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 228
    :goto_0
    return-object p0

    .line 225
    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 226
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    new-instance v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-direct {v2, p1, p2}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v2, v1, v0

    .line 228
    new-instance p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;-><init>([Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    goto :goto_0
.end method

.method public final serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
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
    .line 207
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    aget-object v2, v2, v0

    .line 209
    iget-object v3, v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;

    if-ne v3, p1, :cond_0

    .line 210
    iget-object v0, v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 213
    :goto_1
    return-object v0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
