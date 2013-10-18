.class final Lcom/google/a/b/bo;
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

.field final synthetic c:Lcom/google/a/b/bn;


# direct methods
.method constructor <init>(Lcom/google/a/b/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 3685
    iput-object p1, p0, Lcom/google/a/b/bo;->c:Lcom/google/a/b/bn;

    invoke-direct {p0}, Lcom/google/a/b/s;-><init>()V

    .line 3695
    iput-object p0, p0, Lcom/google/a/b/bo;->a:Lcom/google/a/b/ap;

    .line 3707
    iput-object p0, p0, Lcom/google/a/b/bo;->b:Lcom/google/a/b/ap;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 3693
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
    .line 3704
    iput-object p1, p0, Lcom/google/a/b/bo;->a:Lcom/google/a/b/ap;

    .line 3705
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
    .line 3716
    iput-object p1, p0, Lcom/google/a/b/bo;->b:Lcom/google/a/b/ap;

    .line 3717
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 3689
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3699
    iget-object v0, p0, Lcom/google/a/b/bo;->a:Lcom/google/a/b/ap;

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
    .line 3711
    iget-object v0, p0, Lcom/google/a/b/bo;->b:Lcom/google/a/b/ap;

    return-object v0
.end method
