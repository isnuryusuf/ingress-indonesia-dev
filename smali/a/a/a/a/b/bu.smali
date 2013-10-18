.class final La/a/a/a/b/bu;
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
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/bl;


# direct methods
.method public constructor <init>(La/a/a/a/b/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, La/a/a/a/b/bu;->a:La/a/a/a/b/bl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/a/a/b/bt;-><init>(La/a/a/a/b/bl;B)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, La/a/a/a/b/bu;->a:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, La/a/a/a/b/bu;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
