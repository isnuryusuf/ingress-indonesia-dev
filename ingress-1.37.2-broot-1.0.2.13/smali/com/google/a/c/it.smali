.class final Lcom/google/a/c/it;
.super Lcom/google/a/c/dz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dz",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient c:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dc",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/google/a/c/dz;-><init>(Ljava/util/Comparator;)V

    .line 55
    iput-object p1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    .line 56
    invoke-virtual {p1}, Lcom/google/a/c/dc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 264
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    iget-object v2, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    sget-object v3, Lcom/google/a/c/ju;->a:Lcom/google/a/c/ju;

    sget-object v4, Lcom/google/a/c/jq;->c:Lcom/google/a/c/jq;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/a/c/jp;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/a/c/ju;Lcom/google/a/c/jq;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final a([Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/dc;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method final a(II)Lcom/google/a/c/dz;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 259
    :goto_0
    return-object p0

    .line 255
    :cond_0
    if-ge p1, p2, :cond_1

    .line 256
    new-instance v0, Lcom/google/a/c/it;

    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1, p1, p2}, Lcom/google/a/c/dc;->a(II)Lcom/google/a/c/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/it;-><init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/a/c/it;->a(Ljava/util/Comparator;)Lcom/google/a/c/dz;

    move-result-object p0

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/it;->e(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/c/it;->a(II)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/it;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/a/c/dz;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/it;->f(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/c/it;->a(II)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->g()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/it;->f(Ljava/lang/Object;Z)I

    move-result v0

    .line 204
    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    iget-object v2, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/google/a/c/it;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/a/c/jo;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/a/c/dz;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v2}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v3

    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 105
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/google/a/c/it;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 109
    if-nez v5, :cond_4

    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 118
    :cond_4
    if-lez v5, :cond_3

    move v0, v1

    .line 119
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method final d()Lcom/google/a/c/dz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/google/a/c/it;

    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1}, Lcom/google/a/c/dc;->g()Lcom/google/a/c/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/it;-><init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/it;->c()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method final e(Ljava/lang/Object;Z)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/c/it;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/a/c/ju;->d:Lcom/google/a/c/ju;

    :goto_0
    sget-object v4, Lcom/google/a/c/jq;->b:Lcom/google/a/c/jq;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/a/c/jp;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/a/c/ju;Lcom/google/a/c/jq;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/a/c/ju;->c:Lcom/google/a/c/ju;

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->e()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_2

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    check-cast p1, Ljava/util/Set;

    .line 153
    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/google/a/c/it;->a:Ljava/util/Comparator;

    invoke-static {v2, p1}, Lcom/google/a/c/jo;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v3}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v3

    .line 161
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 164
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v5}, Lcom/google/a/c/it;->b(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    move v0, v1

    .line 166
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/a/c/it;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method final f(Ljava/lang/Object;Z)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/c/it;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/a/c/ju;->c:Lcom/google/a/c/ju;

    :goto_0
    sget-object v4, Lcom/google/a/c/jq;->b:Lcom/google/a/c/jq;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/a/c/jp;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/a/c/ju;Lcom/google/a/c/jq;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/a/c/ju;->d:Lcom/google/a/c/ju;

    goto :goto_0
.end method

.method final f()Lcom/google/a/c/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/google/a/c/dw;

    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/dw;-><init>(Lcom/google/a/c/dz;Lcom/google/a/c/dc;)V

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/it;->e(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 198
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/it;->f(Ljava/lang/Object;Z)I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {p0}, Lcom/google/a/c/it;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/it;->e(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 192
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/a/c/it;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->size()I

    move-result v0

    return v0
.end method
