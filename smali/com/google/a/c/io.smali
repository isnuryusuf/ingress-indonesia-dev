.class final Lcom/google/a/c/io;
.super Lcom/google/a/c/dq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient b:I


# direct methods
.method constructor <init>(Lcom/google/a/c/dh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/a/c/dq;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/io;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method final a(I)Lcom/google/a/c/hu;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/a/c/hv;->a(Ljava/lang/Object;I)Lcom/google/a/c/hu;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->b()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/a/c/io;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/a/c/io;->b:I

    return v0
.end method
