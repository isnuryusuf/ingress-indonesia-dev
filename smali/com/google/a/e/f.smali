.class abstract Lcom/google/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/e/z;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/a/e/u;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/a/e/f;->a()Lcom/google/a/e/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/a/e/aa;->b([B)Lcom/google/a/e/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/e/aa;->a()Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final a([BI)Lcom/google/a/e/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/a/e/f;->a()Lcom/google/a/e/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/a/e/aa;->b([BII)Lcom/google/a/e/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/e/aa;->a()Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method
