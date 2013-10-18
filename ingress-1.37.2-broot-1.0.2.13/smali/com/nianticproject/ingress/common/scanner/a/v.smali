.class final Lcom/nianticproject/ingress/common/scanner/a/v;
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
        "Lcom/nianticproject/ingress/common/scanner/a/aa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    check-cast p1, Lcom/nianticproject/ingress/common/scanner/a/aa;

    check-cast p2, Lcom/nianticproject/ingress/common/scanner/a/aa;

    iget v0, p1, Lcom/nianticproject/ingress/common/scanner/a/aa;->b:F

    iget v1, p2, Lcom/nianticproject/ingress/common/scanner/a/aa;->b:F

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
