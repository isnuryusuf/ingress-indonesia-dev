.class public final Lcom/nianticproject/ingress/common/q/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/b/c;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/b/o;

.field private final b:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/q/b/o;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    .line 70
    iput-object p2, p0, Lcom/nianticproject/ingress/common/q/b/i;->b:Lorg/apache/http/client/HttpClient;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/q/b/o;Lorg/apache/http/client/HttpClient;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/q/b/i;-><init>(Lcom/nianticproject/ingress/common/q/b/o;Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/q/b/h;Lcom/nianticproject/ingress/common/q/b/j;Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/q/b/h;",
            "Lcom/nianticproject/ingress/common/q/b/j;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/e;",
            ">;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/q/b/h;->a(Ljava/io/DataOutput;)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p2, v1}, Lcom/nianticproject/ingress/common/q/b/j;->a(Ljava/io/DataOutput;)V

    .line 124
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/e;

    .line 125
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/q/b/e;->a(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 128
    return-void
.end method

.method private static a(Lorg/apache/http/HttpEntity;Lcom/nianticproject/ingress/common/q/b/h;Lcom/nianticproject/ingress/common/q/b/j;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/nianticproject/ingress/common/q/b/h;",
            "Lcom/nianticproject/ingress/common/q/b/j;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/io/DataInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 154
    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid protocol version in response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/q/b/h;->a(Ljava/io/DataInput;)V

    .line 160
    if-eqz p2, :cond_1

    .line 161
    invoke-virtual {p2, v1}, Lcom/nianticproject/ingress/common/q/b/j;->a(Ljava/io/DataInput;)V

    .line 164
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/e;

    .line 165
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/q/b/e;->a(Ljava/io/DataInput;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 168
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    .line 76
    :try_start_0
    const-string/jumbo v0, "GMMDataLoader.processRequests"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    new-instance v12, Lcom/nianticproject/ingress/common/q/b/h;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-direct {v12, v0}, Lcom/nianticproject/ingress/common/q/b/h;-><init>(Lcom/nianticproject/ingress/common/q/b/o;)V

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/o;->h()J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-nez v0, :cond_3

    new-instance v0, Lcom/nianticproject/ingress/common/q/b/j;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/q/b/j;-><init>(B)V

    move-object v11, v0

    .line 80
    :goto_0
    invoke-direct {p0, v12, v11, p1, v1}, Lcom/nianticproject/ingress/common/q/b/i;->a(Lcom/nianticproject/ingress/common/q/b/h;Lcom/nianticproject/ingress/common/q/b/j;Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;)V

    .line 82
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/q/b/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/binary"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 87
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/b/i;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 89
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    int-to-long v3, v0

    .line 91
    :goto_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 93
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    .line 95
    const-string/jumbo v0, "GMMDataLoader"

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;JJJJ)V

    .line 98
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v12, v11, p1}, Lcom/nianticproject/ingress/common/q/b/i;->a(Lorg/apache/http/HttpEntity;Lcom/nianticproject/ingress/common/q/b/h;Lcom/nianticproject/ingress/common/q/b/j;Ljava/util/ArrayList;)V

    .line 100
    :cond_0
    if-eqz v11, :cond_1

    invoke-static {v11}, Lcom/nianticproject/ingress/common/q/b/j;->a(Lcom/nianticproject/ingress/common/q/b/j;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-static {v11}, Lcom/nianticproject/ingress/common/q/b/j;->a(Lcom/nianticproject/ingress/common/q/b/j;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/b/o;->a(J)V

    .line 104
    :cond_1
    invoke-virtual {v12}, Lcom/nianticproject/ingress/common/q/b/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/i;->a:Lcom/nianticproject/ingress/common/q/b/o;

    invoke-virtual {v12}, Lcom/nianticproject/ingress/common/q/b/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/q/b/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 109
    return-void

    .line 79
    :cond_3
    const/4 v0, 0x0

    move-object v11, v0

    goto/16 :goto_0

    :cond_4
    move-wide v3, v9

    .line 89
    goto :goto_1

    :cond_5
    move-wide v5, v9

    .line 91
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
