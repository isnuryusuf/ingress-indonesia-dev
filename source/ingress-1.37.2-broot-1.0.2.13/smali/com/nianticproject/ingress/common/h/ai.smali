.class public final Lcom/nianticproject/ingress/common/h/ai;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/rpc/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 26
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/ai;->a:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 27
    return-void
.end method


# virtual methods
.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/r;",
            ">;",
            "Lcom/nianticproject/ingress/shared/rpc/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ai;->a:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/aj;->a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/r;->a:Lcom/nianticproject/ingress/shared/rpc/r;

    return-object v0
.end method
