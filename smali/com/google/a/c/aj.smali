.class final Lcom/google/a/c/aj;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/a/c/ks",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ah;


# direct methods
.method constructor <init>(Lcom/google/a/c/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-virtual {v0}, Lcom/google/a/c/ah;->c()V

    .line 146
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v0, p1, Lcom/google/a/c/ks;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lcom/google/a/c/ks;

    .line 125
    iget-object v0, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-virtual {v0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/c/as;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-virtual {v0}, Lcom/google/a/c/ah;->f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 134
    instance-of v0, p1, Lcom/google/a/c/ks;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Lcom/google/a/c/ks;

    .line 136
    iget-object v0, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-virtual {v0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/c/as;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 137
    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/a/c/aj;->a:Lcom/google/a/c/ah;

    invoke-virtual {v0}, Lcom/google/a/c/ah;->l()I

    move-result v0

    return v0
.end method
