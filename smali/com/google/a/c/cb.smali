.class final Lcom/google/a/c/cb;
.super Lcom/google/a/c/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/by",
        "<TK;TV;>.com/google/a/c/cj<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ca;


# direct methods
.method constructor <init>(Lcom/google/a/c/ca;)V
    .locals 1
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/a/c/cb;->a:Lcom/google/a/c/ca;

    iget-object v0, p1, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    invoke-direct {p0, v0}, Lcom/google/a/c/cj;-><init>(Lcom/google/a/c/by;)V

    .line 443
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/a/c/bz;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 437
    new-instance v0, Lcom/google/a/c/cc;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/cc;-><init>(Lcom/google/a/c/cb;Lcom/google/a/c/bz;)V

    return-object v0
.end method
