.class final Lcom/google/a/c/kl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/a/c/kk;


# direct methods
.method constructor <init>(Lcom/google/a/c/kk;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/a/c/kl;->b:Lcom/google/a/c/kk;

    iput-object p2, p0, Lcom/google/a/c/kl;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/a/c/kl;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/a/c/kl;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/a/c/km;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/km;-><init>(Lcom/google/a/c/kl;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/a/c/kl;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 379
    iget-object v0, p0, Lcom/google/a/c/kl;->b:Lcom/google/a/c/kk;

    iget-object v0, v0, Lcom/google/a/c/kk;->a:Lcom/google/a/c/kj;

    invoke-virtual {v0}, Lcom/google/a/c/kj;->d()V

    .line 380
    return-void
.end method
