.class final La/a/a/a/b/bn;
.super La/a/a/a/b/bt;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/b/bl",
        "<TV;>.a/a/a/a/b/bt;",
        "La/a/a/a/c/l",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/bl;

.field private b:La/a/a/a/b/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bl",
            "<TV;>.a/a/a/a/b/br;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(La/a/a/a/b/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, La/a/a/a/b/bn;->a:La/a/a/a/b/bl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/a/a/b/bt;-><init>(La/a/a/a/b/bl;B)V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-direct {p0, p1}, La/a/a/a/b/bn;-><init>(La/a/a/a/b/bl;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 436
    new-instance v0, La/a/a/a/b/br;

    iget-object v1, p0, La/a/a/a/b/bn;->a:La/a/a/a/b/bl;

    invoke-virtual {p0}, La/a/a/a/b/bn;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, La/a/a/a/b/br;-><init>(La/a/a/a/b/bl;I)V

    iput-object v0, p0, La/a/a/a/b/bn;->b:La/a/a/a/b/br;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, La/a/a/a/b/bt;->remove()V

    .line 444
    iget-object v0, p0, La/a/a/a/b/bn;->b:La/a/a/a/b/br;

    invoke-static {v0}, La/a/a/a/b/br;->a(La/a/a/a/b/br;)I

    .line 445
    return-void
.end method
