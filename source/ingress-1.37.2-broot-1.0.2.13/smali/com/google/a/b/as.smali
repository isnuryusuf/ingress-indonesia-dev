.class Lcom/google/a/b/as;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/bd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lcom/google/a/b/bd",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1696
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1697
    iput-object p3, p0, Lcom/google/a/b/as;->a:Lcom/google/a/b/ap;

    .line 1698
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1702
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)Lcom/google/a/b/bd;
    .locals 1
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
    .line 1716
    new-instance v0, Lcom/google/a/b/as;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/a/b/as;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1711
    return-void
.end method

.method public final b()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/google/a/b/as;->a:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1721
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1726
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/google/a/b/as;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
