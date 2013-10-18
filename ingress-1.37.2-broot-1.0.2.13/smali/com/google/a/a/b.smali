.class abstract Lcom/google/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/a/a/d;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/a/a/d;->b:Lcom/google/a/a/d;

    iput-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/google/a/a/d;->c:Lcom/google/a/a/d;

    iput-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    sget-object v3, Lcom/google/a/a/d;->d:Lcom/google/a/a/d;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 52
    sget-object v0, Lcom/google/a/a/c;->a:[I

    iget-object v3, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    invoke-virtual {v3}, Lcom/google/a/a/d;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 59
    sget-object v0, Lcom/google/a/a/d;->d:Lcom/google/a/a/d;

    iput-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    invoke-virtual {p0}, Lcom/google/a/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    sget-object v3, Lcom/google/a/a/d;->c:Lcom/google/a/a/d;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/google/a/a/d;->a:Lcom/google/a/a/d;

    iput-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    move v2, v1

    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 51
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 56
    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/a/a/b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 77
    :cond_0
    sget-object v0, Lcom/google/a/a/d;->b:Lcom/google/a/a/d;

    iput-object v0, p0, Lcom/google/a/a/b;->a:Lcom/google/a/a/d;

    .line 78
    iget-object v0, p0, Lcom/google/a/a/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
