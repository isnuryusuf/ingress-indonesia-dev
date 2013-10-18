.class final Lcom/nianticproject/ingress/common/factionchoice/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/j;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/j;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/b/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/j;->b:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/j;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/b/q;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->f(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 151
    return-void
.end method
