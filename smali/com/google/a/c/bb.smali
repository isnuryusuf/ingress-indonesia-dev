.class final Lcom/google/a/c/bb;
.super Lcom/google/a/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/b",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ba;

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/a/c/ba;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/a/c/bb;->a:Lcom/google/a/c/ba;

    invoke-direct {p0}, Lcom/google/a/c/b;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/c/bb;->b:I

    .line 134
    iget-object v0, p0, Lcom/google/a/c/bb;->a:Lcom/google/a/c/ba;

    iget-object v0, v0, Lcom/google/a/c/ba;->a:Lcom/google/a/c/az;

    invoke-virtual {v0}, Lcom/google/a/c/az;->a()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->size()I

    move-result v0

    iput v0, p0, Lcom/google/a/c/bb;->c:I

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/a/c/bb;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/bb;->b:I

    :goto_0
    iget v0, p0, Lcom/google/a/c/bb;->b:I

    iget v1, p0, Lcom/google/a/c/bb;->c:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/a/c/bb;->a:Lcom/google/a/c/ba;

    iget-object v0, v0, Lcom/google/a/c/ba;->a:Lcom/google/a/c/az;

    iget v1, p0, Lcom/google/a/c/bb;->b:I

    invoke-virtual {v0, v1}, Lcom/google/a/c/az;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/a/c/bb;->a:Lcom/google/a/c/ba;

    iget-object v1, v1, Lcom/google/a/c/ba;->a:Lcom/google/a/c/az;

    iget v2, p0, Lcom/google/a/c/bb;->b:I

    invoke-virtual {v1, v2}, Lcom/google/a/c/az;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/a/c/bb;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/bb;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/bb;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_1
.end method
