.class final Lcom/google/a/b/ay;
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V
    .locals 3
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
    const-wide v1, 0x7fffffffffffffffL

    .line 1267
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/az;-><init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V

    .line 1272
    iput-wide v1, p0, Lcom/google/a/b/ay;->a:J

    .line 1284
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ay;->b:Lcom/google/a/b/ap;

    .line 1297
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ay;->c:Lcom/google/a/b/ap;

    .line 1312
    iput-wide v1, p0, Lcom/google/a/b/ay;->d:J

    .line 1324
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ay;->e:Lcom/google/a/b/ap;

    .line 1337
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ay;->f:Lcom/google/a/b/ap;

    .line 1268
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-wide p1, p0, Lcom/google/a/b/ay;->a:J

    .line 1282
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
    .line 1294
    iput-object p1, p0, Lcom/google/a/b/ay;->b:Lcom/google/a/b/ap;

    .line 1295
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 1321
    iput-wide p1, p0, Lcom/google/a/b/ay;->d:J

    .line 1322
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
    .line 1307
    iput-object p1, p0, Lcom/google/a/b/ay;->c:Lcom/google/a/b/ap;

    .line 1308
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
    .line 1334
    iput-object p1, p0, Lcom/google/a/b/ay;->e:Lcom/google/a/b/ap;

    .line 1335
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
    .line 1347
    iput-object p1, p0, Lcom/google/a/b/ay;->f:Lcom/google/a/b/ap;

    .line 1348
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1276
    iget-wide v0, p0, Lcom/google/a/b/ay;->a:J

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
    .line 1289
    iget-object v0, p0, Lcom/google/a/b/ay;->b:Lcom/google/a/b/ap;

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
    .line 1302
    iget-object v0, p0, Lcom/google/a/b/ay;->c:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1316
    iget-wide v0, p0, Lcom/google/a/b/ay;->d:J

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
    .line 1329
    iget-object v0, p0, Lcom/google/a/b/ay;->e:Lcom/google/a/b/ap;

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
    .line 1342
    iget-object v0, p0, Lcom/google/a/b/ay;->f:Lcom/google/a/b/ap;

    return-object v0
.end method
