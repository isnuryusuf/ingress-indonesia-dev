.class final Lcom/google/a/c/ib;
.super Lcom/google/a/c/hx;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/hx",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/a/c/hx;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/google/a/c/ib;->a:Ljava/lang/Object;

    .line 220
    iput p2, p0, Lcom/google/a/c/ib;->b:I

    .line 221
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 222
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/a/c/ib;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/a/c/ib;->b:I

    return v0
.end method
