.class public final Lcom/nianticproject/ingress/shared/rpc/ag;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->b:Z

    .line 22
    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 28
    sget-object v1, Lcom/google/a/a/w;->c:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->b:Z

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "...[truncated]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 39
    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->b:Z

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 41
    if-gt v1, v0, :cond_0

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->b:Z

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/ag;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 46
    :cond_1
    return v0
.end method
