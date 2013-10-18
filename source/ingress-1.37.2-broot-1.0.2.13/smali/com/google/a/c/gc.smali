.class final Lcom/google/a/c/gc;
.super Lcom/google/a/c/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ad",
        "<",
        "Lcom/google/a/c/gh",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ga;


# direct methods
.method constructor <init>(Lcom/google/a/c/ga;Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3372
    iput-object p1, p0, Lcom/google/a/c/gc;->a:Lcom/google/a/c/ga;

    invoke-direct {p0, p2}, Lcom/google/a/c/ad;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 3372
    check-cast p1, Lcom/google/a/c/gh;

    invoke-interface {p1}, Lcom/google/a/c/gh;->f()Lcom/google/a/c/gh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/gc;->a:Lcom/google/a/c/ga;

    iget-object v1, v1, Lcom/google/a/c/ga;->a:Lcom/google/a/c/gh;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
