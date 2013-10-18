.class final Lcom/google/a/c/ay;
.super Lcom/google/a/c/az;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/az",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/aw;


# direct methods
.method private constructor <init>(Lcom/google/a/c/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/a/c/ay;->a:Lcom/google/a/c/aw;

    .line 223
    invoke-static {p1}, Lcom/google/a/c/aw;->d(Lcom/google/a/c/aw;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/c/az;-><init>(I)V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/aw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/google/a/c/ay;-><init>(Lcom/google/a/c/aw;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/a/c/ay;->a:Lcom/google/a/c/aw;

    invoke-static {v0}, Lcom/google/a/c/aw;->b(Lcom/google/a/c/aw;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 221
    new-instance v0, Lcom/google/a/c/ax;

    iget-object v1, p0, Lcom/google/a/c/ay;->a:Lcom/google/a/c/aw;

    invoke-direct {v0, v1, p1}, Lcom/google/a/c/ax;-><init>(Lcom/google/a/c/aw;I)V

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
