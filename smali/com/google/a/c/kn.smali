.class final Lcom/google/a/c/kn;
.super Lcom/google/a/c/hk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hk",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/kh;


# direct methods
.method constructor <init>(Lcom/google/a/c/kh;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    invoke-direct {p0}, Lcom/google/a/c/hk;-><init>()V

    .line 720
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 717
    new-instance v0, Lcom/google/a/c/ko;

    invoke-direct {v0, p0}, Lcom/google/a/c/ko;-><init>(Lcom/google/a/c/kn;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/kh;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/kh;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/kh;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 701
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    iget-object v0, v0, Lcom/google/a/c/kh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method
