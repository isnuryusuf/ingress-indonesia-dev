.class final Lcom/google/a/c/cd;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/am;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TV;TK;>;",
        "Lcom/google/a/c/am",
        "<TV;TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/by;


# direct methods
.method private constructor <init>(Lcom/google/a/c/by;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 546
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/by;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/google/a/c/cd;-><init>(Lcom/google/a/c/by;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/am",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-interface {v0}, Lcom/google/a/c/am;->clear()V

    .line 502
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-interface {v0, p1}, Lcom/google/a/c/am;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/google/a/c/ce;

    invoke-direct {v0, p0}, Lcom/google/a/c/ce;-><init>(Lcom/google/a/c/cd;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-static {p1}, Lcom/google/a/c/by;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    .line 512
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Lcom/google/a/c/ch;

    invoke-direct {v0, p0}, Lcom/google/a/c/ch;-><init>(Lcom/google/a/c/cd;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-static {v0, p1, p2}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-static {p1}, Lcom/google/a/c/by;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    .line 528
    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-static {v1, v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V

    .line 532
    iget-object v0, v0, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-static {v0}, Lcom/google/a/c/by;->c(Lcom/google/a/c/by;)I

    move-result v0

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-interface {v0}, Lcom/google/a/c/am;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
