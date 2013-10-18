.class public abstract Lcom/google/a/c/br;
.super Lcom/google/a/c/bn;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/bn",
        "<TE;>;",
        "Lcom/google/a/c/ht",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/a/c/bn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected final a(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/google/a/c/hv;->b(Lcom/google/a/c/ht;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/ht;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/google/a/c/hv;->c(Lcom/google/a/c/ht;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/ht;->c(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Lcom/google/a/c/ht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ht",
            "<TE;>;"
        }
    .end annotation
.end method

.method public e_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected synthetic k()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/a/c/br;->e()Lcom/google/a/c/ht;

    move-result-object v0

    return-object v0
.end method
