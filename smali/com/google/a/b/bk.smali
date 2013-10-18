.class final Lcom/google/a/b/bk;
.super Lcom/google/a/b/as;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/as",
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
    .line 1817
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/as;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)V

    .line 1818
    iput p4, p0, Lcom/google/a/b/bk;->b:I

    .line 1819
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1823
    iget v0, p0, Lcom/google/a/b/bk;->b:I

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
    .line 1828
    new-instance v0, Lcom/google/a/b/bk;

    iget v1, p0, Lcom/google/a/b/bk;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/a/b/bk;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;I)V

    return-object v0
.end method
