.class public abstract La/a/a/a/b/s;
.super La/a/a/a/b/u;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ca;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, La/a/a/a/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, La/a/a/a/b/s;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, La/a/a/a/b/s;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
