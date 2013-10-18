.class final Lcom/nianticproject/ingress/common/factionchoice/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic c:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->a:Lcom/nianticproject/ingress/shared/ai;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->b:Lcom/nianticproject/ingress/common/ui/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->a:Lcom/nianticproject/ingress/shared/ai;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->b:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/factionchoice/d;->e(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/factionchoice/a;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->e(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 141
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->b:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/i;->c:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/factionchoice/d;->f(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/factionchoice/ba;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V

    goto :goto_0
.end method
