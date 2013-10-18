.class public final Lcom/nianticproject/ingress/common/q/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/b/f;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/n/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/n/a;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/l;->a:Lcom/nianticproject/ingress/common/n/a;

    .line 35
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 130
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 131
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private static b(Lcom/nianticproject/ingress/common/q/c;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/c;->d()J

    move-result-wide v0

    const-wide v2, 0x5a5a5a5a5a5a5a5aL

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/q/c;)Lcom/nianticproject/ingress/common/q/d;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/l;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/l;->b(Lcom/nianticproject/ingress/common/q/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/n/a;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/n/f;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-object v1

    .line 46
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/n/f;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 49
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    invoke-static {v2, v4}, Lcom/nianticproject/ingress/common/q/b/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/q/d;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, p1, v3, v2}, Lcom/nianticproject/ingress/common/q/d;-><init>(Lcom/nianticproject/ingress/common/q/c;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 56
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 54
    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/q/c;Lcom/nianticproject/ingress/common/q/d;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/l;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/l;->b(Lcom/nianticproject/ingress/common/q/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nianticproject/ingress/common/n/a;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/n/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 65
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/q/d;->b()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/n/c;->a()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/q/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    invoke-static {v4, v1}, Lcom/nianticproject/ingress/common/q/b/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :goto_0
    if-eqz v3, :cond_0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    :try_start_5
    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/n/c;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 74
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 75
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 80
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 79
    :goto_3
    const/4 v0, 0x1

    move-object v3, v2

    goto :goto_0

    .line 87
    :cond_2
    :try_start_7
    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/n/c;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    goto :goto_3

    .line 74
    :catchall_1
    move-exception v0

    goto :goto_2
.end method
