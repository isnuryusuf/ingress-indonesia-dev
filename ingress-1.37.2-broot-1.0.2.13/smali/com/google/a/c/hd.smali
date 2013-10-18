.class final Lcom/google/a/c/hd;
.super Lcom/google/a/c/lj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/lj",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/lj;


# direct methods
.method constructor <init>(Lcom/google/a/c/lj;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/a/c/hd;->a:Lcom/google/a/c/lj;

    invoke-direct {p0}, Lcom/google/a/c/lj;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/a/c/hd;->a:Lcom/google/a/c/lj;

    invoke-virtual {v0}, Lcom/google/a/c/lj;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/a/c/hd;->a:Lcom/google/a/c/lj;

    invoke-virtual {v0}, Lcom/google/a/c/lj;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
