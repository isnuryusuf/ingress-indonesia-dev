.class final Lcom/google/a/c/ba;
.super Lcom/google/a/c/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/dl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/az;


# direct methods
.method constructor <init>(Lcom/google/a/c/az;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/a/c/ba;->a:Lcom/google/a/c/az;

    invoke-direct {p0}, Lcom/google/a/c/dl;-><init>()V

    return-void
.end method


# virtual methods
.method final a_()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/a/c/ba;->a:Lcom/google/a/c/az;

    return-object v0
.end method

.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/a/c/bb;

    invoke-direct {v0, p0}, Lcom/google/a/c/bb;-><init>(Lcom/google/a/c/ba;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/a/c/ba;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method
