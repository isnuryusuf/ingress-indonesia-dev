.class final Lcom/google/a/c/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 42
    check-cast p1, Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/google/a/c/jn;

    if-eqz v0, :cond_2

    .line 44
    check-cast p1, Lcom/google/a/c/jn;

    invoke-interface {p1}, Lcom/google/a/c/jn;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
