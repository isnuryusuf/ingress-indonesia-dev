.class final Lcom/google/a/c/cz;
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
.field final synthetic a:Lcom/google/a/c/cx;


# direct methods
.method constructor <init>(Lcom/google/a/c/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/a/c/cz;->a:Lcom/google/a/c/cx;

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
    .line 104
    iget-object v0, p0, Lcom/google/a/c/cz;->a:Lcom/google/a/c/cx;

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
    .line 109
    new-instance v0, Lcom/google/a/c/da;

    invoke-direct {v0, p0}, Lcom/google/a/c/da;-><init>(Lcom/google/a/c/cz;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/a/c/cz;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method
