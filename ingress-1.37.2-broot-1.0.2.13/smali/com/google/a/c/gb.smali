.class final Lcom/google/a/c/gb;
.super Lcom/google/a/c/fl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/fl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/ga;


# direct methods
.method constructor <init>(Lcom/google/a/c/ga;)V
    .locals 0
    .parameter

    .prologue
    .line 3258
    iput-object p1, p0, Lcom/google/a/c/gb;->c:Lcom/google/a/c/ga;

    invoke-direct {p0}, Lcom/google/a/c/fl;-><init>()V

    .line 3268
    iput-object p0, p0, Lcom/google/a/c/gb;->a:Lcom/google/a/c/gh;

    .line 3280
    iput-object p0, p0, Lcom/google/a/c/gb;->b:Lcom/google/a/c/gh;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 3266
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
    .line 3277
    iput-object p1, p0, Lcom/google/a/c/gb;->a:Lcom/google/a/c/gh;

    .line 3278
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
    .line 3289
    iput-object p1, p0, Lcom/google/a/c/gb;->b:Lcom/google/a/c/gh;

    .line 3290
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 3262
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3272
    iget-object v0, p0, Lcom/google/a/c/gb;->a:Lcom/google/a/c/gh;

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
    .line 3284
    iget-object v0, p0, Lcom/google/a/c/gb;->b:Lcom/google/a/c/gh;

    return-object v0
.end method
