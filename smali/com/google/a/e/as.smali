.class final Lcom/google/a/e/as;
.super Lcom/google/a/e/g;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/a/e/g;-><init>(I)V

    .line 141
    iput p1, p0, Lcom/google/a/e/as;->a:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/e/as;->b:I

    .line 143
    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e/ar;->a(I)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/a/e/as;->a:I

    invoke-static {v1, v0}, Lcom/google/a/e/ar;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/e/as;->a:I

    .line 148
    iget v0, p0, Lcom/google/a/e/as;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/e/as;->b:I

    .line 149
    return-void
.end method

.method public final b()Lcom/google/a/e/u;
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/a/e/as;->a:I

    iget v1, p0, Lcom/google/a/e/as;->b:I

    invoke-static {v0, v1}, Lcom/google/a/e/ar;->b(II)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    iget v1, p0, Lcom/google/a/e/as;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/a/e/as;->b:I

    move v1, v0

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    xor-int/2addr v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 157
    :cond_0
    iget v0, p0, Lcom/google/a/e/as;->a:I

    invoke-static {v1}, Lcom/google/a/e/ar;->a(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/e/as;->a:I

    .line 158
    return-void
.end method
