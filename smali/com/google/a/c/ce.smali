.class final Lcom/google/a/c/ce;
.super Lcom/google/a/c/hj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hj",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/cd;


# direct methods
.method constructor <init>(Lcom/google/a/c/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/a/c/ce;->a:Lcom/google/a/c/cd;

    invoke-direct {p0}, Lcom/google/a/c/hj;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/a/c/ce;->a:Lcom/google/a/c/cd;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 588
    new-instance v0, Lcom/google/a/c/cf;

    invoke-direct {v0, p0}, Lcom/google/a/c/cf;-><init>(Lcom/google/a/c/ce;)V

    return-object v0
.end method
