.class final Lcom/google/a/c/cf;
.super Lcom/google/a/c/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/by",
        "<TK;TV;>.com/google/a/c/cj<",
        "Ljava/util/Map$Entry",
        "<TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ce;


# direct methods
.method constructor <init>(Lcom/google/a/c/ce;)V
    .locals 1
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/a/c/cf;->a:Lcom/google/a/c/ce;

    iget-object v0, p1, Lcom/google/a/c/ce;->a:Lcom/google/a/c/cd;

    iget-object v0, v0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-direct {p0, v0}, Lcom/google/a/c/cj;-><init>(Lcom/google/a/c/by;)V

    .line 594
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/a/c/bz;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 588
    new-instance v0, Lcom/google/a/c/cg;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/cg;-><init>(Lcom/google/a/c/cf;Lcom/google/a/c/bz;)V

    return-object v0
.end method
