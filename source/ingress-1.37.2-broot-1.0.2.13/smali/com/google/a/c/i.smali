.class final Lcom/google/a/c/i;
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
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/g;


# direct methods
.method constructor <init>(Lcom/google/a/c/g;)V
    .locals 1
    .parameter

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/google/a/c/i;->c:Lcom/google/a/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iget-object v0, p0, Lcom/google/a/c/i;->c:Lcom/google/a/c/g;

    iget-object v0, v0, Lcom/google/a/c/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/i;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/a/c/i;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/a/c/i;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/a/c/i;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/a/c/i;->c:Lcom/google/a/c/g;

    invoke-virtual {v1, v0}, Lcom/google/a/c/g;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/a/c/i;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1357
    iget-object v0, p0, Lcom/google/a/c/i;->c:Lcom/google/a/c/g;

    iget-object v0, v0, Lcom/google/a/c/g;->b:Lcom/google/a/c/f;

    iget-object v1, p0, Lcom/google/a/c/i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;I)I

    .line 1358
    iget-object v0, p0, Lcom/google/a/c/i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1359
    return-void
.end method
