.class Lcom/google/a/c/g;
.super Lcom/google/a/c/hk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hk",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-direct {p0}, Lcom/google/a/c/hk;-><init>()V

    .line 1237
    iput-object p2, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    .line 1238
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1306
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1307
    iget-object v2, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v1, v0}, Lcom/google/a/c/f;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Lcom/google/a/c/h;

    invoke-direct {v0, p0}, Lcom/google/a/c/h;-><init>(Lcom/google/a/c/g;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-static {v1}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-virtual {v0}, Lcom/google/a/c/f;->e()V

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    new-instance v0, Lcom/google/a/c/i;

    invoke-direct {v0, p0}, Lcom/google/a/c/i;-><init>(Lcom/google/a/c/g;)V

    invoke-static {v0}, Lcom/google/a/c/eg;->f(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1284
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-virtual {v1, p1, v0}, Lcom/google/a/c/f;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-virtual {v0}, Lcom/google/a/c/f;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-virtual {v1}, Lcom/google/a/c/f;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
