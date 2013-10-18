.class public abstract Lcom/google/a/c/b;
.super Lcom/google/a/c/lj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/lj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/a/c/d;

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
    .line 68
    invoke-direct {p0}, Lcom/google/a/c/lj;-><init>()V

    .line 65
    sget-object v0, Lcom/google/a/c/d;->b:Lcom/google/a/c/d;

    iput-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    .line 68
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
    .line 124
    sget-object v0, Lcom/google/a/c/d;->c:Lcom/google/a/c/d;

    iput-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    sget-object v3, Lcom/google/a/c/d;->d:Lcom/google/a/c/d;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 131
    sget-object v0, Lcom/google/a/c/c;->a:[I

    iget-object v3, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    invoke-virtual {v3}, Lcom/google/a/c/d;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 138
    sget-object v0, Lcom/google/a/c/d;->d:Lcom/google/a/c/d;

    iput-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    invoke-virtual {p0}, Lcom/google/a/c/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    sget-object v3, Lcom/google/a/c/d;->c:Lcom/google/a/c/d;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/google/a/c/d;->a:Lcom/google/a/c/d;

    iput-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    move v2, v1

    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 130
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 135
    goto :goto_1

    .line 131
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
    .line 153
    invoke-virtual {p0}, Lcom/google/a/c/b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget-object v0, Lcom/google/a/c/d;->b:Lcom/google/a/c/d;

    iput-object v0, p0, Lcom/google/a/c/b;->a:Lcom/google/a/c/d;

    .line 157
    iget-object v0, p0, Lcom/google/a/c/b;->b:Ljava/lang/Object;

    return-object v0
.end method
