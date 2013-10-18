.class final Lcom/google/a/b/ax;
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
    .line 1173
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/az;-><init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V

    .line 1178
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/a/b/ax;->a:J

    .line 1190
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ax;->b:Lcom/google/a/b/ap;

    .line 1203
    invoke-static {}, Lcom/google/a/b/o;->k()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ax;->c:Lcom/google/a/b/ap;

    .line 1174
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-wide p1, p0, Lcom/google/a/b/ax;->a:J

    .line 1188
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
    .line 1200
    iput-object p1, p0, Lcom/google/a/b/ax;->b:Lcom/google/a/b/ap;

    .line 1201
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
    .line 1213
    iput-object p1, p0, Lcom/google/a/b/ax;->c:Lcom/google/a/b/ap;

    .line 1214
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1182
    iget-wide v0, p0, Lcom/google/a/b/ax;->a:J

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
    .line 1195
    iget-object v0, p0, Lcom/google/a/b/ax;->b:Lcom/google/a/b/ap;

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
    .line 1208
    iget-object v0, p0, Lcom/google/a/b/ax;->c:Lcom/google/a/b/ap;

    return-object v0
.end method
