.class public final Lcom/b/a/a/a/a/c;
.super Lcom/b/a/a/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a/a/a/a",
        "<",
        "Lcom/google/a/c/cn",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/a/a/a;-><init>(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 15
    iget-object v1, p0, Lcom/b/a/a/a/a/c;->b:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v2, p0, Lcom/b/a/a/a/a/c;->c:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-static {}, Lcom/google/a/c/cn;->f()Lcom/google/a/c/cn;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/a/c/cn;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, p2, v2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object v3
.end method
