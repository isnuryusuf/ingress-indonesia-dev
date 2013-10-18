.class final Lcom/google/a/c/dt;
.super Lcom/google/a/c/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/cp",
        "<",
        "Lcom/google/a/c/hu",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ds;


# direct methods
.method constructor <init>(Lcom/google/a/c/ds;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/a/c/dt;->a:Lcom/google/a/c/ds;

    invoke-direct {p0}, Lcom/google/a/c/cp;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/a/c/dt;->a:Lcom/google/a/c/ds;

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/a/c/dt;->a:Lcom/google/a/c/ds;

    iget-object v0, v0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dq;->a(I)Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method
