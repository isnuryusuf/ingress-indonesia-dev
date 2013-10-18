.class final Lcom/google/a/b/bg;
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

.field volatile d:J

.field e:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/b/ap;)V
    .locals 3
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
    const-wide v1, 0x7fffffffffffffffL

    .line 1557
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/b/bh;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/b/ap;)V

    .line 1562
    iput-wide v1, p0, Lcom/google/a/b/bg;->a:J

    .line 1574
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bg;->b:Lcom/google/a/b/ap;

    .line 1587
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bg;->c:Lcom/google/a/b/ap;

    .line 1602
    iput-wide v1, p0, Lcom/google/a/b/bg;->d:J

    .line 1614
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bg;->e:Lcom/google/a/b/ap;

    .line 1627
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bg;->f:Lcom/google/a/b/ap;

    .line 1558
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1571
    iput-wide p1, p0, Lcom/google/a/b/bg;->a:J

    .line 1572
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
    .line 1584
    iput-object p1, p0, Lcom/google/a/b/bg;->b:Lcom/google/a/b/ap;

    .line 1585
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 1611
    iput-wide p1, p0, Lcom/google/a/b/bg;->d:J

    .line 1612
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
    .line 1597
    iput-object p1, p0, Lcom/google/a/b/bg;->c:Lcom/google/a/b/ap;

    .line 1598
    return-void
.end method

.method public final c(Lcom/google/a/b/ap;)V
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
    .line 1624
    iput-object p1, p0, Lcom/google/a/b/bg;->e:Lcom/google/a/b/ap;

    .line 1625
    return-void
.end method

.method public final d(Lcom/google/a/b/ap;)V
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
    .line 1637
    iput-object p1, p0, Lcom/google/a/b/bg;->f:Lcom/google/a/b/ap;

    .line 1638
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1566
    iget-wide v0, p0, Lcom/google/a/b/bg;->a:J

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
    .line 1579
    iget-object v0, p0, Lcom/google/a/b/bg;->b:Lcom/google/a/b/ap;

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
    .line 1592
    iget-object v0, p0, Lcom/google/a/b/bg;->c:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1606
    iget-wide v0, p0, Lcom/google/a/b/bg;->d:J

    return-wide v0
.end method

.method public final i()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/a/b/bg;->e:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public final j()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/a/b/bg;->f:Lcom/google/a/b/ap;

    return-object v0
.end method
