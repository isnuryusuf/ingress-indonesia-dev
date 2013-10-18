.class final Lcom/nianticproject/ingress/common/u/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/handshake/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 52
    :try_start_0
    const-string/jumbo v0, "HandshakeRpcRequest.DeviceInfoJsonConverter.toJson"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 63
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/common/u/w;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v2

    const-string/jumbo v3, "Exception while flattening DeviceInfo"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
