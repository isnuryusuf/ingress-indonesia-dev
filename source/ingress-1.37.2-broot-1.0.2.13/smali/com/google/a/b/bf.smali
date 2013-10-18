.class final Lcom/google/a/b/bf;
.super Lcom/google/a/b/bh;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/ap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/bh",
        "<TK;TV;>;",
        "Lcom/google/a/b/ap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/b/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1461
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/b/bh;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/b/ap;)V

    .line 1466
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/a/b/bf;->a:J

    .line 1478
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bf;->b:Lcom/google/a/b/ap;

    .line 1491
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bf;->c:Lcom/google/a/b/ap;

    .line 1462
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1475
    iput-wide p1, p0, Lcom/google/a/b/bf;->a:J

    .line 1476
    return-void
.end method

.method public final a(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/google/a/b/bf;->b:Lcom/google/a/b/ap;

    .line 1489
    return-void
.end method

.method public final b(Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/google/a/b/bf;->c:Lcom/google/a/b/ap;

    .line 1502
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1470
    iget-wide v0, p0, Lcom/google/a/b/bf;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/google/a/b/bf;->b:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public final g()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/google/a/b/bf;->c:Lcom/google/a/b/ap;

    return-object v0
.end method
