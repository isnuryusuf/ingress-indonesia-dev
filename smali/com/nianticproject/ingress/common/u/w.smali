.class public Lcom/nianticproject/ingress/common/u/w;
.super Lcom/nianticproject/ingress/shared/rpc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/shared/rpc/ab",
        "<",
        "Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Lcom/nianticproject/ingress/shared/handshake/b;


# instance fields
.field private final c:Lcom/nianticproject/ingress/shared/handshake/a;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/w;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/w;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/common/u/x;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/x;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/u/w;->b:Lcom/nianticproject/ingress/shared/handshake/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;

    const-class v1, Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v0

    const-string/jumbo v1, "ignored"

    const-string/jumbo v2, "ignored"

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/ab;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p5, :cond_3

    .line 103
    new-instance v0, Lcom/nianticproject/ingress/shared/handshake/a;

    invoke-interface {p6}, Lcom/nianticproject/ingress/shared/a/b;->a()Lcom/nianticproject/ingress/shared/a/a;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/u/w;->b:Lcom/nianticproject/ingress/shared/handshake/b;

    invoke-direct {v0, p5, v1, v2}, Lcom/nianticproject/ingress/shared/handshake/a;-><init>(Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/a;Lcom/nianticproject/ingress/shared/handshake/b;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/w;->c:Lcom/nianticproject/ingress/shared/handshake/a;

    .line 114
    :goto_0
    new-instance v0, Lcom/google/a/c/di;

    invoke-direct {v0}, Lcom/google/a/c/di;-><init>()V

    .line 115
    const-string/jumbo v1, "nemesisSoftwareVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 116
    const-string/jumbo v1, "deviceSoftwareVersion"

    invoke-virtual {v0, v1, p2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 118
    if-eqz p3, :cond_0

    .line 119
    const-string/jumbo v1, "activationCode"

    invoke-virtual {v0, v1, p3}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 121
    :cond_0
    if-eqz p4, :cond_1

    .line 122
    const-string/jumbo v1, "tosAccepted"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 124
    :cond_1
    if-eqz p5, :cond_2

    .line 125
    const-string/jumbo v1, "a"

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 130
    :cond_2
    :try_start_0
    const-string/jumbo v1, "HandshakeRpcRequest.JacksonUtil.writeValueAsString"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 139
    :try_start_1
    const-string/jumbo v1, "HandshakeRpcRequest.URLEncoder.encode"

    const-string/jumbo v2, "length"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/w;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 145
    return-void

    .line 106
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/w;->c:Lcom/nianticproject/ingress/shared/handshake/a;

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nianticproject/ingress/common/u/w;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    :try_start_0
    const-string/jumbo v0, "HandshakeRpcRequest.encryptAndEncode"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/w;->c:Lcom/nianticproject/ingress/shared/handshake/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 159
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/w;->c:Lcom/nianticproject/ingress/shared/handshake/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/handshake/a;->a()[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 165
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .parameter

    .prologue
    .line 175
    :try_start_0
    const-string/jumbo v0, "HandshakeRpcRequest.buildRequest"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "?json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
