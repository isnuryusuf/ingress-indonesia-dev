.class final Lcom/nianticproject/ingress/common/n/d;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/n/c;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/n/c;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/d;->a:Lcom/nianticproject/ingress/common/n/c;

    .line 297
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/n/c;Ljava/io/OutputStream;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/n/d;-><init>(Lcom/nianticproject/ingress/common/n/c;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->a:Lcom/nianticproject/ingress/common/n/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/c;->a(Lcom/nianticproject/ingress/common/n/c;)Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->a:Lcom/nianticproject/ingress/common/n/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/c;->a(Lcom/nianticproject/ingress/common/n/c;)Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 1
    .parameter

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->a:Lcom/nianticproject/ingress/common/n/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/c;->a(Lcom/nianticproject/ingress/common/n/c;)Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/d;->a:Lcom/nianticproject/ingress/common/n/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/c;->a(Lcom/nianticproject/ingress/common/n/c;)Z

    goto :goto_0
.end method
