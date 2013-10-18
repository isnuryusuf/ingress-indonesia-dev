.class final La/a/a/a/b/ai;
.super La/a/a/a/b/an;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/b/an;",
        "La/a/a/a/c/l",
        "<",
        "La/a/a/a/b/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ag;

.field private f:La/a/a/a/b/al;


# direct methods
.method private constructor <init>(La/a/a/a/b/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, La/a/a/a/b/ai;->a:La/a/a/a/b/ag;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/a/a/b/an;-><init>(La/a/a/a/b/ag;B)V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ag;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0, p1}, La/a/a/a/b/ai;-><init>(La/a/a/a/b/ag;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 471
    new-instance v0, La/a/a/a/b/al;

    iget-object v1, p0, La/a/a/a/b/ai;->a:La/a/a/a/b/ag;

    invoke-virtual {p0}, La/a/a/a/b/ai;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, La/a/a/a/b/al;-><init>(La/a/a/a/b/ag;I)V

    iput-object v0, p0, La/a/a/a/b/ai;->f:La/a/a/a/b/al;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, La/a/a/a/b/an;->remove()V

    .line 479
    iget-object v0, p0, La/a/a/a/b/ai;->f:La/a/a/a/b/al;

    invoke-static {v0}, La/a/a/a/b/al;->a(La/a/a/a/b/al;)I

    .line 480
    return-void
.end method
