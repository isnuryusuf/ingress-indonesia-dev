.class public final Lcom/b/a/a/a/a/e;
.super Lcom/b/a/a/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a/a/a/b",
        "<",
        "Lcom/google/a/c/dh",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/a/a/a/b;-><init>(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 16
    iget-object v2, p0, Lcom/b/a/a/a/a/e;->b:Lorg/codehaus/jackson/map/KeyDeserializer;

    iget-object v3, p0, Lcom/b/a/a/a/a/e;->c:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v4, p0, Lcom/b/a/a/a/a/e;->d:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v5

    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_0

    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v6, :cond_1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5, v0, v1}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0, p2}, Lorg/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p1, p2, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method
