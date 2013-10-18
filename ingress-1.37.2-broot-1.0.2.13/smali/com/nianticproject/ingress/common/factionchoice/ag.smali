.class final Lcom/nianticproject/ingress/common/factionchoice/ag;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/ag;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ag;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/ag;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/factionchoice/n;->b(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ag;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->l:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 135
    return-void
.end method
