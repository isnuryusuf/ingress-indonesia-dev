.class final Lcom/nianticproject/ingress/common/c/as;
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
        "Lcom/nianticproject/ingress/common/c/au;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ao;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/as;->a:Lcom/nianticproject/ingress/common/c/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 474
    check-cast p1, Lcom/nianticproject/ingress/common/c/au;

    check-cast p2, Lcom/nianticproject/ingress/common/c/au;

    iget-wide v0, p1, Lcom/nianticproject/ingress/common/c/au;->c:D

    iget-wide v2, p2, Lcom/nianticproject/ingress/common/c/au;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
