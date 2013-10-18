.class final Lcom/nianticproject/ingress/common/inventory/ui/t;
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
        "Lcom/nianticproject/ingress/common/inventory/ui/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    check-cast p2, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/inventory/ui/q;)I

    move-result v0

    return v0
.end method
