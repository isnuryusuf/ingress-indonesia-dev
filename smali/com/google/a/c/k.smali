.class final Lcom/google/a/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/a/c/j;


# direct methods
.method constructor <init>(Lcom/google/a/c/j;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/google/a/c/k;->c:Lcom/google/a/c/j;

    iput-object p2, p0, Lcom/google/a/c/k;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/a/c/k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/a/c/k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/a/c/k;->a:Ljava/util/Map$Entry;

    .line 936
    iget-object v0, p0, Lcom/google/a/c/k;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/a/c/k;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/c/eg;->a(Z)V

    .line 941
    iget-object v0, p0, Lcom/google/a/c/k;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 942
    iget-object v1, p0, Lcom/google/a/c/k;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 943
    iget-object v1, p0, Lcom/google/a/c/k;->c:Lcom/google/a/c/j;

    iget-object v1, v1, Lcom/google/a/c/j;->a:Lcom/google/a/c/f;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;I)I

    .line 944
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 945
    return-void

    .line 940
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
