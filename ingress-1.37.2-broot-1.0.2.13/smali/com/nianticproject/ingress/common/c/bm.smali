.class public final Lcom/nianticproject/ingress/common/c/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/c/ba;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[B

.field private g:[B


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bm;->a:Lcom/nianticproject/ingress/common/c/ba;

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bm;->a:Lcom/nianticproject/ingress/common/c/ba;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sounds/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".smf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b/c;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/c/bm;->a(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "spectrogaph version incompatible for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/nianticproject/ingress/common/c/bm;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    invoke-static {v1}, Lcom/nianticproject/ingress/common/c/bm;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bm;->b:I

    invoke-static {v1}, Lcom/nianticproject/ingress/common/c/bm;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bm;->c:I

    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->c:I

    iget v2, p0, Lcom/nianticproject/ingress/common/c/bm;->b:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bm;->e:I

    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    iget v2, p0, Lcom/nianticproject/ingress/common/c/bm;->e:I

    mul-int/2addr v0, v2

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/nianticproject/ingress/common/c/bm;->f:[B

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bm;->f:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    return-void
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    return v0
.end method

.method public final a(I)[B
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ltz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->c:I

    if-gt p1, v0, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 66
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->b:I

    div-int v0, p1, v0

    .line 67
    iget v1, p0, Lcom/nianticproject/ingress/common/c/bm;->e:I

    if-lt v0, v1, :cond_0

    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bm;->g:[B

    if-nez v1, :cond_1

    .line 72
    iget v1, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/bm;->g:[B

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bm;->f:[B

    iget v3, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bm;->g:[B

    iget v4, p0, Lcom/nianticproject/ingress/common/c/bm;->d:I

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bm;->g:[B

    return-object v0

    :cond_2
    move v0, v2

    .line 64
    goto :goto_0

    :cond_3
    move v1, v2

    .line 65
    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bm;->c:I

    return v0
.end method
