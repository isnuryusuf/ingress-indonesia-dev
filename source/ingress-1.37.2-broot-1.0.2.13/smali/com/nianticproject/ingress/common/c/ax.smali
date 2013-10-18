.class final Lcom/nianticproject/ingress/common/c/ax;
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
        "Lcom/nianticproject/ingress/common/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p1, Lcom/nianticproject/ingress/common/c/a;

    check-cast p2, Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/c/a;->b()F

    move-result v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/a;->b()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method
