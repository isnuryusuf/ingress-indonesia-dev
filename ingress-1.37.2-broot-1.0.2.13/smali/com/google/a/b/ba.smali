.class Lcom/google/a/b/ba;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        "Lcom/google/a/b/bd",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    iput-object p1, p0, Lcom/google/a/b/ba;->a:Ljava/lang/Object;

    .line 1743
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1752
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)Lcom/google/a/b/bd;
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
            "<TK;TV;>;)",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1763
    return-object p0
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
    .line 1782
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
    .line 1757
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1773
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
    .line 1778
    invoke-virtual {p0}, Lcom/google/a/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/google/a/b/ba;->a:Ljava/lang/Object;

    return-object v0
.end method
