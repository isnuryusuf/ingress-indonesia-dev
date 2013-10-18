.class final Lcom/google/a/c/em;
.super Lcom/google/a/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/a/a/ao;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/a/a/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/a/c/em;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/a/c/em;->b:Lcom/google/a/a/ao;

    invoke-direct {p0}, Lcom/google/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 686
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/em;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/google/a/c/em;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/google/a/c/em;->b:Lcom/google/a/a/ao;

    invoke-interface {v1, v0}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/em;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
