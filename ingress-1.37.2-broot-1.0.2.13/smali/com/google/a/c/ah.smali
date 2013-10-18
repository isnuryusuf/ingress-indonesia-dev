.class abstract Lcom/google/a/c/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/kr;


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
        "Ljava/lang/Object;",
        "Lcom/google/a/c/kr",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/google/a/c/ah;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/google/a/c/hc;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 75
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/a/c/ah;->l()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/a/c/ah;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->f(Ljava/util/Iterator;)V

    .line 86
    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/a/c/ah;->a:Ljava/util/Set;

    .line 111
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/ah;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/ah;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/a/c/aj;

    invoke-direct {v0, p0}, Lcom/google/a/c/aj;-><init>(Lcom/google/a/c/ah;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/google/a/c/kt;->a(Lcom/google/a/c/kr;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract f()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/a/c/ah;->b:Ljava/util/Collection;

    .line 164
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/ah;->h()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/ah;->b:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/google/a/c/ak;

    invoke-direct {v0, p0}, Lcom/google/a/c/ak;-><init>(Lcom/google/a/c/ah;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/a/c/ah;->d()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/google/a/c/ai;

    invoke-virtual {p0}, Lcom/google/a/c/ah;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ai;-><init>(Lcom/google/a/c/ah;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/a/c/ah;->m()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
