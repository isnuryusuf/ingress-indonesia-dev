.class public final Lcom/google/a/c/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Set;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1493
    .line 1494
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1495
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 1497
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1495
    goto :goto_1

    .line 1500
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/c/ji;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/google/a/c/ji",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 840
    const-string/jumbo v0, "set1"

    invoke-static {p0, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string/jumbo v0, "set2"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {p1}, Lcom/google/a/a/ap;->a(Ljava/util/Collection;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/ap;->a(Lcom/google/a/a/ao;)Lcom/google/a/a/ao;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/google/a/c/jd;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/a/c/jd;-><init>(Ljava/util/Set;Lcom/google/a/a/ao;Ljava/util/Set;)V

    return-object v1
.end method

.method public static a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/a/c/hc;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 219
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/a/c/as;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    invoke-static {v0, p0}, Lcom/google/a/c/eg;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 240
    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 183
    array-length v0, p0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v0

    .line 184
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method

.method public static a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Lcom/google/a/a/ao",
            "<-TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1071
    instance-of v0, p0, Lcom/google/a/c/jf;

    if-eqz v0, :cond_0

    .line 1074
    check-cast p0, Lcom/google/a/c/jf;

    .line 1075
    iget-object v0, p0, Lcom/google/a/c/jf;->b:Lcom/google/a/a/ao;

    invoke-static {v0, p1}, Lcom/google/a/a/ap;->a(Lcom/google/a/a/ao;Lcom/google/a/a/ao;)Lcom/google/a/a/ao;

    move-result-object v2

    .line 1077
    new-instance v1, Lcom/google/a/c/je;

    iget-object v0, p0, Lcom/google/a/c/jf;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/je;-><init>(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)V

    move-object v0, v1

    .line 1081
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/a/c/je;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/ao;

    invoke-direct {v2, v0, v1}, Lcom/google/a/c/je;-><init>(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;Lcom/google/a/a/ao;)Ljava/util/Set;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/a/a/ao",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 910
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_2

    .line 911
    check-cast p0, Ljava/util/SortedSet;

    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0, p1}, Lcom/google/a/c/jc;->a(Ljava/util/NavigableSet;Lcom/google/a/a/ao;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    .line 911
    :cond_0
    instance-of v0, p0, Lcom/google/a/c/jf;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/a/c/jf;

    iget-object v0, p0, Lcom/google/a/c/jf;->b:Lcom/google/a/a/ao;

    invoke-static {v0, p1}, Lcom/google/a/a/ap;->a(Lcom/google/a/a/ao;Lcom/google/a/a/ao;)Lcom/google/a/a/ao;

    move-result-object v2

    new-instance v1, Lcom/google/a/c/jg;

    iget-object v0, p0, Lcom/google/a/c/jf;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/a/c/jg;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/ao;

    invoke-direct {v2, v0, v1}, Lcom/google/a/c/jg;-><init>(Ljava/util/SortedSet;Lcom/google/a/a/ao;)V

    move-object v0, v2

    goto :goto_0

    .line 913
    :cond_2
    instance-of v0, p0, Lcom/google/a/c/jf;

    if-eqz v0, :cond_3

    .line 916
    check-cast p0, Lcom/google/a/c/jf;

    .line 917
    iget-object v0, p0, Lcom/google/a/c/jf;->b:Lcom/google/a/a/ao;

    invoke-static {v0, p1}, Lcom/google/a/a/ap;->a(Lcom/google/a/a/ao;Lcom/google/a/a/ao;)Lcom/google/a/a/ao;

    move-result-object v2

    .line 919
    new-instance v1, Lcom/google/a/c/jf;

    iget-object v0, p0, Lcom/google/a/c/jf;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-direct {v1, v0, v2}, Lcom/google/a/c/jf;-><init>(Ljava/util/Set;Lcom/google/a/a/ao;)V

    move-object v0, v1

    goto :goto_0

    .line 923
    :cond_3
    new-instance v2, Lcom/google/a/c/jf;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/ao;

    invoke-direct {v2, v0, v1}, Lcom/google/a/c/jf;-><init>(Ljava/util/Set;Lcom/google/a/a/ao;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1507
    if-ne p0, p1, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return v0

    .line 1510
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_3

    .line 1511
    check-cast p1, Ljava/util/Set;

    .line 1514
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1516
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1518
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1521
    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1700
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    instance-of v0, p1, Lcom/google/a/c/ht;

    if-eqz v0, :cond_0

    .line 1702
    check-cast p1, Lcom/google/a/c/ht;

    invoke-interface {p1}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object p1

    .line 1711
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1712
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    .line 1714
    :cond_1
    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 437
    invoke-static {v0, p0}, Lcom/google/a/c/ee;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 438
    return-object v0
.end method

.method public static c()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static d()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method
