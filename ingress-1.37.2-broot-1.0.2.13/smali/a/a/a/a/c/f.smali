.class public abstract La/a/a/a/c/f;
.super La/a/a/a/c/e;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/c/e",
        "<TK;>;",
        "La/a/a/a/c/q",
        "<TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, La/a/a/a/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()La/a/a/a/c/l;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, La/a/a/a/c/f;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()La/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/i",
            "<TK;>;"
        }
    .end annotation
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, La/a/a/a/c/f;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method
