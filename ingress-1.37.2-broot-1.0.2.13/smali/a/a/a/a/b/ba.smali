.class final La/a/a/a/b/ba;
.super La/a/a/a/b/o;
.source "SourceFile"


# instance fields
.field final synthetic b:La/a/a/a/b/ax;


# direct methods
.method private constructor <init>(La/a/a/a/b/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 1401
    iput-object p1, p0, La/a/a/a/b/ba;->b:La/a/a/a/b/ax;

    invoke-direct {p0, p1}, La/a/a/a/b/o;-><init>(La/a/a/a/b/n;)V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ax;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1401
    invoke-direct {p0, p1}, La/a/a/a/b/ba;-><init>(La/a/a/a/b/ax;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 1401
    invoke-virtual {p0}, La/a/a/a/b/ba;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method

.method public final d()La/a/a/a/b/ca;
    .locals 2

    .prologue
    .line 1402
    new-instance v0, La/a/a/a/b/bd;

    iget-object v1, p0, La/a/a/a/b/ba;->b:La/a/a/a/b/ax;

    invoke-direct {v0, v1}, La/a/a/a/b/bd;-><init>(La/a/a/a/b/ax;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1401
    invoke-virtual {p0}, La/a/a/a/b/ba;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method
