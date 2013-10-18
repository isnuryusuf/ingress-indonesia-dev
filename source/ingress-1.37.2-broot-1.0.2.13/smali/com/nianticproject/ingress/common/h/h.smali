.class public final Lcom/nianticproject/ingress/common/h/h;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/nianticproject/ingress/gameentity/f;",
        ">;",
        "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 30
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/h;->a:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/nianticproject/ingress/common/h/h;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
            ">;",
            "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/nianticproject/ingress/common/h/h;->b:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/u/ao;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;

    sget-object v1, Lcom/nianticproject/ingress/server/a;->b:Lcom/nianticproject/ingress/server/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;-><init>(Lcom/nianticproject/ingress/server/a;)V

    return-object v0
.end method
