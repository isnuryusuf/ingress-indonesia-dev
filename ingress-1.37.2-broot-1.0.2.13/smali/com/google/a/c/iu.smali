.class abstract Lcom/google/a/c/iu;
.super Lcom/google/a/c/ec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ec",
        "<TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/a/c/ec;-><init>()V

    return-void
.end method

.method static final a(Ljava/lang/Iterable;)Lcom/google/a/c/iu;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;)",
            "Lcom/google/a/c/iu",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p0, v0, v0}, Lcom/google/a/c/iu;->a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/a/c/iu;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/a/c/iu;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/a/c/iu",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v2

    .line 154
    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Iterable;)Lcom/google/a/c/dc;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/google/a/c/dc;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ks;

    .line 156
    invoke-interface {v0}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    .line 157
    invoke-interface {v0}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-static {v0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    invoke-static {v0}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    .line 166
    :cond_1
    invoke-virtual {v2}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v1

    .line 167
    if-eqz p2, :cond_2

    .line 168
    invoke-static {v1}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    invoke-static {v1}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v1

    .line 175
    :cond_2
    invoke-virtual {v3}, Lcom/google/a/c/dc;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/a/c/du;->size()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/a/c/du;->size()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-le v2, v4, :cond_3

    new-instance v2, Lcom/google/a/c/aw;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/c/aw;-><init>(Lcom/google/a/c/dc;Lcom/google/a/c/du;Lcom/google/a/c/du;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_3
    new-instance v2, Lcom/google/a/c/kg;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/c/kg;-><init>(Lcom/google/a/c/dc;Lcom/google/a/c/du;Lcom/google/a/c/du;)V

    move-object v0, v2

    goto :goto_1
.end method

.method static final a(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/a/c/iu;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/a/c/iu",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 123
    :cond_0
    new-instance v0, Lcom/google/a/c/iv;

    invoke-direct {v0, p1, p2}, Lcom/google/a/c/iv;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 134
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/a/c/iu;->a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/a/c/iu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a(I)Lcom/google/a/c/ks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method final synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/a/c/iu;->p()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method final synthetic h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/a/c/iu;->q()Lcom/google/a/c/ct;

    move-result-object v0

    return-object v0
.end method

.method final p()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/a/c/iu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/iw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/iw;-><init>(Lcom/google/a/c/iu;B)V

    goto :goto_0
.end method

.method final q()Lcom/google/a/c/ct;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/a/c/iu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/iy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/iy;-><init>(Lcom/google/a/c/iu;B)V

    goto :goto_0
.end method
