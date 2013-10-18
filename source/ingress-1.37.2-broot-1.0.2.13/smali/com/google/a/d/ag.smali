.class final Lcom/google/a/d/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/a/d/ah;",
        ">;"
    }
.end annotation


# direct methods
.method strictfp constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/google/a/d/ah;

    check-cast p2, Lcom/google/a/d/ah;

    invoke-static {p1}, Lcom/google/a/d/ah;->a(Lcom/google/a/d/ah;)I

    move-result v0

    invoke-static {p2}, Lcom/google/a/d/ah;->a(Lcom/google/a/d/ah;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/d/ah;->a(Lcom/google/a/d/ah;)I

    move-result v0

    invoke-static {p2}, Lcom/google/a/d/ah;->a(Lcom/google/a/d/ah;)I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
