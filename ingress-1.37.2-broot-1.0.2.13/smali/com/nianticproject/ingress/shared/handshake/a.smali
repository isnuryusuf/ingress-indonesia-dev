.class public final Lcom/nianticproject/ingress/shared/handshake/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/Random;


# instance fields
.field private final c:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

.field private final d:Lcom/nianticproject/ingress/shared/handshake/b;

.field private final e:Lcom/nianticproject/ingress/shared/a/a;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/nianticproject/ingress/shared/handshake/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/handshake/a;->a:Ljava/util/logging/Logger;

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/nianticproject/ingress/shared/handshake/a;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/a;Lcom/nianticproject/ingress/shared/handshake/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->c:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    .line 57
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/handshake/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->d:Lcom/nianticproject/ingress/shared/handshake/b;

    .line 58
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/a/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->e:Lcom/nianticproject/ingress/shared/a/a;

    .line 59
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    :try_start_0
    const-string/jumbo v1, "DeviceInfoEncryptor.salt"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 95
    :try_start_2
    array-length v1, v3

    div-int/lit16 v2, v1, 0xfc

    .line 96
    array-length v1, v3

    rem-int/lit16 v4, v1, 0xfc

    .line 97
    mul-int/lit16 v1, v2, 0x100

    .line 98
    if-lez v4, :cond_0

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    add-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    .line 102
    :cond_0
    new-array v4, v1, [B

    .line 106
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 107
    :goto_0
    if-ge v0, v2, :cond_1

    .line 108
    sget-object v6, Lcom/nianticproject/ingress/shared/handshake/a;->b:Ljava/util/Random;

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 109
    const/4 v6, 0x0

    mul-int/lit16 v7, v0, 0x100

    const/4 v8, 0x4

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/lit8 v1, v1, -0x4

    .line 116
    const/16 v6, 0xfc

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 117
    mul-int/lit16 v7, v0, 0xfc

    mul-int/lit16 v8, v0, 0x100

    add-int/lit8 v8, v8, 0x4

    invoke-static {v3, v7, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    sub-int/2addr v1, v6

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    sget-object v1, Lcom/nianticproject/ingress/shared/handshake/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v4
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .prologue
    .line 70
    :try_start_0
    const-string/jumbo v0, "DeviceInfoEncryptor.encrypt"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->f:[B

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->d:Lcom/nianticproject/ingress/shared/handshake/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/a;->c:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/shared/handshake/b;->a(Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/handshake/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/a;->e:Lcom/nianticproject/ingress/shared/a/a;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/shared/a/a;->a([B)[B

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->f:[B

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/a;->f:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
