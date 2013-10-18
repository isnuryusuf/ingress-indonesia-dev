.class final Lcom/google/a/e/w;
.super Lcom/google/a/e/u;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:[B


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/a/e/u;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/a/e/w;->a:[B

    .line 149
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/a/e/w;->a:[B

    array-length v0, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/a/e/w;->a:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/a/e/w;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/google/a/e/w;->a:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/e/w;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/e/w;->a:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/a/e/w;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/a/e/w;->a:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/google/a/e/w;->a()I

    move-result v1

    .line 195
    :cond_0
    return v1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/a/e/w;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 192
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/a/e/w;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/google/a/e/w;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
