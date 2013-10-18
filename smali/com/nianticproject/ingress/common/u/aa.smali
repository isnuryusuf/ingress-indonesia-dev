.class public final Lcom/nianticproject/ingress/common/u/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/rpc/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/shared/rpc/ah",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<TR;TE;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Lorg/codehaus/jackson/JsonFactory;


# instance fields
.field private final c:Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/aa;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 40
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    sput-object v0, Lcom/nianticproject/ingress/common/u/aa;->b:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TR;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->c:Lorg/codehaus/jackson/type/TypeReference;

    .line 62
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/aa;->d:Ljava/lang/Class;

    .line 63
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/aa;->e:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TR;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v0, "resultType"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/TypeReference;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->c:Lorg/codehaus/jackson/type/TypeReference;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->d:Ljava/lang/Class;

    .line 81
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/aa;->e:Ljava/lang/Class;

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/nianticproject/ingress/common/u/aa",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/u/aa;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/u/aa;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TR;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/nianticproject/ingress/common/u/aa",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/nianticproject/ingress/common/u/aa;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/u/aa;-><init>(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)V

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    :try_start_0
    const-string/jumbo v0, "JacksonSerializer.fromJson"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/u/aa;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 93
    :try_start_2
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_1

    .line 94
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parse error: expected START_OBJECT, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :goto_0
    :try_start_3
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    :goto_1
    if-eqz v1, :cond_0

    .line 144
    :try_start_4
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 148
    :cond_0
    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 100
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_3
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v6, :cond_a

    .line 101
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    .line 103
    :try_start_7
    const-string/jumbo v6, "ParseFields."

    invoke-static {v6, v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 105
    const-string/jumbo v6, "result"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->c:Lorg/codehaus/jackson/type/TypeReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->c:Lorg/codehaus/jackson/type/TypeReference;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    :goto_4
    move-object v5, v0

    .line 116
    :cond_2
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 100
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v0

    goto :goto_3

    .line 106
    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->d:Ljava/lang/Class;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->d:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v2, "Payload contains result but no type is specified"

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 116
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    :goto_6
    :try_start_b
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 107
    :cond_5
    :try_start_c
    const-string/jumbo v6, "error"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->e:Ljava/lang/Class;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->e:Ljava/lang/Class;

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aa;->e:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v2, "Payload contains error but no type is specified"

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7
    const-string/jumbo v6, "sideChannelCollector"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "gameBasket"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 111
    :cond_8
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-object v3, v0

    goto :goto_5

    .line 112
    :cond_9
    const-string/jumbo v6, "exception"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-class v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v2, v0

    goto :goto_5

    .line 124
    :cond_a
    :try_start_d
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_b

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_b

    .line 125
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parse error: expected END_OBJECT, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_b
    if-nez v4, :cond_d

    if-nez v2, :cond_d

    .line 129
    invoke-static {v5, v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v0

    .line 143
    if-eqz v1, :cond_c

    .line 144
    :try_start_e
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 151
    :cond_c
    :goto_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_8
    return-object v0

    .line 146
    :catch_2
    move-exception v1

    .line 147
    :try_start_f
    sget-object v2, Lcom/nianticproject/ingress/common/u/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while closing JsonParser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_7

    .line 130
    :cond_d
    if-nez v5, :cond_e

    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    .line 131
    :cond_e
    :try_start_10
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v2, "Ambiguous RPC, doesn\'t contain unique RESULT, ERROR, or EXCEPTION"

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_f
    if-eqz v2, :cond_11

    .line 133
    invoke-static {v2, v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v0

    .line 143
    if-eqz v1, :cond_10

    .line 144
    :try_start_11
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 151
    :cond_10
    :goto_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_8

    .line 146
    :catch_3
    move-exception v1

    .line 147
    :try_start_12
    sget-object v2, Lcom/nianticproject/ingress/common/u/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while closing JsonParser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_9

    .line 135
    :cond_11
    :try_start_13
    invoke-static {v4, v3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    move-result-object v0

    .line 143
    if-eqz v1, :cond_12

    .line 144
    :try_start_14
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    .line 151
    :cond_12
    :goto_a
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_8

    .line 146
    :catch_4
    move-exception v1

    .line 147
    :try_start_15
    sget-object v2, Lcom/nianticproject/ingress/common/u/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while closing JsonParser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_a

    .line 146
    :catch_5
    move-exception v1

    .line 147
    sget-object v2, Lcom/nianticproject/ingress/common/u/aa;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while closing JsonParser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    .line 142
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    .line 139
    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    .line 137
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 195
    new-instance v0, Lorg/codehaus/jackson/io/SegmentedStringWriter;

    sget-object v1, Lcom/nianticproject/ingress/common/u/aa;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 197
    :try_start_0
    sget-object v1, Lcom/nianticproject/ingress/common/u/aa;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 199
    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, p0}, Lorg/codehaus/jackson/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 201
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/u/aa;->b(Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 158
    :try_start_0
    const-string/jumbo v0, "JacksonSerializer.constructPayloadFromNamedParams"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/aa;->b(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "JacksonSerializer.constructPayloadFromUnnamedParams"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/aa;->b(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
