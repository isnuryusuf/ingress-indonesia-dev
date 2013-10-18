.class final Lcom/google/a/c/ha;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/gu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Lcom/google/a/c/gu",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1691
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1692
    iput-object p3, p0, Lcom/google/a/c/ha;->a:Lcom/google/a/c/gh;

    .line 1693
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/google/a/c/ha;->a:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/c/gh;)Lcom/google/a/c/gu;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1708
    new-instance v0, Lcom/google/a/c/ha;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/a/c/ha;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/c/gh;)V

    return-object v0
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/google/a/c/ha;->clear()V

    .line 1703
    return-void
.end method
