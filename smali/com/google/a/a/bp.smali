.class final Lcom/google/a/a/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Z

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2163
    iput-object p1, p0, Lcom/google/a/a/bp;->b:Ljava/util/Set;

    .line 2164
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/a/a/bp;->a:[Z

    .line 2165
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/bp;->a:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2166
    iget-object v1, p0, Lcom/google/a/a/bp;->a:[Z

    iget-object v2, p0, Lcom/google/a/a/bp;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 2165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2168
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2158
    invoke-direct {p0, p1}, Lcom/google/a/a/bp;-><init>(Ljava/util/Set;)V

    return-void
.end method
