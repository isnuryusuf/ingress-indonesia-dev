.class public abstract La/a/a/a/b/v;
.super La/a/a/a/b/t;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ch;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, La/a/a/a/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 288
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 310
    :goto_0
    return v0

    .line 290
    :cond_0
    instance-of v0, p1, La/a/a/a/b/ch;

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {p0, v1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v4

    check-cast p1, La/a/a/a/b/ch;

    invoke-interface {p1}, La/a/a/a/b/ch;->b()La/a/a/a/b/ci;

    move-result-object v5

    .line 296
    :cond_1
    invoke-interface {v4}, La/a/a/a/b/ci;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, La/a/a/a/b/ci;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    invoke-interface {v4}, La/a/a/a/b/ci;->a()J

    move-result-wide v6

    .line 298
    invoke-interface {v5}, La/a/a/a/b/ci;->a()J

    move-result-wide v8

    .line 299
    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1

    .line 301
    :cond_4
    invoke-interface {v5}, La/a/a/a/b/ci;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v4}, La/a/a/a/b/ci;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 304
    :cond_7
    invoke-virtual {p0, v1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 307
    :cond_8
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 310
    :cond_9
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method public synthetic a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public a(II)La/a/a/a/b/ch;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->a(I)V

    .line 176
    invoke-virtual {p0, p2}, La/a/a/a/b/v;->a(I)V

    .line 177
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

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

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, La/a/a/a/b/x;

    invoke-direct {v0, p0, p1, p2}, La/a/a/a/b/x;-><init>(La/a/a/a/b/ch;II)V

    return-object v0
.end method

.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 60
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(ILjava/lang/Long;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, La/a/a/a/b/v;->a(IJ)V

    .line 382
    return-void
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/v;->b(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/v;->a(ILjava/lang/Long;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->a(I)V

    .line 87
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 88
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 90
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, p1, v0}, La/a/a/a/b/v;->a(ILjava/lang/Long;)V

    move v0, v1

    move p1, v2

    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, La/a/a/a/b/v;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(J)I
    .locals 3
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    .line 150
    :cond_0
    invoke-interface {v0}, La/a/a/a/b/ci;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v0}, La/a/a/a/b/ci;->a()J

    move-result-wide v1

    .line 152
    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, La/a/a/a/b/ci;->previousIndex()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(IJ)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()La/a/a/a/b/ci;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, La/a/a/a/b/v;->b(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 69
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than or equal to list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0, p2}, La/a/a/a/b/v;->a(I)V

    .line 201
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v2

    .line 202
    sub-int v0, p2, p1

    .line 203
    if-gez v0, :cond_0

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

    .line 204
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v2}, La/a/a/a/b/ci;->a()J

    .line 206
    invoke-interface {v2}, La/a/a/a/b/ci;->remove()V

    move v0, v1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method public c(J)I
    .locals 3
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    .line 160
    :cond_0
    invoke-interface {v0}, La/a/a/a/b/ci;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v0}, La/a/a/a/b/ci;->b()J

    move-result-wide v1

    .line 162
    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, La/a/a/a/b/ci;->nextIndex()I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(I)J
    .locals 1
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, La/a/a/a/b/v;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public d(I)La/a/a/a/b/ci;
    .locals 1
    .parameter

    .prologue
    .line 114
    new-instance v0, La/a/a/a/b/w;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/w;-><init>(La/a/a/a/b/v;I)V

    return-object v0
.end method

.method public d(J)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, La/a/a/a/b/v;->a(IJ)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final e(I)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->g(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Z
    .locals 2
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/v;->b(J)I

    move-result v0

    .line 351
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-virtual {p0, v0}, La/a/a/a/b/v;->c(I)J

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    if-ne p1, p0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 260
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 261
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v2

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p0, v1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 269
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_5

    if-nez v6, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public final f(I)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->e(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v3

    .line 320
    const/4 v1, 0x1

    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v0

    move v2, v1

    .line 321
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v3}, La/a/a/a/b/ce;->a()J

    move-result-wide v4

    .line 323
    mul-int/lit8 v0, v2, 0x1f

    invoke-static {v4, v5}, La/a/a/a/e;->b(J)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 324
    goto :goto_0

    .line 325
    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 396
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/v;->b(J)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/v;->c(J)I

    move-result v0

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, La/a/a/a/b/v;->f(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 358
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/v;->e(J)Z

    move-result v0

    return v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/v;->b(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/v;->a(II)La/a/a/a/b/ch;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    invoke-virtual {p0, v1}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v5

    .line 435
    invoke-virtual {p0}, La/a/a/a/b/v;->size()I

    move-result v2

    .line 437
    const/4 v0, 0x1

    .line 439
    const-string/jumbo v3, "["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    .line 442
    if-eqz v0, :cond_0

    move v0, v1

    .line 444
    :goto_1
    invoke-interface {v5}, La/a/a/a/b/ce;->a()J

    move-result-wide v6

    .line 448
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    .line 443
    :cond_0
    const-string/jumbo v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 451
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
