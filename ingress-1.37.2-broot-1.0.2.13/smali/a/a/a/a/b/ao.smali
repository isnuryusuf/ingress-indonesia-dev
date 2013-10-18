.class final La/a/a/a/b/ao;
.super La/a/a/a/b/an;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ce;


# instance fields
.field final synthetic a:La/a/a/a/b/ag;


# direct methods
.method public constructor <init>(La/a/a/a/b/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, La/a/a/a/b/ao;->a:La/a/a/a/b/ag;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/a/a/a/b/an;-><init>(La/a/a/a/b/ag;B)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, La/a/a/a/b/ao;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->c:[J

    invoke-virtual {p0}, La/a/a/a/b/ao;->b()I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, La/a/a/a/b/ao;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->c:[J

    invoke-virtual {p0}, La/a/a/a/b/ao;->b()I

    move-result v1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
