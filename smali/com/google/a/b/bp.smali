.class final Lcom/google/a/b/bp;
.super Lcom/google/a/c/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ad",
        "<",
        "Lcom/google/a/b/ap",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/bn;


# direct methods
.method constructor <init>(Lcom/google/a/b/bn;Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3800
    iput-object p1, p0, Lcom/google/a/b/bp;->a:Lcom/google/a/b/bn;

    invoke-direct {p0, p2}, Lcom/google/a/c/ad;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 3800
    check-cast p1, Lcom/google/a/b/ap;

    invoke-interface {p1}, Lcom/google/a/b/ap;->i()Lcom/google/a/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/bp;->a:Lcom/google/a/b/bn;

    iget-object v1, v1, Lcom/google/a/b/bn;->a:Lcom/google/a/b/ap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
