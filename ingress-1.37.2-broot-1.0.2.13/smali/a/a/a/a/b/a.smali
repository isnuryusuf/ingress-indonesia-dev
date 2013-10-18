.class public abstract La/a/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ac;
.implements Ljava/io/Serializable;


# instance fields
.field protected a_:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 1
    .parameter

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(JJ)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 103
    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->c(J)Z

    move-result v2

    .line 104
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v0, v1, v3, v4}, La/a/a/a/b/a;->a(JJ)J

    move-result-wide v0

    .line 105
    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .parameter

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 114
    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->c(J)Z

    move-result v2

    .line 115
    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->a(J)J

    move-result-wide v0

    .line 116
    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/a/a/b/a;->a_:J

    .line 71
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->c(J)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->c(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/a;->d(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/a;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0, p1}, La/a/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
