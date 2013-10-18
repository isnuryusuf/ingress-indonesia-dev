.class final Lcom/google/a/c/ax;
.super Lcom/google/a/c/az;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/az",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/aw;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/a/c/aw;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/a/c/ax;->a:Lcom/google/a/c/aw;

    .line 180
    invoke-static {p1}, Lcom/google/a/c/aw;->d(Lcom/google/a/c/aw;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/google/a/c/az;-><init>(I)V

    .line 181
    iput p2, p0, Lcom/google/a/c/ax;->b:I

    .line 182
    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/a/c/ax;->a:Lcom/google/a/c/aw;

    invoke-static {v0}, Lcom/google/a/c/aw;->e(Lcom/google/a/c/aw;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/a/c/ax;->a:Lcom/google/a/c/aw;

    invoke-static {v0}, Lcom/google/a/c/aw;->c(Lcom/google/a/c/aw;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/a/c/ax;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method
