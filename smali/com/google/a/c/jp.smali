.class public final Lcom/google/a/c/jp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/a/c/ju;Lcom/google/a/c/jq;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/a/c/ju;",
            "Lcom/google/a/c/jq;",
            ")I"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    .line 265
    invoke-static {p0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 272
    :goto_0
    if-gt v1, v0, :cond_3

    .line 273
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 274
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 275
    if-gez v3, :cond_1

    .line 276
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 277
    :cond_1
    if-lez v3, :cond_2

    .line 278
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    sub-int/2addr v2, v1

    invoke-virtual {p3, p2, p1, v0, v2}, Lcom/google/a/c/ju;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 283
    :goto_1
    return v0

    :cond_3
    invoke-virtual {p4, v1}, Lcom/google/a/c/jq;->a(I)I

    move-result v0

    goto :goto_1
.end method
