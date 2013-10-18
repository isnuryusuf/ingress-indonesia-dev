.class final La/a/a/a/b/bo;
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
.field final a:La/a/a/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/m",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:La/a/a/a/b/bl;


# direct methods
.method private constructor <init>(La/a/a/a/b/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, La/a/a/a/b/bo;->b:La/a/a/a/b/bl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/a/a/b/bt;-><init>(La/a/a/a/b/bl;B)V

    .line 448
    new-instance v0, La/a/a/a/b/m;

    invoke-direct {v0}, La/a/a/a/b/m;-><init>()V

    iput-object v0, p0, La/a/a/a/b/bo;->a:La/a/a/a/b/m;

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1}, La/a/a/a/b/bo;-><init>(La/a/a/a/b/bl;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 447
    invoke-virtual {p0}, La/a/a/a/b/bo;->b()I

    move-result v0

    iget-object v1, p0, La/a/a/a/b/bo;->a:La/a/a/a/b/m;

    iget-object v2, p0, La/a/a/a/b/bo;->b:La/a/a/a/b/bl;

    iget-object v2, v2, La/a/a/a/b/bl;->b:[J

    aget-wide v2, v2, v0

    iput-wide v2, v1, La/a/a/a/b/m;->a:J

    iget-object v1, p0, La/a/a/a/b/bo;->a:La/a/a/a/b/m;

    iget-object v2, p0, La/a/a/a/b/bo;->b:La/a/a/a/b/bl;

    iget-object v2, v2, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v0, v2, v0

    iput-object v0, v1, La/a/a/a/b/m;->b:Ljava/lang/Object;

    iget-object v0, p0, La/a/a/a/b/bo;->a:La/a/a/a/b/m;

    return-object v0
.end method
