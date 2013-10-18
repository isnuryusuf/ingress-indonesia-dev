.class final Lcom/google/a/b/bm;
.super Lcom/google/a/b/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/bi",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 1793
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/bi;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)V

    .line 1794
    iput p4, p0, Lcom/google/a/b/bm;->b:I

    .line 1795
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1799
    iget v0, p0, Lcom/google/a/b/bm;->b:I

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)Lcom/google/a/b/bd;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1805
    new-instance v0, Lcom/google/a/b/bm;

    iget v1, p0, Lcom/google/a/b/bm;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/a/b/bm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;I)V

    return-object v0
.end method
