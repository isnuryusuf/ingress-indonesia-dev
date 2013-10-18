.class public final La/a/a/a/b/bw;
.super La/a/a/a/b/v;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/RandomAccess;


# instance fields
.field protected transient a:[J

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x10

    invoke-direct {p0, v0}, La/a/a/a/b/bw;-><init>(I)V

    .line 103
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, La/a/a/a/b/v;-><init>()V

    .line 96
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Initial capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, La/a/a/a/b/bw;->a:[J

    .line 98
    return-void
.end method

.method private h(I)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    iget v1, p0, La/a/a/a/b/bw;->b:I

    invoke-static {v0, p1, v1}, La/a/a/a/b/by;->a([JII)[J

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/bw;->a:[J

    .line 207
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0, p1}, La/a/a/a/b/bw;->a(I)V

    .line 210
    iget v0, p0, La/a/a/a/b/bw;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, La/a/a/a/b/bw;->h(I)V

    .line 211
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, La/a/a/a/b/bw;->b:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    aput-wide p2, v0, p1

    .line 213
    iget v0, p0, La/a/a/a/b/bw;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/bw;->b:I

    .line 215
    return-void
.end method

.method public final b(J)I
    .locals 3
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/a/a/a/b/bw;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 228
    :goto_1
    return v0

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final b(IJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 250
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than or equal to list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/a/a/a/b/bw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    aget-wide v0, v0, p1

    .line 252
    iget-object v2, p0, La/a/a/a/b/bw;->a:[J

    aput-wide p2, v2, p1

    .line 253
    return-wide v0
.end method

.method public final b(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 317
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than end index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p2, v0, :cond_2

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "End index ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is greater than array length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_2
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    iget v2, p0, La/a/a/a/b/bw;->b:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v0, p0, La/a/a/a/b/bw;->b:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/bw;->b:I

    .line 320
    return-void
.end method

.method public final c(J)I
    .locals 3
    .parameter

    .prologue
    .line 231
    iget v0, p0, La/a/a/a/b/bw;->b:I

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 232
    :goto_1
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final c(I)J
    .locals 6
    .parameter

    .prologue
    .line 235
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than or equal to list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/a/a/a/b/bw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    aget-wide v0, v0, p1

    .line 237
    iget v2, p0, La/a/a/a/b/bw;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/a/a/b/bw;->b:I

    .line 238
    iget v2, p0, La/a/a/a/b/bw;->b:I

    if-eq p1, v2, :cond_1

    iget-object v2, p0, La/a/a/a/b/bw;->a:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, La/a/a/a/b/bw;->a:[J

    iget v5, p0, La/a/a/a/b/bw;->b:I

    sub-int/2addr v5, p1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_1
    return-wide v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/bw;->b:I

    .line 258
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v0, La/a/a/a/b/bw;

    iget v1, p0, La/a/a/a/b/bw;->b:I

    invoke-direct {v0, v1}, La/a/a/a/b/bw;-><init>(I)V

    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    iget-object v2, v0, La/a/a/a/b/bw;->a:[J

    iget v3, p0, La/a/a/a/b/bw;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/a/a/a/b/bw;->b:I

    iput v1, v0, La/a/a/a/b/bw;->b:I

    return-object v0
.end method

.method public final d(I)La/a/a/a/b/ci;
    .locals 1
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0, p1}, La/a/a/a/b/bw;->a(I)V

    .line 366
    new-instance v0, La/a/a/a/b/bx;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/bx;-><init>(La/a/a/a/b/bw;I)V

    return-object v0
.end method

.method public final d(J)Z
    .locals 3
    .parameter

    .prologue
    .line 217
    iget v0, p0, La/a/a/a/b/bw;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, La/a/a/a/b/bw;->h(I)V

    .line 218
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    iget v1, p0, La/a/a/a/b/bw;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/bw;->b:I

    aput-wide p1, v0, v1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Z
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/bw;->b(J)I

    move-result v0

    .line 244
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-virtual {p0, v0}, La/a/a/a/b/bw;->c(I)J

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    iget v0, p0, La/a/a/a/b/bw;->b:I

    new-array v0, v0, [J

    .line 338
    iget-object v1, p0, La/a/a/a/b/bw;->a:[J

    iget v2, p0, La/a/a/a/b/bw;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    return-object v0
.end method

.method public final g(I)J
    .locals 3
    .parameter

    .prologue
    .line 223
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than or equal to list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/a/a/a/b/bw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bw;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, La/a/a/a/b/bw;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, La/a/a/a/b/bw;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, La/a/a/a/b/bw;->b:I

    return v0
.end method
