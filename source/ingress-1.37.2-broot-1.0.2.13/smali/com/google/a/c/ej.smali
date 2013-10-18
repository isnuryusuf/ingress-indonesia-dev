.class final Lcom/google/a/c/ej;
.super Lcom/google/a/c/lj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/lj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/google/a/c/ej;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/a/c/lj;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/google/a/c/ej;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/google/a/c/ej;->a:Z

    if-eqz v0, :cond_0

    .line 1113
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/c/ej;->a:Z

    .line 1116
    iget-object v0, p0, Lcom/google/a/c/ej;->b:Ljava/lang/Object;

    return-object v0
.end method
