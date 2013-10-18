.class public final Lcom/google/a/i/a/v;
.super Lcom/google/a/i/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/i/a/a",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/a/i/a/a;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/a/i/a/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/i/a/v",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/google/a/i/a/v;

    invoke-direct {v0}, Lcom/google/a/i/a/v;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/a/i/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/a/i/a/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
