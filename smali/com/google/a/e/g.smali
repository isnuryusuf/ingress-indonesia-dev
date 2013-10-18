.class public abstract Lcom/google/a/e/g;
.super Lcom/google/a/e/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1, p1}, Lcom/google/a/e/g;-><init>(II)V

    .line 104
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/a/e/b;-><init>()V

    .line 117
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 120
    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    .line 123
    iput p2, p0, Lcom/google/a/e/g;->b:I

    .line 124
    iput p1, p0, Lcom/google/a/e/g;->c:I

    .line 125
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/google/a/e/g;->d()V

    .line 262
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/a/e/g;->c:I

    if-lt v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/a/e/g;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 272
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/u;
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/a/e/g;->d()V

    .line 247
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 248
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/a/e/g;->b(Ljava/nio/ByteBuffer;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/e/g;->b()Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public final b([B)Lcom/google/a/e/aa;
    .locals 2
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/e/g;->b([BII)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method

.method public final b([BII)Lcom/google/a/e/aa;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/a/e/g;->c()V

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/a/e/g;->b:I

    iget-object v2, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/a/e/g;->d()V

    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, p0, Lcom/google/a/e/g;->c:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/a/e/g;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final synthetic b(B)Lcom/google/a/e/at;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/a/e/g;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/a/e/g;->c()V

    return-object p0
.end method

.method abstract b()Lcom/google/a/e/u;
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget v0, p0, Lcom/google/a/e/g;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/a/e/g;->c:I

    if-ge v0, v1, :cond_0

    .line 144
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lcom/google/a/e/g;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/a/e/g;->a(Ljava/nio/ByteBuffer;)V

    .line 149
    return-void
.end method

.method public final synthetic c([B)Lcom/google/a/e/at;
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/a/e/g;->b([B)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/a/e/at;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/a/e/g;->b([BII)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method
