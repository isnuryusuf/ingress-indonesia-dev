.class final Lcom/google/a/b/u;
.super Lcom/google/a/b/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/s",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/b/t;


# direct methods
.method constructor <init>(Lcom/google/a/b/t;)V
    .locals 0
    .parameter

    .prologue
    .line 3822
    iput-object p1, p0, Lcom/google/a/b/u;->c:Lcom/google/a/b/t;

    invoke-direct {p0}, Lcom/google/a/b/s;-><init>()V

    .line 3832
    iput-object p0, p0, Lcom/google/a/b/u;->a:Lcom/google/a/b/ap;

    .line 3844
    iput-object p0, p0, Lcom/google/a/b/u;->b:Lcom/google/a/b/ap;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 3830
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
    .line 3841
    iput-object p1, p0, Lcom/google/a/b/u;->a:Lcom/google/a/b/ap;

    .line 3842
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
    .line 3853
    iput-object p1, p0, Lcom/google/a/b/u;->b:Lcom/google/a/b/ap;

    .line 3854
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 3826
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3836
    iget-object v0, p0, Lcom/google/a/b/u;->a:Lcom/google/a/b/ap;

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
    .line 3848
    iget-object v0, p0, Lcom/google/a/b/u;->b:Lcom/google/a/b/ap;

    return-object v0
.end method
