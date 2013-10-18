.class final Lcom/google/a/c/gx;
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
.field d:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/c/gh;)V
    .locals 1
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
    .line 1575
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/c/gw;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/a/c/gh;)V

    .line 1580
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gx;->d:Lcom/google/a/c/gh;

    .line 1593
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gx;->e:Lcom/google/a/c/gh;

    .line 1576
    return-void
.end method


# virtual methods
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
    .line 1590
    iput-object p1, p0, Lcom/google/a/c/gx;->d:Lcom/google/a/c/gh;

    .line 1591
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
    .line 1603
    iput-object p1, p0, Lcom/google/a/c/gx;->e:Lcom/google/a/c/gh;

    .line 1604
    return-void
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
    .line 1585
    iget-object v0, p0, Lcom/google/a/c/gx;->d:Lcom/google/a/c/gh;

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
    .line 1598
    iget-object v0, p0, Lcom/google/a/c/gx;->e:Lcom/google/a/c/gh;

    return-object v0
.end method
