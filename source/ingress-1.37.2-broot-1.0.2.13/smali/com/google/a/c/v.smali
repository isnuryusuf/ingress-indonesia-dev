.class final Lcom/google/a/c/v;
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
        "Lcom/google/a/c/hu",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/google/a/c/av;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/a/c/u;


# direct methods
.method constructor <init>(Lcom/google/a/c/u;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/a/c/v;->c:Lcom/google/a/c/u;

    iput-object p2, p0, Lcom/google/a/c/v;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/a/c/v;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/a/c/v;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/a/c/v;->a:Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/a/c/w;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/w;-><init>(Lcom/google/a/c/v;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/a/c/v;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/c/eg;->a(Z)V

    .line 123
    iget-object v2, p0, Lcom/google/a/c/v;->c:Lcom/google/a/c/u;

    iget-object v0, p0, Lcom/google/a/c/v;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    invoke-virtual {v0, v1}, Lcom/google/a/c/av;->c(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/google/a/c/u;->a(Lcom/google/a/c/u;J)J

    .line 124
    iget-object v0, p0, Lcom/google/a/c/v;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/c/v;->a:Ljava/util/Map$Entry;

    .line 126
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method
