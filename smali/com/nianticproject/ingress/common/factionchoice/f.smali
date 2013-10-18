.class final Lcom/nianticproject/ingress/common/factionchoice/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/az;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/factionchoice/az;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/f;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/f;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/f;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    new-instance v1, Lcom/nianticproject/ingress/common/factionchoice/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/f;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/f;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/factionchoice/b;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/factionchoice/az;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 102
    return-void
.end method
