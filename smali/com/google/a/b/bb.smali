.class final Lcom/google/a/b/bb;
.super Lcom/google/a/b/az;
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
        "Lcom/google/a/b/az",
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1220
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/az;-><init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V

    .line 1225
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/a/b/bb;->a:J

    .line 1237
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bb;->b:Lcom/google/a/b/ap;

    .line 1250
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/bb;->c:Lcom/google/a/b/ap;

    .line 1221
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-wide p1, p0, Lcom/google/a/b/bb;->a:J

    .line 1235
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
    .line 1247
    iput-object p1, p0, Lcom/google/a/b/bb;->b:Lcom/google/a/b/ap;

    .line 1248
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
    .line 1260
    iput-object p1, p0, Lcom/google/a/b/bb;->c:Lcom/google/a/b/ap;

    .line 1261
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1229
    iget-wide v0, p0, Lcom/google/a/b/bb;->a:J

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
    .line 1242
    iget-object v0, p0, Lcom/google/a/b/bb;->b:Lcom/google/a/b/ap;

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
    .line 1255
    iget-object v0, p0, Lcom/google/a/b/bb;->c:Lcom/google/a/b/ap;

    return-object v0
.end method
