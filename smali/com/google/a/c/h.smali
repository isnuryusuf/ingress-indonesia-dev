.class final Lcom/google/a/c/h;
.super Lcom/google/a/c/hj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hj",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/g;


# direct methods
.method constructor <init>(Lcom/google/a/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/google/a/c/h;->a:Lcom/google/a/c/g;

    invoke-direct {p0}, Lcom/google/a/c/hj;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/a/c/h;->a:Lcom/google/a/c/g;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/a/c/h;->a:Lcom/google/a/c/g;

    iget-object v0, v0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/as;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1317
    new-instance v0, Lcom/google/a/c/i;

    iget-object v1, p0, Lcom/google/a/c/h;->a:Lcom/google/a/c/g;

    invoke-direct {v0, v1}, Lcom/google/a/c/i;-><init>(Lcom/google/a/c/g;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lcom/google/a/c/h;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    const/4 v0, 0x0

    .line 1332
    :goto_0
    return v0

    .line 1330
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1331
    iget-object v0, p0, Lcom/google/a/c/h;->a:Lcom/google/a/c/g;

    iget-object v0, v0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;Ljava/lang/Object;)I

    .line 1332
    const/4 v0, 0x1

    goto :goto_0
.end method
