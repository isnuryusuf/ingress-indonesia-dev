.class final Lcom/google/a/c/gz;
.super Lcom/google/a/c/gw;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/gh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/gw",
        "<TK;TV;>;",
        "Lcom/google/a/c/gh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/c/gh;)V
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
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1611
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/c/gw;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/c/gh;)V

    .line 1616
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/a/c/gz;->d:J

    .line 1628
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gz;->e:Lcom/google/a/c/gh;

    .line 1641
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gz;->f:Lcom/google/a/c/gh;

    .line 1656
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gz;->g:Lcom/google/a/c/gh;

    .line 1669
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gz;->h:Lcom/google/a/c/gh;

    .line 1612
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1625
    iput-wide p1, p0, Lcom/google/a/c/gz;->d:J

    .line 1626
    return-void
.end method

.method public final a(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/google/a/c/gz;->e:Lcom/google/a/c/gh;

    .line 1639
    return-void
.end method

.method public final b(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/google/a/c/gz;->f:Lcom/google/a/c/gh;

    .line 1652
    return-void
.end method

.method public final c(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/google/a/c/gz;->g:Lcom/google/a/c/gh;

    .line 1667
    return-void
.end method

.method public final d(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/google/a/c/gz;->h:Lcom/google/a/c/gh;

    .line 1680
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1620
    iget-wide v0, p0, Lcom/google/a/c/gz;->d:J

    return-wide v0
.end method

.method public final f()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/a/c/gz;->e:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final g()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/google/a/c/gz;->f:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final h()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/a/c/gz;->g:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final i()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/google/a/c/gz;->h:Lcom/google/a/c/gh;

    return-object v0
.end method
